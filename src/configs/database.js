//database.js
const mysql = require('mysql');
const db = mysql.createPool({
  host: 'asuna.kawaiihost.net',
  user: 'jznzyogy_yoviard',
  password: '@yovi2003',
  database: 'jznzyogy_apiberitaexpress'
});

module.exports = db;