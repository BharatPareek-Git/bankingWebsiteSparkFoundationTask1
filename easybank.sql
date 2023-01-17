-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 06:30 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Ashish Sharma', 'ashishsharma@easybank.com', 18500),
(2, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 291067),
(3, 'Dhananjay Sharma', 'dhananjaysharma@easybank.com', 105700),
(4, 'Anjali Sharma', 'anjalisharma@easybank.com', 190000),
(5, 'Ajay Dara', 'ajaydara@easybank.com', 293744),
(6, 'Vijay Dara', 'vijaydara@easybank.com', 102009),
(7, 'Aruna Sharma', 'arunasharma@easybank.com', 234567),
(8, 'Jofra Archer', 'jofraarcher@easybank.com', 335653),
(9, 'Divya Singh', 'divyasingh@easybank.com', 238667),
(10, 'Aman Gupta', 'amangupta@easybank.com', 73456);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `money_sent` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `name`, `email`, `money_sent`, `time`, `date`) VALUES
(1, 'Ajay Dara', 'ajaydara@easybank.com', 100000, '18:39:54', '13-01-23'),
(2, 'Jofra Archer', 'jofraarcher@easybank.com', 10000, '18:40:23', '13-01-23'),
(3, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 100, '18:49:16', '13-01-23'),
(4, 'Ajay Dara', 'ajaydara@easybank.com', 1000, '14:23:48', '15-01-23'),
(5, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1, '14:47:08', '15-01-23'),
(6, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1, '15:21:01', '15-01-23'),
(7, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 100, '15:22:05', '15-01-23'),
(8, 'Jofra Archer', 'jofraarcher@easybank.com', 1000, '15:22:47', '15-01-23'),
(9, 'Ajay Dara', 'ajaydara@easybank.com', 100, '15:25:19', '15-01-23'),
(10, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1, '15:26:16', '15-01-23'),
(11, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1, '15:28:28', '15-01-23'),
(12, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1000, '15:31:06', '15-01-23'),
(13, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1, '15:34:32', '15-01-23'),
(14, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 100000, '15:36:24', '15-01-23'),
(15, 'Divya Singh', 'divyasingh@easybank.com', 1000, '15:42:15', '15-01-23'),
(16, 'Divya Singh', 'divyasingh@easybank.com', 100, '15:42:44', '15-01-23'),
(17, 'Ajay Dara', 'ajaydara@easybank.com', 1000, '15:44:30', '15-01-23'),
(18, 'Divya Singh', 'divyasingh@easybank.com', 1000, '15:45:59', '15-01-23'),
(19, 'Divya Singh', 'divyasingh@easybank.com', 1000, '15:47:46', '15-01-23'),
(20, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1, '15:52:11', '15-01-23'),
(21, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 60, '15:56:50', '15-01-23'),
(22, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1, '16:03:25', '15-01-23'),
(23, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 99, '16:04:10', '15-01-23'),
(24, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1000, '16:07:17', '15-01-23'),
(25, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1, '17:33:01', '15-01-23'),
(26, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1000, '17:38:20', '15-01-23'),
(27, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1000, '17:40:02', '15-01-23'),
(28, 'Ghanshyam Dubey', 'ghanshyamdubey@easybank.com', 1000, '20:32:45', '16-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `balance`) VALUES
(1, 'Bharat Pareek', 9566199);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
