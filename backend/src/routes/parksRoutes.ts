// backend/src/routes/parksRoutes.ts
import { Router } from 'express';
import {
  getAllParks,
  getParkById,
  createPark,
  updatePark,
  deletePark
} from '../controllers/parksController';
import { authMiddleware } from '../middlewares/authMiddleware';

const router = Router();

router.get('/', getAllParks);
router.get('/:id', getParkById);

// Protected: only authenticated users (or admins) can create/update/delete
router.post('/', authMiddleware, createPark);
router.put('/:id', authMiddleware, updatePark);
router.delete('/:id', authMiddleware, deletePark);

export default router;
