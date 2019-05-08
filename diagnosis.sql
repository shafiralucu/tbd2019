-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 03:58 PM
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
(1, 'erdi.fajar@gmail.com', '123', 'Erdi Fajar F', 'Jl.Cibeunying Kaler No.21', 822177848),
(2, 'shafiranurfahardi@gmail.com', '123', 'Shafira Aulya', 'Jl. Rancabentang 10A', 877435533),
(3, 'firzanviolant@gmail.com', '123', 'Firzan Violant', 'Jl. Tubagus Ismail', 818894077);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `idGejala` int(11) NOT NULL,
  `namaGejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`idGejala`, `namaGejala`) VALUES
(1, 'Tidak bisa minum atau menyusui'),
(2, 'Biru (ala nosis)'),
(3, 'Letargis atau tidak sadar'),
(4, 'Ujung tangan dan kaki dingin'),
(5, 'Kejang'),
(6, 'Memuntahkan semuanya'),
(7, 'Ada stridor'),
(8, 'Memeriksa batuk atau sukar bernafas'),
(9, 'Ada tarikan dinding dada kedalam'),
(10, 'Saturasi oksigen < 90%'),
(11, 'Lihat dan dengar adanya wheezing'),
(12, 'Nafas cepat'),
(13, 'Mata cekung'),
(14, 'Tidak bisa minum atau malas minum'),
(15, 'Cubitan kulit perut kembali sangat lambat'),
(16, 'Cubitan kulit perut kembali lambat'),
(17, 'Rewel atau mudah marah'),
(18, 'Haus (minum dengan lahap)'),
(19, 'Ada darah dalam tinja'),
(20, 'Pembengkakan yang nyeri di belakang telinga'),
(21, 'Nyeri telinga'),
(22, 'Rasa penuh di telinga'),
(23, 'Tampak cairan/nanah keluar dari telinga selama kurang dari 14 hari'),
(24, 'Tampak cairan/nanah keluar dari telinga dan telah terjadi selama 14 hari atau lebih'),
(25, 'Tidak ada nyeri telinga'),
(26, 'Tidak ada nanah keluar dari telinga'),
(27, 'Telapak tangan sangat pucat'),
(28, 'Telapak tangan agak pucat');

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
(1, 'Naufal', 'Jl. ABC', '2019-05-07', '1231232131'),
(2, 'Naufal', 'Jl. ABC', '2019-05-07', '1231232131');

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

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`idPemeriksaan`, `idDokter`, `waktu`, `idPasien`) VALUES
(42, 1, '2019-05-08', 1),
(43, 1, '2019-05-08', 1);

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
(1, 'Penyakit Sangat Berat'),
(2, 'Pneumonia Berat'),
(3, 'Pneumonia'),
(4, 'Batuk bukan Pneumonia'),
(5, 'Diare dehidrasi berat'),
(6, 'Diare dehidrasi ringan/sedang'),
(7, 'Diare tanpa dehidrasi'),
(8, 'Diare persisten berat'),
(9, 'Diare persisten'),
(10, 'Disentri'),
(11, 'Mastoditis'),
(12, 'Infeksi telinga akut'),
(13, 'Infeksi telinga kronis'),
(14, 'Tidak ada infeksi telinga'),
(15, 'Anemia berat'),
(16, 'Anemia'),
(17, 'Tidak Anemia');

-- --------------------------------------------------------

--
-- Table structure for table `punya`
--

CREATE TABLE `punya` (
  `idObat` int(50) NOT NULL,
  `idTindakan` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tercatat`
--

CREATE TABLE `tercatat` (
  `idGejala` int(11) NOT NULL,
  `idPemeriksaann` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `terdiridari`
--

CREATE TABLE `terdiridari` (
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
  ADD PRIMARY KEY (`idGejala`);

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
  ADD KEY `fkObat` (`idObat`),
  ADD KEY `fktindakan2` (`idTindakan`);

--
-- Indexes for table `tercatat`
--
ALTER TABLE `tercatat`
  ADD KEY `idPemeriksaann` (`idPemeriksaann`),
  ADD KEY `tercatat_ibfk_2` (`idGejala`);

--
-- Indexes for table `terdiridari`
--
ALTER TABLE `terdiridari`
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
  MODIFY `idDokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `idGejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `idPemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `idPenyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tindakan`
--
ALTER TABLE `tindakan`
  MODIFY `idTindakan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
