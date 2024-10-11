-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 04:32 AM
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
-- Database: `praktek_mandiri`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(30) NOT NULL,
  `alamat_anggota` varchar(225) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `id_pinjam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `alamat_anggota`, `no_hp`, `email`, `id_pinjam`) VALUES
(1, 'Bintang Gilangkasa', 'Nganjuk', NULL, 'bintang@gmail.com', 2),
(2, 'David Firmanda', 'Yogyakarta', '082223000002', 'David@gmail.com', 1),
(3, 'Fhaisal Aviv', 'Surabaya', '082223000003', 'fhaisal@gmail.com', 0),
(4, 'Ihab Hasanain', 'Bandung', '082223000004', 'Ihab@gmail.com', 3),
(5, 'Boy', 'Kendari', '082223000005', 'Boy@gmail.com', 0),
(6, 'Sampoerna', 'Kediri', '08222300306', 'sampoe@gmail', 0),
(7, 'Ogya', 'Surabaya', NULL, 'Ogya@gmail', 0);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `tahun_terbit` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `penulis`, `tahun_terbit`) VALUES
(1, 'Garis Waktu', 'Fiersa Besari', 'September 2021'),
(2, 'Catatan Juang: sebuah konspirasi alam semesta', 'Fiersa Besari', '2017'),
(3, 'Laut Bercerita', 'Leila S. Chudori', '2017'),
(4, 'Filosofi Teras', 'Henry Manampiring', '26 November 2018');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjam` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjam`, `id_anggota`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(1, 2, 4, '2024-05-01', '2024-05-09'),
(2, 1, 4, '2024-06-01', '2024-06-06'),
(3, 4, 3, '2024-03-01', '2024-03-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
