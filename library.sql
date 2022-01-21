-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 03:12 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`, `status`) VALUES
(1, 'Mr.', 'Abdul', 'Hamid', '123456', 'mr.hamid@gmail.com', '12345678', 'W960H720.jpg', 'yes'),
(15, 'Nishat', 'Tamanna', 'nishat', 'Nish@t44', 'nishat@gmail.com', '01776655322', 'p.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `id` int(50) NOT NULL,
  `news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`id`, `news`) VALUES
(24, 'Our library add new drama book.');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(100) NOT NULL,
  `isbn` char(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `isbn`, `name`, `authors`, `edition`, `status`, `quantity`, `department`) VALUES
(20, 'orga39912493874837', 'Computer Organization and Structure', 'William Stallings', '8th', 'available', 4, 'IIT'),
(21, 'bus83493847982357', 'Business Communication', 'Lessikka', '2nd', 'available', 3, 'IIT'),
(22, 'data8397498549859348', 'Data Structure', 'Steven Skiena', '3rd', 'available', 2, 'CSTE');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`) VALUES
(16, 'Afifa', 'There is no books of ETE department.When will it be available?'),
(47, 'saifur', 'it is so nice'),
(48, 'saima', 'there is no drama book in our library');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `isbn` char(20) NOT NULL,
  `returned` varchar(100) NOT NULL,
  `day` int(50) NOT NULL,
  `fine` double NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`id`, `username`, `isbn`, `returned`, `day`, `fine`, `status`) VALUES
(16, 'bashar', 'dsaslkjdjs845734586', '2021-10-02', 33, 66, ' paid'),
(22, 'saima', 'data8397498549859348', '2021-10-04', 24, 48, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `issue_id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `isbn` char(20) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`issue_id`, `username`, `isbn`, `approve`, `issue`, `return`) VALUES
(69, 'saima', 'data8397498549859348', '<p style=\"color:yellow; background-color:red;\">EXPIRED</p>', '2021-08-10', '2021-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`) VALUES
(2, 'womenfashiongalaxy@gmail.com', 'ba2e5575cfac9e267b82fc6bd70b48524c0395cd75ab1084ef279dd79ecd0e2bbf8c5de8dfaeb53cb4e2145febacd0df7e8a'),
(3, 'womenfashiongalaxy@gmail.com', 'd34d31e994a90a6b8fe457a7fa75de3a44389af8d0ab7543005c9cb619d6663774cc257a755ae69ab98cb4a9cc0df114f68e'),
(4, 'womenfashiongalaxy@gmail.com', '9b18106d197f4e0af6564f02f34b75710d824ef8506a304d7fcd3d1b20b7165e014949135b4b2985d4b34a0f6de135635f33'),
(5, 'womenfashiongalaxy@gmail.com', '3022b0625358f6b2550634155854d837819365fadf0710a803f144b32b4f0272bdba75316289221167548a1cf81312ffcfe5'),
(6, 'womenfashiongalaxy@gmail.com', '4e9158ad21804b20275794ede863fe606267b9abe88710f605a19c4c77a34ed19abb5233ecb7ce44eca8d65e729af92aed6b'),
(20, 'learnwithdigitalmarketing@gmail.com', 'b4de568df1b168e8524c24f1f8cb31b2475094e149877d0de85b71af13c41989211851a2495b2cd54e0c795379b6606c8797'),
(21, 'womenfashiongalaxy@gmail.com', '044a3e5c7b6fb7e91150a02b8d1a41bbb866b0aa7c7de587eab4c1448b134abfaa210d5f476ab2d7c1206b362eb5933c4acf'),
(22, 'womenfashiongalaxy@gmail.com', '3601546aef24dde1ab0fc77db50e3e4ed57479ca3128ab9f4842a4d2a31ece4935e22c677ccf4b38d98c7959bf96220b67cf');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `session` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(50) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first`, `last`, `username`, `password`, `roll`, `session`, `department`, `email`, `status`, `contact`, `pic`) VALUES
(29, 'Nowal benta', 'basher', 'saima', 'S@im@3456', 'BFH1825041F', '2017-18', 'IIT', 'womenfashiongalaxy@gmail.com', 1, '01822334455', 'p.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `r_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`id`, `username`, `otp`, `r_date`) VALUES
(1, 'nabila', '96', '2021-02-13'),
(2, 'nabila', '17915', '2021-02-13'),
(3, 'nabila', '98507', '2021-02-13'),
(4, 'nabila', '79118', '2021-02-13'),
(5, 'nabila', '53822', '2021-02-14'),
(6, 'nabila', '37891', '2021-02-14'),
(7, 'nabila', '57579', '2021-02-14'),
(8, 'nabila', '23248', '2021-02-14'),
(9, 'nabila', '42314', '2021-02-14'),
(10, 'nabila', '20753', '2021-02-14'),
(11, 'nowal', '31552', '2021-02-14'),
(12, 'nowshin', '45493', '2021-02-14'),
(13, 'Nowshin', '98501', '2021-02-17'),
(26, 'saima', '29144', '2021-09-29'),
(27, 'saima', '93112', '2021-10-02'),
(28, 'saima2', '58490', '2021-10-02'),
(29, 'saima', '79542', '2021-10-02'),
(30, 'a', '59473', '2021-10-02'),
(31, 'saima022', '42065', '2021-10-02'),
(32, 'bashar', '71942', '2021-10-02'),
(33, 'bashar', '41349', '2021-10-02'),
(34, 'saifur', '22239', '2021-10-02'),
(35, 'test3', '20836', '2021-10-02'),
(36, 'rahat', '64973', '2021-10-03'),
(37, 'saima2', '32117', '2021-10-03'),
(38, 'saima444', '38206', '2021-10-03'),
(39, 'saima', '40727', '2021-10-03'),
(40, 'nowal', '69093', '2021-10-04'),
(41, 'dS#347913284kjdkfh', '63954', '2021-10-04'),
(42, 'sanijd', '24686', '2021-10-04'),
(43, 'S@hh', '51736', '2021-10-04'),
(44, 'sasafasf', '44129', '2021-10-04'),
(45, 'dfsadffsdfgsr', '17910', '2021-10-04'),
(46, 'saima', '67359', '2021-10-04'),
(47, 'sdffds', '91196', '2021-10-04'),
(48, 'saima2', '69471', '2021-10-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);
ALTER TABLE `admin` ADD FULLTEXT KEY `username_2` (`username`);
ALTER TABLE `admin` ADD FULLTEXT KEY `username_3` (`username`);

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine`
--
ALTER TABLE `fine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `fine`
--
ALTER TABLE `fine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `issue_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
