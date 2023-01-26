// ~ ROUTER CONFIG ~ //
import { Router } from 'express';
const router = Router();
router.get('/api/v1', (req, res) => {
    return res.json('Welcome to the WAKE UP API');
});
export { router };
