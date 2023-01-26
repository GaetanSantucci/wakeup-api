import { getAllProducts, getProductById, createNewProduct } from '../controller/product';
// ~ ROUTER CONFIG ~ //
import { Router } from 'express';
const router = Router();

router.get('/product', getAllProducts);
router.get('/products/:productId', getProductById);
router.post('/products', createNewProduct);

export { router };