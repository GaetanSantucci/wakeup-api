//~import modules
import { formattedDate } from '../utils/formattedDate.js';
import * as fs from 'fs';
//~ resolve __dirname
import { resolve, join } from 'path';
const __dirname = resolve(`./src/app/services`);
// resolve will define your root file
//~ Logger
import debug from 'debug';
const logger = debug('ErrorHandling');
/**
 * Manage error
 */
// eslint-disable-next-line @typescript-eslint/no-unused-vars
function errorLoggerHandling(message, req, res) {
    const actualDate = new Date();
    // format error message : Date + url + message
    const logMessage = `${actualDate.toLocaleString()} - ${req.url} - ${message}\r`;
    // date format YYYY-MONTH-DD
    const fileName = `${formattedDate}.log`;
    // create a log and write it in your file
    fs.appendFile(join(__dirname, `../../../logs/${fileName}`), logMessage, (error) => {
        if (error)
            logger(error);
    });
}
export { errorLoggerHandling };
