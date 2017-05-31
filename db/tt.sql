-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2013 at 02:21 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trovetrace`
--
CREATE DATABASE IF NOT EXISTS `trovetrace` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trovetrace`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `u_id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE ascii_bin NOT NULL,
  `password` varchar(50) COLLATE ascii_bin NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii COLLATE=ascii_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`u_id`, `username`, `password`) VALUES
(1, 'administrator', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(2, 'uttam', 'f10eedfe8957ca0ec8d1c628bea8837320136542');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `q_id` int(20) NOT NULL AUTO_INCREMENT,
  `answer` varchar(100) COLLATE ascii_bin NOT NULL,
  `image_name` varchar(100) COLLATE ascii_bin DEFAULT NULL,
  `hint` varchar(500) COLLATE ascii_bin DEFAULT NULL,
  `attend_count` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii COLLATE=ascii_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `answer`, `image_name`, `hint`, `attend_count`) VALUES
(1, 'd740ea12e1a4fdde020902df51cf8095d184bc8e', 'decipher.jpg', 'You just Entered into', 2),
(2, '3449944e1ceda510f7a4d1996060aca989d7b7af', 'they_are_the_men.jpg', 'Do you watch cricket', 1),
(3, '8fe63c015a9b530b576c408f8e25c043967ef67b', 'a game, a war, that conquered entire world in this way.jpg', 'just go through History', 1),
(4, '5c2dd944dde9e08881bef0894fe7b22a5c9c4b06', 'found all the elements, 1 elementary particle of english missing.JPG', 'No hint required', 1),
(5, '946e15c890f78bcfcc4891813885ea21ca61a344', 'highly fundamental.jpg', 'see again', 1),
(6, '51c066b36ea8b32076964c766f8a0324ca4eb4b9', 'american standard.jpg', 'No hint required', 1),
(7, 'cfc303d8adf9cb27b6e3ebd33363e7714722f9fb', 'many pictures, single connection.jpg', '', 1),
(8, '87c70a0bc14a9a5243b667894bf3a9cae47233e9', 'relatively easy, no more clues here.jpg', 'You see this daily, even hourly some times', 2),
(9, '7cc918f959308c71f292f9308e7a748adf4d1434', 'q1.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `player1` varchar(50) COLLATE ascii_bin NOT NULL,
  `sex` varchar(10) COLLATE ascii_bin NOT NULL,
  `username` varchar(20) COLLATE ascii_bin NOT NULL,
  `password` varchar(50) COLLATE ascii_bin NOT NULL,
  `contact` varchar(20) COLLATE ascii_bin NOT NULL,
  `email` varchar(100) COLLATE ascii_bin NOT NULL,
  `institute` varchar(150) COLLATE ascii_bin NOT NULL,
  `address` varchar(200) COLLATE ascii_bin DEFAULT NULL,
  `player2` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `description` varchar(200) COLLATE ascii_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `current_login` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`s_no`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii COLLATE=ascii_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`s_no`, `player1`, `sex`, `username`, `password`, `contact`, `email`, `institute`, `address`, `player2`, `description`, `status`, `current_login`) VALUES
(3, 'uttam', 'male', 'uttam', 'd1fd7a9c76f9ff855a0665235144f3940b9d5022', '9407204628', 'purushottam.kushwaha@gmail.com', 'ABV- IIITM gwalior', 'Gwalior', 'test', NULL, 0, 0),
(5, 'prabhat', 'male', 'prabhat', '7cd989ce45c8a0a3a9504eeae2ae58eea51e4ca2', '1234567', 'piku@gmail.com', 'ABV- IIITM gwalior', 'Gwalior', '', NULL, 0, 1),
(6, 'Ashish', 'male', 'ashish1', '415782ec2f2c50316b55b96ccb4530b9bd7e055e', 'ashish1', 'ashish1', 'ashish1', 'ashish1', 'ashish1', NULL, 0, 0),
(7, 'piku1', 'male', 'piku1', '3085aebb4f512ed7b1d57d139366bd83377e45f2', 'piku1', 'piku1', 'piku1', 'piku1', 'piku1', NULL, 0, 0),
(8, 'daddu1', 'male', 'daddu1', '15b33147c678fcd444a46e864ce1a68d6b749b89', 'daddu1', 'daddu1', 'daddu1', 'daddu1', 'daddu1', NULL, 0, 0),
(9, 'trovetrace', 'male', 'trovetrace', '1dd71e8d0eb18b79fdff965c532ee1d138a611ff', 'trovetrace', 'trovetrace', 'trovetrace', 'trovetrace', 'trovetrace', NULL, 0, 0),
(10, 'akhilesh', '', 'akhihaki', '72c930c093d0ecfe4b22a31d2cd53d8a2ec0adaa', '7879930626', 'akhihaki@live.com', 'iiitm', '', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `username` varchar(50) COLLATE ascii_bin NOT NULL,
  `institute` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `marks` int(50) DEFAULT NULL,
  `rank` int(20) DEFAULT NULL,
  `q_id` int(20) NOT NULL DEFAULT '1',
  `time_taken` int(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`username`, `institute`, `marks`, `rank`, `q_id`, `time_taken`) VALUES
('akhihaki', 'iiitm', 0, 0, 1, 0),
('ashish1', 'ashish1', NULL, NULL, 1, 1285313461),
('daddu1', 'daddu1', NULL, NULL, 1, 1285313543),
('piku1', 'piku1', NULL, NULL, 1, 1285313493),
('prabhat', 'ABV- IIITM gwalior', 21637852, NULL, 2, 10818926),
('trovetrace', 'trovetrace', NULL, NULL, 1, 1285313644),
('uttam', 'ABV- IIITM Gwalior', 108184010, NULL, 10, 10818401);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
