var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello env-production!');
});

var server = app.listen(3000, () => {
  var host = server.address().address;
  var port = server.address().port;
  console.log('App listening at https://%s:%s', host, port);
});

