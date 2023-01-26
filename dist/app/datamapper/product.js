import { client } from '../service/dbClient.js';
import { CoreDataMapper } from './coreDatamapper.js';
// import debug from 'debug';
// const logger = debug('Datamapper');
class ProductDatamapper extends CoreDataMapper {
    constructor() {
        super(...arguments);
        this.tableName = 'product';
        this.columns = `"id", "name", "description", "price", "image"`;
        this.createFunctionName = 'create_product';
        this.updateFunctionName = 'update_product';
        //& If need to create specific method for LocationDataMapper
    }
}
const Product = new ProductDatamapper(client);
export { Product };
