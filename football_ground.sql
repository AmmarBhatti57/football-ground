-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 04:03 PM
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
-- Database: `football ground`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings_table_v-1.1`
--

CREATE TABLE `bookings_table_v-1.1` (
  `Booking-ID` int(11) NOT NULL,
  `Team-ID` int(11) NOT NULL,
  `Start-DATE` date NOT NULL,
  `End-DATE` date NOT NULL,
  `Fees` int(11) NOT NULL,
  `Payment-STATUS` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grounds_table_v-1.1`
--

CREATE TABLE `grounds_table_v-1.1` (
  `GROUND-ID` int(11) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Capacity` varchar(55) NOT NULL,
  `Location` varchar(55) NOT NULL,
  `Contact-EMAIL` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matches_table_v-1.1`
--

CREATE TABLE `matches_table_v-1.1` (
  `Match-ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` datetime NOT NULL,
  `Team-A-ID` int(11) NOT NULL,
  `Team-B-ID` int(11) NOT NULL,
  `Status` varchar(55) NOT NULL,
  `Result` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments_table_v-1.1`
--

CREATE TABLE `payments_table_v-1.1` (
  `Payment-ID` int(11) NOT NULL,
  `Booking-ID` int(11) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams_table_v-1.1`
--

CREATE TABLE `teams_table_v-1.1` (
  `Team-ID` int(55) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Established-YEAR` year(4) NOT NULL,
  `Captain-ID` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings_table_v-1.1`
--
ALTER TABLE `bookings_table_v-1.1`
  ADD PRIMARY KEY (`Booking-ID`);

--
-- Indexes for table `grounds_table_v-1.1`
--
ALTER TABLE `grounds_table_v-1.1`
  ADD PRIMARY KEY (`GROUND-ID`);

--
-- Indexes for table `matches_table_v-1.1`
--
ALTER TABLE `matches_table_v-1.1`
  ADD PRIMARY KEY (`Match-ID`);

--
-- Indexes for table `payments_table_v-1.1`
--
ALTER TABLE `payments_table_v-1.1`
  ADD PRIMARY KEY (`Payment-ID`);

--
-- Indexes for table `teams_table_v-1.1`
--
ALTER TABLE `teams_table_v-1.1`
  ADD PRIMARY KEY (`Team-ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings_table_v-1.1`
--
ALTER TABLE `bookings_table_v-1.1`
  MODIFY `Booking-ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grounds_table_v-1.1`
--
ALTER TABLE `grounds_table_v-1.1`
  MODIFY `GROUND-ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches_table_v-1.1`
--
ALTER TABLE `matches_table_v-1.1`
  MODIFY `Match-ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_table_v-1.1`
--
ALTER TABLE `payments_table_v-1.1`
  MODIFY `Payment-ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams_table_v-1.1`
--
ALTER TABLE `teams_table_v-1.1`
  MODIFY `Team-ID` int(55) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
