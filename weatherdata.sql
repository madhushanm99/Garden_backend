-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 08:48 AM
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
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `weatherdata`
--

CREATE TABLE `weatherdata` (
  `ascCode` varchar(10) NOT NULL,
  `ascName` varchar(50) DEFAULT NULL,
  `Day01` float DEFAULT NULL,
  `Day02` float DEFAULT NULL,
  `Day03` float DEFAULT NULL,
  `Day04` float DEFAULT NULL,
  `Day05` float DEFAULT NULL,
  `Day06` float DEFAULT NULL,
  `Day07` float DEFAULT NULL,
  `Day08` float DEFAULT NULL,
  `Day09` float DEFAULT NULL,
  `Day10` float DEFAULT NULL,
  `LastUpdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weatherdata`
--

INSERT INTO `weatherdata` (`ascCode`, `ascName`, `Day01`, `Day02`, `Day03`, `Day04`, `Day05`, `Day06`, `Day07`, `Day08`, `Day09`, `Day10`, `LastUpdate`) VALUES
('01/003', 'Homagama', 4, 1.7, 7.9, 7, 2.7, 4.7, 1.1, 1.9, 1.6, 1.1, '2024-05-21'),
('01/009', 'Maharagama', 1.8, 1, 1.8, 3.1, 0.5, 0.9, 0.8, 2, 1.4, 0.8, '2024-05-22'),
('02/012', 'Henarathgoda', 1, 0.9, 8, 9.8, 2.8, 2.9, 1.9, 2.4, 1.4, 1.9, '2024-05-21'),
('02/017', 'Dompe', 1.8, 0.8, 7.3, 4.8, 3.9, 3.9, 1.5, 3.4, 1.3, 1.5, '2024-05-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weatherdata`
--
ALTER TABLE `weatherdata`
  ADD PRIMARY KEY (`ascCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
