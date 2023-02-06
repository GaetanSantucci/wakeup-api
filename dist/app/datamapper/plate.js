var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
import { client } from '../service/dbClient.js';
import { CoreDataMapper } from './coreDatamapper.js';
import pg from 'pg';
// import debug from 'debug';
// const logger = debug('Datamapper');
class PlateDatamapper extends CoreDataMapper {
    constructor() {
        super(...arguments);
        this.tableName = 'plate';
        this.columns = `"id", "name", "subtitle", "description", "price", "image", "slug"`;
        this.createFunctionName = 'create_plate';
        this.updateFunctionName = 'update_plate';
    }
    //& If need to create specific method for LocationDataMapper
    findByPlateId(plateId) {
        return __awaiter(this, void 0, void 0, function* () {
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
                const result = yield this.client.query(preparedQuery);
                console.log('result: ', result.rowCount);
                if (!result.rowCount)
                    return null;
                return result.rows;
            }
        });
    }
}
const Plate = new PlateDatamapper(client);
export { Plate };
