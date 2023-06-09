var express = require('express')
var cors = require('cors')
const mysql = require('mysql2');
require('dotenv').config()

const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE
});

var app = express()
app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
    res.json('hello world!');
  });

app.get('/address', (req, res) => {
    connection.query('SELECT * FROM address', (err, results) => {
      if (err) {
        console.error('Error executing query: ' + err.stack);
        return;
      }
      res.json(results);
    });
  });

app.listen(5000, function () {
  console.log('CORS-enabled web server listening on port 5000')
})