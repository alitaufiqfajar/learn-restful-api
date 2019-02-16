const express = require('express');
const router = express.Router();

router.get('/', function (req, res) {
    res.send('welcome to learn api');
    console.log('connection to database success');
});

module.exports = router;