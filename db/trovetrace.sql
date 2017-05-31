-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2015 at 06:52 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trovetrace`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`u_id` int(12) NOT NULL,
  `username` varchar(20) COLLATE ascii_bin NOT NULL,
  `password` varchar(50) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

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
`q_id` int(20) NOT NULL,
  `answer` varchar(100) COLLATE ascii_bin NOT NULL,
  `link` varchar(100) COLLATE ascii_bin DEFAULT NULL,
  `curr_link` varchar(500) COLLATE ascii_bin DEFAULT NULL,
  `attend_count` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `answer`, `link`, `curr_link`, `attend_count`) VALUES
(1, '5b4378aacad0be5b76c357e116bdd9fdae644409', 'level3.php', 'level1-QuotesError.php', 12),
(2, '51a71554606c83caf686aebccc7c1a34d99ff9b2', 'level2.php', 'level3.php', 11),
(3, '639799f079f986bc19420f6ccc13e88e340f726c', 'snake.php', 'level2.php', 10),
(4, 'bc7699052e2c11fed980cc672598d4d2fd74827d', 'level5.php', 'snake.php', 57),
(5, '023f1653afe3d7145a2efa03005104818ab85d88', 'level6.php', 'level5.php', 10),
(6, 'a8b47e591866ccbdb977f649b6ed14df947a0601', 'multiply.php', 'level6.php', 5),
(7, 'd6c1aa053c5deb3e2eb49ba5af6f17afccbba87d', 'final.php', 'multiply.php', 8),
(8, '', NULL, 'final.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
`s_no` int(20) NOT NULL,
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
  `current_login` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

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
(10, 'akhilesh', '', 'akhihaki', '72c930c093d0ecfe4b22a31d2cd53d8a2ec0adaa', '7879930626', 'akhihaki@live.com', 'iiitm', '', NULL, NULL, 0, 0),
(11, 'hammad', 'male', 'hammad', 'hammad', '1', 'hammad', 'hammad', '', NULL, NULL, 0, 0),
(12, 'jayant', 'male', 'jayant', 'jayant', '0', 'jayant', 'jayant', '', NULL, NULL, 0, 0),
(13, 'kushagra', 'male', 'kushagra', 'kushagra', '2367', 'kushagra', 'kushagra', '', NULL, NULL, 0, 0),
(14, 'rohit', 'male', 'rohit', 'rohit', '0', 'rohit', 'rohit', '', NULL, NULL, 0, 0),
(15, 'shubham', 'male', 'shubham', 'shubham', '2323', 'shubham', 'shubham', '', NULL, NULL, 0, 0);

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
  `email` varchar(50) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`username`, `institute`, `marks`, `rank`, `q_id`, `time_taken`, `email`) VALUES
('hammad', 'hammad', 2147483647, 16, 8, 1439547101, 'hammad'),
('jayant', 'jayant', 2147483647, 12, 6, 1439493316, 'jayant'),
('kushagra', 'kushagra', 2147483647, 12, 6, 1439540267, 'kushagra'),
('rohit', 'rohit', 2147483647, 12, 6, 1439497030, 'rohit'),
('shubham', 'shubham', 2147483647, 14, 7, 1439504637, 'shubham');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
 ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
 ADD PRIMARY KEY (`s_no`), ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `u_id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
MODIFY `q_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
