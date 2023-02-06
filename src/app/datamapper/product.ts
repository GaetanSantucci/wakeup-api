import { client } from '../service/dbClient.js';
import pg from 'pg';

import { CoreDataMapper } from './coreDatamapper';

class ProductDatamapper extends CoreDataMapper {
  tableName = 'associated_sale';
  columns = `"id", "name", "subtitle", "description", "price", "image"`

  createFunctionName = 'create_associated_sale';
  updateFunctionName = 'update_associated_sale';

  //& If need to create specific method for LocationDataMapper

}

const Product = new ProductDatamapper(client);
export { Product }