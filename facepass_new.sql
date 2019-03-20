-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2019 at 07:04 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facepass_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `email` varchar(30) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`email`, `firstName`, `uid`, `password`) VALUES
('a@gmail.com', 'a', 'ad8198ae-97f4-442d-87bd-6579934067e1', ''),
('a@gmail.com', 'a', 'e2010e68-41fd-4db0-a7f7-6c5d50901db0', ''),
('j@gmail.com', 'j', '921cc91f-54d9-49b0-ac4a-dcf7ca55aff1', ''),
('j@gmail.com', 'j', '028913a0-2af1-4009-b783-026f41cbd3c4', ''),
('j@gmail.com', 'j', '8ce8df84-938c-47d9-a170-98aed3b65c77', ''),
('j@gmail.com', 'j', '96b998cd-af3d-4123-b24d-25c41e7dbceb', '');

-- --------------------------------------------------------

--
-- Table structure for table `faces`
--

CREATE TABLE `faces` (
  `uid` varchar(50) NOT NULL,
  `face` varchar(100) NOT NULL,
  `vector` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faces`
--

INSERT INTO `faces` (`uid`, `face`, `vector`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `uid` varchar(50) NOT NULL,
  `webid` varchar(30) NOT NULL,
  `login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `webid` varchar(30) NOT NULL,
  `url` varchar(50) NOT NULL,
  `sitename` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faces`
--
ALTER TABLE `faces`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;