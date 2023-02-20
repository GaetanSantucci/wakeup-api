// ~ ROUTER CONFIG ~ //

import { Router } from 'express';
const router = Router();

router.get('/api/v1', (req, res) => {
  return res.json('Welcome to the WAKE UP API')
})

import { router as PlateRouter } from './plate.js';
router.use(PlateRouter);

import { router as BlogRouter } from './blog.js';
router.use(BlogRouter);

import { router as DeliveryRouter } from './delivery.js';
router.use(DeliveryRouter);

import { router as ContactRouter } from './contact.js';
router.use(ContactRouter);

export { router };