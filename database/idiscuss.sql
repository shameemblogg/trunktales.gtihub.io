-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 08:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(25) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_discription` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_discription`, `created`) VALUES
(1, 'python', 'In this Python tutorial for beginners, you will learn Python programming basics and advanced concepts. This Python course contains all the Python basics from installation to advanced stuff like Python data science. This Python programming tutorial helps y', '2021-05-24 13:25:47'),
(2, 'HTML', 'html is a hypertext markup langage which use to creat a webpage ', '2021-05-29 12:39:33'),
(3, 'java', 'java is a intrepetter programming language which use to develope android application and many more', '2021-06-04 10:45:04'),
(4, 'django ', 'django is a framework of python which give  lot of functionality of python ', '2021-06-04 10:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'this is a comment bad', 1, 0, '2021-06-07 12:58:44'),
(2, 'plese leave your comment here', 1, 0, '2021-06-07 13:12:00'),
(3, 'plese leave your comment here', 1, 0, '2021-06-07 13:12:31'),
(4, 'java is a advance language', 1, 0, '2021-06-07 13:20:30'),
(5, 'mysql is backend database creating langauage', 1, 0, '2021-06-07 15:42:50'),
(6, 'kgkjgkj', 1, 0, '2021-06-07 16:29:38'),
(7, 'please fix mu error fo python it is very typicall to me ', 1, 0, '2021-06-09 14:56:51'),
(8, 'java is a advance langauge', 1, 0, '2021-06-11 12:30:20'),
(9, ' your query suggestion is there', 38, 0, '2021-06-11 12:33:41'),
(10, ' hi', 38, 0, '2021-06-11 12:33:56'),
(11, ' hi', 38, 0, '2021-06-11 12:39:17'),
(12, ' hi', 38, 0, '2021-06-11 12:41:43'),
(13, ' hi', 38, 0, '2021-06-11 12:50:04'),
(14, ' hi', 38, 0, '2021-06-11 12:50:36'),
(15, ' hi', 38, 0, '2021-06-11 12:50:59'),
(16, ' hi', 38, 0, '2021-06-11 12:51:25'),
(17, ' hi', 38, 0, '2021-06-11 12:52:00'),
(18, ' hi', 38, 0, '2021-06-11 12:52:49'),
(19, ' hi', 38, 0, '2021-06-11 12:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(10) NOT NULL,
  `thread_title` varchar(255) DEFAULT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(15) NOT NULL,
  `thread_user_id` int(15) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `dt`) VALUES
(38, ' dgdfg', '  dfsdgdsg', 1, 0, '2021-06-07 17:23:19'),
(39, ' python', '  please show me all functionality of python ', 1, 0, '2021-06-09 14:55:13'),
(40, ' sdlkf', '  dsfdsg', 2, 0, '2021-06-10 10:49:34'),
(41, ' sdlkf', '  dsfdsg', 2, 0, '2021-06-10 10:57:17'),
(42, ' learn english basic', '  sldlfsd', 3, 0, '2021-06-19 23:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(10) NOT NULL,
  `user_email` varchar(25) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(12, 'palla112@gmail.com', '$2y$10$w9nd5RdjoGDhgcVv0p3oUeS3mg3/xAgU8PxVpt/GmFLRg6rqE7T9u', '2021-06-13 11:09:45'),
(13, 'shameemkhan2071995@gmail.', '$2y$10$IGUSL1Nt9FNRodbzjleg8.BZUAQAnJK2.N9iGC2ogJ3Pc5t2OidOG', '2021-06-13 11:10:48'),
(14, 'janviyadav@123gmail.com', '$2y$10$AaUduYK8dE.aFA4kWULF6eHPc3mXDggwAgmD86lKD.FTCJzDyzLGq', '2021-06-13 11:48:11'),
(15, 'radhaswami@gmail.com', '$2y$10$oZg5sP/sPUxZn8RdNozvL.B9Y2A4ILtNUQ0Wlkhs6YViIBVku5OGy', '2021-06-15 13:10:59'),
(16, 'amir123@gmail.com', '$2y$10$zh9vNbafDr/88MKFDm.CyOvv5DB2n/.z8Eu72qO4oUBZ8avNUZ/my', '2021-06-17 14:30:45'),
(17, 'rekshabhabhi@123gmail.com', '$2y$10$WCys9KNvmC6gv2PmAEZQWOMffx.Hop8PFmbgSErOY.laSskv7TrQC', '2021-06-17 15:11:21'),
(18, 'ali123@gmail.com', '$2y$10$SmzR5yBnIYngdw8QZY.G6uv5qClgkfXMNEf5in0U3tufxyIQfoniS', '2021-06-17 15:23:51'),
(19, 'lalsing123@gmail.com', '$2y$10$alsvBGrQKLpdGgC691W5GugEldNUABIxdwVl8ni8jw3Ul5oFRGV8u', '2021-06-18 12:17:51'),
(20, 'bacchi123@gmail.com', '$2y$10$jLj3cJp/UdqdzLKiDCU57OVN3rjzuO0ypbdDFx8u9AQgtSC/dVkQy', '2021-06-18 12:24:45'),
(21, 'samar123@gmail.com', '$2y$10$gnuBm/2xEYh8gJ8beUv9S.1sMm0dviBTwjlXkNO2/Vr/ERRf4TgZC', '2021-06-19 12:42:33'),
(22, 'padma@123gmail.com', '$2y$10$S3E/.dvgaDW1Be4baoeuIeOrZq7zYocN6A87.DEJQqf3KoNvGnfSa', '2021-06-19 23:29:59'),
(23, 'raggu123@gmail.com', '$2y$10$IAyW64LPvA0Frb7a1DGwNOL5NcvVlsQ0Rf5En2i15H93SOABxYD/O', '2021-06-19 23:37:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
