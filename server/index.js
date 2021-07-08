const express = require('express')
const app = express()
var json = require('./response.json');
 
app.get('/noticias', function (req, res) {
  res.send(json)
})
 
app.listen(3000)