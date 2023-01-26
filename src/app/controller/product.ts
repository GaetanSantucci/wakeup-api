import { Request, Response } from 'express';

import { Product } from '../datamapper/product.js';
import { ErrorApi } from '../service/errorHandler.js';

// ~ DEBUG CONFIG ~ //
import debug from 'debug';
const logger = debug('Controller');

const getAllProducts = async (req: Request, res: Response) => {
  try {

    const productsList = await Product.findAll();

    if (!productsList) throw new ErrorApi('Impossible d\'obtenir la liste des articles', req, res, 400);

    return res.status(200).json(productsList)

  } catch (err) {
    if (err instanceof Error) logger(err.message)
  }
}

const getProductById = async (req: Request, res: Response) => {
  try {

    const productId = +req.params.productId;
    const product = await Product.findOne(productId);

    if (!product) throw new ErrorApi('Article non trouvé', req, res, 400);

    return res.status(200).json(product)
  } catch (err) {
    if (err instanceof Error) logger(err.message)
  }
}

const createNewProduct = async (req: Request, res: Response) => {

  try {
    // const { name, description, image, price } = req.body
    const newProduct = await Product.create(req.body)

    if (newProduct) return res.status(200).json('L\'article a bien été crée');

  } catch (err) {
    if (err instanceof Error) logger(err.message)
  }
}

export { getAllProducts, getProductById, createNewProduct }