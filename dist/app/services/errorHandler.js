// eslint-disable-next-line @typescript-eslint/no-unused-vars
import { errorLoggerHandling } from './errorLoggerHandling.js';
class ErrorApi extends Error {
    constructor(message, req, res, statusCode = 500) {
        super(message);
        res.status(statusCode).json({ message: message });
        // create errors logs
        errorLoggerHandling(message, req, res);
    }
}
export { ErrorApi };
