-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 07:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_menu`
--

CREATE TABLE `detail_menu` (
  `id_detail` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` varchar(100) NOT NULL,
  `status` enum('proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_menu`
--

INSERT INTO `detail_menu` (`id_detail`, `id_pelanggan`, `id_pesanan`, `id_menu`, `jumlah`, `total`, `status`) VALUES
(1, 2, 2, 1, 3, 'Rp 30.000', 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `harga_menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga_menu`) VALUES
(1, 'Nasi Goreng', 'Rp 10.000'),
(2, 'Ayam Geprek', 'Rp 12.000'),
(3, 'Ayam Kremes', 'Rp 12.000'),
(4, 'Nasi Rames', 'Rp 10.000');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `no_telepon`, `alamat`) VALUES
(1, 'Andi', '0811130000', 'Salatiga'),
(2, 'Andika', '0812230000', 'Boyolali'),
(3, 'Fhaisal Aviv', '0813330000', 'Surabaya'),
(4, 'Erlan', '0814430000', 'Semarang'),
(5, 'Akmal', '0815530000', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pesanan` date NOT NULL,
  `status` enum('Proses','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_pelanggan`, `tanggal_pesanan`, `status`) VALUES
(1, 1, '2024-06-01', 'Proses'),
(2, 2, '2024-06-04', 'Proses');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_menu`
--
ALTER TABLE `detail_menu`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_menu`
--
ALTER TABLE `detail_menu`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
