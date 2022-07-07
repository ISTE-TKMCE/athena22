-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2021 at 10:00 AM
-- Server version: 5.7.34
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `athena_astra`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `date` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `eventamount` int(30) NOT NULL,
  `others` varchar(1000) DEFAULT NULL,
  `flag` varchar(1) NOT NULL,
  `event_organizer` varchar(200) DEFAULT NULL,
  `organizer_contact` varchar(200) DEFAULT NULL,
  `img_link` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `eventamount`, `others`, `flag`, `event_organizer`, `organizer_contact`, `img_link`) VALUES
(1, 'APP DEVELOPMENT WORKSHOP', '22 & 23-May 2021', 'Workshop on Android App development', 1000, 'Event will be conducted Online', '', 'Vishnu B Vinod \r\nAleeena Thomas', '6282520388\r\n7306465366', NULL),
(2, 'ELECTRONICS CIRCUIT,PCB DESIGINING WORKSHOP', '22 & 23-May 2021', 'Workshop on EC development', 1000, NULL, '', 'Vishnu B Vinod \r\nSha Shajahan', '6282520388\r\n9847224360', NULL),
(3, 'CATIA WORKSHOP', '22 & 23-May 2021', 'Workshop on CATIA', 1000, NULL, '', 'Vishnu B Vinod \r\nSha Shajahan', '6282520388\r\n9847224360', NULL),
(4, 'STAAD PRO WORKSHOP', '22 & 23-May 2021', 'Workshop on STAAD PRO', 1000, NULL, '', 'Vishnu B Vinod \r\nAleeena Thomas', '6282520388\r\n7306465366', NULL),
(5, 'CODE OVERFLOW', '22 & 23-May 2021', '', 20, NULL, '', 'Amjad\r\nZainuddeen Abdul Muiz\r\n', '9633081344\r\n7073074756', NULL),
(6, 'CIRCUITRON', '22 & 23-May 2021', '', 20, NULL, '', 'Aswin S\r\nLakshmi Jayakumar \r\n', '7559987047\r\n9061183611', NULL),
(7, 'CHASE TO CUT', '22 & 23-May 2021', '', 0, NULL, '', '', '', NULL),
(8, 'IDEATHON', '22 & 23-May 2021', '', 100, NULL, '', 'Aboo Zuhaib\r\nMuhammed Aquil K', '8089588916\r\n9567991677', NULL),
(9, 'SKILL DEVELOPMENT BY PEHIA', '23 May 2021', '', 50, NULL, '', 'Sreelekshmi \r\nLintile Lisa Saju\r\n', '8547282695\r\n9188574763', NULL),
(10, 'QUIZZARDS OF OZ', '23 May 2021', '', 0, NULL, '', 'Savithri Krishna\r\nAdarsh\r\n', '8078364223\r\n8943152475', NULL),
(11, 'INGENIUM', '23 May 2021', '', 30, NULL, '', '', '', NULL),
(12, 'NO BODY NO CRIME', '22 May 2021', '', 60, NULL, '', 'Muhasin Ashiq\r\nAswin K\r\n', '8589808445\r\n8606279810', NULL),
(13, 'RECONSTRUCTING FILM SCRIPT', '22 & 23 May 2021', '', 25, NULL, '', 'Sai Sankar\r\nAjay', '9207525038\r\n8301916909', NULL),
(14, 'PHOTOGRAPHY CONTEST', '22 & 23 May 2021', '', 0, NULL, '', 'Jameel\r\nAdarsh\r\n', '81390 14130\r\n9947570792', NULL),
(15, 'VIRTUAL TRADING', '22 MaY 2021', '', 0, NULL, '', 'Vishnu B Vinod\r\nAthul\r\n', '6282520388\r\n98953 56764', NULL),
(16, 'DOODLE COMPETITION', '', '', 0, NULL, '', 'Athira K\r\nFarzeena Ibrahim ', '95628 84196\r\n7558851202', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
