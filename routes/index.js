const express = require('express');
const router = express.Router();
const dbConnect = require('../config/database');

router.get('/', function (req, res) {
    dbConnect.connect(function (err, row, fields) {
        if (!err) {
            res.send('welcome to learn api');
            console.log('connection to database success');
        } else {
            throw(err);
        }
    });
});

module.exports = router;