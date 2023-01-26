// ~ ROUTER CONFIG ~ //

import { Router } from 'express';
const router = Router();

router.get('/api/v1', (req, res) => {
  return res.json('Welcome to the WAKE UP API')
})

import { router as ProductRouter } from './product.js';
router.use(ProductRouter);

import { router as BlogRouter } from './blog.js';
router.use(BlogRouter);

export { router };