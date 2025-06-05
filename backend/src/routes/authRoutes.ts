// backend/src/routes/authRoutes.ts
import { Router } from 'express';
import { signup, login, getCurrentUser } from '../controllers/authController';
import { authMiddleware } from '../middlewares/authMiddleware';

const router = Router();

router.post('/signup', signup);
router.post('/login', login);
router.get('/me', authMiddleware, getCurrentUser);

export default router;
