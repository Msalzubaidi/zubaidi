-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 09:44 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zubaidy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL,
  `admin_fullname` varchar(35) NOT NULL,
  `admin_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_fullname`, `admin_image`) VALUES
(3, 'z@gmail.com', '123456', 'Mohammad Alzubaidi', 'MzubaidiPC.jpeg'),
(4, 'engzubaidi@gmail.com', ' 123456', 'Eng Mohammad Zubaidi', 'MzubaidiPC.jpeg'),
(5, 'Mohammad@asdsadasda', ' mkmkkkmkmkmkm', 'Mohammad Alzubaidi', 'ZYLOGO.PNG'),
(6, 'zzzzzzzzzz@gmail.com', ' 111111', 'zzzzzzzzzzzzz', '59262-200.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(5) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_image`) VALUES
(18, 'Electronics', 'HEAD-accounting-app-trends1.png'),
(19, 'Cars', '500_F_227770872_ZonFOtgUKIpgkE4De0okjs6UTfjcDEOc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(3) NOT NULL,
  `pro_name` text NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_price` double NOT NULL,
  `cat_id` int(3) NOT NULL,
  `pro_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_desc`, `pro_price`, `cat_id`, `pro_image`) VALUES
(1, 'MRP', 'Mozon Resource Planning ', 1800, 7, 'Certi.jpg'),
(4, 'MACC', 'Mozon', 1200, 7, '500_F_227770872_ZonFOtgUKIpgkE4De0okjs6UTfjcDEOc.jpg'),
(5, 'CP', 'ChequePrint', 500, 8, '500_F_227770872_ZonFOtgUKIpgkE4De0okjs6UTfjcDEOc.jpg'),
(6, 'asd', 'sss', 510, 7, '500_F_227770872_ZonFOtgUKIpgkE4De0okjs6UTfjcDEOc.jpg'),
(7, 'Zubaidi', 'Zubaidi ', 1000000000, 7, 'MzubaidiPC.jpeg'),
(9, 'NEW', 'NEWWWWW ', 150, 7, '500_F_227770872_ZonFOtgUKIpgkE4De0okjs6UTfjcDEOc.jpg'),
(10, 'New', '151515115', 1150, 8, '500_F_227770872_ZonFOtgUKIpgkE4De0okjs6UTfjcDEOc.jpg'),
(11, 'ssssssss', 'ssssssss', 1111, 7, 'MzubaidiPC.jpeg'),
(12, 'sssssssss', 'asdasdsad', 5000, 7, 'MzubaidiPC.jpeg'),
(13, 'asd', 'saSsA', 31232131231231, 7, 'ammjr-fitness-0151-hor-feat.jpg'),
(14, 'sssssssss', 'ASCASCC', 121412, 7, '500_F_227770872_ZonFOtgUKIpgkE4De0okjs6UTfjcDEOc.jpg'),
(15, 'Mercedes', 'S90', 19500, 19, 'Macc.exe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
