-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2018 at 01:01 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `enabled`, `name`) VALUES
(1, b'1', 'Colombo'),
(2, b'1', 'Badulla'),
(3, b'1', 'Ratnapura'),
(4, b'1', 'Ampara'),
(5, b'1', 'Anuradhapura'),
(6, b'1', 'Batticaloa'),
(7, b'1', 'Galle'),
(8, b'1', 'Gampaha'),
(9, b'1', 'Hambantota'),
(10, b'1', 'Jaffna'),
(11, b'1', 'Kalutara'),
(12, b'1', 'Kandy'),
(13, b'1', 'Kegalle'),
(14, b'1', 'Killinochchi'),
(15, b'1', 'Kurunegala'),
(16, b'1', 'Mannar'),
(17, b'1', 'Matale'),
(18, b'1', 'Matara'),
(19, b'1', 'Monaragala'),
(20, b'1', 'Mullaitivu'),
(21, b'1', 'Nuwara Eliya'),
(22, b'1', 'Polonnaruwa'),
(23, b'1', 'Puttalam'),
(24, b'1', 'Trincomalee'),
(25, b'1', 'Vavuniya');

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

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double DEFAULT NULL,
  `total_reserved_seats` int(11) DEFAULT NULL,
  `passenger_id` int(11) DEFAULT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3biwcv0wn3a1lp86g0ecsbnvd` (`passenger_id`),
  KEY `FKbnq7qaveg8wkoee526abhsykn` (`trip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

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
(7, 356, 'Monaragala', 14, 'Kandy', ''),
(8, 278, 'Anuradhapura', 15, 'Colombo', 'Medawachchiya'),
(9, 222, 'Nuwara Eliya', 18, 'Colombo', 'Hatton'),
(10, 132, 'Badulla', 21, 'Kandy', 'Mahaweli Raja Mawatha'),
(11, 298, 'Ampara', 22, 'Kandy', 'via Mahiyanganaya'),
(12, 122, 'Polonnaruwa', 29, 'Kandy', ''),
(13, 155, 'Batticaloa', 30, 'Badulla', ''),
(14, 344, 'Ampara', 35, 'Galle', ''),
(15, 233, 'Batticaloa', 41, 'Kandy', 'Kaduruwela (Polonnaruwa)'),
(16, 25, 'Anuradhapura', 42, 'Kandy', 'via Thalawa'),
(17, 56, 'Vavuniya', 43, 'Kandy', 'Anuradhapura (A/C) '),
(18, 78, 'Trincomalee', 45, 'Kandy', ''),
(19, 99, 'Nuwara Eliya', 47, 'Kandy', ''),
(20, 333, 'Trincomalee', 49, 'Colombo', ''),
(21, 444, 'Anuradhapura', 57, 'Colombo', 'Via Ella'),
(22, 89, 'Ratnapura', 69, 'Kandy', ''),
(23, 177, 'Anuradhapura', 75, 'Ampara', '');

-- --------------------------------------------------------

--
-- Table structure for table `route_location`
--

DROP TABLE IF EXISTS `route_location`;
CREATE TABLE IF NOT EXISTS `route_location` (
  `route_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  KEY `FK3tcq1ms0bhd13xj5xpp47i00s` (`location_id`),
  KEY `FK3ah0cmivmxb2ayuvb48si01xw` (`route_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_location`
--

INSERT INTO `route_location` (`route_id`, `location_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 5),
(3, 1),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 15),
(6, 1),
(6, 17),
(7, 12),
(7, 19),
(8, 1),
(8, 5),
(9, 1),
(9, 21),
(10, 2),
(10, 12),
(11, 4),
(11, 12),
(12, 12),
(12, 22),
(13, 2),
(13, 6),
(14, 4),
(14, 7),
(15, 6),
(15, 12),
(16, 5),
(16, 12),
(17, 12),
(17, 25),
(18, 12),
(18, 24),
(19, 12),
(19, 21),
(20, 1),
(20, 24),
(21, 1),
(21, 5),
(22, 3),
(22, 12),
(23, 4),
(23, 5);

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `arrival_date`, `arrival_time`, `departure_date`, `departure_time`, `duration`, `price_per_seat`, `route_number`) VALUES
(1, '2018-09-07', '06:00 AM', '2018-09-06', '06:00 AM', '12 hours', 1200, '1'),
(2, '2018-09-20', '06:00 AM', '2018-09-20', '06:00 AM', '6 hours', 1000, '1'),
(3, '2018-09-27', '06:00 AM', '2018-09-27', '06:00 AM', '2 hours', 500, '1'),
(4, '2018-09-26', '06:00 AM', '2018-09-25', '06:00 AM', '24 hours', 2000, '1'),
(5, '2018-09-24', '06:00 AM', '2018-09-24', '06:00 AM', '2 hours', 200, '1'),
(6, '2018-09-22', '06:00 AM', '2018-09-21', '06:00 AM', '6 hours 10 mins', 12, '22'),
(7, '2018-09-29', '06:00 AM', '2018-09-29', '06:00 AM', '6 hours 10 mins', 3400, '35');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
