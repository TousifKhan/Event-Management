-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2019 at 01:54 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frontdesk_users`
--

CREATE TABLE IF NOT EXISTS `tbl_frontdesk_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_frontdesk_users`
--

INSERT INTO `tbl_frontdesk_users` (`id`, `username`, `pwd`, `bdate`) VALUES
(1, 'tousif', '*1D72DAFB953E3606E84902DB8C521C98EC46266E', '2016-08-22 16:20:12'),
(2, 'mark', '*3C792B587BE4C8A08A067FED1D36302941BC7633', '2016-08-22 16:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE IF NOT EXISTS `tbl_holidays` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `reason`, `bdate`) VALUES
(2, '2016-09-22', 'National day', '2016-08-25 23:21:21'),
(3, '2016-08-30', 'My sons borthday', '2016-08-26 11:54:44'),
(4, '2018-03-25', 'Xmas Holiday', '2016-12-20 01:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservations`
--

CREATE TABLE IF NOT EXISTS `tbl_reservations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `ucount` int(10) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`) VALUES
(1, 1, 22, '2016-08-21 13:02', 'DENIED', '', '2016-08-21 23:02:38'),
(2, 10, 3, '2016-08-12 10:10', 'PENDING', '', '2016-08-22 00:53:36'),
(3, 11, 2, '2016-08-10 20:10', 'APPROVED', '', '2016-08-22 01:09:53'),
(5, 13, 12, '2016-08-02 10:10', 'PENDING', '', '2016-08-25 18:45:04'),
(6, 1, 10, '2016-12-20 10:00', 'PENDING', '', '2016-12-20 02:47:04'),
(7, 1, 20, '2018-03-12 10:00', 'PENDING', '', '2018-03-08 21:29:00'),
(8, 11, 20, '2018-03-06 02:00', 'PENDING', '', '2018-03-08 21:29:30'),
(9, 14, 10, '2018-03-23 05:00', 'PENDING', '', '2018-03-08 21:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `pwd`, `address`, `phone`, `email`, `type`, `status`, `bdate`) VALUES
(1, 'Tousif', '*1D72DAFB953E3606E84902DB8C521C98EC46266E', 'khan here', '11223344', 'tousifkhan510@gmail.com', 'teacher', 'active', '2016-08-21 23:02:38'),
(10, 'Asif', '*1D72DAFB953E3606E84902DB8C521C98EC46266E', 'my old address', '112234221', 'tousif@gmail.com', 'student', 'active', '2016-08-22 00:53:36'),
(11, 'Ramiz Khan', '*353224D734B504E91E093D721227A863E07D5B83', 'MY Old address', '1122334455', 'ramiz@gmail.com', 'student', 'inactive', '2016-08-22 01:09:53'),
(13, 'Rizi Khatki', '*353224D734B504E91E093D721227A863E07D5B83', 'some addree here', '2233445566', 'rizi@gmcil.com', 'student', 'active', '2016-08-25 18:45:04'),
(14, 'ayesha', '*1D72DAFB953E3606E84902DB8C521C98EC46266E', 'adasd asd asd asd a', '23232323', 'aesha@gmail.com', 'teacher', 'active', '2016-12-20 00:36:25'),
(15, 'admin', '*01A6717B58FF5C7EAFFF6CB7C96F7428EA65FE4C', 'some addresses', '11223344', 'myemail@gmail.com', 'admin', 'active', '2016-12-20 10:00:08'),
(16, 'zeba01', '*1D72DAFB953E3606E84902DB8C521C98EC46266E', 'some address here', '123433342', 'zeba@gmail.com', 'student', 'inactive', '2019-08-11 14:00:02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
