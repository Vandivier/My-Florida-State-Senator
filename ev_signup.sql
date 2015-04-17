-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2015 at 11:01 AM
-- Server version: 5.5.41-cll-lve
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ev_signup`
--

CREATE TABLE IF NOT EXISTS `ev_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(30) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_zip` int(5) DEFAULT NULL,
  `user_ip` varchar(10) DEFAULT NULL,
  `auto_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email_confirmed` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8929 ;

--
-- Dumping data for table `ev_signup`
--

INSERT INTO `ev_signup` (`id`, `user_email`, `user_name`, `user_zip`, `user_ip`, `auto_time`, `email_confirmed`) VALUES
(1, 'john@example.com', 'John', 33141, '', '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
