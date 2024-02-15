-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2024 at 09:51 PM
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
  `Booking_ID` int(11) NOT NULL,
  `Team_ID` int(11) NOT NULL,
  `Start_DATE` date NOT NULL,
  `End_DATE` date NOT NULL,
  `Fees` int(11) NOT NULL,
  `Payment_STATUS` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings_table_v-1.1`
--

INSERT INTO `bookings_table_v-1.1` (`Booking_ID`, `Team_ID`, `Start_DATE`, `End_DATE`, `Fees`, `Payment_STATUS`) VALUES
(321, 99, '2024-10-09', '2024-11-08', 25000, 'paid'),
(322, 2, '2024-01-17', '2024-01-20', 8000, 'Paid'),
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
  `Match_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` datetime NOT NULL,
  `Team_A_ID` int(11) NOT NULL,
  `Team_B_ID` int(11) NOT NULL,
  `Status` varchar(55) NOT NULL,
  `Result` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches_table_v-1.1`
--

INSERT INTO `matches_table_v-1.1` (`Match_ID`, `Date`, `Time`, `Team_A_ID`, `Team_B_ID`, `Status`, `Result`) VALUES
(1, '0000-00-00', '2024-01-04 13:53:45', 23, 32, 'played', 'team a won'),
(3, '0000-00-00', '2024-01-02 09:56:02', 55, 66, 'played', 'team b won'),
(6, '0000-00-00', '2024-01-02 09:57:23', 70, 65, 'played', 'team b won'),
(7, '0000-00-00', '2024-01-02 09:56:38', 77, 87, 'played', 'team a won'),
(22, '0000-00-00', '0000-00-00 00:00:00', 22, 44, '', ''),
(90, '0000-00-00', '2024-01-02 09:57:54', 33, 32, 'played', 'team b won');

-- --------------------------------------------------------

--
-- Table structure for table `payments_table_v-1.1`
--

CREATE TABLE `payments_table_v-1.1` (
  `Payment_ID` int(11) NOT NULL,
  `Booking_ID` int(11) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments_table_v-1.1`
--

INSERT INTO `payments_table_v-1.1` (`Payment_ID`, `Booking_ID`, `Amount`, `Date`) VALUES
(5, 400000, '77', '2016-08-09'),
(10, 90, '77000', '2023-01-09'),
(12, 23, '2222', '0000-00-00'),
(22, 55, '44444', '2018-07-09'),
(32, 76, '4000', '2024-01-11'),
(46, 2, '5000', '2024-02-02'),
(55, 6, '6000', '2024-01-30'),
(66, 67, '8000', '2024-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `teams_table_v-1.1`
--

CREATE TABLE `teams_table_v-1.1` (
  `Team_ID` int(55) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Established_YEAR` year(4) NOT NULL,
  `Captain_ID` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams_table_v-1.1`
--

INSERT INTO `teams_table_v-1.1` (`Team_ID`, `Name`, `Established_YEAR`, `Captain_ID`) VALUES
(2002, 'lyari kings', 2001, 57),
(2003, 'garden unitied', 2009, 87),
(2004, 'national team', 2000, 98),
(2005, 'club team', 2005, 97);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings_table_v-1.1`
--
ALTER TABLE `bookings_table_v-1.1`
  ADD PRIMARY KEY (`Booking_ID`);

--
-- Indexes for table `grounds_table_v-1.1`
--
ALTER TABLE `grounds_table_v-1.1`
  ADD PRIMARY KEY (`GROUND-ID`);

--
-- Indexes for table `matches_table_v-1.1`
--
ALTER TABLE `matches_table_v-1.1`
  ADD PRIMARY KEY (`Match_ID`);

--
-- Indexes for table `payments_table_v-1.1`
--
ALTER TABLE `payments_table_v-1.1`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `teams_table_v-1.1`
--
ALTER TABLE `teams_table_v-1.1`
  ADD PRIMARY KEY (`Team_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings_table_v-1.1`
--
ALTER TABLE `bookings_table_v-1.1`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6369;

--
-- AUTO_INCREMENT for table `grounds_table_v-1.1`
--
ALTER TABLE `grounds_table_v-1.1`
  MODIFY `GROUND-ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `matches_table_v-1.1`
--
ALTER TABLE `matches_table_v-1.1`
  MODIFY `Match_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `payments_table_v-1.1`
--
ALTER TABLE `payments_table_v-1.1`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `teams_table_v-1.1`
--
ALTER TABLE `teams_table_v-1.1`
  MODIFY `Team_ID` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
