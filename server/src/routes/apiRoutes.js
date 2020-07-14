const express = require('express');
const router = express.Router();

// Controller
const controller = require('../controllers/apiController');

router.get('/', controller.getAllProducts);

module.exports = router;