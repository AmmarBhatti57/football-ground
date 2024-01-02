-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 10:06 AM
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
-- Database: `test`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings_table_v-1.1`
--

INSERT INTO `bookings_table_v-1.1` (`Booking-ID`, `Team-ID`, `Start-DATE`, `End-DATE`, `Fees`, `Payment-STATUS`) VALUES
(321, 1, '2024-01-05', '2024-01-06', 5000, 'un-Paid'),
(322, 2, '2024-01-17', '2024-01-20', 8000, 'Paid'),
(323, 3, '2024-01-24', '2024-01-25', 5000, 'un-Paid'),
(324, 4, '2024-02-02', '2024-01-05', 10000, 'un-Paid'),
(325, 5, '2024-01-17', '2024-01-19', 7000, 'un-Paid');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grounds_table_v-1.1`
--

INSERT INTO `grounds_table_v-1.1` (`GROUND-ID`, `Name`, `Capacity`, `Location`, `Contact-EMAIL`) VALUES
(22, 'fireball', '50', 'garden west karachi', 'fireball@gmail.com'),
(32, 'ballandball', '40', 'nazimabad', 'ballandball@gmail.com'),
(55, 'football_ground', '50', 'fb-area', 'football_ground@gmail.com');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches_table_v-1.1`
--

INSERT INTO `matches_table_v-1.1` (`Match-ID`, `Date`, `Time`, `Team-A-ID`, `Team-B-ID`, `Status`, `Result`) VALUES
(1, '0000-00-00', '2024-01-04 13:53:45', 23, 32, 'played', 'team a won'),
(3, '0000-00-00', '2024-01-02 09:56:02', 55, 66, 'played', 'team b won'),
(6, '0000-00-00', '2024-01-02 09:57:23', 70, 65, 'played', 'team b won'),
(7, '0000-00-00', '2024-01-02 09:56:38', 77, 87, 'played', 'team a won'),
(90, '0000-00-00', '2024-01-02 09:57:54', 33, 32, 'played', 'team b won');

-- --------------------------------------------------------

--
-- Table structure for table `payments_table_v-1.1`
--

CREATE TABLE `payments_table_v-1.1` (
  `Payment-ID` int(11) NOT NULL,
  `Booking-ID` int(11) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments_table_v-1.1`
--

INSERT INTO `payments_table_v-1.1` (`Payment-ID`, `Booking-ID`, `Amount`, `Date`) VALUES
(5, 65, '3000', '2024-01-03'),
(32, 76, '4000', '2024-01-11'),
(46, 2, '5000', '2024-02-02'),
(55, 6, '6000', '2024-01-30'),
(66, 67, '8000', '2024-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `teams_table_v-1.1`
--

CREATE TABLE `teams_table_v-1.1` (
  `Team-ID` int(55) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Established-YEAR` year(4) NOT NULL,
  `Captain-ID` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `Booking-ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `grounds_table_v-1.1`
--
ALTER TABLE `grounds_table_v-1.1`
  MODIFY `GROUND-ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `matches_table_v-1.1`
--
ALTER TABLE `matches_table_v-1.1`
  MODIFY `Match-ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `payments_table_v-1.1`
--
ALTER TABLE `payments_table_v-1.1`
  MODIFY `Payment-ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `teams_table_v-1.1`
--
ALTER TABLE `teams_table_v-1.1`
  MODIFY `Team-ID` int(55) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
