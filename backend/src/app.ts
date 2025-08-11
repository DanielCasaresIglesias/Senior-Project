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

// Middlewares
app.use(cors({ origin: 'https://parks-radar-frontend.onrender.com' }));
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
