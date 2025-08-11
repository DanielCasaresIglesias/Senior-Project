// backend/src/app.ts
import dotenv from 'dotenv';
dotenv.config();

import express from 'express';
import cors from 'cors';
import morgan from 'morgan';

import authRoutes from './routes/authRoutes';
import parksRoutes from './routes/parksRoutes';
import reviewsRoutes from './routes/reviewsRoutes';
import usersRoutes from './routes/usersRoutes';
import errorHandler from './middlewares/errorHandler';

const app = express();

// allow CORS from the frontend origin (set in Render env)
const corsOrigin = process.env.CORS_ORIGIN || '*';
app.use(cors({
  origin: corsOrigin,
  methods: ['GET','POST','PUT','DELETE','OPTIONS'],
  allowedHeaders: ['Content-Type','Authorization'],
  credentials: true // set if you need cookies
}));

// make sure preflight requests work
app.options('*', cors());

app.use(express.json());
app.use(morgan('dev'));

// Mount routes under /api
app.use('/api/auth', authRoutes);
app.use('/api/parks', parksRoutes);
app.use('/api/reviews', reviewsRoutes);
app.use('/api/users', usersRoutes);

// 404 for unmatched routes
app.use((req, res) => {
  res.status(404).json({ message: 'Route not found' });
});

// Global error handler
app.use(errorHandler);

export default app;
