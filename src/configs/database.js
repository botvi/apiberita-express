//database.js
const mysql = require('mysql');
const db = mysql.createPool({
  host: 'btekbezsmyyodrop3iq7-mysql.services.clever-cloud.com',
  user: 'uiseqsctqibwyp2w',
  password: 'HrVYUYhcY5VPIqGR1c58',
  database: 'btekbezsmyyodrop3iq7'
});

module.exports = db;