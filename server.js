var express = require('express')
var cors = require('cors')
var app = express()
var port = process.env.PORT || 3030
var bodyParser = require('body-parser')

app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())
app.use(cors())

var routes = require('./routes')
routes(app)

app.listen(port)
console.log('API port : ' + port)
