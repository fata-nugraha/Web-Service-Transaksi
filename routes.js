'use strict'

module.exports = function (app) {
  var transactionController = require('./controller')

  app.route('/')
    .get(transactionController.index)

  app.route('/updateStatus')
    .put(transactionController.updateStatus)

  app.route('/addTransaction')
    .post(transactionController.addTransaction)

  app.route('/returnAllTransaction/:id_pengguna')
    .get(transactionController.returnAllTransaction)
}
