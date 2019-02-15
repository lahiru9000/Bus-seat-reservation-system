-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2018 at 06:13 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transporter_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `time_picker`
--

DROP TABLE IF EXISTS `time_picker`;
CREATE TABLE IF NOT EXISTS `time_picker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_picker`
--

INSERT INTO `time_picker` (`id`, `time`) VALUES
(1, '06:00 AM'),
(2, '07:00 AM'),
(3, '08:00 AM'),
(4, '09:00 AM'),
(5, '10:00 AM'),
(6, '11:00 AM'),
(7, '12:00 PM'),
(8, '01:00 PM'),
(9, '02:00 PM'),
(10, '03:00 PM'),
(11, '04:00 PM'),
(12, '05:00 PM'),
(13, '06:00 PM'),
(14, '07:00 PM'),
(15, '08:00 PM'),
(16, '09:00 PM'),
(17, '10:00 PM'),
(18, '11:00 PM'),
(19, '12:00 AM'),
(20, '01:00 AM'),
(21, '02:00 AM'),
(22, '03:00 AM'),
(23, '04:00 AM'),
(24, '05:00 AM');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
