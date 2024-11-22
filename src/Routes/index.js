const express = require('express');
const router = express.Router();

const contadorController = require('../controllers/contadorController');

router.get('/contador', contadorController.getContador);
router.get('/incrementar', contadorController.incrementarContador);

module.exports = router;

