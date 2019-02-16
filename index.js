const express = require('express');
const app = express();
const port = 4000;
const bodyParser = require('body-parser');

// ROUTES
const base = require('./routes/index');
const users = require('./routes/users');

//enable CORS
app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use('/', base);
app.use('/users', users);

app.listen(port, () => console.log(`app start at port: ${port}`));