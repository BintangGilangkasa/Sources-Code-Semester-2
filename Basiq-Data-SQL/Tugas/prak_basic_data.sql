-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 03:53 AM
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
-- Database: `prak_basic_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip_dosen` int(15) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `umur` int(11) NOT NULL,
  `jenis_kelamin` enum('Laki_Laki','Perempuan') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha','Khong hucu','Tuhan Yang Maha Esa') NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `gelar` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(15) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Sains Data'),
(2, 'Informatika'),
(3, 'Teknologi Informasi'),
(4, 'Teknologi Game');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` float NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat_asal` varchar(255) NOT NULL,
  `alamat_tinggal` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha','Khonghucu','Tuhan Yang Maha Esa') NOT NULL,
  `gol_darah` char(2) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_jurusan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `alamat_asal`, `alamat_tinggal`, `tgl_lahir`, `jenis_kelamin`, `agama`, `gol_darah`, `no_hp`, `foto`, `id_jurusan`) VALUES
(1, 23090200000, 'Bintang Gilangkasa', 'Desa Cepoko RT03/04, Kecamatan Berbek, Kabupaten Nganjuk, Jawa Timur', 'Desa Pulutan RT02/03, Kecamatan Sidorejo, Kota Salatiga', '2005-02-24', 'Laki-laki', 'Tuhan Yang Maha Esa', 'B', '0823333333333', 'Foto_L_B.jpg', 1),
(2, 2309020000, 'Fhaisal Aviv Adam Satria', 'Dusun Patihan, Desa Candirejo, Kecamatan Loceret, Kabupaten Nganjuk', 'keputih, Kecamatan Sukolilo, Kabupaten Surabaya', '2004-04-15', 'Laki-laki', 'Islam', 'AB', '082223000001', 'foto.jpg', 2),
(3, 2309020000, 'Erlanidun', 'Dusun Ngetos, Desa Cepoko, Kecamatan Berbek, Kabupaten Nganjuk', 'Dusun Ngetos, Desa Cepoko, Kecamatan Berbek, Kabupaten Nganjuk', '2004-06-17', 'Laki-laki', 'Kristen', 'B', '082223000002', 'Foto_L_B.jpg', 2),
(4, 2309020000, 'Linggo Manggolo', 'Malaysia', 'Pulutan', '2006-05-12', 'Perempuan', 'Khonghucu', 'O', '082223000003', 'foto.jpg', 4),
(5, 2309020000, 'Saraswati', 'Bekasi', 'Winong', '2004-05-06', 'Perempuan', 'Katolik', 'O', '082223000004', 'foto.jpg', 1),
(6, 2309020000, 'Bulan Lllita', 'Surabaya', 'Ketintang', '2004-08-13', 'Perempuan', 'Tuhan Yang Maha Esa', 'O', '082223000004', 'foto.jpg', 2),
(7, 2309020000, 'Laili Jyoti', 'Malang', 'Gading Kasri', '2004-04-13', 'Perempuan', 'Islam', 'O', '082223000007', 'foto.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_mk` int(15) NOT NULL,
  `nama_mk` varchar(20) NOT NULL,
  `kode_mk` int(11) NOT NULL,
  `sks` int(2) NOT NULL,
  `semester` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orang_tua`
--

CREATE TABLE `orang_tua` (
  `id_orangtua` int(20) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(40) NOT NULL,
  `nohp_ayah` varchar(20) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(40) NOT NULL,
  `nohp_ibu` varchar(20) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `keterangan` text NOT NULL,
  `id_mahasiswa` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orang_tua`
--

INSERT INTO `orang_tua` (`id_orangtua`, `nama_ayah`, `pekerjaan_ayah`, `nohp_ayah`, `nama_ibu`, `pekerjaan_ibu`, `nohp_ibu`, `alamat`, `keterangan`, `id_mahasiswa`) VALUES
(1, 'Drs. Angkasa M.Eng', 'Programer', '082515612001', 'Dr. Zakiyah Ph.d', 'Dosen', '081515613001', 'Surabaya', 'sudah aktif', 1),
(2, 'Drs. Gilang B.Eng', 'data analyst', '082515612002', 'Dr. Wilda S.kep', 'Perawat', '081515613002', 'Malang', 'sudah aktif', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(15) NOT NULL,
  `nama_ruang` varchar(20) NOT NULL,
  `kapasitas` int(3) NOT NULL,
  `lokasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip_dosen`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_mk`);

--
-- Indexes for table `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`id_orangtua`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `nip_dosen` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_mk` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `id_orangtua` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(15) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
