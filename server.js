'use strict';

var express = require('express');
var PORT = 9000;

var app = express();
app.get('/', function(req, res) {
  res.send('Hello World! Node.js is running on Ubuntu Docker container');
});

app.listen(PORT);
console.log('Running server on http://localhost:' + PORT);
