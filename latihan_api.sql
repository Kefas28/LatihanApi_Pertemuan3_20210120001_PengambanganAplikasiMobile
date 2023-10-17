-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2023 at 02:14 PM
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
-- Database: `latihan_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `no_ref` int NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `stok` varchar(100) NOT NULL,
  `gambar` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`no_ref`, `nm_barang`, `stok`, `gambar`) VALUES
(1, 'kursi', '5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoNWgBtYBtQj7GljXktsmYWV6bnqfx00lOWQ&usqp=CAU'),
(2, 'meja', '10', 'https://th.bing.com/th/id/R.afae8b1e56962884479511a624d3e424?rik=dfUkZZq%2fneToWQ&riu=http%3a%2f%2f4.bp.blogspot.com%2f_Cc3gulUhlvs%2fTKvKshCjQZI%2fAAAAAAAACbc%2frEvTZ2SmoJM%2fs1600%2fmeja.jpg&ehk=2FuCTZu7h6%2bLGzjMQrziIurl8ND76lG4%2b9fsKWL92Ro%3d&risl=&pid=ImgRaw&r=0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`no_ref`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `no_ref` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
