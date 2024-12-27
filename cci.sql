-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 10:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cci`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `password`) VALUES
(2, 'bhargav', 'bhargav@tsedtech.com', '654321');

-- --------------------------------------------------------

--
-- Table structure for table `customerrequest`
--

CREATE TABLE `customerrequest` (
  `id` int(11) NOT NULL,
  `CustomerEmail` varchar(50) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `FarmerEmail` varchar(50) NOT NULL,
  `RequestDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerrequest`
--

INSERT INTO `customerrequest` (`id`, `CustomerEmail`, `ProductID`, `ProductName`, `Location`, `FarmerEmail`, `RequestDate`) VALUES
(1, 'bhargav@tsedtech.com', 3, 'Eggs', 'Vijayawada', 'jhansi@gmail.com', '2024-05-09'),
(2, 'bhargav@tsedtech.com', 1, 'Grapes', 'Vijayawada', 'amish@gmail.com', '2024-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`id`, `name`, `email`, `password`) VALUES
(1, 'amish', 'amish@gmail.com', '123456'),
(2, 'Jhansi', 'jhansi@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `QuantityProduced` varchar(50) DEFAULT NULL,
  `PricePerUnit` decimal(10,2) DEFAULT NULL,
  `ProductImage` varchar(255) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductType`, `ProductName`, `QuantityProduced`, `PricePerUnit`, `ProductImage`, `Location`, `email`) VALUES
(1, 'fruits', 'Grapes', '200 kg', 100.00, 'grapes.jpeg', 'Vijayawada', 'amish@gmail.com'),
(2, 'vegetables', 'carroat', '200 kg', 40.00, 'carroat.jpeg', 'Vijayawada', 'amish@gmail.com'),
(3, 'dairy', 'Eggs', '10000', 6.00, 'eggs.jpeg', 'Vijayawada', 'jhansi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customerrequest`
--
ALTER TABLE `customerrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customerrequest`
--
ALTER TABLE `customerrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
