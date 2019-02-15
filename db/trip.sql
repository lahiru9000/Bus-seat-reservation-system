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
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
CREATE TABLE IF NOT EXISTS `trip` (
  `trip_id` int(11) NOT NULL AUTO_INCREMENT,
  `arrival_date` date DEFAULT NULL,
  `arrival_time` varchar(255) DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `departure_time` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `price_per_seat` double DEFAULT NULL,
  `route_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `arrival_date`, `arrival_time`, `departure_date`, `departure_time`, `duration`, `price_per_seat`, `route_number`) VALUES
(1, '2018-09-07', '06:00 AM', '2018-09-06', '06:00 AM', '12 hours', 1200, '1'),
(2, '2018-09-20', '06:00 AM', '2018-09-20', '06:00 AM', '6 hours', 1000, '1'),
(3, '2018-09-27', '06:00 AM', '2018-09-27', '06:00 AM', '2 hours', 500, '1'),
(4, '2018-09-26', '06:00 AM', '2018-09-25', '06:00 AM', '24 hours', 2000, '1'),
(5, '2018-09-24', '06:00 AM', '2018-09-24', '06:00 AM', '2 hours', 200, '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
