-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2023 at 08:41 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas10`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_buah`
--

CREATE TABLE `tb_buah` (
  `id` int NOT NULL,
  `Jenis_Buah` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Warna` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rasa` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Harga_Perbox` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Stock_PerBox` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_buah`
--

INSERT INTO `tb_buah` (`id`, `Jenis_Buah`, `Warna`, `rasa`, `Harga_Perbox`, `Stock_PerBox`) VALUES
(1, 'Mangga', 'Kuning', 'Manis', '10000', '10'),
(2, 'Apel', 'Merah', 'Manis', '12000', '5'),
(6, 'Mangga', 'Kuning', 'Manis', '29000', '21'),
(7, 'Mangga', 'Kuning', 'Manis', '29000', '21');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengiriman`
--

CREATE TABLE `tb_pengiriman` (
  `id` int NOT NULL,
  `Jenis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Buah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Harga` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Jumlah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Lokasi` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pengiriman`
--

INSERT INTO `tb_pengiriman` (`id`, `Jenis`, `Buah`, `Harga`, `Jumlah`, `Lokasi`) VALUES
(1, 'Jenis', 'Apel', 'Masam', '', '10'),
(3, 'Jenis', 'Apel', 'Masam', '', '10'),
(4, 'Jenis', 'Apel', 'Masam', '', '10'),
(5, 'Apel', 'Manis', '10000', '18', 'Surabaya'),
(6, 'Apel', 'Manis', '8000', '10', 'Denpasar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_buah`
--
ALTER TABLE `tb_buah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengiriman`
--
ALTER TABLE `tb_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_buah`
--
ALTER TABLE `tb_buah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pengiriman`
--
ALTER TABLE `tb_pengiriman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
