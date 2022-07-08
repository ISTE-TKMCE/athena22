-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 08, 2022 at 05:36 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `athena`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `organizerevent` varchar(100) NOT NULL,
  `isclick` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `name`, `password`, `category`, `organizerevent`, `isclick`) VALUES
(1, 'organizer1', 'Muiz', '$2b$08$Dpi9FalNeP5FmxB5dlQx6uV1svhOBqMbGjFgUFz5c1PNSvGqIJ636', 'organizer', 'QUIZZARDS OF THE OZ', '0'),
(2, 'superadmin1', 'Vishnu', '$2b$08$Dpi9FalNeP5FmxB5dlQx6uV1svhOBqMbGjFgUFz5c1PNSvGqIJ636', 'superadmin', '', '0'),
(3, 'finance1', 'Someone', '$2b$08$Dpi9FalNeP5FmxB5dlQx6uV1svhOBqMbGjFgUFz5c1PNSvGqIJ636', 'finhead', '', '0'),
(4, 'registration', 'Reg', '$2b$08$Dpi9FalNeP5FmxB5dlQx6uV1svhOBqMbGjFgUFz5c1PNSvGqIJ636', 'registration', '', '0'),
(5, 'sujithvi08@gmail.com', 'Muiz', '$2b$08$Dpi9FalNeP5FmxB5dlQx6uV1svhOBqMbGjFgUFz5c1PNSvGqIJ636', 'organizer', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', '0');

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

DROP TABLE IF EXISTS `crime`;
CREATE TABLE IF NOT EXISTS `crime` (
  `email` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `a1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `a2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `a3` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `a4` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `a5` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_time` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `crime`
--

INSERT INTO `crime` (`email`, `name`, `a1`, `a2`, `a3`, `a4`, `a5`, `date_time`) VALUES
('zainu10863@gmail.com', 'ssadasd', '', '', '', '', '', '5/23/2021, 7:21:31 PM'),
('zainu10863@gmail.com', 'HJsahahhjASHUjsa', '', '', '', '', '', '5/23/2021, 7:22:47 PM'),
('zainu10863@gmail.com', 'saasdasdsa', '', '', '', '', '', '5/23/2021, 7:24:17 PM');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `date` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `eventamount` int(30) NOT NULL,
  `others` varchar(1000) DEFAULT NULL,
  `flag` varchar(1) NOT NULL,
  `event_organizer` varchar(50) NOT NULL,
  `organizer_contact` varchar(15) NOT NULL,
  `img_link` varchar(30) NOT NULL,
  `categeory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `eventamount`, `others`, `flag`, `event_organizer`, `organizer_contact`, `img_link`, `categeory`) VALUES
(1, 'APP DEVELOPMENT WORKSHOP', '22 & 23-May 2021', 'Workshop on Android App development', 1000, 'Event will be conducted Online', '', 'Vishnu B Vinod \r\nAleeena Thomas', '6282520388\r\n730', 'img/poster.jpg', 'workshop'),
(2, 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', '22 & 23-May 2021', 'Workshop on EC development', 1000, NULL, '', 'Vishnu B Vinod \r\nSha Shajahan', '6282520388\r\n984', 'img/poster.jpg', 'workshop'),
(3, 'CATIA WORKSHOP', '22 & 23-May 2021', 'Workshop on CATIA', 1000, NULL, '', 'Vishnu B Vinod \r\nSha Shajahan', '6282520388\r\n984', '', 'workshop'),
(4, 'STAAD PRO WORKSHOP', '22 & 23-May 2021', 'Workshop on STAAD PRO', 1000, NULL, '', 'Vishnu B Vinod \r\nAleeena Thomas', '6282520388\r\n730', 'img/poster.jpg', 'workshop'),
(5, 'CODE OVERFLOW', '22 & 23-May 2021', '', 20, NULL, '', 'Amjad\r\nZainuddeen Abdul Muiz\r\n', '9633081344\r\n707', '', 'event'),
(6, 'CIRCUITRON', '22 & 23-May 2021', '', 20, NULL, '', 'Aswin S\r\nLakshmi Jayakumar \r\n', '7559987047\r\n906', '', 'event'),
(7, 'CHASE TO CUT', '22 & 23-May 2021', '', 0, NULL, '', '', '', '', NULL),
(8, 'IDEATHON', '22 & 23-May 2021', '', 100, NULL, '', 'Aboo Zuhaib\r\nMuhammed Aquil K', '8089588916\r\n956', '', 'event'),
(9, 'SKILL DEVELOPMENT BY PEHIA', '23 May 2021', '', 50, NULL, '', 'Sreelekshmi \r\nLintile Lisa Saju\r\n', '8547282695\r\n918', '', NULL),
(10, 'QUIZZARDS OF OZ', '23 May 2021', '', 0, NULL, '', 'Savithri Krishna\r\nAdarsh\r\n', '8078364223\r\n894', '', NULL),
(11, 'INGENIUM', '23 May 2021', '', 30, NULL, '', '', '', '', NULL),
(12, 'NO BODY NO CRIME', '22 May 2021', '', 60, NULL, '', 'Muhasin Ashiq\r\nAswin K\r\n', '8589808445\r\n860', '', NULL),
(13, 'RECONSTRUCTING FILM SCRIPT', '22 & 23 May 2021', '', 25, NULL, '', 'Sai Sankar\r\nAjay', '9207525038\r\n830', '', NULL),
(14, 'PHOTOGRAPHY CONTEST', '22 & 23 May 2021', '', 0, NULL, '', 'Jameel\r\nAdarsh\r\n', '81390 14130\r\n99', '', NULL),
(15, 'VIRTUAL TRADING', '22 MaY 2021', '', 0, NULL, '', 'Vishnu B Vinod\r\nAthul\r\n', '6282520388\r\n989', '', NULL),
(16, 'UNRAVEL THE MYSTERY', '', '', 50, NULL, '', 'Athira K\r\nFarzeena Ibrahim ', '95628 84196\r\n75', '', 'event');

-- --------------------------------------------------------

--
-- Table structure for table `fnd`
--

DROP TABLE IF EXISTS `fnd`;
CREATE TABLE IF NOT EXISTS `fnd` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phNo` int(11) NOT NULL,
  `video_link` varchar(100) NOT NULL,
  `insta_id` varchar(100) NOT NULL,
  `date_time` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fnd`
--

INSERT INTO `fnd` (`id`, `name`, `email`, `phNo`, `video_link`, `insta_id`, `date_time`) VALUES
(0, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 2147483647, '', '', '5/12/2021, 2:34:27 PM'),
(0, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 2147483647, 'sefsf', 'hfhf', '5/12/2021, 2:42:07 PM');

-- --------------------------------------------------------

--
-- Table structure for table `iste_member`
--

DROP TABLE IF EXISTS `iste_member`;
CREATE TABLE IF NOT EXISTS `iste_member` (
  `no` int(3) NOT NULL,
  `id` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iste_member`
--

INSERT INTO `iste_member` (`no`, `id`, `name`, `email`) VALUES
(1, 'KE017/2291', 'Nahla V', 'nahlarasheed9@gmail.com'),
(2, 'KE017/2308', 'Gayathri R Serji', 'gayathrirserji@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

DROP TABLE IF EXISTS `notify`;
CREATE TABLE IF NOT EXISTS `notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error_name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paidfailedverifireg`
--

DROP TABLE IF EXISTS `paidfailedverifireg`;
CREATE TABLE IF NOT EXISTS `paidfailedverifireg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `eventName1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventName2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventName3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `needpcbkit` varchar(30) DEFAULT NULL,
  `isISTE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ISTEregno` int(30) DEFAULT NULL,
  `orderid` varchar(50) NOT NULL DEFAULT 'NP',
  `paymentid` varchar(50) NOT NULL DEFAULT 'NP',
  `isPaid` int(2) NOT NULL DEFAULT '0',
  `couponcode1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `couponcode2` varchar(30) DEFAULT NULL,
  `paid_amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phNo` varchar(30) NOT NULL,
  `date_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paidfailedverifireg`
--

INSERT INTO `paidfailedverifireg` (`id`, `name`, `email`, `eventName1`, `eventName2`, `eventName3`, `needpcbkit`, `isISTE`, `ISTEregno`, `orderid`, `paymentid`, `isPaid`, `couponcode1`, `couponcode2`, `paid_amount`, `phNo`, `date_time`) VALUES
(1, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HAmFgRkHGECdjj', 'pay_HAmG6BaW7IyzsX', 1, '', '', '1040', '7073074756', '5/15/2021, 12:20:29 AM'),
(2, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HAmFgRkHGECdjj', 'pay_HAmG6BaW7IyzsX', 1, '', '', '1040', '7073074756', '5/15/2021, 12:21:24 AM'),
(3, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HAmHyXBLfjmSk1', 'pay_HAmG6BaW7IyzsX', 1, '', '', '1040', '7073074756', '5/15/2021, 12:27:20 AM'),
(4, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HAmHyXBLfjmSk1', 'pay_HAmG6BaW7IyzsX', 1, '', '', '1040', '7073074756', '5/15/2021, 12:29:02 AM'),
(5, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HAmPJOPiP4GEtk', 'pay_HAmG6BaW7IyzsX', 1, '', '', '1040', '7073074756', '5/15/2021, 12:30:51 AM'),
(6, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HAmPJOPiP4GEtk', 'pay_HAmG6BaW7IyzsX', 1, '', '', '1040', '7073074756', '5/15/2021, 12:31:30 AM'),
(7, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HAmPJOPiP4GEtk', 'pay_HAmG6BaW7IyzsX', 1, '', '', '1040', '7073074756', '5/15/2021, 12:31:39 AM'),
(8, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HBIkE2TpZ8YtN1', 'pay_HBIkjD9qJmhxZC', 1, '', '', '1040', '7073074756', '5/16/2021, 8:07:39 AM'),
(9, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HBIkE2TpZ8YtN1', 'pay_HBIkjD9qJmhxZC', 1, '', '', '1040', '7073074756', '5/16/2021, 8:10:48 AM'),
(10, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HBIkE2TpZ8YtN1', 'pay_HBIkjD9qJmhxZC', 1, '', '', '1040', '7073074756', '5/16/2021, 8:12:55 AM'),
(11, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_HBIkE2TpZ8YtN1', 'pay_HBIkjD9qJmhxZC', 1, '', '', '1040', '7073074756', '5/16/2021, 8:13:49 AM');

-- --------------------------------------------------------

--
-- Table structure for table `paidregistration`
--

DROP TABLE IF EXISTS `paidregistration`;
CREATE TABLE IF NOT EXISTS `paidregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `eventName1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventName2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventName3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `needpcbkit` varchar(30) DEFAULT NULL,
  `isISTE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ISTEregno` int(30) DEFAULT NULL,
  `orderid` varchar(50) NOT NULL DEFAULT 'NP',
  `paymentid` varchar(50) NOT NULL DEFAULT 'NP',
  `isPaid` int(2) NOT NULL DEFAULT '0',
  `couponcode1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `couponcode2` varchar(30) DEFAULT NULL,
  `paid_amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phNo` varchar(30) NOT NULL,
  `date_time` varchar(100) NOT NULL,
  `verify` int(1) DEFAULT '0',
  `mail` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paidregistration`
--

INSERT INTO `paidregistration` (`id`, `name`, `email`, `eventName1`, `eventName2`, `eventName3`, `needpcbkit`, `isISTE`, `ISTEregno`, `orderid`, `paymentid`, `isPaid`, `couponcode1`, `couponcode2`, `paid_amount`, `phNo`, `date_time`, `verify`, `mail`) VALUES
(1, 'Nashna Kader', 'zainu10863@gmail.com', 'UNRAVEL THE MYSTERY', NULL, NULL, NULL, 'on', 0, 'order_H5vRa2hevxs33o', 'pay_H5vShUr9AesBNn', 1, '', 'EARLYBID10', '840', '7356891589', '840', 0, NULL),
(2, 'Niranjana Pramod', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5vtnnxiMREztu', 'pay_H5vuHGoNpC33rP', 1, '', 'Earlybid10', '640', '9544542110', '640', 0, NULL),
(3, 'Emy Mariya Biju', 'mariyabiju410@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H5vuOM34iZZ8PC', 'pay_H5vvC3T2aBWryS', 1, 'Earlybid10', '', '840', '8590870093', '840', 0, NULL),
(4, 'ASWIN Ajith A', 'aswinclash@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5w2e6owygmVpy', 'pay_H5w37g6xCm7NhF', 1, '', 'EARLYBID10', '640', '9072340899', '640', 0, NULL),
(5, 'Sheik Mohammed jumail', 'jumailsheik@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5wBaAB4f0HEso', 'pay_H5wC1S5OBovmA7', 1, '', 'Earlybid10', '640', '9567487687', '640', 0, NULL),
(6, 'Aromal Viswan. V. L', 'aromalviswanvl@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5wDmdpgPEoFSJ', 'pay_H5wFEBbUiGg7hH', 1, '', 'Earlybid10', '640', '9747019736', '', 0, NULL),
(7, 'Abdullah Shaji', 'gtking360@hotmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5wGLYoEHTsxOE', 'pay_H5wGlOyHOltjC0', 1, '', '', '840', '9207627093', '840', 0, NULL),
(8, 'Namitha Ida Mariya', '200786@tkmce.ac.in', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5wQeRroK84Nq5', 'pay_H5wRHVoJD8a6Nv', 1, '', 'Earlybid10', '640', '9645722224', '', 0, NULL),
(9, 'MOHAMMED ANAS PP', 'mohdan3s10@gmail.com', 'CATIA WORKSHOP', 'STAAD PRO WORKSHOP', NULL, NULL, 'on', 0, 'order_H5wUMzbYyUCTXR', 'pay_H5wVyk7UJr7cMQ', 1, '', 'EARLYBID10', '640', '9947629945', '', 0, NULL),
(10, 'COLLIN JOSEPH', 'collinjoseph398@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H5whsHI8sMv20A', 'pay_H5wiWVQzrSnFJq', 1, 'EARLYBID10', '', '840', '7907243605', '', 0, NULL),
(12, 'Anagha G S', 'anaghagirilal8@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H5wu4tnqdOiTFt', 'pay_H5wucInN4EayPo', 1, 'EARLYBIRD 10', '', '1040', '8129139950', '1040', 0, NULL),
(13, 'Harigovind S', 'harigovinds2002@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H5ww2cyRhBlNrs', 'pay_H5wxnm7DKffsy5', 1, 'EARLYBID10', '', '840', '9074811485', '', 0, NULL),
(14, 'Pradyot Sahani', '200763@tkmce.ac.in', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5wuztdrZ97TBw', 'pay_H5wyirBlGKkpa3', 1, '', 'Earlybid10', '640', '7356285730', '', 1, 1),
(15, 'Waseem', 'waseemriyazr@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5xCJoJRgNM4AP', 'pay_H5xCceQ5bmNa4E', 1, '', 'Earlybid', '840', '8714105224', '', 0, NULL),
(16, 'Muhammed Haleem', 'haleemhaleem7025@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H5xE67oia0PH0r', 'pay_H5xFB5URn2pL7K', 1, '', 'Earlybid10', '840', '7025462490', '', 0, NULL),
(17, 'VIKAS K', 'vikas676706@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, 'on', 'on', 0, 'order_H5xBPhkIKczoQg', 'pay_H5xHIYrQcFg5kb', 1, '', 'Earlybid10', '640', '9567452438', '', 1, 1),
(18, 'Aswin  Jose', 'aswinjos@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H5xPQEdT5KtS4Q', 'pay_H5xPmDWQXxb83H', 1, 'EARLYBID10', '', '840', '9995995507', '', 0, NULL),
(19, 'Anjana Sanjay', 'anjanasanjay2020@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H5xTf7pUvC0wo7', 'pay_H5xUgfSSwmYnc8', 1, 'Earlybid10', '', '840', '9188347518', '840', 0, NULL),
(20, 'Kasyap R Narayan', 'kasyaprnarayan@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, 'on', 'on', 0, 'order_H5xZFsGvtjPdnQ', 'pay_H5xhVkLXtoHZB7', 1, '', 'Earlybid10', '640', '9188628634', '', 1, 1),
(21, 'Aswin M', 'aswinmpanackal123@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H5yMa8EuijhDsP', 'pay_H5yNIY9QGrBq7c', 1, 'earlybid10', '', '1040', '7306068937', '', 0, NULL),
(22, 'Rosmy Francis', '201259@tkmce.ac.in', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H5yjP7lRNSqEe6', 'pay_H5ykNcImei7JS5', 1, 'EARLYBID10', '', '840', '8304017295', '840', 0, NULL),
(23, 'Yaseen Muhammed Afsal', 'adventure927336@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H66lUzWrN7IxJA', 'pay_H66mjGbRWgPP1c', 1, '', 'Earlybid10', '640', '9567815090', '', 0, NULL),
(24, 'Faheem Fazir', '190198@tkmce.ac.in', 'CATIA WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H66ogmwf9vs0lB', 'pay_H66rjR7VOrWz8A', 1, '', 'EARLYBID10', '640', '8138091942', '', 0, NULL),
(25, 'Pratheesha Rheju', 'prheju@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H6C58AvygWe8CD', 'pay_H6C7aM4bBfXBEv', 1, '', 'Earlybid10', '640', '9746523344', '', 0, NULL),
(26, 'Syed Ahamed', 'syedahamed4@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6NHMp6BPnCohS', 'pay_H6NIczCLvQM6zg', 1, 'Earlybid10', '', '840', '9496300339', '', 0, NULL),
(28, 'Karthik Sabu', 'karthiksabu06@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6RZipYUypQr6p', 'pay_H6RaAzKawI8YBA', 1, 'Earlybid10', 'Earlybid10', '840', '8086903581', '840', 0, NULL),
(29, 'Akash', 'akashochelannur@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6TLT56KKz4Mat', 'pay_H6TMFdE6AU3jDq', 1, 'Earlybid10', 'Earlybid10', '840', '9400881312', '840', 0, NULL),
(30, 'Yadukrishnan K S', 'yadukrish17@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6cUyoCcfTcZgS', 'pay_H6cWKh6JNGFkn8', 1, 'Earlybid10', 'Earlybid10', '840', '9847728016', '', 0, NULL),
(31, 'Aman Raj', 'amanrajar7@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6kPqajvqRSUou', 'pay_H6kVT3SeoAPr5V', 1, '', 'EARLYBID10', '840', '8547466012', '', 0, NULL),
(32, 'ANAND M S', 'msanand80555@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6kWC0RSTQs9H5', 'pay_H6kX9FtNigfOvY', 1, 'EARLYBID10', '', '840', '8848874289', '', 0, NULL),
(33, 'Ankith. R', 'ankithr007@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6kmewwSGSPIDs', 'pay_H6kneThOzneOhG', 1, '', 'EARLYBID10', '840', '9895628653', '', 0, NULL),
(34, 'Harikrishnan Jyothi Chandran', 'djharik@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6kkrop0zmkHUf', 'pay_H6kpmQ89Bx04Nd', 1, 'EARLYBID10', '', '840', '8921281789', '', 0, NULL),
(35, 'AKHIL SAJI', 'akhilsaji9836@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H6kmYJEmGrwNpK', 'pay_H6kpYGBlkFUQnA', 1, 'EARLYBID10', '', '840', '8281046423', '', 0, NULL),
(36, 'Fawaz A E', 'fawazabdullakutty6578@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H73PPWyxqXa7AI', 'pay_H73QV5kBWOBvZx', 1, 'Earlybid10', 'Earlybid10', '840', '7559970886', '', 0, NULL),
(37, 'Noel Mathew Varghese', '200100@tkmce.ac.in', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H7Akt3gZDZu1pv', 'pay_H7AlE2ZUlbN0lk', 1, 'Earlybid10', '', '840', '8606929292', '', 1, NULL),
(38, 'Fayaz Ahmed M', 'christuartkjk103@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H7ApZ6rTGPOVLE', 'pay_H7ArUXTuqQeTNO', 1, 'EARLYBID10', '', '840', '9072316615', '', 1, NULL),
(39, 'Aswin', 'aswinchandran13579@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H7AqDKgTKYrcty', 'pay_H7ArsbxKFbFhTX', 1, 'EARLYBID10', '', '840', '9562713893', '', 1, 1),
(40, 'Harikrishna L Rajeev', 'harikrishnarajeev.hr@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H7BYjnT2W7LxMI', 'pay_H7BZA8WU7Zr0xT', 1, '', '', '1040', '07012924704', '', 0, NULL),
(41, 'Abhijith Anand', 'abhikollam07@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_H7M91S36Pi9VVP', 'pay_H7M9e1FgBu6OqX', 1, 'EARLYBID10', 'EARLYBID10', '840', '7907265127', '', 0, NULL),
(42, 'Mahima V', 'vmahima754@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, 'on', 0, 'order_H7P6mca3Cbp9A8', 'pay_H7P8HKtKok8X1D', 1, '', 'Earlybid10', '640', '9544072495', '', 1, 1),
(43, 'Sharan', 'sharansreelal@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 'NA', 'pay_H78biqu4E11z9T', 0, 'EARLYBID10', '', '840', '7994174768', '', 0, NULL),
(45, 'Devika Rajesh', 'devikarajesh9961@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_H5wCK4DUhWdXqP', 'pay_H5wCo0z5lrbujo', 1, NULL, NULL, '800', '9961673543', '', 0, NULL),
(46, 'Shyam Kumar', 'sk670770@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_H5wJM6HhvLlF1k', 'pay_H5wJrq0rScGSDk', 1, NULL, NULL, '600', '9746451364', '', 0, NULL),
(47, 'Ashwin KJ', 'ashwinkj255@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '800', '9539945121', '', 0, NULL),
(48, 'Ashwin Shanu Thomas', 'ashwinshanuthomas@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '600', '9645454310', '', 0, NULL),
(49, 'Abhiram K', 'abhiramkb231@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '600', '8943025964', '', 1, 1),
(50, 'Arjun Pradeep', '200752@tkmce.ac.in', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '600', '9539590030', '', 0, NULL),
(51, 'Parth Pushpakumar', 'parthpushpakumar78@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '600', '7306223699', '', 0, NULL),
(52, 'Neeraj Anil', 'neerajanilkumar18@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_H6Kutz0Deh4Gr0', 'pay_H6Kveg3Rt6cx7K', 1, NULL, NULL, '800', '9074937245', '', 1, NULL),
(53, 'Sringanesh', 'sriganash27@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_H6K11TVHXgsZEN', 'pay_H6Kveg3Rt6cx7K', 1, NULL, NULL, '1600', '9846637925', '', 0, NULL),
(54, 'Megha R Raj', 'megharraj2002@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '800', '9778224604', '', 0, NULL),
(55, 'Mohammed Fahir', 'mohammedfahir786@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '800', '9495663996', '', 0, NULL),
(56, 'Umer Rayyan Ali', 'rayyana779@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '600', '9633310285', '', 0, NULL),
(57, 'Aswin Paul', 'aswinpaul080@gmail.com', 'CATIA WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '800', '7902924452', '', 0, NULL),
(58, 'Muhammed Shahul S', 'muhammedshahul1998@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '600', '8921990284', '', 0, NULL),
(59, 'Varsha ET', 'etvarsha@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '600', '7994848751', '', 0, NULL),
(60, 'Ashiya M Harshad', 'ashiyaharshad330@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '800', '9995729767', '', 0, NULL),
(61, 'Pooja AB', 'abpooja85@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Paytm', 1, NULL, NULL, '1400', '8086848209', '', 0, NULL),
(62, 'Aiswarya Poovathan Kandy', 'aiswaryakashachu@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, NULL, 'order_gpay', 'Google pay', 1, NULL, NULL, '1400', '7510803521', '', 0, NULL),
(63, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, 0, 'order_Jqknht5DksBopM', 'pay_JqkpjIeo1jTKBQ', 1, 'Earlybid10', '', '840', '7073074756', '7/8/2022, 10:51:08 AM', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `eventName1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventName2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventName3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phNo` varchar(30) NOT NULL,
  `date_time` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `email`, `eventName1`, `eventName2`, `eventName3`, `phNo`, `date_time`) VALUES
(1, 'Aswani Vijay ', 'aswanivijay2002@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7356779523', '5/12/2021, 7:17:00 PM'),
(2, 'ASHIK N', 'ashikkooruvila12345@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7902540958', '5/12/2021, 7:31:15 PM'),
(3, 'Kiran PV', 'kiranrokzzz4@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9061732631', '5/12/2021, 7:37:06 PM'),
(4, 'Philip Eldho Varghese', 'philip.eldho@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590932839', '5/12/2021, 7:56:34 PM'),
(5, 'SHAHINA S', 'shahinashukoor2000@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6238327397', '5/12/2021, 8:11:13 PM'),
(6, 'Shahabas M K', 'shahabas223@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9207605961', '5/12/2021, 8:29:18 PM'),
(7, 'Nandana J S', 'nandanajs117@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9847970117', '5/12/2021, 8:30:51 PM'),
(8, 'Anamika V R', 'anamikabhat304@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7510175335', '5/12/2021, 9:07:04 PM'),
(9, 'Anamika V R', 'anamikabhat304@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7510175335', '5/12/2021, 9:07:23 PM'),
(10, 'Arathy A R', 'arathyradha2018@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9526530067', '5/12/2021, 9:19:09 PM'),
(11, 'Sneha Haridas ', 'snehaharidas1999@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7907183825', '5/12/2021, 9:19:45 PM'),
(12, 'Manbir Singh', 'manbirsingh5441@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9779794493', '5/12/2021, 9:19:55 PM'),
(13, 'Athira K', 'athirakamburath2001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9562884196', '5/12/2021, 9:22:34 PM'),
(14, 'Nirupama Chandran', 'chandrannirupama110@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7034048907', '5/12/2021, 9:29:16 PM'),
(15, 'Nirupama Chandran', 'chandrannirupama110@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7034048907', '5/12/2021, 9:29:42 PM'),
(16, 'IRENE PAUL', 'irenepaul2001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6238015307', '5/12/2021, 9:41:15 PM'),
(17, 'Eldho', 'eldhojobyareeckal@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8086407386', '5/12/2021, 9:45:50 PM'),
(18, 'Siva Saran. S', 'sivasarans89@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9645336847', '5/12/2021, 9:52:30 PM'),
(19, 'Navya Prasad A', 'navyaprasada2002@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7592985952', '5/12/2021, 9:52:55 PM'),
(20, 'Balabhaskar S S', 'balabhaskarsreesobha@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8304952669', '5/12/2021, 10:44:13 PM'),
(21, 'Irene Binnet', 'irenebinnet@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9567658283', '5/12/2021, 10:47:05 PM'),
(22, 'Aravind D', 'aravinddilip145@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8592949707', '5/13/2021, 8:25:07 AM'),
(23, 'Aswin Suneeth', '190597@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '9072351171', '5/13/2021, 9:03:54 AM'),
(24, 'DEEPAK P', 'deepak10pariyapurath@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9605627316', '5/13/2021, 10:03:23 AM'),
(25, 'Anna Wilson', 'annasarah02w@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7012636077', '5/13/2021, 11:18:42 AM'),
(26, 'SREEHARI K N', 'knsreehari2001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078805030', '5/13/2021, 12:14:26 PM'),
(27, 'Anandu ov ', 'ananduov1202@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8593938732', '5/13/2021, 12:46:38 PM'),
(28, 'Goutham K Pradeep', 'goutham238@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9562590893', '5/13/2021, 1:01:29 PM'),
(29, 'NANDANA. S', 'nandanaminnu2001@gmail.com ', 'QUIZZARDS OF THE OZ', NULL, NULL, '7559938071', '5/13/2021, 1:16:27 PM'),
(30, 'Smrithi G S ', 'smrithigsklm@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7025575670', '5/13/2021, 1:33:16 PM'),
(31, 'Sharuja Shaji', 'sharujashaji17@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8281329379', '5/13/2021, 3:15:57 PM'),
(32, 'SREEHARI K N', 'knsreehari2001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078805030', '5/13/2021, 3:48:48 PM'),
(33, 'Soundarya H S', 'soudan9500@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8296703687', '5/13/2021, 4:15:58 PM'),
(34, 'JOJA J M', 'jojajmbethel5@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7994793090', '5/13/2021, 4:33:02 PM'),
(35, 'RIZWAN AT ', 'rizwanat86@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8089917707', '5/13/2021, 5:09:23 PM'),
(36, 'Babylonia Grace Fernandez ', 'babylonia.grace.fernandez@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736053723', '5/13/2021, 7:20:46 PM'),
(37, 'Babylonia Grace Fernandez ', 'babylonia.grace.fernandez@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736053723', '5/13/2021, 7:21:05 PM'),
(38, 'Babylonia Grace Fernandez ', 'babylonia.grace.fernandez@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736053723', '5/13/2021, 7:23:50 PM'),
(39, 'Devika Suresh', 'devikasuresh32@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6282499978', '5/13/2021, 7:24:08 PM'),
(40, 'Devika Suresh', 'devikasuresh32@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6282499978', '5/13/2021, 7:25:46 PM'),
(41, 'ARUN RAJ A V', 'arunrajpilicode@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078564383', '5/13/2021, 7:30:45 PM'),
(42, 'Roshna Salma Ali', 'roshnasalmaali@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7510983755', '5/13/2021, 7:31:41 PM'),
(43, 'ANIRUDH KK', '201209@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '9400135765', '5/13/2021, 7:38:28 PM'),
(44, 'Meenaakshy M J ', 'meenaakshymj2402@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8301057834', '5/13/2021, 7:38:51 PM'),
(45, 'DINO REJI VARGHESE', 'dinoreji@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590471574', '5/13/2021, 8:07:25 PM'),
(46, 'Babylonia Grace Fernandez ', 'babylonia.grace.fernandez@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736053723', '5/13/2021, 8:11:55 PM'),
(47, 'Babylonia Grace Fernandez ', 'babylonia.grace.fernandez@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736053723', '5/13/2021, 8:14:41 PM'),
(48, 'Babylonia Grace Fernandez ', 'babylonia.grace.fernandez@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736053723', '5/13/2021, 8:14:46 PM'),
(49, 'Lekshmi.S ', 'Lekshmivaisakhi@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9562301198', '5/13/2021, 8:26:01 PM'),
(50, 'Babylonia Grace Fernandez ', 'babylonia.grace.fernandez@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736053723', '5/13/2021, 8:52:14 PM'),
(51, 'Babylonia Grace Fernandez ', 'babylonia.grace.fernandez@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736053723', '5/13/2021, 8:56:07 PM'),
(52, 'Sanjay Pradeep', 'sanjaypradeep262000@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7907097232', '5/13/2021, 10:01:43 PM'),
(53, 'Edwin Rajesh', 'edwinrajesh2000@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7025510638', '5/13/2021, 10:31:46 PM'),
(54, 'ROYAL GEORGE ABRAHAM', 'royalsonofabraham@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8547464474', '5/13/2021, 10:33:52 PM'),
(55, 'ROYAL GEORGE ABRAHAM', 'royalsonofabraham@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8547464474', '5/13/2021, 10:34:51 PM'),
(56, 'Aishwarya Mathew Chaprathu', 'aishwaryamathewc@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8080260938', '5/13/2021, 11:41:31 PM'),
(57, 'Aravind Biju', 'aravindbiju01@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9074099904', '5/13/2021, 11:55:08 PM'),
(58, 'Aleena Thomas', 'mani.tomaleena@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306465366', '5/14/2021, 8:40:56 AM'),
(59, 'Greeshma Gireesh', 'geechu2000@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778205018', '5/14/2021, 8:56:04 AM'),
(60, 'Gautham Krishna', 'gkpinarayi@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078141807', '5/14/2021, 9:57:25 AM'),
(61, 'Jeffin John', 'rdj.im200@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9946867194', '5/14/2021, 10:14:02 AM'),
(62, 'IJAB M RAHMAN', 'ijabmrahman@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778339629', '5/14/2021, 11:02:51 AM'),
(63, 'Prem sidharth r', 'psrpsr123123@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '07356095167', '5/14/2021, 11:14:11 AM'),
(64, 'Navin', 'asnavin112003@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9447012140', '5/14/2021, 11:15:31 AM'),
(65, 'AJAI KRISHNAN AJ', 'ajaiparavur@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9400048165', '5/14/2021, 11:17:37 AM'),
(66, 'Abhishek Gopal', 'abhishekgopal@ieee.org', 'QUIZZARDS OF THE OZ', NULL, NULL, '08281967141', '5/14/2021, 11:18:15 AM'),
(67, 'Abel Thomas Varghese', 'abelthomasapril14@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6282853638', '5/14/2021, 11:19:23 AM'),
(68, 'ADWAITH B VASANTH', 'adwaithabv123456789@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7034461524', '5/14/2021, 11:22:10 AM'),
(69, 'Alphin Joseph', 'ajtr516@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7356735168', '5/14/2021, 11:26:39 AM'),
(70, 'Adhithya madhu', 'adhithyamadhu3@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306483844', '5/14/2021, 11:27:25 AM'),
(71, 'AJAI KRISHNAN AJ', 'ajaiparavur@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9400048165', '5/14/2021, 11:28:22 AM'),
(72, 'Athira S', 'aathirasunil2001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8943661109', '5/14/2021, 11:28:49 AM'),
(73, 'Karthik u', 'sreenilayam321@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078208535', '5/14/2021, 11:29:35 AM'),
(74, 'AKHIL RAJ NAIR', 'akhilrn616@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306406515', '5/14/2021, 11:30:11 AM'),
(75, 'Abishek Georgie Shibu', 'abishekgeorgieshibu@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778327845', '5/14/2021, 11:30:56 AM'),
(76, 'Ajay Dev DJ ', 'ajaydevdj007@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9656230854', '5/14/2021, 11:34:18 AM'),
(77, 'Gowri Priya. D', 'gowripd2002@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7025628584', '5/14/2021, 11:36:32 AM'),
(78, 'Ajay Dev DJ ', 'ajaydevdj007@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9656230854', '5/14/2021, 11:36:40 AM'),
(79, 'AKHIL RAJ NAIR', 'akhilrn616@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306406515', '5/14/2021, 11:37:50 AM'),
(80, 'Ajay Dev DJ ', 'ajaydevdj007@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9656230854', '5/14/2021, 11:38:22 AM'),
(81, 'Parth Pushpakumar', 'parthpushpakumar78@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306223699', '5/14/2021, 11:39:41 AM'),
(82, 'Aleena Varghese', 'aleenav06@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078022389', '5/14/2021, 11:40:51 AM'),
(83, 'ADITYAN S', '2001adityans@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306065235', '5/14/2021, 11:40:53 AM'),
(84, 'Karthik u', 'sreenilayam321@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078208535', '5/14/2021, 11:41:31 AM'),
(85, 'Ananthan.A', 'ananthanatvm123@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8137966236', '5/14/2021, 11:45:08 AM'),
(86, 'Dani Anto', 'danyanto45@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8086906806', '5/14/2021, 11:46:21 AM'),
(87, 'Ashish P Vijay ', 'ashishpvijay232@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9747639391', '5/14/2021, 11:46:34 AM'),
(88, 'Aleena Varghese', 'aleenav06@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078022389', '5/14/2021, 11:47:49 AM'),
(89, 'Devi R Krishna', '36devirkrishna19cs1@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8086950459', '5/14/2021, 11:48:25 AM'),
(90, 'Abhijithu S', 'jithuacl30@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9746613966', '5/14/2021, 11:48:50 AM'),
(91, 'Amegh A', 'ameghamegh7@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9846585210', '5/14/2021, 11:49:34 AM'),
(92, 'Jobin varghese', 'jobinvarghese7959@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8157078298', '5/14/2021, 11:50:20 AM'),
(93, 'Anujith A S', 'anujithas90@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7592803031', '5/14/2021, 11:50:20 AM'),
(94, 'Aiswarya Poovathan Kandy', 'aiswaryakashachu@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7510803521', '5/14/2021, 11:50:33 AM'),
(95, 'SANA MUSTHAFA B', 'sanasan0007@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6235316162', '5/14/2021, 11:51:00 AM'),
(96, 'AMAL KRISHNAN U', 'lavenoamal0550@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590821719', '5/14/2021, 11:53:16 AM'),
(97, 'GREGORY CHERIAN', 'gregorycherian344@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9496998689', '5/14/2021, 11:57:35 AM'),
(98, 'AKSHAY M', 'akshaymanningal@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9048306896', '5/14/2021, 11:59:18 AM'),
(99, 'Sabarinadh p', 'sabarinadh1002@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9207628049', '5/14/2021, 12:00:29 PM'),
(100, 'Sabarinadh p', 'sabarinadh1002@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9207628049', '5/14/2021, 12:00:30 PM'),
(101, 'Goutham Vinod ', 'gouthamvinod22@yahoo.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8281983928', '5/14/2021, 12:01:40 PM'),
(102, 'Sanjith S Kumar', 'sanju2001sanjith@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9846585552', '5/14/2021, 12:05:14 PM'),
(103, 'Archana', 'archanaanil529@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306830798', '5/14/2021, 12:09:01 PM'),
(104, 'Archana', 'archanaanil529@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306830798', '5/14/2021, 12:09:21 PM'),
(105, 'AKSHAY KRISHNAN', 'krishnanakshay47@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '09526239075', '5/14/2021, 12:10:45 PM'),
(106, 'Riya Mathew', 'riyamathewkoppara@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8848190660', '5/14/2021, 12:11:01 PM'),
(107, 'Akhil S Gopan ', 'akhilasg2001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8075315321', '5/14/2021, 12:17:41 PM'),
(108, 'Aromal Viswan. V. L', 'aromalviswanvl@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9747019736', '5/14/2021, 12:17:50 PM'),
(109, 'Sonu Jose', 'sonujose@ieee.org', 'QUIZZARDS OF THE OZ', NULL, NULL, '08157819489', '5/14/2021, 12:21:32 PM'),
(110, 'Yamuna Krishnan kr', 'yamunakrishnan810@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6238997406', '5/14/2021, 12:23:08 PM'),
(111, 'Vishnu M P', 'vishnump016@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7034717189', '5/14/2021, 12:27:30 PM'),
(112, 'Naveen raj', 'naveen007bolt@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8921559844', '5/14/2021, 12:27:38 PM'),
(113, 'Brinson Benadict', 'brinsonbenedict@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306875256', '5/14/2021, 12:57:00 PM'),
(114, 'Liyana Hashir', 'liyanaahashir@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '916238443208', '5/14/2021, 1:43:37 PM'),
(115, 'DHEERAJ DHANESH ', 'dheerajdhaneshdd@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8129347918', '5/14/2021, 2:05:12 PM'),
(116, 'Arunmon cr', 'arunmon0350@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7025680350', '5/14/2021, 2:11:45 PM'),
(117, 'Devika Suresh', 'devikasuresh32@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6282499978', '5/14/2021, 2:19:56 PM'),
(118, 'Jinson Chacko', 'jinsonjvc02@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078301736', '5/14/2021, 2:24:58 PM'),
(119, 'Aswin Babu ', 'baswin707@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8714462633', '5/14/2021, 2:25:45 PM'),
(120, 'Rohit K', 'rohitsivadam@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8547606248', '5/14/2021, 2:26:00 PM'),
(121, 'Amgirus T G', 'amgirustg@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778291092', '5/14/2021, 2:28:16 PM'),
(122, 'Amgirus T G', 'amgirustg@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778291092', '5/14/2021, 2:30:22 PM'),
(123, 'Megha.A.J', 'ajmegha99@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9947613840', '5/14/2021, 2:34:17 PM'),
(124, 'Hishamsha', 'hishamsha31@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9188504295', '5/14/2021, 2:41:53 PM'),
(125, 'Adwaith P A', 'adwaith606@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9847198055', '5/14/2021, 3:08:11 PM'),
(126, 'SREEHARI P', 'sree18plr@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078221377', '5/14/2021, 3:50:23 PM'),
(127, 'Akhilesh S', 'akhileshakku135@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9188502632', '5/14/2021, 4:13:47 PM'),
(128, 'PREMRAJ R P', 'premrajrpapm@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736892374', '5/14/2021, 4:26:16 PM'),
(129, 'Athira B Santhosh', 'athirabsanthosh265@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9074822142', '5/14/2021, 5:07:04 PM'),
(130, 'Arya Vijayan K.S', 'aryavijayanks@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7994628371', '5/14/2021, 5:08:07 PM'),
(131, 'Jijo Johnson', 'jijo.johnsoncv@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9847353702', '5/14/2021, 5:54:44 PM'),
(132, 'Amal jo Ignatius', 'amalignatious402@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9188620849', '5/14/2021, 5:55:04 PM'),
(133, 'ROHAN GEORGE ', 'rohangeorgec@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8289923211', '5/14/2021, 6:07:15 PM'),
(134, 'ANUSREE RAJ S', '65anusreeraj19cs1@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8943603488', '5/14/2021, 6:18:18 PM'),
(135, 'Riya Thankam Biju ', 'riyatbiju001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8075793941', '5/14/2021, 6:19:43 PM'),
(136, 'PRINCE PK', 'princeudayagiry@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8086443035', '5/14/2021, 6:19:50 PM'),
(137, 'Benitto Angelose', 'benittoangelose123@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8921168386', '5/14/2021, 6:36:08 PM'),
(138, 'Aswathy Gopalakrishnan', 'aswathy_gp@ieee.org', 'QUIZZARDS OF THE OZ', NULL, NULL, '8281343599', '5/14/2021, 6:47:54 PM'),
(139, 'Abhimanyu.J.S', 'abhimanyujs64@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8547263886', '5/14/2021, 6:48:28 PM'),
(140, 'Abhimanyu.J.S', 'abhimanyujs64@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8547263886', '5/14/2021, 6:49:53 PM'),
(141, 'BLESSY. P. S', 'blessyps1999@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590113387', '5/14/2021, 6:50:42 PM'),
(142, 'Abhimanyu.J.S', 'abhimanyujs64@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8547263886', '5/14/2021, 6:53:39 PM'),
(143, 'sibyl', 'sibyl_babu@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8921425280', '5/14/2021, 6:58:26 PM'),
(144, 'Mevin Shaji', 'mevinshaji1898@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778103510', '5/14/2021, 7:36:27 PM'),
(145, 'Diya Baiju N', 'diyanoopuram@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9048515167', '5/14/2021, 8:54:22 PM'),
(146, 'Sanjay Krishnan C', 'sankris12@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9400779590', '5/14/2021, 9:01:37 PM'),
(147, 'Abhay M S', 'abhaykichu813@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8136928090', '5/14/2021, 9:23:48 PM'),
(148, 'Aiswarya M.B', 'aiswaryamb05@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9567054114', '5/14/2021, 9:35:48 PM'),
(149, 'Aiswarya M.B', 'aiswaryamb05@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9567054114', '5/14/2021, 9:36:29 PM'),
(150, 'Aiswarya M.B', 'aiswaryamb05@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9567054114', '5/14/2021, 9:37:09 PM'),
(151, 'Abhay M S', 'abhaykichu813@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8136928090', '5/14/2021, 9:55:53 PM'),
(152, 'Abhay M S', 'abhaykichu813@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8136928090', '5/14/2021, 10:00:29 PM'),
(153, 'Drishya K Donston', 'drishyakdonston@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7306394464', '5/14/2021, 11:45:25 PM'),
(154, 'Fathima Nooha Kottangodan', 'noohakottangodan@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9961220370', '5/15/2021, 6:17:58 AM'),
(155, 'Fathima Nooha Kottangodan', 'noohakottangodan@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9961220370', '5/15/2021, 6:23:44 AM'),
(156, 'Surya A', 'surya.au2000@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9995468074', '5/15/2021, 9:15:20 AM'),
(157, 'Mr. Arjun k p', 'arjunarjunkp51@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9207557633', '5/15/2021, 9:48:07 AM'),
(158, 'Mr. Arjun k p', 'arjunarjunkp51@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9207557633', '5/15/2021, 9:55:02 AM'),
(159, 'Amgirus T G', 'amgirustg@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778291092', '5/15/2021, 11:51:01 AM'),
(160, 'MERIN ANNS MATHEW', 'MERINANNSMATHEWPA@GMAIL.COM', 'QUIZZARDS OF THE OZ', NULL, NULL, '07994101580', '5/15/2021, 1:14:31 PM'),
(161, 'JITHESH RAJ M', 'jitheshrajm99@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9072020053', '5/15/2021, 1:41:29 PM'),
(162, 'AMAL ', 'amalsabu54@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9633230453', '5/15/2021, 3:10:46 PM'),
(163, 'Abhinand C', 'abhidr46@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9496539317', '5/15/2021, 4:10:51 PM'),
(164, 'Godwin Francis', 'godwinfrancis159@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7902437718', '5/15/2021, 5:33:34 PM'),
(165, 'Godwin Francis', 'godwinfrancis159@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7902437718', '5/15/2021, 5:34:32 PM'),
(166, 'Godwin Francis', 'godwinfrancis159@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7902437718', '5/15/2021, 5:36:49 PM'),
(167, 'Mohammed Bilal', '180051@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '9995153948', '5/15/2021, 5:51:38 PM'),
(168, 'David Johnson', 'coretimeusers11@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590897144', '5/15/2021, 6:27:20 PM'),
(169, 'ALAN SAMUEL KOSHY', 'alanpubg619@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590381927', '5/15/2021, 6:40:33 PM'),
(170, 'Ananthakrishnan K S', 'ananthakrishnanks2001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8547307712', '5/15/2021, 7:05:32 PM'),
(171, 'Melvin Shaji', 'melvinshaji333@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778395785', '5/15/2021, 7:14:41 PM'),
(172, 'Keerthy Remesh', 'keerthyremesh173@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9400581836', '5/15/2021, 7:16:52 PM'),
(173, 'Mohammad Jazeel', 'mohammadjazeel1991@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9037646688', '5/15/2021, 7:47:26 PM'),
(174, 'Mohammad Jazeel', 'mohammadjazeel1991@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9037646688', '5/15/2021, 7:49:07 PM'),
(175, 'Mohammad Jazeel', 'mohammadjazeel1991@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9037646688', '5/15/2021, 7:50:27 PM'),
(176, 'Mohammad Jazeel', 'mohammadjazeel1991@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9037646688', '5/15/2021, 7:54:40 PM'),
(177, 'Aannthu v', 'ananthuvngmkd@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8606094405', '5/15/2021, 8:36:11 PM'),
(178, 'Muhammed swalh', 'mmswalih26@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9605892261', '5/15/2021, 8:39:40 PM'),
(179, 'Nidha TP', 'nidhajaleeltp@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8589893403', '5/15/2021, 8:51:35 PM'),
(180, 'Nidha TP', 'nidhajaleeltp@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8589893403', '5/15/2021, 8:51:51 PM'),
(181, 'Susmith Das K K', 'Susmith7sub@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9846807876', '5/15/2021, 9:02:27 PM'),
(182, 'Gokul G S', 'gokulgs2000@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7994043916', '5/15/2021, 9:09:52 PM'),
(183, 'MUHAMMED SAHAD P', 'muhammedsahad9562@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9562605449', '5/15/2021, 9:33:04 PM'),
(184, 'NOUFAN N', 'noufan151@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9562861292', '5/15/2021, 9:38:33 PM'),
(185, 'MOHITH M', 'mohithm666@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7592045782', '5/15/2021, 9:53:17 PM'),
(186, 'ASWINKRISHNAN B', 'aswinmuthalangat@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8921221720', '5/15/2021, 10:33:00 PM'),
(187, 'Mohammad siraj', '200189@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590904140', '5/15/2021, 10:59:41 PM'),
(188, 'Mohammad siraj', '200189@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590904140', '5/15/2021, 11:23:08 PM'),
(189, 'Mohammad siraj', '200189@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '8590904140', '5/15/2021, 11:25:59 PM'),
(190, 'Harisankar R', 'harisankarrajesh@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '09747872935', '5/15/2021, 11:48:14 PM'),
(191, 'Alvin Joe', 'alvinjoe092002@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '6282622216', '5/16/2021, 12:13:09 AM'),
(192, 'Akhil S Gopan ', 'akhilasg2001@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8075315321', '5/16/2021, 8:38:30 AM'),
(193, 'AKSHAY K', 'akshaykakkathiruthi@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078563669', '5/16/2021, 10:11:50 AM'),
(194, 'Asreya S Prasanth', 'aachus2002@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8330021242', '5/16/2021, 11:44:27 AM'),
(195, 'AJAI KRISHNAN AJ', 'ajaiparavur@gmail.com ', 'QUIZZARDS OF THE OZ', NULL, NULL, '9400048165', '5/16/2021, 12:09:38 PM'),
(196, 'Almira Asif Khan', '200164@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '9778307556', '5/16/2021, 12:37:01 PM'),
(197, 'Gadha Aravindh', 'gadha.aravindh@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7560851566', '5/16/2021, 1:26:09 PM'),
(198, 'Afsiya S', 'afsiyasharaf@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8281149525', '5/16/2021, 1:31:00 PM'),
(199, 'Nashita Noushad', 'nashita.shameena@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9400706131', '5/16/2021, 2:27:08 PM'),
(200, 'JOSEPH GLADWIN GEORGE', 'jgladwin27.2002@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9383483076', '5/16/2021, 2:48:20 PM'),
(201, 'Nandakishor M', '200829@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '9188578747', '5/16/2021, 3:54:37 PM'),
(202, 'Nandakishor M', '200829@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '9188578747', '5/16/2021, 3:54:54 PM'),
(203, 'Nandakishor M', '200829@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '9188578747', '5/16/2021, 3:55:21 PM'),
(204, 'Nandakishor M', '200829@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '9188578747', '5/16/2021, 3:55:30 PM'),
(206, 'Hala P', 'halanadha@gmail.com', 'FEMMES EN TECH', NULL, NULL, '9778071369', '5/16/2021, 5:21:52 PM'),
(207, 'Durga B R', 'durgabrplr@gmail.com', 'FEMMES EN TECH', NULL, NULL, '8330028549', '5/16/2021, 5:28:11 PM'),
(208, 'Durga B R', 'durgabrplr@gmail.com', 'FEMMES EN TECH', NULL, NULL, '8330028549', '5/16/2021, 5:28:58 PM'),
(209, 'Almira Asif Khan', '200164@tkmce.ac.in', 'FEMMES EN TECH', NULL, NULL, '9778307556', '5/16/2021, 5:30:15 PM'),
(210, 'VYSHNA SATHEESAN TK', 'vyshna2025@gmail.com', 'FEMMES EN TECH', NULL, NULL, '7356739918', '5/16/2021, 5:44:08 PM'),
(211, 'Arjun B Raj', 'baburaj.arjun@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9074590548', '5/16/2021, 5:53:49 PM'),
(212, 'Swathy Krishna S', 'swathysouparnika1211@gmail.com', 'FEMMES EN TECH', NULL, NULL, '9995025528', '5/16/2021, 6:03:19 PM'),
(213, 'Jayalekshmi K S', 'jayalekshmiks112@gmail.com', 'FEMMES EN TECH', NULL, NULL, '9207408109', '5/16/2021, 6:12:48 PM'),
(214, 'Lydia Thomas', 'lydialadu2001@gmail.com', 'FEMMES EN TECH', NULL, NULL, '9544820171', '5/16/2021, 6:24:05 PM'),
(215, 'Akshay TR', 'akshayraajeev@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736096782', '5/16/2021, 6:34:47 PM'),
(216, 'Ann Mary Saji', 'annmarysaji2002@gmail.com', 'FEMMES EN TECH', NULL, NULL, '8606721177', '5/16/2021, 6:40:57 PM'),
(217, 'Akshay TR', 'akshayraajeev@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736096782', '5/16/2021, 6:41:14 PM'),
(218, 'Amal Teni', '200791@tkmce.ac.in', 'FEMMES EN TECH', NULL, NULL, '9567748617', '5/16/2021, 6:44:22 PM'),
(219, 'Akshay TR', 'akshayraajeev@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '7736096782', '5/16/2021, 6:48:01 PM'),
(220, 'Varsha Premanand', 'varshapremanand2000@gmail.com', 'FEMMES EN TECH', NULL, NULL, '9656438954', '5/16/2021, 7:00:09 PM'),
(221, 'Gadha Aravindh', 'gadha.aravindh@gmail.com', 'FEMMES EN TECH', NULL, NULL, '7560851566', '5/16/2021, 7:07:29 PM'),
(222, 'Haifa A', 'haifaarifa01@gmail.com', 'FEMMES EN TECH', NULL, NULL, '9846243940', '5/16/2021, 7:14:09 PM'),
(223, 'Amritha Aravind ', 'aravindamritha8@gmail.com', 'FEMMES EN TECH', NULL, NULL, '9645023802', '5/16/2021, 7:55:10 PM'),
(224, 'Fathima Nooha Kottangodan', 'noohakottangodan@gmail.com', 'FEMMES EN TECH', NULL, NULL, '9961220370', '5/16/2021, 8:04:07 PM'),
(225, 'K S Adithyan', 'ksadithyan58@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9061231912', '5/16/2021, 8:16:30 PM'),
(226, 'Misna', 'misnap3@gmail.com', 'FEMMES EN TECH', NULL, NULL, '7403131454', '5/16/2021, 8:20:49 PM'),
(227, 'Ashique muhammed', 'ashiquemuhammed1608@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8078715477', '5/16/2021, 8:23:57 PM'),
(228, 'Sarath Johnson', '200245@tkmce.ac.in', 'QUIZZARDS OF THE OZ', NULL, NULL, '6282645406', '5/16/2021, 8:24:48 PM'),
(229, 'Rohit K', 'rohitsivadam@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '8547606248', '5/16/2021, 8:30:18 PM'),
(230, 'Sth', 'nafiw14281@dghetian.com', 'FEMMES EN TECH', NULL, NULL, '2356', '5/16/2021, 8:35:04 PM'),
(231, 'Jasmal Fahmid P', 'jasmalfahmid2828@gmail.com', 'QUIZZARDS OF THE OZ', NULL, NULL, '9037221535', '5/16/2021, 8:50:07 PM');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `eventName1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eventName2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventName3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `needpcbkit` varchar(30) DEFAULT NULL,
  `isISTE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ISTEregno` int(30) DEFAULT NULL,
  `isPaid` int(5) DEFAULT '0',
  `couponcode1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `couponcode2` varchar(30) DEFAULT NULL,
  `phNo` varchar(30) NOT NULL,
  `date_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `email`, `eventName1`, `eventName2`, `eventName3`, `needpcbkit`, `isISTE`, `ISTEregno`, `isPaid`, `couponcode1`, `couponcode2`, `phNo`, `date_time`) VALUES
(1, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'CIRCUITRON', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '7073074756', '0000-00-00 00:00:00.000000'),
(2, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, '', '', '7073074756', '0000-00-00 00:00:00.000000'),
(3, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, '', '', '7073074756', '0000-00-00 00:00:00.000000'),
(4, ' Abdul Muiz', 'zainu10863@gmail.com', 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, '', '', '7073074756', '0000-00-00 00:00:00.000000'),
(5, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'APP DEVELOPMENT WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, '', '', '7073074756', '0000-00-00 00:00:00.000000'),
(6, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'CODE OVERFLOW', 'IDEATHON', 'Select event2', NULL, NULL, 0, 0, NULL, NULL, '7073074756', '0000-00-00 00:00:00.000000'),
(7, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', 'Select event1', NULL, NULL, NULL, 0, 0, 'EarlyBird10', '', '7073074756', '0000-00-00 00:00:00.000000'),
(8, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', 'Select event1', NULL, NULL, NULL, 0, 0, 'EarlyBird', '', '7073074756', '0000-00-00 00:00:00.000000'),
(9, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', 'Select event1', NULL, NULL, NULL, 0, 0, 'EarlyBird', '', '7073074756', '0000-00-00 00:00:00.000000'),
(10, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', 'Select event1', NULL, NULL, NULL, 0, 0, 'EarlyBid10', '', '7073074756', '0000-00-00 00:00:00.000000'),
(11, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, 'Earlybid10', '', '7073074756', '0000-00-00 00:00:00.000000'),
(12, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', 'Select event1', NULL, NULL, NULL, 0, 0, 'EarlyBird10', '', '7073074756', '0000-00-00 00:00:00.000000'),
(13, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, 'EarlyBird10', '', '7073074756', '0000-00-00 00:00:00.000000'),
(14, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, 'Earlybid10', '', '7073074756', '0000-00-00 00:00:00.000000'),
(15, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, 'EarlyBid10', '', '7073074756', '0000-00-00 00:00:00.000000'),
(16, 'Zainuddeen Abdul Muiz', 'zainu10863@gmail.com', 'STAAD PRO WORKSHOP', NULL, NULL, NULL, NULL, 0, 0, 'Earlybid10', '', '7073074756', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phNo` varchar(14) NOT NULL,
  `college` varchar(40) NOT NULL,
  `password` varchar(300) NOT NULL,
  `studyYear` int(10) NOT NULL,
  `studyBranch` text NOT NULL,
  `isVerified` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `phNo`, `college`, `password`, `studyYear`, `studyBranch`, `isVerified`) VALUES
(1, 'sujithvi01@gmail.com', 'Sujith', '9988776655', 'TKMCE', '$2b$08$UHPJfSdqi/l2JjKNAa/fuuxkbDk57O.SkNoEyAqHZRCnoWFzu7/D.', 3, 'CS', '1'),
(2, 'vishnubvinod@ieee.org', 'Deml', '85593469365', 'Tjn', '$2b$08$4fVrAKRdYx5LKZQ/jlyWm.I5CaFK9RG..XHwMj/RLrsOhQDpuKKHu', 1, 'Gh', '1'),
(3, 'sujithvi06@gmail.com', 'Sujith V I', '9961957849', 'TKMCE', '$2b$08$8bm0Fep5IPjQaHm.iIbaeeaz9P4YHIpuBT47ieT9t2JXDnZ2CsQv6', 3, 'Computer Science', '1'),
(4, '180639@tkmce.ac.in', 'demo', '123442865425', 'tkm', '$2b$08$JeGFOpkjGr9fEZ8U7/D.F.o17TjOka/0AjpJirEdu7mYDWc7kk20e', 1, 'ece', NULL),
(5, '180112@tkmce.ac.in', 'Sujith', '9988776655', 'TKMCE', '$2b$08$Dd88rXpZsvUTwcL1EdOs3enrG02MMOMUoJxi7S6S1CCIMFUxxaYT2', 1, 'CS', NULL),
(6, 'krishnadasmuraleedharan007das@', 'Krishnadas M D', '9745471102', 'TKM College of Engineering', '$2b$08$SGRDzMN2vFjQbmd77hXPaOkB7xkwscV/ysQFBfwj/A229ZqLCRwKu', 3, 'ECE', '1'),
(7, 'zainu10863@gmail.com', 'Zainuddeen Abdul Muiz', '7073074756', 'TKMCE', '$2b$08$hIGN6yEoNlN/T.iJACpL7e3EWWdcINuwerMivX9sreH.pSFBQc5b6', 2, 'ECE', '1'),
(8, 'sujithvi08@gmail.com', 'Sujith', '9966778899', 'TKMCE', '$2b$08$rd0W23ufGTevExKb3ePsv.DFZ7vcH7.C8CgAiXXEYkUFYPQ2NSykW', 3, 'CS', '1'),
(9, 'aboozuhaibclt@gmail.com', 'Aboo Zuhaib ', '8089588916', 'T K M', '$2b$08$.8zxLob47fzBYL7EhpcMeO.LVRAiN74faCkHwSYjSWZZ3YPEphwIu', 2, 'E C', '1'),
(10, 'sreejithabu01@gmail.com', 'Sreejith A', '7025332421', 'TKMCE', '$2b$08$oIx3FZxFbilGQtZG1qOHiOu.e9qyWpzzaKfrCyDRMI6yUCRIaRlE2', 3, 'CSE', '1'),
(11, 'jassimshanavaskhan@gmail.com', 'Jassim S', '8157863503', 'TKM College of Engineering Kollam', '$2b$08$Q7jABSpXiwNnKpbPtzfT4eoq30YP6v4nNszFGAm1HQO4d2AoK11ei', 2, 'ECE', '1'),
(12, 'anjanakallampilly@gmail.com', 'ANJANA K MOHAN', '8129585317', 'TKM COLLEGE OF ENGINEERING ', '$2b$08$MnCw.xDBNaTX1A9O1IseFeIHyoa.oVyWwJsuMMh1HC1MGZtY4Ms46', 1, 'Chemical engineering ', NULL),
(13, 'abhiakashsaji@gmail.com', 'Abhilash George Saji ', '9656877871', 'TKM COLLEGE OF ENGINEERING,KOLLAM ', '$2b$08$xFkytGuUwtke6mDCGfCPMOF823bf3CFtF3/tBCUBwEQR31S44IPlK', 2, 'ECE', NULL),
(14, 'dinoykraj@gmail.com', 'Dinoy Raj K', '7306185390', 'Tkm College Of Engineering Kollam', '$2b$08$JHusk73uxIJdxfKW6V1hye/J/UriBa4BBQBXAH0vT4YejhcaedJZi', 2, 'CSE', '1'),
(15, 'ajinjoy543@gmail.com', 'Ajinjoy', '9746104399', 'Ukfcet', '$2b$08$4TCvbTCQHGf5Sb9cOHZ90O9tjPf3aopiwvDWHvihKn2ZEuorL/w3G', 2, 'Ece', NULL),
(16, 'harish.m.20063@iitgoa.ac.in', 'Harish M', '9605703027', 'Indian Institute of Technology, Goa', '$2b$08$MUisoV6yLE4/w5MmQodfaOvbDy40SWW0kdkSjZPaVWa1vok2W4O5W', 1, 'Mechanical Engineering', '1'),
(17, '200842@tkmce.ac.in', 'MEENAKSHI CHANDRAN', '8589982248', 'tkmce', '$2b$08$WnlMEev4Ze4OM5ajxn1qYOf688.aDtKcAqCIhGdUbWXCCos05g6/G', 1, 'B arch', NULL),
(18, 'meenakshichandran.018@gmail.co', 'MEENAKSHI CHANDRAN', '8589982248', 'tkmce', '$2b$08$I6o3/M1dr8WnXCaJNIrunOiF5lJtmAVy52cmloFjBLE/bawOTIQ6S', 1, 'B arch', '1'),
(19, 'amaya_20b433ec@gecwyd.ac.in', 'AMAYA PRASAD', '7736329453', 'Government engineering College Wayanad', '$2b$08$WSOXpKp8GWox.EK5RcfzfeyMdMwXsI9xvt3APkLch2sFpK4U6PVOW', 1, 'EC', '1'),
(20, 'zainabdul2509@gmail.com', 'Zainuddeen Abdul Muiz', '7073074756', 'TKMCE', '$2b$08$daA0mK5VzdCcnfuyFVE.Q.nyEWy6YBJhbJoaRu9irh1HPS3./eKSC', 2, 'ECE', '1'),
(21, 'etvarsha@gmail.com', 'Varsha E T', '7994848751', 'TKMCE', '$2b$08$PDFBxNAbkOEORmdEUFK1dOFrzO4UAPA/uxSVgZVjWrKRjL4ZNXcCu', 2, 'Electronics and communication ', '1'),
(22, 'aliyakrishna2003@gmail.com', 'Aliya Krishna P S ', '6238672051', 'TKM COLLEGE OF ENGINEERING ', '$2b$08$WCMwiZHY2u4WUOfVIKazseifaU4zZS8eud4HyqDg..e85Rn83K7DS', 1, 'Civil ', '1'),
(23, 'mohdan3s10@gmail.com', 'MOHAMMED ANAS PP', '9947629945', 'Tkm college of engineering ', '$2b$08$jb3VlCru5xmex839WGqK8eJV3sTZsZfu/vj61suXRtYd02Le87zQS', 1, 'Civil engineering ', '1'),
(24, 'waseemriyazr@gmail.com', 'Waseem', '8714105224', 'TKM COLLEGE OF ENGINEERING ', '$2b$08$J98KNB46fPUNZ/WVBmunIudu0hyK/v.blWA5lhVlQVcnDPNx2.yru', 1, 'CIVIL', '1'),
(25, 'ms3558881@gmail.com', 'Muhammed shareef', '8089594787', 'Tkm College Of Engineering Karikkod', '$2b$08$PT91GWd11.Ee5bMOfjPVjufSG4C9tX7wQ/QEJkaFyOLHOfltoEaTa', 1, 'Mechanical', '1'),
(26, 'mohammedfahir786@gmail.com', 'Mohammed Fahir NM', '9495663996', 'TKM COLLEGE OF ENGINEERING', '$2b$08$uKeyoqNe7rcBZpAjuRB.pOzEdLGwsXrvzOj0v7yfeWRluMbtMpt6y', 1, 'Civil', '1'),
(27, 'collinjoseph398@gmail.com', 'COLLIN JOSEPH', '7907243605', 'College of Engineering, Trivandrum', '$2b$08$KQNF1pI8EUBar.5setJXKuBQpf9oOXSRU8BC8j1ooOgzOmRez0iWS', 2, 'Mechanical', '1'),
(28, 'bhavyasree071@gmail.com', 'BHAVYA S', '9048063584', 'CET', '$2b$08$BpJmIwyva/pK35yz6FYlKuAawLCnM84m1lbuaN2Z4oPX1.XPqSS0q', 2, 'Civil', '1'),
(29, 'vishnubvinod0602@gmail.com', 'vishnu', '8547816261', 'TKM COLLEGE OF ENGINEERING', '$2b$08$uz82ueWZdDCFfhp2PUuZb.6OA6cL6BTr67RTlcyhFM7QpofpBQjju', 3, 'ECE', '1'),
(30, 'raedac2001@gmail.com', 'Raeda C', '9778255986', 'TKM College of Engineering', '$2b$08$2qYN7gad5EDfpU3a0F1AF.wXGrE.OVR3ak/YJr5yuKBzEWYGmP.Jm', 1, 'Architecture', '1'),
(31, 'gouripradeep20@gmail.com', 'Gouri P', '8301933212', 'TKMCE', '$2b$08$2KAbpUrc3QlC3yJOf0ZmZuGc/QU45fWkKXT7LgS6nxwuGMn2IbzQS', 1, 'CSE', NULL),
(32, 'knightlook6@gmail.com', 'VISHNU B VINOD', '8547816261', 'tkm', '$2b$08$YQlpBNZEhQL35kLOSeTL1e0CXwBWCUUvwaQ0E4ZyjgPWtMZT9MF2.', 4, 'ECE', '1'),
(33, 'nashnakader98@gmail.com', 'Nashna Kader', '7356891589', 'TKMCE', '$2b$08$lir6xShmzg7/N1K7dS4UEeMOSG7jl8kIwAepSdt4VukSrSe2uPetW', 1, 'Civil ', '1'),
(34, 'mohammedanzal1055@gmail.com', 'Mohammed Anzal Hassan', '8129413854', 'TKM College of Engineering, Kollam', '$2b$08$FeXPrnFK62n08gRi3NQ/JeoCcweus2IOsxO6rWtu0ef5epXDuXcYa', 1, 'Chemical Engineering', '1'),
(35, 'megharraj2002@gmail.com', 'Megha R Raj', '9778224604', 'TKM College of Engineering', '$2b$08$tSlpKNn9ukfH7ggCBRGFleRVAz4A1IAuzQoRKUyI6js0f6I.NaOqy', 1, 'Civil Engineering', '1'),
(36, '200028@tkmce.in', 'Kavyakrishna A S', '9778203399', 'TKM College of Engineering', '$2b$08$I0ot/.1DuXuO989xiKdoMemGFIBhAV7ug03aX7rbX4DBx4WxsP/wK', 1, 'Civil', NULL),
(37, 'faheemfazir@gmail.com', 'Faheem Fazir', '8138091942', 'TKMCE', '$2b$08$JhMBsgiMoL5MOeaUBrgri.dnhbYuqfAZ3ZBTRw/75BZyYVnnBjOTe', 2, 'ME', NULL),
(38, 'ashwinshanuthomas@gmail.com', 'Ashwin Shanu Thomas', '9645454310', 'Tkm College of Engineering Kollam ', '$2b$08$Ilx3/XXa45/u4WDyqlq9LuJWzxiZWeVs8gqHYhWnEquGlDviGlXRC', 1, 'Civil', '1'),
(39, '200229@tkmce.ac.in', 'Anand s chandran', '7306549747', 'Tkm college of engineering ', '$2b$08$taSpjNHPhmk4ci4kcBcFyuOAzSVdjVsKZgriSUcq9JADNvd3yiFf.', 1, 'Chemical engineering ', '1'),
(40, 'ashwinkj255@gmail.com', 'Ashwin K J', '9539945121', 'TKM College of India ', '$2b$08$zzZ4ihm90v7C1S751Fa4q.1jejsfMfLxqwwvuaSc3zNkzjagQ3.QC', 2, 'Mechanical Engineering ', '1'),
(41, 'parthpushpakumar78@gmail.com', 'Parth Pushpakumar', '7306223699', 'TKM College of Engineering, Kollam', '$2b$08$CrCoNkdfxNAQbig1B11JpOjIEkZWaX8aNHY.DmLlzsGPWsUwVj1O.', 2, 'Mechanical', '1'),
(42, 'abpooja85@gmail.com', 'Pooja A B', '8086848209', 'Tkm college of engineering ', '$2b$08$hvK5B359NUh4QwAGG23ypeEscegI3CS2AkYkvABeqdnezwNBPsZqy', 1, 'Electronics and communication ', '1'),
(43, 'devikarajesh9961@gmail.com', 'Devika Rajesh', '9961673543', 'TKM college kollam ', '$2b$08$ZSysaFaofdazolQABEk6AOjFPtB/NaUsgaaWtTWWlz3/TfwOwQIQK', 1, 'Electronics and communications ', '1'),
(44, 'haleemhaleem7025@gmail.com', 'Muhammed Haleem', '7025462490', 'TKM College of Engineering', '$2b$08$kJStqAZrO/MpQ0C2umIy9u/W9sbD3TTSHNNT561eCOj3qwFBPBUOy', 1, 'ECR', '1'),
(45, 'mariyabiju410@gmail.com', 'Emy Mariya Biju', '8590870093', 'TKM', '$2b$08$EYlXcOs4MV7xBaIFAvw8HOhjn1exaF9fD17Jx7vDu9wrQ.206SrYS', 1, 'EC', '1'),
(46, '200362@tkmce.ac.in', 'Niranjana Pramod', '9544542110', 'Tkm college of engineering', '$2b$08$pkqalmlawXekpxwg132jBu/eJfUCzRCOIfgwYUpfcH5APjSzad2OS', 1, 'Ece', '1'),
(47, 'aswinclash@gmail.com', 'ASWIN Ajith A', '9072340899', 'TKM COLLEGE OF ENGINEERING', '$2b$08$PRRJ3nwt.fPlARja9C6DgO403a/lAREJl8bRc04iMVlduywMSvBXS', 2, 'Mechanical engineering', '1'),
(48, 'muhdhisham190609@gmail.com', 'Hisham', '7902265626', 'TKMCE', '$2b$08$cv5mlHYbae9mmDmNCM8t5OrR1vYeOYEGcVN0JwuShyAR6xBnMSyM2', 2, 'ECE', '1'),
(49, '200752@tkmce.ac.in', 'Arjun Pradeep', '9539590030', 'TKM COLEGE OF ENGINEERING', '$2b$08$TAy4S9YTF2bmdwRhTtNHy.y18HqTf7JjPJVOkGiihgZw6gW9qSzPm', 1, 'Civil', '1'),
(50, 'gtking360@hotmail.com', 'Abdullah Shaji', '9207627093', 'TKM College of Engineering', '$2b$08$A6ITjN43yBXOSUtZUuTbPehw8CHZalSBilcyleEVi1v5TkjYTgFxi', 1, 'Computer Science', '1'),
(51, 'suryan22102000@gmail.com', 'SURYAN KS', '9544649357', 'TKM college of engineering', '$2b$08$KkUswFIohypEEVOhsfbHWOfHmTnpsUQW5D4A0lk1hM/Hd564BM01m', 1, 'ECE', '1'),
(52, '200124@tkmce.ac.in', 'Adona Philip', '9207789745', 'TKM COLLEGE OF ENGINEERING', '$2b$08$568ZKXxYPJRSymA8D8p3H.1vBKj7icUbtuQH2QP1HJujEwCYkkrcu', 1, 'CHEMICAL ENGINEERING', '1'),
(53, 'sk670770@gmail.com', 'SHYAM KUMAR K', '9746451364', 'TKMCE', '$2b$08$y3Ab1VcZIauhCP1TjlwMVeVBQW1oxwy1KWUQkHh4OfyGtD.8zHJq.', 2, 'Mechanical engineering', '1'),
(54, 'aswinpaul080@gmail.com', 'Aswin Paul', '7902924452', 'TKM College of Engineering ', '$2b$08$syaFlth5d/ou2o0cyqmcIOoKQWN536foSjh8JIEx2SVYpzr3Ne.w6', 2, 'Chemical ', '1'),
(55, 'aromalviswanvl@gmail.com', 'Aromal Viswan. V. L', '9747019736', 'TKMCE Kollam', '$2b$08$Ass4V6GBOH0d5lraFKSZNOuZD7c16smwN07OgfMFhPKrVfrE.glHG', 2, 'Mechanical Engineering', '1'),
(56, 'binishachalil@gmail.com', 'BINISHA C', '7994032618', 'T K M College Of Engineering', '$2b$08$yKYHxafxViT2kaq4TmyQSOUxRrg1.mRrXJ0ZctOby2gM8YDeSnqV6', 2, 'Electronics And Communication', '1'),
(57, '201342@tkmce.ac.in', 'Abhijeet Kishor', '7012807167', 'TKMCE', '$2b$08$6bmJhR4WFDvD44EroPHUOeBOGrdtRnTCuH0YBRdisYygwBbxmTJ/y', 1, 'EEE', '1'),
(58, 'roshenraju2@gmail.com', 'Roshen Raju', '8281759445', 'TKM College of Engineering', '$2b$08$ARxOFrLl1U.HUKGDLaCH0u6WnVoue492LCUoTCZ1rb6oDC2UCRXZK', 2, 'Mechanical engineering', '1'),
(59, 'harigovinds2002@gmail.com', 'Harigovind S', '9074811485', 'College of engineering Trivandrum', '$2b$08$dSTUCnvee27GWu3yGgNIje5RJrJ2zU60k.EhwsI0H4qHV04QjXlxW', 2, 'Mechanical', '1'),
(60, 'jithilsalim911@gmail.com', 'Jithil Salim KP', '9567937011', 'TKMCE Kollam', '$2b$08$Dg3YXENXYEq6kv26Rx5VJujmisrJYitEhZ/s7KQwQX4OzovndE/rO', 2, 'Computer Science and Engineering', '1'),
(61, 'sjts007@gmail.com', 'SOORAJ TS', '6282143473', 'TKM COLLEGE OF ENGINEERING, KOLLAM', '$2b$08$7ayVY0IqysWNEtknOD9OEupAa5YAk710PU0ma/kAjDqN.fPpjDYAK', 2, 'EEE', '1'),
(62, 'muhammedshahul1998@gmail.com', 'Muhammed Shahul S', '89219990284', 'Tkmce ,kollam', '$2b$08$SwEq7oqkS3i4fFJLUFftdefbMbLj1uQh0FfkIqR0zg8yEdoYdBGn.', 2, 'ECE', '1'),
(63, '201259@tkmce.ac.in', 'Rosmy Francis', '8304017295', 'TKM College of engineering', '$2b$08$bTGS663A4KO6Hi3Y1cjJVOxbc8iR2.vFh8tG0VVuf4.HFx5QoR.Z6', 1, 'Electronics', '1'),
(64, 'manuelantony544@gmail.com', 'Manu M Johnson', '8848679119', 'TKM College of Engineering', '$2b$08$9N2IQkjCGDf6477zMZyzf.9W66Ju6PRJ3i.QBbATJ7tv4hddiC9y6', 2, 'Chemical Engineering', NULL),
(65, 'jumailsheik@gmail.com', 'Sheik Mohammed jumail', '9567487687', 'TKM college of engineering', '$2b$08$IoUhmmIsOisXGSxBcG7dP.uFjmZP7/72MtKATHkKH0M3yY1J8jnI6', 2, 'Electronics and communication', '1'),
(66, 'vikas676706@gmail.com', 'VIKAS K', '9567452438', 'TKM COLLEGE OF ENGINEERING', '$2b$08$pDLDozJupT6p5oN2Mh0kmuFLWkcxv04jBl3zACu6C8MgnRVBIBEYK', 1, 'ECE', '1'),
(67, 'mrkarthik414@gmail.com', 'R.Karthik krishnan ', '7034461969', 'Rajiv Gandhi institute of Technology ', '$2b$08$5G5Pir1MNpXdd/Sa2DXN3en5cxvkG5TP9YwFbjyRiaxRrxh098o7C', 1, 'Mechanical engineering ', NULL),
(68, 'abhinandh.sree2001@gmail.com', 'Abhinandh A', '9188750933', 'TKM College Of Engineering', '$2b$08$kg0FFC99VEq4yJ6w7nZwDOeI6xUQKyHt5k1CGu7I7EBdH.0iPeYCK', 1, 'Civil', '1'),
(69, '200786@tkmce.ac.in', 'Namitha Ida Mariya', '9645722224', 'TKM COLLEGE OF ENGINEERING', '$2b$08$uBXnWgH2ViwijAPeBuSRBuNL43h0F.pyZFwhO9ahG4e.JfA658Xgi', 1, 'B. arch', '1'),
(70, '200763@tkmce.ac.in', 'Pradyot Sahani', '7356285730', 'TKM College of Engineering ', '$2b$08$Efl.n7OuvC6UHdcSzHf7YOZjgD3/qGbF7MdwN/vxb2R4x0eh4NOA2', 1, 'Electrical and Electronics Engineering ', '1'),
(71, 'dps@gmail.com', 'Krishnan PP', '9988776655', 'TKM College of Engineering Kollam', '$2b$08$kuXY1M0GuGW7aD6FDp90rOsj6iPFy5PWiv7qeOlIwZHP4ZwQsI9y2', 2, 'Computer Science and Engineering ', NULL),
(72, '190983@tkmce.ac.in', 'Niranjan B', '8075145852', 'TKM College of Engineering Kollam', '$2b$08$uSv/c2kPmrzFv9AjL8yOAelz7AJaVTf25PLTjsovafgnU0dQwWocy', 2, 'Computer Science and Engineering ', '1'),
(73, 'ksadi2019@gmail.com', 'Adithya K S', '7736959687', 'Tkmce, Kollam', '$2b$08$xHvrZlxx70eNLXqezW6TtunxxU4fs4yZDHcLSQ.nlpqRKy6bbmzaC', 1, 'Chemical engineering', '1'),
(74, 'amjadpanjeeri@gmail.com', 'Amjad N', '9633081344', 'TKM College of engineering, Kollam', '$2b$08$Eic8QaOVd3qmhrCqbQNj3e7gl.TPrK729aRkk04npMYN5Jh7Jyc7O', 3, 'Computer Science', '1'),
(75, 'sriganash27@gmail.com', 'Sriganash S', '9846637925', 'TKM COLLEGE OF ENGINEERING KOLLAM', '$2b$08$6EV/1o4eFlfME7EhKpJX0uCGgrBWNURZ6WGarPv14jNer/4aXFrFm', 2, 'Computer science and engineering', '1'),
(76, 'milanpmanoj@gmail.com', 'Milan P Manoj', '9656956445', 'TKM College Of Engineering', '$2b$08$cM64YFVmuaB.ZPn8w9tAPu8E5HpX8lect24V2LMgoMKa/KEnHy4Aa', 2, 'Electronics and communication', '1'),
(77, '200737@tkmce.ac.in', 'ALFIYA S', '9746668471', 'TKM COLLEGE OF ENGINEERING', '$2b$08$ZBm5i.l3G0RQau2oeTnQMe6Hb0bKQY1.u5j.zl7lytTU8cCn2eeKu', 1, 'CHEMICAL', '1'),
(78, 'utharammaravoor5@gmail.com', 'Uthara M Maravoor ', '7994783624', 'TKM College of Engineering ', '$2b$08$BXEo4Q3acE7UgCNKF7lGhuCmJiM4997BhAIUnbH32.6VOniEJPc/O', 2, 'CHEMICAL ENGINEERING ', '1'),
(79, 'ananthuathu@gmail.com', 'Ananthu Krishnan P', '9745690040', 'TKMCE Kollam', '$2b$08$ryFu5tyL9olcno74O6K4T.BbbAAhIIkdyUjcDq9ti/cuQZRriVsRW', 2, 'Mechanical engineering', '1'),
(80, 'kasyaprnarayan@gmail.com', 'Kasyap R Narayan', '9188628634', 'TKM COLLEGE OF ENGINEERING', '$2b$08$fgZDynfGmsr.n6Ad3nNgGuODwSJRrJClDgCBWJFCDhn8BDNWxB2Ia', 1, 'Electrical and electronics', '1'),
(81, '201129@tkmce.ac.in', 'Abdul Mujeeb Rahman', '9747910488', 'Tkm engineering college kollam', '$2b$08$Zde7zXOowb2ivqIYBF5QpevhlGR7/2FrQ.5YFS/zO476VVZ5pRpN.', 1, 'Chemical', '1'),
(82, 'anaghagirilal8@gmail.com', 'Anagha G S', '8129139950', 'TKMCE', '$2b$08$zYyH8CIYh8HxDyZ83zqK1eoxeD29LChv3okXk5SZcEAZ84cc2G8pO', 2, 'Electrical and electronics engineering', '1'),
(83, 'unni5521@gmail.com', 'ABHISHEK S', '8304086712', 'TKM College of Engineering', '$2b$08$wYlDgLksAl7lk66SQHEOpuTmslpiBwxKUDYtAUzkraxUT8NOk3pq2', 2, 'EEE', '1'),
(84, 'ajithpmuralidharan01@gmail.com', 'ajith kumar p m', '7306476235', 'tkmce', '$2b$08$pg9CCH6dciPNHZKRp8T7TuSOgJMFLPcmR.vQxHU9pm7o8PDoiPufS', 2, 'CSE', '1'),
(85, 'neerajanilkumar18@gmail.com', 'NEERAJ A R', '9074937245', 'TKM COLLEGE OF ENGINEERING', '$2b$08$RRgqYiZclTbANKlkql.Lz.KAta1VbF2tCUM2cc7JewD.YjWYcGQXK', 2, 'EEE', '1'),
(86, 'anjanasanjay2020@gmail.com', 'Anjana Sanjay', '9188347518', 'TKM College of Engineering, Kollam', '$2b$08$SXIWYAtobGHj.QMp9tZ1kO9TM3cEBe83GBivy.5hz4Um.ctGTooWu', 1, 'Electronics and communication engineering', '1'),
(87, 'namith8055@gmail.com', 'Namith n raj', '9188160030', 'Rajagiri school of engineering and techn', '$2b$08$Afeuo3I0/4pzi0oyxX8b8.PVY5kx1N3dmub/pTdgxymS15NFt1ys.', 1, 'Mech', '1'),
(88, 'aswinjos@gmail.com', 'Aswin  Jose', '9995995507', 'College of Engineering Trivandrum ', '$2b$08$BLrW/TRBUTsl3QcGEH1T8uwNBz1zxUb.LohIx04Wk3zQIy9MluKP.', 2, 'Mechanical ', '1'),
(89, 'abhiramkb231@gmail.com', 'ABHIRAM  K B', '8943025964', 'TKM COLLEGE OF ENGINEERING KOLLAM', '$2b$08$0ZjfcSYfr08pfo6AdU057u0e73B4AhhDjVIIQpW/4F1R/3DzL.8mK', 2, 'Ece', '1'),
(90, 'thansihathansi20@gmail.com', 'Thansiha.t.s', '8547293443', 'Tkmce', '$2b$08$2ncDunpyU8FTgVNiz/Lfiu1U9y2m/Kgdi8EELoXHjdyCX/TMHqkny', 1, 'Chemical', '1'),
(91, 'adventure927336@gmail.com', 'Yaseen Muhammed Afsal', '9567815090', 'TKM College Of Engineering', '$2b$08$xzYqMiu5FKkoOcSt61RfVujmx9/SOka3JcaRJeEwrMm2xQjtPMrNK', 2, 'Mechanical Engineering', '1'),
(92, '20b669@gcek.ac.in', 'Razeen Mahroof', '6282454410', 'Government College of engineering kannur', '$2b$08$u5iD./gwnQJY1rsMrKrrsefKdPUbWR3XfAEkN9yA.IyZiiee3V9lK', 1, 'CSE', '1'),
(93, 'aswinmpanackal123@gmail.com', 'Aswin M', '7306068937', 'RIT KOTTAYAM', '$2b$08$CliO0m.zxgJa/F3M1zj8NOgQ/2lRJ4XUdfkFqPWavwjTc/BOfz1Dq', 2, 'Civil', '1'),
(94, 'devendhumd1002@gmail.com', 'Devendhu md', '9846263879', 'RIT pambady', '$2b$08$4thnyZyNbkkazdS0UjS7fOM8occViV1Uovqag9RiZk9sXLePvtA.e', 1, 'CSE', '1'),
(95, 'snjblslmudeen@gmail.com', 'Sanjabal S Salamudeen', '9037718122', 'MES Institute of Technology Management ,', '$2b$08$kvfcPBuv5FyfYcHakB/DzuQTuQ7qog1Y7xrDhs9W7kb5QLPggUJ5a', 1, 'Civil', '1'),
(96, 'athirar742@gmail.com', 'Athira r pillai', '9745665361', 'Government College of engineering Kannur', '$2b$08$AYRndpZrE6zkt7wfNpRz0.fDknwiEaYeuYNi8AQXYGekqZU6NzwDa', 1, 'Electronics and communication', '1'),
(97, '190198@tkmce.ac.in', 'Faheem Fazir', '8138091942', 'Thangal Kunju Musaliar College of Engine', '$2b$08$.0txTYRi6EwNtSyAmtuREejWaa.cArRheKGuZd0mNSwtu6CwYKcnC', 2, 'ME', '1'),
(98, 'karthiksabu06@gmail.com', 'Karthik Sabu', '8086903581', 'RIT Pampady Kottayam', '$2b$08$8HcWIOS92kLdVLJVxpvAUehS2gQQYFR.5Sd/uuWEwLZDJMH66nTui', 3, 'Electrical and Electronics Engineering', '1'),
(99, 'kavyajayanthimurali@gmail.com', 'Kavya Murali', '7902655482', 'TKM COLLEGE', '$2b$08$Y2OGb7mRGn7ubvHGtiiPj.VM2duKyEK1r54TZI0vLZjaELQBjlsxS', 1, 'Civil', '1'),
(100, 'prheju@gmail.com', 'Pratheesha Rheju', '9746523344', 'TKM College of Engineering', '$2b$08$e9nBrC6PD.ka7TajSqU.mumT.uWl2DivD61IhtvMO/BzAH2qb7IkC', 3, 'Civil Engineering', '1'),
(101, 'nandanaedakkanam29@gmail.com', 'Nandana TO', '8590186320', 'TKMCE', '$2b$08$C.eHs3LLJ4riBbAM/rkSEO9GC31HHVOEyZkpFauGcm6eVgKNtVknu', 1, 'Chemical engineering', NULL),
(102, 'alsamsalim987@gmail.com', 'Alsam Salim', '8281013710', 'RIT Kottayam', '$2b$08$b0rw3s7XP5mOjXdqkLb7KuH2rS1zg.f5nisO5iOtATUL8Ca4Af8SS', 3, 'CSE', '1'),
(103, 'mohammedsahadrk@gmail.com', 'mohammed sahad rk', '9497718393', 'TKM COLLEGE OF ENGINEERING', '$2b$08$xD45fJ.twOIeY3FH4JZCpOe4UlREXloqeAej3imwx0WQD2vcmRH7a', 1, 'EEE', '1'),
(104, 'ashiyaharshad330@gmail.com', 'Ashiya M Harshad ', '9995729767', 'MES Institute of Technology & Management', '$2b$08$hrZreFMU0zm55hzG2YKHM.GHmMny77SCMLJRKLrK4Ys3rHm6oA17.', 3, 'Civil Engineering ', '1'),
(105, 'komathniketh@gmail.com', 'Niketh K', '7306116758', 'TKMCE', '$2b$08$ZWSDnXD2RWcO3YFm3by9vurERXXOkf8XfFuPg7vQCijmNSq1Bmeve', 2, 'Mechanical Engineering', '1'),
(106, 'rayyana779@gmail.com', 'Umer Rayyan Ali K', '9633310285', 'TKM College of Engineering', '$2b$08$.5s/5enUFrnqFXf6HawZqORXbpAlYM18F54pBuAVodIn1TMIEYUJ6', 2, 'Electronics and communication', NULL),
(107, 'aiswaryakashachu@gmail.com', 'Aiswarya Poovathan Kandy', '7510803521', 'TKM COLLEGE OF ENGINEERING', '$2b$08$56fKfb3E/I1NWKnjE.jsHu45a0wUA63ppsCMpslJ2/.YMzXLSWoOK', 1, 'EEE', '1'),
(108, 'syedahamed4@gmail.com', 'Syed Ahamed', '9496300339', 'TKMCE', '$2b$08$CmBcIABDquYzsaI77SAMEuocswHwr1W.USNvCo2aITG0HFi9jdhPu', 3, 'Mechanical', '1'),
(109, 'rayyanali501@gmail.com', 'Umer Rayyan Ali K', '9633310285', 'TKM College of Engineering', '$2b$08$mE710sYWntWcfkUERWOLW.p1ar.z2eJu6cga3qsL/eIy5VFpUwzrm', 2, 'Electronics and communication', '1'),
(110, 'elsathankam14@gmail.com', 'Elsa Thankam', '7034524381', 'TKM College of engineering, Kollam', '$2b$08$8hDgr159ceAp5/umRN50Lece0vWLCv7EXxb0CTVCmueu/CEyexbjW', 1, 'Civil', '1'),
(111, 'akashochelannur@gmail.com', 'Akash', '9400881312', 'Collage of engineering vadakara', '$2b$08$hilgdrW6CC4PpEb6rB7gvOY2KsrVtvgyVwPE6Qfl0hikKCVtIN9RW', 3, 'IT', '1'),
(112, 'yadukrish17@gmail.com', 'Yadukrishnan K S', '9847728016', 'Rajiv Gandhi Institute of Technology,Kot', '$2b$08$S3yrPtpU9eiuBiR74V9xeOYquZDxrGd/oKy9P5mL4abd0YO7llkGe', 3, 'Electrical and Electronics Engineering', '1'),
(113, 'chithravkm248@gmail.com', 'Chithra Vinod', '9446647299', 'TKM College of engineering, Kollam', '$2b$08$ZpoBESNxC80PkOI0PWGo/uDVGjy69InAxWQai0AMbAV3et4.JdpE2', 2, 'ECE', NULL),
(114, 'imran.987617@gmail.com', 'H Mohammed Imran', '8606456750', 'TKM College of Engineering ', '$2b$08$cNvsPEskJgTmqJkzfAe8LOcNHYaH0D6/e85d7T.pb/0SAmqcd5nRq', 1, 'Civil', '1'),
(115, 'Sreeramskumar56@gmail.com', 'SREERAM S KUMAR', '9048242562', 'Bishop jerome institute ', '$2b$08$cxWuut6GlwxtebCO6rhmROZvGpDCqxUUCMypx0vMJMQ0Pi.87slAy', 1, 'MECHANICAL ', '1'),
(116, 'aravindrgopal02@gmail.com', 'Aravind R', '9074151199', 'TKM College of Engineering Kollam', '$2b$08$7tpYf8igcnMOK57VraPsjuTfvQjYvfn/F8DpaXOtEv2encowkqXc.', 1, 'Mechanical', '1'),
(117, 'amanrajar7@gmail.com', 'Aman Raj', '8547466012', 'TKM College Of Engineering', '$2b$08$Kfd.HwCX7QLvcVME93S2dO0A/827PIml/5iN1vkmiIQfOmsQ934C6', 2, 'Mechanical Engineering', '1'),
(118, 'msanand80555@gmail.com', 'ANAND M S', '8848874289', 'TKM collage of engineering', '$2b$08$Cbntk4fPfnBghEq.52r6MOM1i8gvx0ndsJ8Gu2RlEnYSruIVZoKci', 2, 'MECH', '1'),
(119, 'premrajrpapm@gmail.com', 'PREMRAJ R P', '7736892374', 'TKM', '$2b$08$ZP5xoDoXgPkrUzkPiLAE4.90YKfA2L7U36BlA/CGRqD4r7IdpneQK', 1, 'Mechanical Engineering', '1'),
(120, 'noufan151@gmail.com', 'NOUFAN N', '9562861292', 'TKM college of engineering kollam', '$2b$08$tqtpay21eFp/dBSxxTXG1OBor9RxMUeI7nDepbW5XWNsHvd1HHZpa', 3, 'Mechanical', '1'),
(121, 'ankithr007@gmail.com', 'Ankith. R', '9895628653', 'TKM college of engineering', '$2b$08$Lp1We.9LPvaDIZdoklVMNuXUMM//v6PSeOPvhzd6YCnBjhfDLu026', 2, 'Mechanical engineering', '1'),
(122, 'djharik@gmail.com', 'Harikrishnan Jyothi Chandran', '8921281789', 'TKM college of engineering, kollam', '$2b$08$GJ.0QquhYu6A6oTH/u6WYe5g5Rr8OWZnTPjz8yfh9eHxaBK8urGmC', 2, 'Mechanical engineering', '1'),
(123, 'akhilsaji9836@gmail.com', 'AKHIL SAJI', '8281046423', 'tkmce', '$2b$08$/4kIH5cODCHE5gmoR74pVOEe6JD.YtaUW5WFd8Ax31DZerPZh2.Bq', 2, 'ME ', '1'),
(124, 'aswinvijay2006@gmail.com', 'Aswani Vijay ', '9562253071', 'TKMCE,KOLLAM ', '$2b$08$WsE6jZV2Ms0zGHKjUUkYCO2fjVi6IG1A6Xq2Euavwq1B40HrmfpC.', 1, 'Mechanical ', NULL),
(125, 'vidulmanoj2002@gmail.com', 'Vidul Manoj', '9645439187', 'TKM College of Engineering', '$2b$08$7FxCZbCJ3vmptPJJ5O6eT.B0hEyo6uX.3KpJEkz7WsxpqThBwJNty', 1, 'EEE', '1'),
(126, 'anaghaasha17@gmail.com', 'Anagha Shalom A', '9778339714', 'Govt. Engineering college Barton Hill. T', '$2b$08$pWOfgGo4lCqq5XFCQ33IFe1Wygyzyrt/xaf1I/4bPFlr52FQIXv7e', 2, 'Electronics And communication engineering', '1'),
(127, 'arathiravitvm@gmail.com', 'Arathi L', '9544913011', 'Government Engineering College Barton hi', '$2b$08$E/97FzLgoCqQo/psoMMnkuQMySNUhVO1RLPcSZS4wio7BsMQf5i/a', 2, 'Electronics and communication engineering', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
