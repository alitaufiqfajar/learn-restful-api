const mysql = require('mysql');
const dbConnect = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password:'',
    database:'db_learn_api'
});
dbConnect.connect();
module.exports = dbConnect;