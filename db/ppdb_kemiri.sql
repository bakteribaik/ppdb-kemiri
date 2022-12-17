-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 01:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb_kemiri`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_admin`
--

CREATE TABLE `db_admin` (
  `id` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass_user` varchar(100) NOT NULL,
  `nama_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_admin`
--

INSERT INTO `db_admin` (`id`, `username`, `pass_user`, `nama_user`) VALUES
(1, 'admin', '123', 'Achmad Takyudin');

-- --------------------------------------------------------

--
-- Table structure for table `db_ayah`
--

CREATE TABLE `db_ayah` (
  `id` int(11) NOT NULL,
  `nik_siswa` varchar(100) NOT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `pendidikan_ayah` varchar(10) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `telp_ayah` varchar(25) NOT NULL,
  `agama_ayah` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_ayah`
--

INSERT INTO `db_ayah` (`id`, `nik_siswa`, `nama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `telp_ayah`, `agama_ayah`) VALUES
(10, '3674043110000005', 'Muhammad Amin', 'SLTA', 'Wirausaha', 'Lorem Ipsum', '0', 'Islam'),
(11, '3674043110000006', 'Muhammad Amin', 'SLTA', 'Wirausaha', 'Lorem Ipsum', '0', 'Islam'),
(12, '3674043110000005', '', '', '', '', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_calonsiswa`
--

CREATE TABLE `db_calonsiswa` (
  `id_daftar` int(6) NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `npsn` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` varchar(100) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `statuses` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_daftar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_calonsiswa`
--

INSERT INTO `db_calonsiswa` (`id_daftar`, `nama_calon`, `nik`, `npsn`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `telp`, `statuses`, `keterangan`, `tgl_daftar`) VALUES
(36, 'Zulfikar Alwi', '3674043110000005', '123', 'Tangerang', '31 Oktober 200', 'Islam', 'Jl. Jombang Raya, Gg. Asem, RT03/08 No.120A, Jombang Ciputat, Tangerang Selatan, Banten.', '085161124894', 'valid', '', '12 December 2022 00:53'),
(37, 'Muhammad Rizky Julianto', '3674043110000006', '123', 'Tangerang', '15 Juli 2000', 'Islam', 'Jl. Jombang Raya, Gg. Asem, RT03/08 No.120A, Jombang Ciputat, Tangerang Selatan, Banten.', '085161124894', 'valid', '', '12 December 2022 00:56'),
(38, 'Zulfikar Alwi', '3674043110000005', '123', 'Tangerang', '31 Oktober 200', 'Islam', 'Jl. Jombang Raya, Gg. Asem, RT03/08 No.120A, Jombang Ciputat, Tangerang Selatan, Banten.', '085161124894', 'proses', '', '13 December 2022 11:06');

-- --------------------------------------------------------

--
-- Table structure for table `db_ibu`
--

CREATE TABLE `db_ibu` (
  `id` int(6) NOT NULL,
  `nik_siswa` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `pendidikan_ibu` varchar(10) NOT NULL,
  `pekerjaan_ibu` varchar(25) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `telp_ibu` varchar(25) NOT NULL,
  `agama_ibu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_ibu`
--

INSERT INTO `db_ibu` (`id`, `nik_siswa`, `nama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `telp_ibu`, `agama_ibu`) VALUES
(10, '3674043110000005', 'Emmawati', 'SLTA', 'Ibu Rumah Tangga', 'Lorem Ipsum', '0', 'Islam'),
(11, '3674043110000006', '', '', '', '', '0', ''),
(12, '3674043110000005', 'Emmawati', '', '', '', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_wali`
--

CREATE TABLE `db_wali` (
  `id` int(6) NOT NULL,
  `nik_siswa` varchar(100) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `pendidikan_wali` varchar(100) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(100) NOT NULL,
  `telp_wali` varchar(25) NOT NULL,
  `agama_wali` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_wali`
--

INSERT INTO `db_wali` (`id`, `nik_siswa`, `nama_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `telp_wali`, `agama_wali`) VALUES
(11, '3674043110000005', '', '', '', '', '0', ''),
(12, '3674043110000006', '', '', '', '', '0', ''),
(13, '3674043110000005', '', '', '', '', '0', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_admin`
--
ALTER TABLE `db_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_ayah`
--
ALTER TABLE `db_ayah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_calonsiswa`
--
ALTER TABLE `db_calonsiswa`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `db_ibu`
--
ALTER TABLE `db_ibu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_wali`
--
ALTER TABLE `db_wali`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_admin`
--
ALTER TABLE `db_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_ayah`
--
ALTER TABLE `db_ayah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_calonsiswa`
--
ALTER TABLE `db_calonsiswa`
  MODIFY `id_daftar` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `db_ibu`
--
ALTER TABLE `db_ibu`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_wali`
--
ALTER TABLE `db_wali`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
