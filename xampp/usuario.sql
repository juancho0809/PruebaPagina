-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 06:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usuario`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonication`
--

CREATE TABLE `bonication` (
  `bonoCode` int(11) NOT NULL,
  `consumerId` int(11) NOT NULL,
  `date` date NOT NULL,
  `redeemPoints` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `idConsumer` int(11) NOT NULL,
  `nameConsumer` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `registeredDate` date NOT NULL DEFAULT current_timestamp(),
  `telefono` varchar(11) NOT NULL,
  `emailConsumer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registershopping`
--

CREATE TABLE `registershopping` (
  `buyID` int(11) NOT NULL,
  `idConsumer` int(11) NOT NULL,
  `nameConsumer` varchar(20) NOT NULL,
  `shoppingCode` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `shoppingDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`idConsumer`);

--
-- Indexes for table `registershopping`
--
ALTER TABLE `registershopping`
  ADD PRIMARY KEY (`buyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `idConsumer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registershopping`
--
ALTER TABLE `registershopping`
  MODIFY `buyID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
