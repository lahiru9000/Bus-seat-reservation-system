-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2018 at 01:02 PM
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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE IF NOT EXISTS `bus` (
  `bus_id` int(11) NOT NULL AUTO_INCREMENT,
  `facilities` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `route_number` int(11) DEFAULT NULL,
  `seat_count` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_id`, `facilities`, `name`, `route_number`, `seat_count`, `type`, `registration_number`) VALUES
(1, 'AC', '', 22, 54, 'Super Luxury', 'ND1234'),
(2, 'TV', '', 8, 54, 'Luxury', 'ND4321'),
(3, 'TV', 'Dam Rajini', 22, 54, 'Super Luxury', 'ND1278'),
(4, 'AC,Adjustable seats', '', 30, 54, 'Super Luxury', 'ND1200'),
(5, 'Adjustable seats', 'aaa', 30, 54, 'Semi Luxury', 'ND1254'),
(6, 'Adjustable seats,TV', '', 41, 54, 'Normal', 'ND1333'),
(7, 'AC,Adjustable seats', '', 8, 45, 'Luxury', 'ND1111'),
(8, 'AC,Adjustable seats,TV', '', 30, 59, 'Super Luxury', 'ND4876'),
(9, 'AC,Adjustable seats,TV', '', 8, 32, 'Super Luxury', 'ND1234'),
(10, 'Adjustable seats', '', 8, 54, 'Super Luxury', 'ND4332');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
