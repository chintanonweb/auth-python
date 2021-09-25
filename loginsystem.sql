-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2019 at 05:00 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `ls_user`
--

CREATE TABLE `ls_user` (
  `lsu_ID` int(11) NOT NULL COMMENT 'Backend Purpose',
  `lsu_name` text NOT NULL COMMENT 'User''s Name',
  `lsu_email` varchar(30) NOT NULL COMMENT 'User''s Email',
  `lsu_password` text CHARACTER SET utf8mb4 NOT NULL COMMENT 'User''s Password'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ls_user`
--

INSERT INTO `ls_user` (`lsu_ID`, `lsu_name`, `lsu_email`, `lsu_password`) VALUES
(1, 'Chintan Dhokai', 'user@gmail.com', 'asdfghjkl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ls_user`
--
ALTER TABLE `ls_user`
  ADD PRIMARY KEY (`lsu_email`),
  ADD UNIQUE KEY `lsu_ID` (`lsu_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ls_user`
--
ALTER TABLE `ls_user`
  MODIFY `lsu_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Backend Purpose', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
