-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 09:57 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dealermotorsukamaju`
--

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `id_motor` int(11) NOT NULL,
  `nama_motor` varchar(20) NOT NULL,
  `harga_motor` bigint(15) NOT NULL,
  `stok` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motor`
--

INSERT INTO `motor` (`id_motor`, `nama_motor`, `harga_motor`, `stok`) VALUES
(1, 'Yamaha Scorpion', 20000000, '10'),
(2, 'Yamaha Mio', 15000000, '15'),
(3, 'Yamaha Nmax', 18000000, '15'),
(4, 'Yamaha Fino', 15000000, '15'),
(5, 'Yamaha Jupiter', 10000000, '15'),
(6, 'Honda Beat', 12000000, '20'),
(7, 'Honda Scoopy', 17000000, '10'),
(8, 'Honda CBR', 20000000, '10'),
(9, 'Suzuki Satria Fu', 20000000, '20'),
(10, 'Suzuki Nex', 13000000, '10');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `jk_pegawai` varchar(2) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `alamat_pegawai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `jk_pegawai`, `no_telepon`, `alamat_pegawai`) VALUES
(1, 'Ajun', 'L', '081234567891', 'Jalan Sukasuka'),
(2, 'Andi', 'L', '081345678329', 'Jalan Makmur'),
(3, 'Budi', 'L', '081936574312', 'Jalan Srikaya'),
(4, 'Bambang', 'L', '081357658434', 'Jalan Bambu'),
(5, 'Bintang', 'L', '081934765545', 'Jalan Durian'),
(6, 'Dinda', 'P', '082345675432', 'Jalan Rambutan'),
(7, 'Mawar', 'P', '082987456743', 'Jalan Mawar'),
(8, 'Putri', 'P', '082976549871', 'Jalan Violet'),
(9, 'Nina', 'P', '082785435698', 'Jalan Pantura'),
(10, 'Tuti', 'P', '082567823491', 'Jalan Nuri');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `jk_pembeli` varchar(2) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `alamat_pembeli` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `jk_pembeli`, `no_telepon`, `alamat_pembeli`) VALUES
(1, 'Santoso', 'L', '082396754309', 'Jalan Parkit'),
(2, 'Naufal', 'L', '081309564734', 'Jalan Kenari'),
(3, 'Bagong', 'L', '082657821098', 'Jalan Pipit'),
(4, 'Dimas', 'L', '081657443029', 'Jalan Merbabu'),
(5, 'Junaidi', 'L', '082765091285', 'Jalan Merapi'),
(6, 'Santi', 'P', '081965015431', 'Jalan Perkutut'),
(7, 'Mirna', 'P', '081750127542', 'Jalan Kangkung'),
(8, 'Nadia', 'P', '082874093647', 'Jalan Bayam'),
(9, 'Sarah', 'P', '081640104621', 'Jalan Pepaya'),
(10, 'Jesika', 'P', '082750984521', 'Jalan Kemangi');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_motor` int(3) NOT NULL,
  `id_pembeli` int(3) NOT NULL,
  `id_pegawai` int(3) NOT NULL,
  `jumlah_beli` int(3) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_motor`, `id_pembeli`, `id_pegawai`, `jumlah_beli`, `tgl_transaksi`) VALUES
(1, 1, 1, 1, 1, '2021-01-01'),
(2, 2, 2, 1, 1, '2021-01-02'),
(3, 3, 3, 1, 1, '2021-01-03'),
(4, 4, 4, 1, 1, '2021-01-04'),
(5, 5, 5, 1, 1, '2021-01-05'),
(6, 6, 6, 1, 1, '2021-01-10'),
(7, 7, 7, 1, 1, '2021-01-11'),
(8, 8, 8, 1, 1, '2021-01-12'),
(9, 9, 9, 1, 1, '2021-01-13'),
(10, 10, 10, 1, 1, '2021-01-14'),
(11, 2, 1, 2, 1, '2021-02-01'),
(12, 2, 2, 2, 1, '2021-02-02'),
(13, 2, 3, 2, 1, '2021-02-03'),
(14, 2, 4, 2, 1, '2021-02-04'),
(15, 2, 5, 2, 1, '2021-02-05'),
(16, 2, 6, 2, 1, '2021-02-20'),
(17, 2, 7, 2, 1, '2021-02-21'),
(18, 2, 8, 2, 1, '2021-02-22'),
(19, 2, 9, 2, 1, '2021-02-23'),
(20, 2, 10, 2, 1, '2021-02-24'),
(21, 10, 5, 3, 1, '2021-03-01'),
(22, 9, 4, 3, 1, '2021-03-02'),
(23, 8, 3, 3, 1, '2021-03-03'),
(24, 7, 2, 3, 1, '2021-03-04'),
(25, 6, 1, 3, 1, '2021-03-05'),
(26, 5, 10, 3, 1, '2021-03-20'),
(27, 1, 9, 3, 1, '2021-03-21'),
(28, 2, 8, 3, 1, '2021-03-22'),
(29, 3, 7, 3, 1, '2021-03-23'),
(30, 4, 6, 3, 1, '2021-03-24'),
(31, 1, 5, 4, 1, '2021-04-01'),
(32, 3, 4, 4, 1, '2021-04-02'),
(33, 5, 3, 4, 1, '2021-04-03'),
(34, 7, 2, 4, 1, '2021-04-04'),
(35, 9, 1, 4, 1, '2021-04-05'),
(36, 2, 10, 4, 1, '2021-04-06'),
(37, 4, 9, 4, 1, '2021-04-07'),
(38, 6, 8, 4, 1, '2021-04-08'),
(39, 8, 7, 4, 1, '2021-04-09'),
(40, 10, 6, 4, 1, '2021-04-10'),
(41, 1, 2, 5, 1, '2021-05-20'),
(42, 3, 4, 5, 1, '2021-05-21'),
(43, 5, 6, 5, 1, '2021-05-22'),
(44, 7, 8, 5, 1, '2021-05-23'),
(45, 9, 10, 5, 1, '2021-05-24'),
(46, 2, 1, 5, 1, '2021-05-25'),
(47, 4, 3, 5, 1, '2021-05-26'),
(48, 6, 5, 5, 1, '2021-05-27'),
(49, 8, 7, 5, 1, '2021-05-28'),
(50, 10, 9, 5, 1, '2021-05-29'),
(51, 1, 1, 6, 1, '2021-06-01'),
(52, 2, 2, 6, 1, '2021-06-02'),
(53, 3, 3, 6, 1, '2021-06-03'),
(54, 4, 4, 6, 1, '2021-06-04'),
(55, 5, 5, 6, 1, '2021-06-05'),
(56, 6, 6, 6, 1, '2021-06-10'),
(57, 7, 7, 6, 1, '2021-06-11'),
(58, 8, 8, 6, 1, '2021-06-12'),
(59, 9, 9, 6, 1, '2021-06-13'),
(60, 10, 10, 6, 1, '2021-06-14'),
(61, 2, 1, 7, 1, '2021-07-01'),
(62, 2, 2, 7, 1, '2021-07-02'),
(63, 2, 3, 7, 1, '2021-07-03'),
(64, 2, 4, 7, 1, '2021-02-04'),
(65, 2, 5, 7, 1, '2021-07-05'),
(66, 2, 6, 7, 1, '2021-07-20'),
(67, 2, 7, 7, 1, '2021-07-21'),
(68, 2, 8, 7, 1, '2021-07-22'),
(69, 2, 9, 7, 1, '2021-07-23'),
(70, 2, 10, 7, 1, '2021-07-24'),
(71, 10, 5, 8, 1, '2021-08-01'),
(72, 9, 4, 8, 1, '2021-08-02'),
(73, 8, 3, 8, 1, '2021-08-03'),
(74, 7, 2, 8, 1, '2021-08-04'),
(75, 6, 1, 8, 1, '2021-08-05'),
(76, 5, 10, 8, 1, '2021-08-20'),
(77, 1, 9, 8, 1, '2021-08-21'),
(78, 2, 8, 8, 1, '2021-08-22'),
(79, 3, 7, 8, 1, '2021-08-23'),
(80, 4, 6, 8, 1, '2021-08-24'),
(81, 1, 5, 9, 1, '2021-09-01'),
(82, 3, 4, 9, 1, '2021-09-02'),
(83, 5, 3, 9, 1, '2021-09-03'),
(84, 7, 2, 9, 1, '2021-09-04'),
(85, 9, 1, 9, 1, '2021-09-05'),
(86, 2, 10, 9, 1, '2021-09-06'),
(87, 4, 9, 9, 1, '2021-09-07'),
(88, 6, 8, 9, 1, '2021-09-08'),
(89, 8, 7, 9, 1, '2021-09-09'),
(90, 10, 6, 9, 1, '2021-09-10'),
(91, 1, 2, 10, 1, '2021-10-20'),
(92, 3, 4, 10, 1, '2021-10-21'),
(93, 5, 6, 10, 1, '2021-10-22'),
(94, 7, 8, 10, 1, '2021-10-23'),
(95, 9, 10, 10, 1, '2021-10-24'),
(96, 2, 1, 10, 1, '2021-10-25'),
(97, 4, 3, 10, 1, '2021-10-26'),
(98, 6, 5, 10, 1, '2021-10-27'),
(99, 8, 7, 10, 1, '2021-10-28'),
(100, 10, 9, 10, 1, '2021-10-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`id_motor`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `motor`
--
ALTER TABLE `motor`
  MODIFY `id_motor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
