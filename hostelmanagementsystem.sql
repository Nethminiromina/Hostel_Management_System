-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2018 at 10:49 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('nicky', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `roomNo` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomNo`, `block`, `status`) VALUES
('1101', 'A', 0),
('1102', 'A', 0),
('1103', 'A', 0),
('2101', 'B', 2),
('2102', 'B', 0),
('1104', 'A', 0),
('1105', 'A', 0),
('1106', 'A', 0),
('1107', 'A', 0),
('1108', 'A', 0),
('1110', 'A', 0),
('1111', 'A', 0),
('1112', 'A', 0),
('1113', 'A', 0),
('1114', 'A', 0),
('1115', 'A', 0),
('2103', 'B', 0),
('2104', 'B', 0),
('2105', 'B', 0),
('2106', 'B', 0),
('2107', 'B', 0),
('2108', 'B', 0),
('2109', 'B', 0),
('2110', 'B', 0),
('2111', 'B', 0),
('2112', 'B', 0),
('2113', 'B', 0),
('2114', 'B', 0),
('2115', 'B', 0),
('1109', 'A', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(50) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `degree` varchar(20) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `dateOfBirth` varchar(30) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `guaName` varchar(50) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `guacontact` varchar(20) NOT NULL,
  `block` varchar(10) NOT NULL,
  `roomNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `nic`, `degree`, `batch`, `dateOfBirth`, `address`, `email`, `contactNo`, `guaName`, `relationship`, `guacontact`, `block`, `roomNo`) VALUES
('A B C D EFGH', '985150674V', 'UCD (Management)', '17.2', 'Feb 2, 2018', 'SFDFXDGD', 'BDW@SF.LKJ', '0123654789', 'FSXDFVS', 'DXGVXFDR', '0125478963', 'B', '2101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD KEY `roomNo` (`roomNo`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD KEY `roomNo` (`roomNo`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`roomNo`) REFERENCES `rooms` (`roomNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
