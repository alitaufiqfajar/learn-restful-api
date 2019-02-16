const express = require('express');
const router = express.Router();
const sql = require('../config/database');
const query = require('../models/usersModels');
const response = require('../response');

router.get('/', function (req, res) {
    sql.query(query.getAllUsers, function (err, rows, fields) {
        if (err) {
            console.log(err);
        } else {
            response.success(rows, res);
        }
    });
});

router.get('/:id', function (req, res) {
    sql.query(query.getUser, req.params.id, function (err, rows, fields) {
        if (err) {
            console.log(err);
        } else {
            response.success(rows, res);
        }
    });
});

router.post('/addUser', function (req, res) {
    const value = Object.keys(req.body).map(key => req.body[key]);
    console.log(value)
    sql.query(query.addUser, [value], function (err, rows, fields) {
        if (err) {
            console.log(err);
        } else {
            response.addSuccess(rows, res);
        }
    })
});

router.delete('/deleteUser/:id', function (req, res) {
    sql.query(query.deleteUser, req.params.id, function (err, rows, fields) {
        if (err) {
            console.log(err);
        } else {
            response.deleteSuccess(rows, res);
        }
    });
});

router.put('/editUser/:id', function (req, res) {
    const id = req.params.id;
    const value = Object.keys(req.body).map(key => req.body[key]);
    value.push(id);

    sql.query(query.editUser, value, function (err, rows, fields) {
        if (err) {
            console.log(err);
        } else {
            response.editSuccess(rows, res);
        }
    });
    console.log(value);
});

module.exports = router;