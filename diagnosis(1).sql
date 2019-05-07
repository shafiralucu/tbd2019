-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2019 at 06:48 PM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Contoh` ()  SELECT *
FROM dokter$$

DELIMITER ;

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

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`idDokter`, `email`, `password`, `namaDokter`, `alamat`, `noTelp`) VALUES
(1, 'erdi.fajar@gmail.com', '123', 'erdifajarf', 'Jl.Cibeunying Kaler No.21', 822177848);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `idGejala` int(11) NOT NULL,
  `namaGejala` varchar(50) NOT NULL,
  `idPenyakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`idGejala`, `namaGejala`, `idPenyakit`) VALUES
(1, 'Tidak bisa minum atau menyusui', 1);

-- --------------------------------------------------------

--
-- Table structure for table `memiliki`
--

CREATE TABLE `memiliki` (
  `idMemiliki` int(11) NOT NULL,
  `idPenyakit` int(11) NOT NULL,
  `idTindakan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `idObat` int(11) NOT NULL,
  `namaObat` varchar(100) NOT NULL,
  `jenisObat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`idObat`, `namaObat`, `jenisObat`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` int(11) NOT NULL,
  `namaPasien` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `noTelp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`idPasien`, `namaPasien`, `alamat`, `tanggalLahir`, `noTelp`) VALUES
(1, 'erdi', 'qweqweq`', '0013-12-31', '1231232131'),
(2, 'Firzan Violant', 'Jl. Ciumbuleuir', '1998-01-11', '087745668123'),
(3, 'Firzan Violant', 'Jl. Ciumbuleuir', '1998-01-11', '087745668123'),
(4, 'Adol', 'Tubis', '1998-08-06', '089'),
(5, 'ergod', 'tuisba', '1998-02-12', '08122');

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `idPemeriksaan` int(11) NOT NULL,
  `idDokter` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `idPasien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `idPenyakit` int(11) NOT NULL,
  `namaPenyakit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`idPenyakit`, `namaPenyakit`) VALUES
(1, 'DB');

-- --------------------------------------------------------

--
-- Table structure for table `punya`
--

CREATE TABLE `punya` (
  `idPunya` int(11) NOT NULL,
  `idObat` int(50) NOT NULL,
  `idTindakan` int(50) NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `idTindakan` int(11) NOT NULL,
  `namaTindakan` varchar(100) NOT NULL
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
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indexes for table `memiliki`
--
ALTER TABLE `memiliki`
  ADD PRIMARY KEY (`idMemiliki`),
  ADD KEY `fkpenyakit` (`idPenyakit`),
  ADD KEY `fktindakan` (`idTindakan`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`idObat`);

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
  ADD KEY `idDokter` (`idDokter`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`idPenyakit`);

--
-- Indexes for table `punya`
--
ALTER TABLE `punya`
  ADD PRIMARY KEY (`idPunya`),
  ADD KEY `fkObat` (`idObat`),
  ADD KEY `fktindakan2` (`idTindakan`);

--
-- Indexes for table `tercatat`
--
ALTER TABLE `tercatat`
  ADD PRIMARY KEY (`idTercatat`),
  ADD KEY `idGejala` (`idGejala`),
  ADD KEY `idPemeriksaann` (`idPemeriksaann`);

--
-- Indexes for table `terdiridari`
--
ALTER TABLE `terdiridari`
  ADD PRIMARY KEY (`idTerdiriDari`),
  ADD KEY `idGejala` (`idGejala`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`idTindakan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `idDokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `idGejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `memiliki`
--
ALTER TABLE `memiliki`
  MODIFY `idMemiliki` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `idObat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `idPemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `idPenyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `punya`
--
ALTER TABLE `punya`
  MODIFY `idPunya` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tercatat`
--
ALTER TABLE `tercatat`
  MODIFY `idTercatat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terdiridari`
--
ALTER TABLE `terdiridari`
  MODIFY `idTerdiriDari` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tindakan`
--
ALTER TABLE `tindakan`
  MODIFY `idTindakan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_4` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`idPenyakit`);

--
-- Constraints for table `memiliki`
--
ALTER TABLE `memiliki`
  ADD CONSTRAINT `fkpenyakit` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`idPenyakit`),
  ADD CONSTRAINT `fktindakan` FOREIGN KEY (`idTindakan`) REFERENCES `tindakan` (`idTindakan`);

--
-- Constraints for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_4` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`idPasien`),
  ADD CONSTRAINT `pemeriksaan_ibfk_5` FOREIGN KEY (`idDokter`) REFERENCES `dokter` (`idDokter`);

--
-- Constraints for table `punya`
--
ALTER TABLE `punya`
  ADD CONSTRAINT `fkObat` FOREIGN KEY (`idObat`) REFERENCES `obat` (`idObat`),
  ADD CONSTRAINT `fktindakan2` FOREIGN KEY (`idTindakan`) REFERENCES `tindakan` (`idTindakan`);

--
-- Constraints for table `tercatat`
--
ALTER TABLE `tercatat`
  ADD CONSTRAINT `tercatat_ibfk_2` FOREIGN KEY (`idGejala`) REFERENCES `gejala` (`idGejala`),
  ADD CONSTRAINT `tercatat_ibfk_3` FOREIGN KEY (`idPemeriksaann`) REFERENCES `pemeriksaan` (`idPemeriksaan`);

--
-- Constraints for table `terdiridari`
--
ALTER TABLE `terdiridari`
  ADD CONSTRAINT `terdiridari_ibfk_3` FOREIGN KEY (`idGejala`) REFERENCES `gejala` (`idGejala`),
  ADD CONSTRAINT `terdiridari_ibfk_4` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`idPenyakit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
