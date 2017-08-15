-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2017 at 06:15 AM
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
  `regno` int(11) NOT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `q26` varchar(150) DEFAULT NULL,
  `q27` varchar(150) DEFAULT NULL,
  `q28` varchar(150) DEFAULT NULL,
  `q29` varchar(150) DEFAULT NULL,
  `q30` varchar(150) DEFAULT NULL,
  `q31` varchar(150) DEFAULT NULL,
  `q32` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`regno`, `dept`, `institute`, `q26`, `q27`, `q28`, `q29`, `q30`, `q31`, `q32`) VALUES
(70900013, 'Arch', 'MIT', 'NO', 'Finding research careers within academia', 'Finding research careers within industry', 'NO', 'NO', 'NO', '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `regno` int(11) NOT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `q33` varchar(100) DEFAULT NULL,
  `q34` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`regno`, `dept`, `institute`, `q33`, `q34`) VALUES
(70900013, 'Arch', 'MIT', 'PartTime', '--Choose an option--');

-- --------------------------------------------------------

--
-- Table structure for table `dr`
--

CREATE TABLE `dr` (
  `username` varchar(50) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `regno` int(11) NOT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL,
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

INSERT INTO `facilities` (`regno`, `dept`, `institute`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`) VALUES
(70900013, 'Arch', 'MIT', 'Not Applicable', 'Not Applicable', 'Poor', 'Poor', 'Yes', 'Yes', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `guidance`
--

CREATE TABLE `guidance` (
  `regno` int(11) NOT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL,
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

INSERT INTO `guidance` (`regno`, `dept`, `institute`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`) VALUES
(70900013, 'Arch', 'MIT', 'Always Available', 'Moderately useful', 'Sometimes on time', 'Moderately encouraged', 'Once a month', 'No', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `hoi`
--

CREATE TABLE `hoi` (
  `username` varchar(50) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phd`
--

CREATE TABLE `phd` (
  `regno` int(11) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `gname` varchar(100) DEFAULT NULL,
  `filled` varchar(10) DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phd`
--

INSERT INTO `phd` (`regno`, `pwd`, `dept`, `institute`, `gname`, `filled`) VALUES
(70900013, 'MIT@1000', 'Arch', 'MIT', 'N V Subba Reddy', 'true'),
(80900013, 'MIT@1001', 'B', 'MIT', 'Maddasani Srinivasulu', 'false'),
(90900029, 'MIT@1002', 'B', 'MIT', 'Hareesha K S', 'false'),
(90900039, 'MIT@1003', 'B', 'MIT', 'Somashekara Bhat', 'false'),
(90900054, 'MIT@1004', 'B', 'MIT', 'Shobha U Kamath', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `regno` int(11) NOT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `q22` varchar(150) DEFAULT NULL,
  `q23` varchar(150) DEFAULT NULL,
  `q24` varchar(150) DEFAULT NULL,
  `q24i` varchar(150) DEFAULT NULL,
  `q24ii` varchar(150) DEFAULT NULL,
  `q25` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`regno`, `dept`, `institute`, `q22`, `q23`, `q24`, `q24i`, `q24ii`, `q25`) VALUES
(70900013, 'Arch', 'MIT', 'No', 'No', 'No', '', '', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `workbal`
--

CREATE TABLE `workbal` (
  `regno` int(11) NOT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `q17` varchar(50) DEFAULT NULL,
  `q18` varchar(50) DEFAULT NULL,
  `q19` varchar(50) DEFAULT NULL,
  `q20` varchar(50) DEFAULT NULL,
  `q21` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workbal`
--

INSERT INTO `workbal` (`regno`, `dept`, `institute`, `q17`, `q18`, `q19`, `q20`, `q21`) VALUES
(70900013, 'Arch', 'MIT', 'Excellent', '11-20 hours', 'Slightly Supportive', 'Yes', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `dept` (`dept`),
  ADD KEY `institute` (`institute`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `dept` (`dept`),
  ADD KEY `institute` (`institute`);

--
-- Indexes for table `dr`
--
ALTER TABLE `dr`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `dept` (`dept`),
  ADD KEY `institute` (`institute`);

--
-- Indexes for table `guidance`
--
ALTER TABLE `guidance`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `dept` (`dept`),
  ADD KEY `institute` (`institute`);

--
-- Indexes for table `hoi`
--
ALTER TABLE `hoi`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `phd`
--
ALTER TABLE `phd`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `dept` (`dept`),
  ADD KEY `institute` (`institute`);

--
-- Indexes for table `workbal`
--
ALTER TABLE `workbal`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `dept` (`dept`),
  ADD KEY `institute` (`institute`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
