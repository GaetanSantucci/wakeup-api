import { client } from '../service/dbClient.js';
import { CoreDataMapper } from './coreDatamapper.js';
// import debug from 'debug';
// const logger = debug('Datamapper');
class PlateDatamapper extends CoreDataMapper {
    constructor() {
        super(...arguments);
        this.tableName = 'plate';
        this.columns = `"id", "name", "subtitle", "description", "price", "image", "slug"`;
        this.createFunctionName = 'create_plate';
        this.updateFunctionName = 'update_plate';
        //& If need to create specific method for LocationDataMapper
    }
}
const Plate = new PlateDatamapper(client);
export { Plate };
