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
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nic` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`passenger_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `email`, `first_name`, `gender`, `last_name`, `mobile`, `nic`, `password`, `username`) VALUES
(1, 'lahirus250@gmail.com', 'Lahiru', 'Male', 'Sandaruwan', '0776546459', '953130416v', 'lahiru', 'lahiru'),
(2, 'shehani@gmail.com', 'Shehani', 'Female', 'Manisha', '0713750702', '953130417v', 'shehani', 'shehani'),
(3, 'calvin@gmail.com', 'Calvin', 'Male', 'Cambridge', '0711234567', '953130416v', 'calvin', 'calvin'),
(4, 'saul@gmail.com', 'Saul', 'Male', 'Barrenson', '0454376851', '953130888v', 'saul', 'saul'),
(5, 'carrie@gmail.com', 'Carrie', 'Female', 'Mathison', '0983475498', '978930416v', 'carrie', 'carrie'),
(6, 'stranger@gmail.com', 'Doctor', 'Male', 'Strange', '0776543459', '123726789v', 'strange', 'strange'),
(7, 'iron@gmail.com', 'Iron', 'Male', 'Man', '0711234534', '9537666416v', 'iron', 'iron'),
(8, 'lord@aGmail.com', 'Start', 'Male', 'Lord', '0776549879', '912330416v', 'lord', 'lord'),
(9, 'hariss@aGmail.com', 'Calvin', 'Male', 'Harris', '0776546666', '9538760416v', 'hariss', 'hariss'),
(10, 'garixx@aGmail.com', 'Martin', 'Male', 'Garixx', '0776546400', '953137716v', 'garixx', 'garixx');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
