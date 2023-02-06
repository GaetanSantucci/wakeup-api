import { client } from '../service/dbClient.js';
import { CoreDataMapper } from './coreDatamapper.js';

// import debug from 'debug';
// const logger = debug('Datamapper');

class PlateDatamapper extends CoreDataMapper {

  tableName = 'plate';
  columns = `"id", "name", "subtitle", "description", "price", "image", "slug"`

  createFunctionName = 'create_plate';
  updateFunctionName = 'update_plate';

  //& If need to create specific method for LocationDataMapper

}

const Plate = new PlateDatamapper(client);
export { Plate }

