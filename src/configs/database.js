//database.js
const mysql = require('mysql');
const db = mysql.createPool({
  host: 'localhost',
  user: 'jznzyogy_yoviard',
  password: '@yovi2003',
  database: 'jznzyogy_apiberitaexpress'
});

module.exports = db;