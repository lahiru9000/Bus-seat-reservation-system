-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 23, 2018 at 10:46 AM
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
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
CREATE TABLE IF NOT EXISTS `route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `distance` double DEFAULT NULL,
  `end_location` varchar(255) DEFAULT NULL,
  `route_number` int(11) DEFAULT NULL,
  `start_location` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `distance`, `end_location`, `route_number`, `start_location`, `description`) VALUES
(1, 140, 'Kandy', 1, 'Colombo', ''),
(2, 235, 'Matara', 2, 'Colombo', ''),
(3, 135, 'Mannar', 4, 'Colombo', ''),
(4, 258, 'Kurunegala', 5, 'Colombo', 'via Minuwangoda'),
(5, 135, 'Kurunegala', 6, 'Colombo', 'via Warakapola'),
(6, 312, 'Matale', 8, 'Colombo', ''),
(8, 278, 'Anuradhapura', 15, 'Colombo', 'Medawachchiya'),
(9, 222, 'Nuwara Eliya', 18, 'Colombo', 'Hatton'),
(10, 132, 'Badulla', 21, 'Kandy', 'Mahaweli Raja Mawatha'),
(11, 298, 'Ampara', 22, 'Kandy', 'via Mahiyanganaya'),
(12, 122, 'Polonnaruwa', 29, 'Kandy', ''),
(28, 260, 'Badulla', 98, 'Colombo', 'via old road'),
(15, 233, 'Batticaloa', 41, 'Kandy', 'Kaduruwela (Polonnaruwa)'),
(16, 25, 'Anuradhapura', 42, 'Kandy', 'via Thalawa'),
(17, 56, 'Vavuniya', 43, 'Kandy', 'Anuradhapura (A/C) '),
(18, 78, 'Trincomalee', 45, 'Kandy', ''),
(19, 99, 'Nuwara Eliya', 47, 'Kandy', ''),
(20, 333, 'Trincomalee', 49, 'Colombo', ''),
(21, 444, 'Anuradhapura', 57, 'Colombo', 'Via Ella'),
(22, 89, 'Ratnapura', 69, 'Kandy', ''),
(23, 177, 'Anuradhapura', 75, 'Ampara', ''),
(29, 260, 'Badulla', 99, 'Colombo', 'via new road'),
(27, 143, 'Kalutara', 100, 'Colombo', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
