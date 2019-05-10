-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 03:51 PM
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
(2, 'Memuntahkan semua makanan dan / atau minuman'),
(3, 'Pernah atau sedang mengalami kejang'),
(4, 'Gelisah'),
(5, 'Letargis atau tidak sadar'),
(6, 'Ada stridor'),
(7, 'Tampak biru (sianosis)'),
(8, 'Ujung tangan dan kaki pucat dan dingin'),
(9, 'Ada tarikan dinding dada kedalam'),
(10, 'Saturasi oksigen < 90%'),
(11, 'Nafas cepat'),
(12, 'Tidak ada tanda-tanda Pneumonia Berat maupun Pneumonia'),
(13, 'Pembengkakan yang nyeri belakang telinga'),
(14, 'Nyeri telinga'),
(15, 'Rasa penuh di telinga'),
(16, 'Tampak cairan/nanah keluar dari telinga selama kurang dari 14 hari'),
(17, 'Tampak cairan/nanah keluar dari telinga dan telah terjadi selama 14 hari atau lebih\r\n'),
(18, 'Tidak ada nyeri telinga'),
(19, 'Tidak ada nanah keluar dari telinga'),
(20, 'Telapak tangan sangat pucat'),
(21, 'Telapak tangan agak pucat'),
(22, 'Tidak ditemukan tanda kepucatan pada telapak tangan');

-- --------------------------------------------------------

--
-- Table structure for table `memiliki`
--

CREATE TABLE `memiliki` (
  `idPenyakit` int(11) NOT NULL,
  `idTindakan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memiliki`
--

INSERT INTO `memiliki` (`idPenyakit`, `idTindakan`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 6),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 8),
(5, 15),
(5, 6),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(7, 20),
(7, 21),
(7, 22),
(8, 23),
(9, 24),
(9, 6),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(10, 13),
(10, 29),
(11, 30);

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
(2, 'Naufal', 'Jl. ABC', '2019-05-07', '1231232131'),
(3, 'Gio', 'Jl.OBC', '2017-01-01', '02174779');

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
(5, 'Mastoiditis'),
(6, 'Infeksi telinga akut'),
(7, 'Infeksi'),
(8, 'Tidak ada infeksi telinga'),
(9, 'Anemia Berat'),
(10, 'Anemia'),
(11, 'Tidak Anemia');

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

--
-- Dumping data for table `terdiridari`
--

INSERT INTO `terdiridari` (`idGejala`, `idPenyakit`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 2),
(10, 2),
(11, 3),
(12, 4),
(13, 5),
(14, 6),
(15, 6),
(16, 6),
(17, 7),
(18, 8),
(19, 8),
(20, 9),
(21, 10),
(22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `idTindakan` int(11) NOT NULL,
  `namaTindakan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`idTindakan`, `namaTindakan`) VALUES
(1, 'Bila sedang kejang beri diazepam'),
(2, 'Bila ada stridor pastikan tidak ada sumbatan jalan napas'),
(3, 'Bila ada stridor, sianosis dan ujung tangan dan kaki pucat dan dingin berikan oksigen 3-5 liter/meni'),
(4, 'Cegah agar gula darah tidak turun'),
(5, 'Jaga anak tetap hangat'),
(6, 'Rujuk Segera'),
(7, 'Beri Oksigen maskimal 2-3 liter/menit dengan menggunakan nasal prong'),
(8, 'Beri dosis pertama antibiotik yang sesuai'),
(9, 'Beri amoksisilin 2X sehari selama 3 hari atau 5 hari'),
(10, 'Beri pelega tenggorokan dan pereda batuk yang aman'),
(11, 'Obati wheezing bila ada'),
(12, 'Apabila batuk > 14 hari RUJUK untuk pemeriksaan lanjutan'),
(13, 'Nasehati kapan kembali segera'),
(14, 'Kunjungan ulang 2 hari'),
(15, 'Beri dosis pertama parasetamol unutk mengatasi nyeri'),
(16, 'Beri antibiotik yang sesuai selama 7 hari'),
(17, 'Beri parasetamol untuk mengatasi nyeri'),
(18, 'Keringkan telinga dengan bahan penyerap'),
(19, 'Kunjungan ulang 5 hari'),
(20, 'Keringkan telinga dengan bahan penyerap setelah dicuci dengan NaCl 0,9% atau H2O2 3%'),
(21, 'Beri tetes telinga yang sesuai'),
(22, 'Kunjungan ulang 5 hari'),
(23, 'Tangani masala telinga yang ditemukan'),
(24, 'Bila masih menyusu, teruskan pemberian ASI'),
(25, 'Lakukan Penilaian Pemberian Makan pada anak. Bila ada masalah, beri konseling pemberian makan dan ku'),
(26, 'Bila masih menyusu, teruskan pemberian ASI'),
(27, 'Lakukan pemeriksaan tinja untuk deteksi kecacingan'),
(28, 'Jika daerah Endemis Tinggi Malarian : periksa dan obati malaria terlebih dahulu jika positif'),
(29, 'Kunjungan ulang 14 hari'),
(30, 'Jika anak < 2 tahun, nilai pemberian makanan pada anak. Jika ada masalah pemberian makan, kunjungan ');

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
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `idObat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `idTindakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
