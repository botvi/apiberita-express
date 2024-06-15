//database.js
const mysql = require('mysql');
const db = mysql.createPool({
  host: 'bnlq5mgcgfkocuinoy8h-mysql.services.clever-cloud.com',
  user: 'uel1kswlffjpwlrk',
  password: 'TfeZeNf7SBPgw0jCw9XD',
  database: 'bnlq5mgcgfkocuinoy8h'
});

module.exports = db;