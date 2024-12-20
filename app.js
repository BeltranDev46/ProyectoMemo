const express = require('express');
const app = express();

const contadorRouter = require('./src/Routes/index.js');

app.use(express.static('Public'));
app.use(express.json());

app.use('/', contadorRouter);

const PORT = 3000;

app.listen(PORT, () =>
{
  console.log(`Iniciamos en http://localhost:${PORT}`);
});
