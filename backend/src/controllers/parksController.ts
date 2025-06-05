// backend/src/controllers/parksController.ts

import { Request, Response, NextFunction } from 'express';
import pool from '../db';
import cloudinary from '../services/cloudinaryService';
// import fs from 'fs'; // if using multer

export async function getAllParks(req: Request, res: Response, next: NextFunction) {
  try {
    // Optionally parse filters from req.query, e.g. state, region, etc.
    const { rows } = await pool.query('SELECT * FROM parks');
    res.json(rows);
  } catch (err) {
    next(err);
  }
}

export async function getParkById(req: Request, res: Response, next: NextFunction) {
  try {
    const id = parseInt(req.params.id, 10);
    const { rows } = await pool.query('SELECT * FROM parks WHERE park_id = $1', [id]);

    if (!rows.length) {
      res.status(404).json({ message: 'Park not found' });
      return;
    }

    res.json(rows[0]);
  } catch (err) {
    next(err);
  }
}

export async function createPark(req: Request, res: Response, next: NextFunction) {
  try {
    const { park_name, park_description, park_type, park_state, park_region, park_latitude, park_longitude, image_url } = req.body;

    // If you accepted a file via multer middleware (upload.single('image')):
    // if ((req as any).file) {
    //   const tempPath = (req as any).file.path;
    //   const uploadRes = await cloudinary.uploader.upload(tempPath, { folder: 'parks' });
    //   fs.unlinkSync(tempPath);
    //   image_url = uploadRes.secure_url;
    // }

    const { rows } = await pool.query(
      `INSERT INTO parks
       (park_name, park_description, park_type, park_state, park_region, park_latitude, park_longitude, image_url)
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
       RETURNING *`,
      [park_name, park_description, park_type, park_state, park_region, park_latitude, park_longitude, image_url]
    );

    res.status(201).json(rows[0]);
  } catch (err) {
    next(err);
  }
}

export async function updatePark(req: Request, res: Response, next: NextFunction) {
  try {
    const id = parseInt(req.params.id, 10);
    const { park_name, park_description, park_type, park_state, park_region, park_latitude, park_longitude, image_url } = req.body;

    const { rows } = await pool.query(
      `UPDATE parks
       SET park_name = $1,
           park_description = $2,
           park_type = $3,
           park_state = $4,
           park_region = $5,
           park_latitude = $6,
           park_longitude = $7,
           image_url = $8
       WHERE park_id = $9
       RETURNING *`,
      [park_name, park_description, park_type, park_state, park_region, park_latitude, park_longitude, image_url, id]
    );

    if (!rows.length) {
      res.status(404).json({ message: 'Park not found' });
      return;
    }

    res.json(rows[0]);
  } catch (err) {
    next(err);
  }
}

export async function deletePark(req: Request, res: Response, next: NextFunction) {
  try {
    const id = parseInt(req.params.id, 10);
    const result = await pool.query('DELETE FROM parks WHERE park_id = $1 RETURNING *', [id]);

    if (!result.rows.length) {
      res.status(404).json({ message: 'Park not found' });
      return;
    }

    res.json({ message: 'Park deleted' });
  } catch (err) {
    next(err);
  }
}
