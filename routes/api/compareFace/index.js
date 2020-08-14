const express = require('express');
const controller = require('./compareFace');
const router = express.Router();

router.post('/upload', controller.upload);
router.post('/similar', controller.similar);

module.exports = router;