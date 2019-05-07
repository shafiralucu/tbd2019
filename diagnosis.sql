-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2019 at 03:45 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagnosis`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `idDokter` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `namaDokter` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `noTelp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `idGejala` int(11) NOT NULL,
  `namaGejala` varchar(50) NOT NULL,
  `idPenyakit` int(11) NOT NULL,
  `idPemeriksaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` int(11) NOT NULL,
  `namaPasienn` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `noTelp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `idPemeriksaan` int(11) NOT NULL,
  `idDokter` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `idPasien` int(11) NOT NULL,
  `idGejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `idPenyakit` int(11) NOT NULL,
  `namaPenyakit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tercatat`
--

CREATE TABLE `tercatat` (
  `idTercatat` int(11) NOT NULL,
  `idGejala` int(11) NOT NULL,
  `idPemeriksaann` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `terdiridari`
--

CREATE TABLE `terdiridari` (
  `idTerdiriDari` int(11) NOT NULL,
  `idGejala` int(11) NOT NULL,
  `idPenyakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`idDokter`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`idGejala`),
  ADD KEY `idPemeriksaan` (`idPemeriksaan`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`idPemeriksaan`),
  ADD KEY `idPasien` (`idPasien`),
  ADD KEY `idGejala` (`idGejala`),
  ADD KEY `idDokter` (`idDokter`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`idPenyakit`);

--
-- Indexes for table `tercatat`
--
ALTER TABLE `tercatat`
  ADD PRIMARY KEY (`idTercatat`),
  ADD KEY `idPemeriksaann` (`idPemeriksaann`),
  ADD KEY `idGejala` (`idGejala`);

--
-- Indexes for table `terdiridari`
--
ALTER TABLE `terdiridari`
  ADD PRIMARY KEY (`idTerdiriDari`),
  ADD KEY `idGejala` (`idGejala`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`idPemeriksaan`) REFERENCES `pemeriksaan` (`idPemeriksaan`),
  ADD CONSTRAINT `gejala_ibfk_2` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`idPenyakit`);

--
-- Constraints for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_1` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`idPasien`),
  ADD CONSTRAINT `pemeriksaan_ibfk_2` FOREIGN KEY (`idGejala`) REFERENCES `gejala` (`idGejala`),
  ADD CONSTRAINT `pemeriksaan_ibfk_3` FOREIGN KEY (`idDokter`) REFERENCES `dokter` (`idDokter`);

--
-- Constraints for table `tercatat`
--
ALTER TABLE `tercatat`
  ADD CONSTRAINT `tercatat_ibfk_1` FOREIGN KEY (`idPemeriksaann`) REFERENCES `pemeriksaan` (`idPemeriksaan`),
  ADD CONSTRAINT `tercatat_ibfk_2` FOREIGN KEY (`idGejala`) REFERENCES `gejala` (`idGejala`);

--
-- Constraints for table `terdiridari`
--
ALTER TABLE `terdiridari`
  ADD CONSTRAINT `terdiridari_ibfk_1` FOREIGN KEY (`idGejala`) REFERENCES `gejala` (`idGejala`),
  ADD CONSTRAINT `terdiridari_ibfk_2` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`idPenyakit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
