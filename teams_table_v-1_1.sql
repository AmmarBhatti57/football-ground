-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 09:02 AM
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
-- Table structure for table `teams_table_v-1.1`
--

CREATE TABLE `teams_table_v-1.1` (
  `Team-ID` int(55) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Established-YEAR` year(4) NOT NULL,
  `Captain-ID` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams_table_v-1.1`
--

INSERT INTO `teams_table_v-1.1` (`Team-ID`, `Name`, `Established-YEAR`, `Captain-ID`) VALUES
(2001, 'karachi titans', 2004, 45),
(2002, 'lyari kings', 2001, 57),
(2003, 'garden unitied', 2009, 87),
(2004, 'national team', 2000, 98),
(2005, 'club team', 2005, 97);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams_table_v-1.1`
--
ALTER TABLE `teams_table_v-1.1`
  ADD PRIMARY KEY (`Team-ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teams_table_v-1.1`
--
ALTER TABLE `teams_table_v-1.1`
  MODIFY `Team-ID` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
