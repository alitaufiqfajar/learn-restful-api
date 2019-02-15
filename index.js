const express = require('express');
const app = express();
const port = 3000;
const bodyParser = require('body-parser');

// ROUTES
const base = require('./routes/index');
const users = require('./routes/users');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use('/', base);
app.use('/users', users);

app.listen(port, () => console.log(`app start at port: ${port}`));