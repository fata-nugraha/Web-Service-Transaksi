-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 10:42 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transaction_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id_transaksi` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `no_akun_virtual` int(11) NOT NULL,
  `jadwal_film` date NOT NULL,
  `kursi` int(11) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `status_transaksi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id_transaksi`, `id_pengguna`, `id_film`, `no_akun_virtual`, `jadwal_film`, `kursi`, `waktu_transaksi`, `status_transaksi`) VALUES
(1, 1, 1, 123, '2019-11-06', 5, '2019-10-31 20:37:07', 'Pending'),
(2, 2, 3, 123, '2019-11-07', 10, '2019-10-31 16:40:07', 'Success'),
(3, 1, 4, 123, '2019-11-08', 8, '2019-10-29 12:08:03', 'Success'),
(4, 3, 1, 135, '2019-11-01', 17, '2019-10-30 00:00:00', 'Cancelled'),
(5, 3, 6, 135, '2019-11-01', 17, '2019-10-31 00:00:20', 'Success'),
(6, 2, 4, 135, '2019-11-01', 13, '2019-10-20 00:00:00', 'Pending'),
(7, 4, 4, 135, '2019-11-02', 11, '2019-11-01 01:00:00', 'Success'),
(8, 5, 5, 123, '2019-11-11', 17, '2019-10-30 09:00:00', 'Cancelled'),
(9, 3, 4, 123, '2019-11-08', 6, '2019-10-29 00:07:00', 'Pending'),
(10, 6, 3, 123, '2019-11-11', 11, '2019-11-11 03:00:00', 'Success');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
