import { client } from '../service/dbClient.js';
import { CoreDataMapper } from './coreDatamapper.js';
import pg from 'pg';

// import debug from 'debug';
// const logger = debug('Datamapper');

class PlateDatamapper extends CoreDataMapper {

  tableName = 'plate';
  columns = `"id", "name", "subtitle", "description", "price", "image", "slug"`

  createFunctionName = 'create_plate';
  updateFunctionName = 'update_plate';

  //& If need to create specific method for LocationDataMapper
  async findByPlateId(plateId: number) {

    if (this.client instanceof pg.Pool) {
      const preparedQuery = {
        text: `SELECT associated_sale.*
                FROM plate
                INNER JOIN plate_has_associated_sale ON plate.id = plate_has_associated_sale.plate_id
                INNER JOIN associated_sale ON plate_has_associated_sale.associated_sale_id = associated_sale.id
                WHERE plate.id = $1;
              `,
        values: [plateId]
      };

      const result = await this.client.query(preparedQuery);
      console.log('result: ', result.rowCount);

      if (!result.rowCount) return null;

      return result.rows;
    }

  }
}

const Plate = new PlateDatamapper(client);
export { Plate }

