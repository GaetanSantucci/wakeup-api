// ~ ENVIRONMENT CONFIG  ~ //
import 'dotenv/config';

// ~ DEBUG CONFIG ~ //

import debug from 'debug';
const logger = debug('Entrypoint');

// ~ EXPRESS CONFIG ~ //
import express from 'express';
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

import { router } from './app/router/index.js';
// import { _404 } from './app/service/errorHandling.js';

// ~ LAUNCHER CONFIG ~ //
app.use(router);
// app.use(_404)

const PORT = process.env.PORT ?? 3000;
app.listen(PORT, () => {
  logger(` \x1b[1;33m⚡⚡ http://localhost:${PORT} ⚡⚡ \x1b[0m`)
});