-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 04:55 AM
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
-- Database: `sekolahku`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `input_by` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `guru_id` int(5) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pendidikan_terakhir` varchar(100) NOT NULL,
  `tingkat_pengajaran` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`guru_id`, `nip`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `telepon`, `email`, `pendidikan_terakhir`, `tingkat_pengajaran`, `jabatan`) VALUES
(2, '2104006730001', 'Desman Syah Putra', 'Laki-laki', '1998-12-08', 'Jl. Budi Utama', '08125374566', 'desman@gmail.com', 'S1 Pendidikan Bahasa Inggris', 'Kelas XII-RPL', 'Wali Kepala Sekolah'),
(3, '272636368002', 'Norma Gulo', 'Perempuan', '1992-12-06', 'Jl. Setia Medan Sunggal', '081253776549', 'normag@gmail.com', 'S1 Pendidikan Matematika', 'Kelas XII-ATPH', 'Kepala Perpustakaan'),
(4, '18727389740003', 'Yanti Maria', 'Perempuan', '1995-07-05', 'Jakarta Pusat', '085287646753', 'yantimaria@gmail.com', 'S1 Pendidikan Agama Kristen', 'Kelas XII-DPIB', 'Wali kelas'),
(5, '971396246983645', 'Rahmat Hidayat', 'Laki-laki', '1990-04-05', 'Tetehosi', '085287642546', 'rahmat@gmail.com', 'S1 Pendidikan Kewirausahaan', 'Kelas XI-RPL', 'Kaprodi Rekayasa Per');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`komentar_id`, `nama`, `email`, `pesan`, `date`) VALUES
(0, 'Desman Syah Putra', 'desman@gmail.com', 'Website sekolah ini sangat bagus', '2024-01-18 12:49:16'),
(0, 'Putra Harefa', 'putraa@gmail.com', 'HAHAHAHAHA......', '2024-01-18 12:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int(3) NOT NULL,
  `nim` char(8) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(9) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mahasiswa_id`, `nim`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(3, '2120231', 'Alfa Tanggo', 'Perempuan', 'Jl. Jamin Ginting Medan'),
(4, '231234', '243234', 'Laki-laki', 'fsaf'),
(5, '2341234', 'Delta', 'Laki-laki', 'Medan');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `pendaftaran_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pilihan_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`pendaftaran_id`, `nama`, `nik`, `jenis_kelamin`, `alamat`, `tanggal_lahir`, `tempat_lahir`, `asal_sekolah`, `nomor_hp`, `email`, `pilihan_jurusan`) VALUES
(13, 'Gregorius Gulo', '210400478650001', 'Laki-Laki', 'Jakarta', '2004-06-17', 'Lolohosi', 'SMP Swasta Karya Kasih', '081262359398', 'gregorius@gmail.com', 'Otomatisasi dan Tata Kelola Perkantoran'),
(14, 'Norma Gulo', '21040055', 'Perempuan', 'Setia Budi', '2001-12-01', 'bandung', 'SMP Swasta Karya Kasih', '0873230974', 'normag@gmail.com', 'Teknik Kendaraan Ringan dan Otomotif'),
(15, 'Norma Gulo', '21040055', 'Perempuan', 'Jakarta', '2000-04-03', 'Jakarta', 'SMP Swasta Karya Kasih', '0873230974', 'normag@gmail.com', 'Agribisnis Tanaman Pangan dan Hortikultura');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(5) NOT NULL,
  `nis` char(8) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`siswa_id`, `nis`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `kelas`, `jurusan`, `alamat`) VALUES
(3, '21786485', 'Budi Putra', 'Laki-laki', '1999-07-07', 'Bandung', 'XII', 'Rekayasa Perangkat Lunak', 'Jl. Seibatang Hari'),
(4, '78492375', 'Gregorius Gulo', 'Laki-laki', '2003-06-17', 'Medan', 'X', 'Otomatisasi dan Tata Kelola Perkantoran', 'Jl. Medan merdeka'),
(5, '79739365', 'Setiaman Harry', 'Laki-laki', '2002-06-07', 'Gunung Sitoli', 'XI', 'Rekayasa Perangkat Lunak', 'Jl. Beo'),
(6, '12345678', 'Putra Harefa', 'Laki-laki', '2001-02-03', 'Jakarta', 'X', 'Otomatisasi dan Tata Kelola Perkantoran', 'Jl. Jenderal Sudirman'),
(8, '12349796', 'Iman Budi', 'Laki-laki', '2004-04-05', 'Gunung Sitoli', 'XII', 'Otomatisasi dan Tata Kelola Perkantoran', 'Gunung Sitoli'),
(9, '08079767', 'Pikir Gulo', 'Perempuan', '1999-03-08', 'Lolohosi', 'X', 'Agribisnis Tanaman Pangan dan Hortikultura', 'Jl. Lolohoosi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(254) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` char(128) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `token`, `status`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'gregorius@gmail.com', 'c0e024d9200b5705bc4804722636378a', '1', '2024-01-19 09:38:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`pendaftaran_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `guru_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `pendaftaran_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
