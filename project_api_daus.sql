-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2017 at 09:18 AM
-- Server version: 5.7.20
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_api_daus`
--

-- --------------------------------------------------------

--
-- Table structure for table `famili_tanaman`
--

CREATE TABLE `famili_tanaman` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_tanaman`
--

CREATE TABLE `master_tanaman` (
  `id` int(11) NOT NULL,
  `id_source` int(11) NOT NULL,
  `nama_tanaman` varchar(50) NOT NULL,
  `nama_ilmiah` varchar(50) NOT NULL,
  `famili` varchar(255) NOT NULL,
  `pemanfaatan` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `peneliti` varchar(225) NOT NULL,
  `nama_lembaga` varchar(100) NOT NULL,
  `tempat_penelitian` varchar(200) NOT NULL,
  `nama_etnis` varchar(50) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `waktu_penelitian` varchar(100) NOT NULL,
  `metode_penelitian` varchar(50) NOT NULL,
  `ketinggian_lokasi` varchar(50) NOT NULL,
  `bentuk_pemanfaatan` varchar(100) NOT NULL,
  `kandungan` varchar(100) NOT NULL,
  `cara_penggunaan` varchar(100) NOT NULL,
  `khasiat` varchar(50) NOT NULL,
  `media_tanam` varchar(50) NOT NULL,
  `ciri_fisik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_tanaman`
--

INSERT INTO `master_tanaman` (`id`, `id_source`, `nama_tanaman`, `nama_ilmiah`, `famili`, `pemanfaatan`, `latitude`, `longitude`, `peneliti`, `nama_lembaga`, `tempat_penelitian`, `nama_etnis`, `tujuan`, `waktu_penelitian`, `metode_penelitian`, `ketinggian_lokasi`, `bentuk_pemanfaatan`, `kandungan`, `cara_penggunaan`, `khasiat`, `media_tanam`, `ciri_fisik`) VALUES
(1, 1, 'luwak white coffee', 'luwak', '1', 'coba', 'latitude', 'long', 'juned', 'tester', 'lab', 'asdf', 'testing', 'siang', 'cobacoa', '100', 'coba', 'minyak', 'dioles', 'obat', 'cocok', 'tes'),
(2, 1, 'luwak', 'luwak', 'coba', 'coba', 'latitude', 'long', 'juned', 'tester', 'lab', 'asdf', 'testing', 'siang', 'cobacoa', '100', 'coba', 'minyak', 'dioles', 'obat', 'cocok', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `source_web`
--

CREATE TABLE `source_web` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `source_web`
--

INSERT INTO `source_web` (`id`, `domain`) VALUES
(1, 'Website A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `famili_tanaman`
--
ALTER TABLE `famili_tanaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_tanaman`
--
ALTER TABLE `master_tanaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source_web`
--
ALTER TABLE `source_web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `famili_tanaman`
--
ALTER TABLE `famili_tanaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_tanaman`
--
ALTER TABLE `master_tanaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `source_web`
--
ALTER TABLE `source_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
