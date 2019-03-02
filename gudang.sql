-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2019 at 03:24 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Peralatan Mandi'),
(2, 'Mie Instan'),
(3, 'Olahan Daging');

-- --------------------------------------------------------

--
-- Table structure for table `gudang_sessions`
--

CREATE TABLE `gudang_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gudang_sessions`
--

INSERT INTO `gudang_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('nm356mi9orjbvueiapdc6bs8smgge8c3', '::1', 1551526430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532363137393b),
('1nd2e50et9kgq4c2egkd4u6v2nv0m05p', '::1', 1551526737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532363439303b),
('b8jhac5kviprp2te9f43l544a03u1b9n', '::1', 1551527091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532363833323b),
('0egq299g8u7nni8briittfpuhm3k7tma', '::1', 1551527521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532373234313b),
('tjf67ddif3uu4tqbdmquav0p0nstm9hs', '::1', 1551527743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532373630323b),
('r3foi4ukvk478spj13mls7s1r5edalu9', '::1', 1551536459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313533363435393b);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_data`
--

CREATE TABLE `hasil_data` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_data`
--

INSERT INTO `hasil_data` (`id`, `category_name`, `product_name`) VALUES
(1, 'Peralatan', 'dandan'),
(2, 'Mie Instan', 'Indomi, mie sedap'),
(3, 'Olahan Daging', 'Nuget');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`) VALUES
(1, 'Sampo', 1),
(2, 'Sikat Gigi', 1),
(3, 'Indomi', 2),
(4, 'Mie sedap', 2),
(5, 'Nuget', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gudang_sessions`
--
ALTER TABLE `gudang_sessions`
  ADD KEY `gudang_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `hasil_data`
--
ALTER TABLE `hasil_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hasil_data`
--
ALTER TABLE `hasil_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
