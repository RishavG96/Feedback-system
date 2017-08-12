-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2017 at 03:28 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback1`
--

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `q26` varchar(150) DEFAULT NULL,
  `q27` varchar(150) DEFAULT NULL,
  `q28` varchar(150) DEFAULT NULL,
  `q29` varchar(150) DEFAULT NULL,
  `q30` varchar(150) DEFAULT NULL,
  `q31` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `q9` varchar(50) DEFAULT NULL,
  `q10` varchar(50) DEFAULT NULL,
  `q11` varchar(50) DEFAULT NULL,
  `q12` varchar(50) DEFAULT NULL,
  `q13` varchar(50) DEFAULT NULL,
  `q14` varchar(50) DEFAULT NULL,
  `q15` varchar(50) DEFAULT NULL,
  `q16` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`) VALUES
('Excellent', 'Good', 'Satisfactory', 'Poor', 'Yes', 'No', 'Yes', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `guidance`
--

CREATE TABLE `guidance` (
  `q1` varchar(50) DEFAULT NULL,
  `q2` varchar(50) DEFAULT NULL,
  `q3` varchar(50) DEFAULT NULL,
  `q4` varchar(50) DEFAULT NULL,
  `q5` varchar(50) DEFAULT NULL,
  `q6` varchar(50) DEFAULT NULL,
  `q7` varchar(50) DEFAULT NULL,
  `q8` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guidance`
--

INSERT INTO `guidance` (`q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`) VALUES
('Always Available', 'Extremely useful', 'Always on time', 'Encouraged', 'Once a month', 'Yes', 'Yes', 'No'),
('Available most of the time', 'Very useful', 'Mostly on time', 'Greatly encouraged', 'Weekly', 'Yes', 'No', 'No'),
('Rarely Available', 'Extremely useful', 'Sometimes on time', 'Encouraged', 'Weekly', 'Yes', 'Yes', 'No'),
('Always Available', 'Very useful', 'Mostly on time', 'Greatly encouraged', 'Weekly', 'Yes', 'Yes', 'Yes'),
('Always Available', 'Extremely useful', 'Always on time', 'Greatly encouraged', 'Weekly', 'Yes', 'Yes', 'Yes'),
('Always Available', 'Very useful', 'Sometimes on time', 'Encouraged', 'Twice a month', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `q22` varchar(150) DEFAULT NULL,
  `q23` varchar(150) DEFAULT NULL,
  `q24` varchar(150) DEFAULT NULL,
  `q24i` varchar(150) DEFAULT NULL,
  `q24ii` varchar(150) DEFAULT NULL,
  `q25` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workbal`
--

CREATE TABLE `workbal` (
  `q17` varchar(50) DEFAULT NULL,
  `q18` varchar(50) DEFAULT NULL,
  `q19` varchar(50) DEFAULT NULL,
  `q20` varchar(50) DEFAULT NULL,
  `q21` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workbal`
--

INSERT INTO `workbal` (`q17`, `q18`, `q19`, `q20`, `q21`) VALUES
('Good', 'Less than 11 hours', 'Extremely Supportive', 'Yes', 'Yes'),
('Satisfactory', 'Less than 11 hours', 'Extremely Supportive', 'Yes', 'Yes'),
('Satisfactory', 'Less than 11 hours', 'Extremely Supportive', 'No', 'Yes'),
('Satisfactory', 'More than 80 hours', 'Moderately Supportive', 'No', 'No');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
