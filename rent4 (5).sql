-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 05:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_Id` int(11) NOT NULL,
  `admin_name` varchar(80) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile` varchar(60) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_Id`, `admin_name`, `email`, `phone`, `password`, `profile`, `date`) VALUES
(100, 'john', 'admin1@gmail.com', 755170312, '333', '4D60EB65-DF48-445D-BBB4-9EA16E2CD0D3.gif', '2023-06-15 22:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `comment_content` varchar(255) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL,
  `Tool_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `comment_content`, `comment_date`, `Tool_id`) VALUES
(30, 'llllllllllllllllllllllll', '2023-06-03 00:51:45', 46),
(31, 'dsdsdsds', '2023-06-03 00:57:01', 46),
(32, 'dsdsdsds', '2023-06-03 00:58:05', 46),
(33, 'sds', '2023-06-03 00:58:16', 46),
(34, 'qqq', '2023-06-03 00:58:24', 46),
(35, 'qqq', '2023-06-03 00:58:30', 46),
(37, 'qqq', '2023-06-03 01:01:12', 46),
(49, 'skjdksjd\r\n', '2023-06-12 15:32:28', 45),
(53, 'sdsds', '2023-06-13 02:25:03', 46),
(54, 'jjjj\r\n', '2023-06-15 19:00:17', 45);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `comment_content` varchar(100) NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `full_name`, `Email`, `comment_content`, `comment_date`) VALUES
(41, ' Rose Felyx', 'rosekadege1@gmail.com', ' UI NI MBOVU\r\n', '2023-06-02 19:12:39'),
(46, ' dickson kibabage', 'admin1@gmail.com22', ' hahahahahah\r\n', '2023-06-16 10:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `Tool_id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `Tool_name` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  `Tool_disc` varchar(50) NOT NULL,
  `likes` int(255) NOT NULL,
  `viewers` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`Tool_id`, `userId`, `Tool_name`, `price`, `image`, `Date`, `Tool_disc`, `likes`, `viewers`) VALUES
(42, 18, 'chepe', '2000 ', 'sululu.png', '2023-05-28', 'ni kifaa USED ila hakina halimabaya kinafaa kwa ma', 2, 4),
(45, 16, 'mixer', '20000 ', 'mixer2.webp', '2023-05-29', 'ni kifaa used na hakitumii mafuta mengi', 0, 216),
(46, 19, 'mixer', '20000 ', 'mixer2.webp', '2023-05-29', 'hiki kifaa ni hakitumiii mafuta mengi', 0, 107),
(53, 33, 'jamping jack', '20000 ', 'learn1-removebg-preview.png', '2023-06-13', 'lllllll', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `second_name` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `phone_no` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `mydiscription` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `first_name`, `second_name`, `user_name`, `password`, `email`, `location`, `phone_no`, `image`, `mydiscription`, `date`, `mode`) VALUES
(16, 'ilumba', ' milambo                             ', ' trade with us..          ', '12345678', 'admin01@gmail.com', 'mbezi    ', 755170315, '8D063740-92A3-4A29-92D7-1B18D2793565.jpeg', 'UWAMINIFU ASILIMIA MIA na ishirini', '2023-06-15 19:49:19', 0),
(18, 'vick', 'minazi   ', ' @victoryis ours..    ', '123456789', 'rosekadege1@gmail.com', 'sinza   ', 621892913, '9d5e1c2b-ed1a-4498-962a-8fd292264a2a.jfif', '   ', '2023-06-15 16:05:41', 1),
(19, 'rose', 'kadege  ', ' kadege shop   ', '123456', 'kadege12@gmail.com', 'mabibo  ', 621892913, 'wanyama2.jpg', ' rent with us http://localhost/rent4/rent/side/rent/work/image/wanyama2.jpg\r\n\r\n\r\n', '2023-06-10 11:58:55', 0),
(21, 'jack', 'john ', ' jack reacher  ', '123456', 'jack@gmail.com', 'mabibo ', 2147483647, 'leady teacher.webp', ' ', '2023-06-12 21:46:12', 0),
(23, 'rose', 'john', ' kadege shop ', '1234567', 'kadege122@gmail.com', 'mabibo', 12345566, '', '', '2023-06-10 12:00:20', 0),
(24, 'jack', 'john', ' kadege shop ', 'Rzy\"8888', 'admin03@gmail.com', 'tabata', 2147483647, '', '', '2023-06-05 00:29:41', 1),
(31, 'Joshua', 'Kaaya', 'null', '102554788665108222981', 'joshuakaaya216@gmail.com', 'null', 0, 'https://lh3.googleusercontent.com/a/AAcHTtdWLYtsdPzCaGu716UQUk7WIn5RtXWb4inuaoED4A=s96-c', 'null', '2023-06-10 12:27:05', 0),
(32, 'Richard', 'Mbasha', 'null', '108020741921870233745', 'richardmbasha22@gmail.com', 'null', 0, 'https://lh3.googleusercontent.com/a/AAcHTtckTRVFa2tR9BzkkNVKrJJbVKVJA71pjdzJBlK3=s96-c', 'null', '2023-06-12 11:14:50', 0),
(33, 'Rose', 'Kadege   ', 'SUCCESS SHOP ', '107729028420213135157', 'rosekadege1@gmail.com', 'MBEZI', 2147483647, 'https://lh3.googleusercontent.com/a/AAcHTtdABl3ZFKbB9m484n6PKXidYww3cW_54gWkivdz=s96-c', 'not nulll   ', '2023-06-12 21:56:38', 1),
(34, 'john', 'tito', ' rzy ', 'ilumbaI12', 'admin04@gmail.com', 'mabibo', 717090260, '', '', '2023-06-12 12:55:56', 1),
(35, 'John', 'Petro ', 'null ', '111993347876805553366', 'johnpetro335@gmail.com', 'null ', 621892913, 'https://lh3.googleusercontent.com/a/AAcHTtfeCa5mHZsKeZY3s7HWhvTmCw11FFQeS81GQe2g=s96-c', 'null ', '2023-06-12 21:49:07', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_Id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `Tool_id` (`Tool_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`Tool_id`),
  ADD KEY `userId` (`userId`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `Tool_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`Tool_id`) REFERENCES `tools` (`Tool_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tools`
--
ALTER TABLE `tools`
  ADD CONSTRAINT `tools_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
