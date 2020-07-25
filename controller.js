'use strict'

var response = require('./res')
var connection = require('./conn')

exports.returnAllTransaction = function (req, res) {
  var idPengguna = req.params.id_pengguna
  connection.query('SELECT * FROM transaction where id_pengguna = ?',
    [idPengguna],
    function (error, rows, fields) {
      if (error) {
        console.log(error)
      } else {
        response.ok(rows, res)
      }
    })
}

exports.updateStatus = function (req, res) {
  var idTransaksi = req.body.id_transaksi
  var statusTransaksi = req.body.status_transaksi
  if (statusTransaksi === 'Cancelled' || statusTransaksi === 'Success') {
    connection.query('UPDATE transaction SET status_transaksi = ? WHERE id_transaksi = ?',
      [statusTransaksi, idTransaksi],
      function (error, rows, fields) {
        if (error) {
          console.log(error)
        } else {
          response.ok('Status updated to ' + statusTransaksi, res)
        }
      })
  } else {
    response.error('Unknown status : ' + statusTransaksi, res)
  }
}

exports.addTransaction = function (req, res) {
  var idPengguna = req.body.id_pengguna
  var idFilm = req.body.id_film
  var noAkunVirtual = req.body.no_akun_virtual
  var jadwalFilm = req.body.jadwal_film
  var kursi = req.body.kursi
  var d = new Date()
  var waktuTransaksi = d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + d.getDate() + ' ' + d.getHours() + ':' + d.getMinutes() + ':' + d.getSeconds()
  var statusTransaksi = 'Pending'

  connection.query('INSERT INTO transaction (id_pengguna, id_film, no_akun_virtual, jadwal_film, kursi, waktu_transaksi, status_transaksi) values (?,?,?,?,?,?,?)',
    [idPengguna, idFilm, noAkunVirtual, jadwalFilm, kursi, waktuTransaksi, statusTransaksi],
    function (error, result) {
      if (error) {
        console.log(error)
      } else {
        var data = { id_transaksi: result.insertId }
        response.ok(data, res)
      }
    })
}

exports.index = function (req, res) {
  response.ok('Web Service Transaction (Node JS)', res)
}
