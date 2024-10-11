-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 06:54 AM
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
-- Database: `kursus_uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `id_instruktur` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `spesialisasi` varchar(225) NOT NULL,
  `kontak_info` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `id_kursus` int(11) NOT NULL,
  `nama_kursus` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `persyaratan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `id_kursus` int(11) NOT NULL,
  `status` enum('terdaftar','menunggu pembayaran','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(11) NOT NULL,
  `nama_peserta` varchar(225) NOT NULL,
  `alamat_email` varchar(225) NOT NULL,
  `tangga_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sesi_kelas`
--

CREATE TABLE `sesi_kelas` (
  `id_sesi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `platform` enum('Zoom','Google Meet') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`id_instruktur`);

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`id_kursus`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `sesi_kelas`
--
ALTER TABLE `sesi_kelas`
  ADD PRIMARY KEY (`id_sesi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `id_instruktur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `id_kursus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sesi_kelas`
--
ALTER TABLE `sesi_kelas`
  MODIFY `id_sesi` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
