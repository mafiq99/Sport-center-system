-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2021 at 04:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportcentre`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `orderID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Court` varchar(20) NOT NULL,
  `Slot` varchar(10) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `attendance` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`orderID`, `username`, `Court`, `Slot`, `Time`, `Date`, `attendance`) VALUES
(36, 'Aniq123', 'Badminton', '1a', '8.00 am-10.00 am', '2021-02-19', 'Presence'),
(37, 'aidiel', 'Futsal', '1a', '8.00 am-10.00 am', '2021-02-12', '-');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ic` varchar(15) NOT NULL,
  `phoneNum` int(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `username`, `password`, `name`, `ic`, `phoneNum`, `email`) VALUES
(2, 'aidiel', '1111', 'Muhammad Aidiel Bin Jamallullail', '15648966', 123456799, 'aidiel@gmail.com'),
(3, 'ali', '5555', 'muhammad ali', '789558756', 54585877, 'ali@gmail.com'),
(4, 'abu', '7777', 'muhammad abu', '657564786', 547564586, 'abu@gmail.com'),
(5, 'bun', '7777', 'bunibuni', '5154482134', 12185355, 'buni@gmail.com'),
(6, 'i', '8888', 'i', '215648454', 564564665, 'i@gmail.com'),
(7, 'Aniq123', 'abc123', 'Aniq Asyraaf Zainal', '990928085677', 142328486, 'aniq@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `friday`
--

CREATE TABLE `friday` (
  `Date` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Slot` varchar(5) NOT NULL,
  `Start` varchar(10) NOT NULL,
  `End` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friday`
--

INSERT INTO `friday` (`Date`, `Type`, `Slot`, `Start`, `End`, `Status`) VALUES
('2021-02-12', 'Badminton', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-12', 'Badminton', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-12', 'Badminton', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-12', 'Badminton', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-12', 'Badminton', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-12', 'Badminton', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-12', 'Badminton', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-12', 'Badminton', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-12', 'Badminton', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-12', 'Badminton', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-12', 'Badminton', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-12', 'Badminton', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-12', 'Badminton', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-12', 'Badminton', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-12', 'Futsal', '1a', '8.00 am', '10.00 am', 'Unavailable'),
('2021-02-12', 'Futsal', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-12', 'Futsal', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-12', 'Futsal', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-12', 'Futsal', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-12', 'Futsal', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-12', 'Futsal', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-12', 'Futsal', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-12', 'Futsal', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-12', 'Futsal', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-12', 'Futsal', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-12', 'Futsal', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-12', 'Futsal', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-12', 'Futsal', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-12', 'Squash', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-12', 'Squash', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-12', 'Squash', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-12', 'Squash', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-12', 'Squash', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-12', 'Squash', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-12', 'Squash', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-12', 'Squash', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-12', 'Squash', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-12', 'Squash', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-12', 'Squash', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-12', 'Squash', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-12', 'Squash', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-12', 'Squash', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-12', 'Volleyball', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-12', 'Volleyball', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-12', 'Volleyball', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-12', 'Volleyball', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-12', 'Volleyball', '2g', '10.00 pm', '12.00 am', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `monday`
--

CREATE TABLE `monday` (
  `Date` date NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Slot` varchar(20) NOT NULL,
  `Start` varchar(15) NOT NULL,
  `End` varchar(15) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monday`
--

INSERT INTO `monday` (`Date`, `Type`, `Slot`, `Start`, `End`, `Status`) VALUES
('2021-02-20', 'Badminton', '1a', '8.00 am', '10.00 am', 'Unavailable'),
('2021-02-20', 'Badminton', '1b', '10.00 am', '12.00 pm', 'Unavailable'),
('2021-02-20', 'Badminton', '1c', '12.00 pm', '2.00 pm', 'Unavailable'),
('2021-02-20', 'Badminton', '1d', '2.00 pm ', '4.00 pm', 'Unavailable'),
('2021-02-20', 'Badminton', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-20', 'Badminton', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-20', 'Badminton', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-20', 'Badminton', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-20', 'Badminton', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-20', 'Badminton', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-20', 'Badminton', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-20', 'Badminton', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-20', 'Badminton', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-20', 'Badminton', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-20', 'Futsal', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-20', 'Futsal', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-20', 'Futsal', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-20', 'Futsal', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-20', 'Futsal', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-20', 'Futsal', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-20', 'Futsal', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-20', 'Futsal', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-20', 'Futsal', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-20', 'Futsal', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-20', 'Futsal', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-20', 'Futsal', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-20', 'Futsal', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-20', 'Futsal', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-20', 'Squash', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-20', 'Squash', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-20', 'Squash', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-20', 'Squash', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-20', 'Squash', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-20', 'Squash', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-20', 'Squash', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-20', 'Squash', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-20', 'Squash', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-20', 'Squash', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-20', 'Squash', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-20', 'Squash', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-20', 'Squash', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-20', 'Squash', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-20', 'Volleyball', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-20', 'Volleyball', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-20', 'Volleyball', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-20', 'Volleyball', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-20', 'Volleyball', '2g', '10.00 pm', '12.00 am', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `saturday`
--

CREATE TABLE `saturday` (
  `Date` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Slot` varchar(5) NOT NULL,
  `Start` varchar(10) NOT NULL,
  `End` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saturday`
--

INSERT INTO `saturday` (`Date`, `Type`, `Slot`, `Start`, `End`, `Status`) VALUES
('2021-02-13', 'Badminton', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-13', 'Badminton', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-13', 'Badminton', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-13', 'Badminton', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-13', 'Badminton', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-13', 'Badminton', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-13', 'Badminton', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-13', 'Badminton', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-13', 'Badminton', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-13', 'Badminton', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-13', 'Badminton', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-13', 'Badminton', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-13', 'Badminton', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-13', 'Badminton', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-13', 'Futsal', '1a', '8.00 am', '10.00 am', 'Unavailable'),
('2021-02-13', 'Futsal', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-13', 'Futsal', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-13', 'Futsal', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-13', 'Futsal', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-13', 'Futsal', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-13', 'Futsal', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-13', 'Futsal', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-13', 'Futsal', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-13', 'Futsal', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-13', 'Futsal', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-13', 'Futsal', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-13', 'Futsal', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-13', 'Futsal', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-13', 'Squash', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-13', 'Squash', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-13', 'Squash', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-13', 'Squash', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-13', 'Squash', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-13', 'Squash', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-13', 'Squash', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-13', 'Squash', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-13', 'Squash', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-13', 'Squash', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-13', 'Squash', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-13', 'Squash', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-13', 'Squash', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-13', 'Squash', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-13', 'Volleyball', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-13', 'Volleyball', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-13', 'Volleyball', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-13', 'Volleyball', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-13', 'Volleyball', '2g', '10.00 pm', '12.00 am', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `sunday`
--

CREATE TABLE `sunday` (
  `Date` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Slot` varchar(5) NOT NULL,
  `Start` varchar(10) NOT NULL,
  `End` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sunday`
--

INSERT INTO `sunday` (`Date`, `Type`, `Slot`, `Start`, `End`, `Status`) VALUES
('2021-02-14', 'Badminton', '1a', '8.00 am', '10.00 am', 'Unavailable'),
('2021-02-14', 'Badminton', '1b', '10.00 am', '12.00 pm', 'Unavailable'),
('2021-02-14', 'Badminton', '1c', '12.00 pm', '2.00 pm', 'Unavailable'),
('2021-02-14', 'Badminton', '1d', '2.00 pm ', '4.00 pm', 'Unavailable'),
('2021-02-14', 'Badminton', '1e', '4.00 pm', '6.00 pm', 'Unavailable'),
('2021-02-14', 'Badminton', '1f', '8.00 pm', '10.00 pm', 'Unavailable'),
('2021-02-14', 'Badminton', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-14', 'Badminton', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-14', 'Badminton', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-14', 'Badminton', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-14', 'Badminton', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-14', 'Badminton', '2e', '4.00 pm', '6.00 pm', 'Unavailable'),
('2021-02-14', 'Badminton', '2f', '8.00 pm', '10.00 pm', 'Unavailable'),
('2021-02-14', 'Badminton', '2g', '10.00 pm', '12.00 am', 'Unavailable'),
('2021-02-14', 'Futsal', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-14', 'Futsal', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-14', 'Futsal', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-14', 'Futsal', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-14', 'Futsal', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-14', 'Futsal', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-14', 'Futsal', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-14', 'Futsal', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-14', 'Futsal', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-14', 'Futsal', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-14', 'Futsal', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-14', 'Futsal', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-14', 'Futsal', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-14', 'Futsal', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-14', 'Squash', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-14', 'Squash', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-14', 'Squash', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-14', 'Squash', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-14', 'Squash', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-14', 'Squash', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-14', 'Squash', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-14', 'Squash', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-14', 'Squash', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-14', 'Squash', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-14', 'Squash', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-14', 'Squash', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-14', 'Squash', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-14', 'Squash', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-14', 'Volleyball', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-14', 'Volleyball', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-14', 'Volleyball', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-14', 'Volleyball', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-14', 'Volleyball', '2g', '10.00 pm', '12.00 am', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `thursday`
--

CREATE TABLE `thursday` (
  `Date` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Slot` varchar(5) NOT NULL,
  `Start` varchar(10) NOT NULL,
  `End` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thursday`
--

INSERT INTO `thursday` (`Date`, `Type`, `Slot`, `Start`, `End`, `Status`) VALUES
('2021-02-17', 'Badminton', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-17', 'Badminton', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-17', 'Badminton', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-17', 'Badminton', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-17', 'Badminton', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-17', 'Badminton', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-17', 'Badminton', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-17', 'Badminton', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-17', 'Badminton', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-17', 'Badminton', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-17', 'Badminton', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-17', 'Badminton', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-17', 'Badminton', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-17', 'Badminton', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-17', 'Futsal', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-17', 'Futsal', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-17', 'Futsal', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-17', 'Futsal', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-17', 'Futsal', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-17', 'Futsal', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-17', 'Futsal', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-17', 'Futsal', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-17', 'Futsal', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-17', 'Futsal', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-17', 'Futsal', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-17', 'Futsal', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-17', 'Futsal', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-17', 'Futsal', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-17', 'Squash', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-17', 'Squash', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-17', 'Squash', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-17', 'Squash', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-17', 'Squash', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-17', 'Squash', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-17', 'Squash', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-17', 'Squash', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-17', 'Squash', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-17', 'Squash', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-17', 'Squash', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-17', 'Squash', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-17', 'Squash', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-17', 'Squash', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-17', 'Volleyball', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-17', 'Volleyball', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-17', 'Volleyball', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-17', 'Volleyball', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-17', 'Volleyball', '2g', '10.00 pm', '12.00 am', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tuesday`
--

CREATE TABLE `tuesday` (
  `Date` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Slot` varchar(5) NOT NULL,
  `Start` varchar(10) NOT NULL,
  `End` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tuesday`
--

INSERT INTO `tuesday` (`Date`, `Type`, `Slot`, `Start`, `End`, `Status`) VALUES
('2021-02-19', 'Badminton', '1a', '8.00 am', '10.00 am', 'Unavailable'),
('2021-02-19', 'Badminton', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-19', 'Badminton', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-19', 'Badminton', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-19', 'Badminton', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-19', 'Badminton', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-19', 'Badminton', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-19', 'Badminton', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-19', 'Badminton', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-19', 'Badminton', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-19', 'Badminton', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-19', 'Badminton', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-19', 'Badminton', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-19', 'Badminton', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-19', 'Futsal', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-19', 'Futsal', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-19', 'Futsal', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-19', 'Futsal', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-19', 'Futsal', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-19', 'Futsal', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-19', 'Futsal', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-19', 'Futsal', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-19', 'Futsal', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-19', 'Futsal', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-19', 'Futsal', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-19', 'Futsal', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-19', 'Futsal', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-19', 'Futsal', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-19', 'Squash', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-19', 'Squash', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-19', 'Squash', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-19', 'Squash', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-19', 'Squash', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-19', 'Squash', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-19', 'Squash', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-19', 'Squash', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-19', 'Squash', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-19', 'Squash', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-19', 'Squash', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-19', 'Squash', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-19', 'Squash', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-19', 'Squash', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-19', 'Volleyball', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-19', 'Volleyball', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-19', 'Volleyball', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-19', 'Volleyball', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-19', 'Volleyball', '2g', '10.00 pm', '12.00 am', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `wednesday`
--

CREATE TABLE `wednesday` (
  `Date` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Slot` varchar(5) NOT NULL,
  `Start` varchar(10) NOT NULL,
  `End` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wednesday`
--

INSERT INTO `wednesday` (`Date`, `Type`, `Slot`, `Start`, `End`, `Status`) VALUES
('2021-02-18', 'Badminton', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-18', 'Badminton', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-18', 'Badminton', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-18', 'Badminton', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-18', 'Badminton', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-18', 'Badminton', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-18', 'Badminton', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-18', 'Badminton', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-18', 'Badminton', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-18', 'Badminton', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-18', 'Badminton', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-18', 'Badminton', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-18', 'Badminton', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-18', 'Badminton', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-18', 'Futsal', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-18', 'Futsal', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-18', 'Futsal', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-18', 'Futsal', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-18', 'Futsal', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-18', 'Futsal', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-18', 'Futsal', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-18', 'Futsal', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-18', 'Futsal', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-18', 'Futsal', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-18', 'Futsal', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-18', 'Futsal', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-18', 'Futsal', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-18', 'Futsal', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-18', 'Squash', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-18', 'Squash', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-18', 'Squash', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-18', 'Squash', '1d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-18', 'Squash', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-18', 'Squash', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-18', 'Squash', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-18', 'Squash', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-18', 'Squash', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-18', 'Squash', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-18', 'Squash', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-18', 'Squash', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-18', 'Squash', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-18', 'Squash', '2g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-18', 'Volleyball', '1a', '8.00 am', '10.00 am', 'Available'),
('2021-02-18', 'Volleyball', '1b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '1c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '1d', '2.00 pm ', '4.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '1e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '1f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '1g', '10.00 pm', '12.00 am', 'Available'),
('2021-02-18', 'Volleyball', '2a', '8.00 am', '10.00 am', 'Available'),
('2021-02-18', 'Volleyball', '2b', '10.00 am', '12.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '2c', '12.00 pm', '2.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '2d', '2.00 pm', '4.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '2e', '4.00 pm', '6.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '2f', '8.00 pm', '10.00 pm', 'Available'),
('2021-02-18', 'Volleyball', '2g', '10.00 pm', '12.00 am', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`,`password`,`ic`,`phoneNum`,`email`);

--
-- Indexes for table `friday`
--
ALTER TABLE `friday`
  ADD PRIMARY KEY (`Type`,`Slot`);

--
-- Indexes for table `monday`
--
ALTER TABLE `monday`
  ADD PRIMARY KEY (`Type`,`Slot`);

--
-- Indexes for table `saturday`
--
ALTER TABLE `saturday`
  ADD PRIMARY KEY (`Type`,`Slot`);

--
-- Indexes for table `sunday`
--
ALTER TABLE `sunday`
  ADD PRIMARY KEY (`Type`,`Slot`);

--
-- Indexes for table `thursday`
--
ALTER TABLE `thursday`
  ADD PRIMARY KEY (`Type`,`Slot`);

--
-- Indexes for table `tuesday`
--
ALTER TABLE `tuesday`
  ADD PRIMARY KEY (`Type`,`Slot`);

--
-- Indexes for table `wednesday`
--
ALTER TABLE `wednesday`
  ADD PRIMARY KEY (`Type`,`Slot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
