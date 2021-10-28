-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 09:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id`, `name`, `time_create`) VALUES
(1, 'Rizal', '2021-06-15 12:26:52'),
(2, 'Wahyudi', '2021-06-15 12:27:01'),
(3, 'Dimas', '2021-06-15 12:27:38'),
(4, 'Rio', '2021-06-15 12:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL,
  `id_murid` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `time_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `id_murid`, `status`, `time_update`) VALUES
(1, 1, 'TK', '2021-06-15 12:30:41'),
(2, 1, 'SD', '2021-06-15 12:30:48'),
(3, 1, 'SMP', '2021-06-15 12:30:55'),
(4, 1, 'SMA', '2021-06-15 12:31:05'),
(5, 1, 'Kuliah', '2021-06-15 12:31:15'),
(6, 2, 'SD', '2021-06-15 12:31:25'),
(7, 2, 'SMP', '2021-06-15 12:31:33'),
(8, 2, 'Putus Sekolah', '2021-06-15 12:31:44'),
(9, 3, 'TK', '2021-06-15 12:32:37'),
(10, 3, 'SD', '2021-06-15 12:32:45'),
(11, 3, 'SMK', '2021-06-15 12:32:52'),
(12, 4, 'TK', '2021-06-15 12:33:31'),
(13, 4, 'SMP', '2021-06-15 12:33:43'),
(14, 4, 'SMK', '2021-06-15 12:33:55'),
(15, 4, 'S1', '2021-06-15 12:34:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_murid` (`id_murid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `murid`
--
ALTER TABLE `murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `murid` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
