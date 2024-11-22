const express = require('express');
const app = express();

const contadorRouter = require('./src/routes');

app.use(express.static('public'));
app.use(express.json());

app.use('/', contadorRouter);

const PORT = 80;

app.listen(PORT, () =>
{
  console.log(`Iniciamos en ${PORT}`);
});
