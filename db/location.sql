-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 23, 2018 at 10:45 AM
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
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `enabled`, `name`, `description`) VALUES
(1, b'1', 'Colombo', ''),
(2, b'1', 'Badulla', ''),
(3, b'1', 'Ratnapura', ''),
(4, b'1', 'Ampara', ''),
(5, b'1', 'Anuradhapura', ''),
(6, b'1', 'Batticaloa', ''),
(7, b'1', 'Galle', ''),
(8, b'1', 'Gampaha', ''),
(9, b'1', 'Hambantota', ''),
(10, b'1', 'Jaffna', ''),
(11, b'1', 'Kalutara', ''),
(12, b'1', 'Kandy', ''),
(13, b'1', 'Kegalle', ''),
(14, b'1', 'Killinochchi', ''),
(15, b'1', 'Kurunegala', ''),
(16, b'1', 'Mannar', ''),
(17, b'1', 'Matale', ''),
(18, b'1', 'Matara', ''),
(19, b'1', 'Monaragala', ''),
(20, b'1', 'Mullaitivu', ''),
(21, b'1', 'Nuwara Eliya', ''),
(22, b'1', 'Polonnaruwa', ''),
(23, b'1', 'Puttalam', ''),
(24, b'1', 'Trincomalee', ''),
(25, b'1', 'Vavuniya', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
