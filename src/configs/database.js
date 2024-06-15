//database.js
const mysql = require('mysql');
const db = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'api_portal'
});

module.exports = db;