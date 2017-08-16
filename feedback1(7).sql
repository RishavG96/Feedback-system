-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2017 at 06:07 PM
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

INSERT INTO `challenges` (`regno`, `institute`, `q26`, `q27`, `q28`, `q29`, `q30`, `q31`, `q32`) VALUES
(70900013, 'MIT', 'NO', 'Finding research careers within academia', 'Finding research careers within industry', 'NO', 'Finding research careers with charity/non-profit organisations', 'NO', ''),
(80100005, 'KMC', 'NO', 'NO', 'NO', 'NO', 'Finding research careers with charity/non-profit organisations', 'NO', 'Others'),
(102400001, 'DOS', 'NO', 'NO', 'Finding research careers within industry', 'Finding research careers within government', 'Finding research careers with charity/non-profit organisations', 'NO', '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `regno` int(11) NOT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `q33` varchar(100) DEFAULT NULL,
  `q34` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`regno`, `institute`, `q33`, `q34`) VALUES
(70900013, 'MIT', 'FullTime', 'First 3 months Full Time'),
(80100005, 'KMC', 'FullTime', 'First 3 months Full Time'),
(102400001, 'DOS', 'PartTime', '--Choose an option--');

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

INSERT INTO `facilities` (`regno`, `institute`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`) VALUES
(70900013, 'MIT', 'Satisfactory', 'Good', 'Excellent', 'Not Applicable', 'Yes', 'No', 'Yes', 'No'),
(80100005, 'KMC', 'Satisfactory', 'Good', 'Poor', 'Not Applicable', 'Yes', 'Yes', 'Yes', 'Yes'),
(102400001, 'DOS', 'Excellent', 'Good', 'Satisfactory', 'Poor', 'Yes', 'Yes', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `guidance`
--

CREATE TABLE `guidance` (
  `regno` int(11) NOT NULL,
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

INSERT INTO `guidance` (`regno`, `institute`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`) VALUES
(70900013, 'MIT', 'Available most of the time', 'Extremely useful', 'Mostly on time', 'Greatly encouraged', 'Weekly', 'Yes', 'No', 'Yes'),
(80100005, 'KMC', 'Always Available', 'Very useful', 'Mostly on time', 'Encouraged', 'Once a month', 'No', 'Yes', 'No'),
(102400001, 'DOS', 'Available most of the time', 'Very useful', 'Mostly on time', 'Not at all', 'Twice a month', 'No', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `hoi`
--

CREATE TABLE `hoi` (
  `username` varchar(50) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoi`
--

INSERT INTO `hoi` (`username`, `pwd`, `institute`) VALUES
('mit', 'mit@2000', 'MIT'),
('kmc', 'kmc@2001', 'KMC'),
('dos', 'dos@2002', 'DOS'),
('dov', 'dov@2003', 'DOV'),
('doph', 'doph@2004', 'DOPH'),
('mcfis', 'mcfis@2005', 'MCFIS'),
('mcon', 'mcon@2006', 'MCON'),
('wgsoha', 'wgsoha@2007', 'WGSOHA'),
('mcods', 'mcods@2009', 'MCODS'),
('mcops', 'mcops@2010', 'MCOPS'),
('damp', 'damp@2011', 'DAMP'),
('mcns', 'mcns@2012', 'MCNS'),
('mlsc', 'mlsc@2013', 'MLSC'),
('mcoahs', 'mcoahs@2014', 'MCOAHS'),
('mcfpah', 'mcfpah@2015', 'MCFPAH'),
('mcfes', 'mcfes@2016', 'MCFES'),
('dog', 'dog@2017', 'DOG'),
('docm', 'docm@2018', 'DOCM'),
('miom', 'miom@2019', 'MIOM'),
('msap', 'msap@2020', 'MSAP'),
('dlis', 'dlis@2021', 'DLIS');

-- --------------------------------------------------------

--
-- Table structure for table `phd`
--

CREATE TABLE `phd` (
  `regno` int(11) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `gname` varchar(100) DEFAULT NULL,
  `filled` varchar(10) DEFAULT 'false',
  `email` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phd`
--

INSERT INTO `phd` (`regno`, `pwd`, `institute`, `gname`, `filled`, `email`) VALUES
(130900027, '0027', 'MIT', 'Sudhakara G Adiga', 'false', ''),
(130900025, '0025', 'MIT', 'Srivatsa Kumar B R', 'false', ''),
(133100056, '0056', 'DOS', 'Mohan Rao K', 'false', ''),
(133100029, '0029', 'DOS', 'Sudha D Kamath', 'false', ''),
(133100006, '0006', 'DOS', 'Dhananjaya Kekuda', 'false', ''),
(123100104, '0104', 'DOS', 'Dhananjaya Kekuda', 'false', ''),
(113100111, '0111', 'DOS', 'M P Yashoda', 'false', ''),
(173500001, '0001', 'DOV', 'Arun ', 'false', ''),
(153500001, '0001', 'DOV', 'Arunkumar G', 'false', ''),
(143500001, '0001', 'DOV', 'Arunkumar G', 'false', ''),
(162800001, '0001', 'DOPH', 'Leslie Edward Lewis', 'false', ''),
(152800002, '0002', 'DOPH', 'Lena Ashok', 'false', ''),
(130900023, '0023', 'MIT', 'Hareesha K S', 'false', ''),
(130900022, '0022', 'MIT', 'Balachandra .', 'false', ''),
(130900015, '0015', 'MIT', 'Raghuvir Pai Ballambat', 'false', ''),
(130900014, '0014', 'MIT', 'Vytla Ramachandra Murty', 'false', ''),
(130900012, '0012', 'MIT', 'Krishnamoorthy Makkithaya', 'false', ''),
(130900008, '0008', 'MIT', 'Vinod V Thomas', 'false', ''),
(120900101, '0101', 'MIT', 'Shreesha Chokkadi', 'false', ''),
(120900102, '0102', 'MIT', 'Surekha Kamath', 'false', ''),
(120900103, '0103', 'MIT', 'Rameash R Galigekere', 'false', ''),
(120900104, '0104', 'MIT', 'Manohar Pai M M', 'false', ''),
(120900106, '0106', 'MIT', 'Gopalakrishna Prabhu', 'false', ''),
(120900107, '0107', 'MIT', 'Manohar Pai M M', 'false', ''),
(120900109, '0109', 'MIT', 'N Gopalakrishna Kini', 'false', ''),
(130900001, '0001', 'MIT', 'S Ravishankar Bhat', 'false', ''),
(130900002, '0002', 'MIT', 'Kotegar Karunakar Annappa', 'false', ''),
(130900005, '0005', 'MIT', 'Ciji Pearl Kurian', 'false', ''),
(120900046, '0046', 'MIT', 'Dinesh Acharya U', 'false', ''),
(120900043, '0043', 'MIT', 'Lewlyn Lester Raj Rodrigues', 'false', ''),
(120900042, '0042', 'MIT', 'V I George', 'false', ''),
(120900040, '0040', 'MIT', 'Raghunandana K', 'false', ''),
(120900037, '0037', 'MIT', 'Dinesh Acharya U', 'false', ''),
(120900036, '0036', 'MIT', 'Raviraj Shetty', 'false', ''),
(120900033, '0033', 'MIT', 'M Sathish Kumar', 'false', ''),
(120900032, '0032', 'MIT', 'Satish Shenoy B', 'false', ''),
(120900031, '0031', 'MIT', 'N Yagnesh Sharma', 'false', ''),
(120900027, '0027', 'MIT', 'A S Vasudev Rao', 'false', ''),
(120900018, '0018', 'MIT', 'Kumara Shama', 'false', ''),
(120900015, '0015', 'MIT', 'Mahesha M G', 'false', ''),
(120900014, '0014', 'MIT', 'M Sathish Kumar', 'false', ''),
(120900013, '0013', 'MIT', 'Kotegar Karunakar Annappa', 'false', ''),
(120900012, '0012', 'MIT', 'Kotegar Karunakar Annappa', 'false', ''),
(120900010, '0010', 'MIT', 'Ciji Pearl Kurian', 'false', ''),
(120900009, '0009', 'MIT', 'Radhika M Pai', 'false', ''),
(120900005, '0005', 'MIT', 'Hareesha K S', 'false', ''),
(120900002, '0002', 'MIT', 'Mohan Rao K', 'false', ''),
(113100130, '0130', 'MIT', 'Subrahmanya Bhat K', 'false', ''),
(110900116, '0116', 'MIT', 'K Balakrishna', 'false', ''),
(110900053, '0053', 'MIT', 'Lewlyn Lester Raj Rodrigues', 'false', ''),
(110900051, '0051', 'MIT', 'M Selva kumar', 'false', ''),
(110900040, '0040', 'MIT', 'Chandrashekara  S Adiga', 'false', ''),
(110900034, '0034', 'MIT', 'Kumara Shama', 'false', ''),
(110900033, '0033', 'MIT', 'Lewlyn Lester Raj Rodrigues', 'false', ''),
(110900022, '0022', 'MIT', 'Ciji Pearl Kurian', 'false', ''),
(110900014, '0014', 'MIT', 'Krishnamoorthy Makkithaya', 'false', ''),
(110900012, '0012', 'MIT', 'Somashekara Bhat', 'false', ''),
(110900010, '0010', 'MIT', 'Rajendra Acharya U', 'false', ''),
(110900006, '0006', 'MIT', 'Krishnamoorthy Makkithaya', 'false', ''),
(100900103, '0103', 'MIT', 'Raghuvir Pai Ballambat', 'false', ''),
(100900038, '0038', 'MIT', 'N V Anil Kumar', 'false', ''),
(100900037, '0037', 'MIT', 'N Yagnesh Sharma', 'false', ''),
(100900036, '0036', 'MIT', 'Vyasa Updhyaya', 'false', ''),
(100900030, '0030', 'MIT', 'Niranjan N Chiplunkar', 'false', ''),
(100900029, '0029', 'MIT', 'V I George', 'false', ''),
(100900020, '0020', 'MIT', 'Hareesha K S', 'false', ''),
(100900016, '0016', 'MIT', 'Ashok Rao', 'false', ''),
(90900054, '0054', 'MIT', 'Shobha U Kamath', 'false', ''),
(90900039, '0039', 'MIT', 'Somashekara Bhat', 'false', ''),
(90900029, '0029', 'MIT', 'Hareesha K S', 'false', ''),
(80900013, '0013', 'MIT', 'Maddasani Srinivasulu', 'false', ''),
(70900013, '0013', 'MIT', 'N V Subba Reddy', 'true', ''),
(170100103, '0103', 'KMC', 'Guruprasad Kalthur', 'false', ''),
(170100102, '0102', 'KMC', 'Nalini K', 'false', ''),
(170100101, '0101', 'KMC', 'Anju Shukla', 'false', ''),
(170100001, '0001', 'KMC', 'Chiranjay Mukhopadhyay', 'false', ''),
(160100107, '0107', 'KMC', 'Laxminarayana Bairy K', 'false', ''),
(160100106, '0106', 'KMC', 'Girisha K M', 'false', ''),
(160100105, '0105', 'KMC', 'Anju Shukla', 'false', ''),
(160100103, '0103', 'KMC', 'Guruprasad Kalthur', 'false', ''),
(160100102, '0102', 'KMC', 'Tom Devasia', 'false', ''),
(160100101, '0101', 'KMC', 'Girisha K M', 'false', ''),
(160100003, '0003', 'KMC', 'Chiranjay Mukhopadhyay', 'false', ''),
(160100002, '0002', 'KMC', 'Kumar M R', 'false', ''),
(160100001, '0001', 'KMC', 'Guruprasad Kalthur', 'false', ''),
(150100102, '0102', 'KMC', 'Mamatha Ballal', 'false', ''),
(150100101, '0101', 'KMC', 'Ranjan S K', 'false', ''),
(141300007, '0007', 'KMC', 'Mamatha Ballal', 'false', ''),
(141300006, '0006', 'KMC', 'Mamatha Ballal', 'false', ''),
(140100106, '0106', 'KMC', 'Kumar M R', 'false', ''),
(140100105, '0105', 'KMC', 'Tom Devasia', 'false', ''),
(140100104, '0104', 'KMC', 'Anju Shukla', 'false', ''),
(140100103, '0103', 'KMC', 'Girisha K M', 'false', ''),
(140100102, '0102', 'KMC', 'Sudha Vidyasagar', 'false', ''),
(140100101, '0101', 'KMC', 'Rajagopal K V', 'false', ''),
(140100003, '0003', 'KMC', 'P S V N Sharma', 'false', ''),
(140100002, '0002', 'KMC', 'Pragna Rao', 'false', ''),
(140100001, '0001', 'KMC', 'Pragna Rao', 'false', ''),
(131500001, '0001', 'KMC', 'Anantha Nagappa Naik', 'false', ''),
(130100105, '0105', 'KMC', 'Ganesh Pai C', 'false', ''),
(130100104, '0104', 'KMC', 'Ranjan S K', 'false', ''),
(130100103, '0103', 'KMC', 'Padmanabha Udupa E G', 'false', ''),
(130100102, '0102', 'KMC', 'Leslie Edward Lewis', 'false', ''),
(130100101, '0101', 'KMC', 'Suma Nair', 'false', ''),
(130100006, '0006', 'KMC', 'Sripathy Bhat M', 'false', ''),
(130100005, '0005', 'KMC', 'Kumar M R', 'false', ''),
(130100004, '0004', 'KMC', 'P S V N Sharma', 'false', ''),
(130100003, '0003', 'KMC', 'Guruprasad Kalthur', 'false', ''),
(130100001, '0001', 'KMC', 'Satish Kumar Adiga', 'false', ''),
(120100108, '0108', 'KMC', 'Girisha K M', 'false', ''),
(120100102, '0102', 'KMC', 'Ganesh Pai C', 'false', ''),
(120100009, '0009', 'KMC', 'Sreedhara Ranganath Pai', 'false', ''),
(120100008, '0008', 'KMC', 'Kumar M R', 'false', ''),
(120100006, '0006', 'KMC', 'Satish Kumar Adiga', 'false', ''),
(120100005, '0005', 'KMC', 'Kiranmai S Rai', 'false', ''),
(110100133, '0133', 'KMC', 'Kavitha Saravu', 'false', ''),
(110100004, '0004', 'KMC', 'Kiranmai S Rai', 'false', ''),
(80100005, '0005', 'KMC', 'Latha K S', 'true', ''),
(161000102, '0102', 'MCFIS', 'Parvati V Bhat', 'false', ''),
(161000036, '0036', 'MCFIS', 'Harishchandra Hebbar', 'false', ''),
(151000036, '0036', 'MCFIS', 'Keerthana I', 'false', ''),
(141000022, '0022', 'MCFIS', 'Keerthana I', 'false', ''),
(141000003, '0003', 'MCFIS', 'Ramkumar P S', 'false', ''),
(131000053, '0053', 'MCFIS', 'P R Venkateswaran (Left the Institution)', 'false', ''),
(131000042, '0042', 'MCFIS', 'Gopalakrishna Prabhu', 'false', ''),
(131000024, '0024', 'MCFIS', 'Somashekara Bhat', 'false', ''),
(121000021, '0021', 'MCFIS', 'H G Joshi', 'false', ''),
(121000020, '0020', 'MCFIS', 'H G Joshi', 'false', ''),
(110900032, '0032', 'MCFIS', 'Nagesh H R', 'false', ''),
(110900031, '0031', 'MCFIS', 'Nagesh H R', 'false', ''),
(110900008, '0008', 'MCFIS', 'N Sriraam', 'false', ''),
(100900008, '0008', 'MCFIS', 'P R Venkateswaran (Left the Institution)', 'false', ''),
(90900030, '0030', 'MCFIS', 'P R Venkateswaran (Left the Institution)', 'false', ''),
(160500001, '0001', 'MCON', 'Judith Angelitta Noronha', 'false', ''),
(151800001, '0001', 'MCON', 'Ravikiran Ongole', 'false', ''),
(131800002, '0002', 'MCON', 'Christopher Sudhaker', 'false', ''),
(131800001, '0001', 'MCON', 'Christopher Sudhaker', 'false', ''),
(130500103, '0103', 'MCON', 'Anice George', 'false', ''),
(130500102, '0102', 'MCON', 'Mamatha Shivanand Pai', 'false', ''),
(130500101, '0101', 'MCON', 'Baby S Nayak', 'false', ''),
(130500002, '0002', 'MCON', 'Baby S Nayak', 'false', ''),
(130500001, '0001', 'MCON', 'Dinesh M Nayak', 'false', ''),
(120500102, '0102', 'MCON', 'Elsa Sanatombi Devi', 'false', ''),
(120500008, '0008', 'MCON', 'Leslie Edward Lewis', 'false', ''),
(120500007, '0007', 'MCON', 'M Mukhyaprana Prabhu', 'false', ''),
(120500006, '0006', 'MCON', 'H Manjunath Hande', 'false', ''),
(120500005, '0005', 'MCON', 'Pramod Kumar', 'false', ''),
(120500004, '0004', 'MCON', 'Parvati V Bhat', 'false', ''),
(120500003, '0003', 'MCON', 'Leslie Edward Lewis', 'false', ''),
(120500002, '0002', 'MCON', 'Anil K Bhat', 'false', ''),
(120500001, '0001', 'MCON', 'Dinesh M Nayak', 'false', ''),
(110500002, '0002', 'MCON', 'Ravindra Prabhu A', 'false', ''),
(90500002, '0002', 'MCON', 'Ravindra Prabhu A', 'false', ''),
(171400037, '0037', 'WGSOHA', 'Senthil Kumaran P', 'false', ''),
(141400026, '0026', 'WGSOHA', 'Asha Kamath', 'false', ''),
(152800001, '0001', 'DOPH', 'Hitesh Shah', 'false', ''),
(131400039, '0039', 'WGSOHA', 'H G Joshi', 'false', ''),
(120300001, '0001', 'MCODS', 'Satish Shenoy B', 'false', ''),
(170600101, '0101', 'MCOPS', 'Nayanabhirama Udupa', 'false', ''),
(170600002, '0002', 'MCOPS', 'Srinivas Mutalik', 'false', ''),
(170600001, '0001', 'MCOPS', 'Raghu Chandrashekhar H', 'false', ''),
(160600105, '0105', 'MCOPS', 'Girish Thunga P', 'false', ''),
(160600104, '0104', 'MCOPS', 'Krishna Murthy Bhat', 'false', ''),
(160600103, '0103', 'MCOPS', 'Usha Yogendra Nayak', 'false', ''),
(160600102, '0102', 'MCOPS', 'Gautham Shenoy G', 'false', ''),
(160600101, '0101', 'MCOPS', 'Srinivas Mutalik', 'false', ''),
(160600002, '0002', 'MCOPS', 'V M Subramanyam', 'false', ''),
(160600001, '0001', 'MCOPS', 'Raghavendra Shetty', 'false', ''),
(150600103, '0103', 'MCOPS', 'Shaila Angela Lewis', 'false', ''),
(150600102, '0102', 'MCOPS', 'Sudheer Moorkoth', 'false', ''),
(150600101, '0101', 'MCOPS', 'Varadaraj Bhat G', 'false', ''),
(150600005, '0005', 'MCOPS', 'J Venkata Rao', 'false', ''),
(150600004, '0004', 'MCOPS', 'Srinivas Mutalik', 'false', ''),
(150600003, '0003', 'MCOPS', 'Srinivas Mutalik', 'false', ''),
(150600002, '0002', 'MCOPS', 'Nayanabhirama Udupa', 'false', ''),
(150600001, '0001', 'MCOPS', 'Rekha Raghuveer Shenoy', 'false', ''),
(140600105, '0105', 'MCOPS', 'Unnikrishnan M K', 'false', ''),
(140600104, '0104', 'MCOPS', 'Yogendra Nayak', 'false', ''),
(140600103, '0103', 'MCOPS', 'Richard Lobo', 'false', ''),
(140600102, '0102', 'MCOPS', 'Rekha Raghuveer Shenoy', 'false', ''),
(140600101, '0101', 'MCOPS', 'Mallikarjuna Rao C', 'false', ''),
(140600004, '0004', 'MCOPS', 'Kurupath Radhakrishnan (approved as special case)', 'false', ''),
(140600003, '0003', 'MCOPS', 'J Venkata Rao', 'false', ''),
(140600002, '0002', 'MCOPS', 'Unnikrishnan M K', 'false', ''),
(140600001, '0001', 'MCOPS', 'Richard Lobo', 'false', ''),
(130600103, '0103', 'MCOPS', 'Sreedhara C S', 'false', ''),
(130600102, '0102', 'MCOPS', 'D Sreedhar', 'false', ''),
(130600101, '0101', 'MCOPS', 'Srinivas Mutalik', 'false', ''),
(130600011, '0011', 'MCOPS', 'Gautham Shenoy G', 'false', ''),
(130600010, '0010', 'MCOPS', 'Sreedhara Ranganath Pai', 'false', ''),
(130600009, '0009', 'MCOPS', 'H Manjunath Hande', 'false', ''),
(130600008, '0008', 'MCOPS', 'M Manjunath Setty', 'false', ''),
(130600007, '0007', 'MCOPS', 'Nayanabhirama Udupa', 'false', ''),
(130600006, '0006', 'MCOPS', 'Unnikrishnan M K', 'false', ''),
(130600004, '0004', 'MCOPS', 'Sreedhara C S', 'false', ''),
(130600003, '0003', 'MCOPS', 'Anantha Nagappa Naik', 'false', ''),
(130600001, '0001', 'MCOPS', 'Krishna Murthy Bhat', 'false', ''),
(120600104, '0104', 'MCOPS', 'Chandrashekar K S', 'false', ''),
(120600103, '0103', 'MCOPS', 'M Manjunath Setty', 'false', ''),
(120600006, '0006', 'MCOPS', 'V M Subramanyam', 'false', ''),
(120600004, '0004', 'MCOPS', 'Gautham Shenoy G', 'false', ''),
(120600001, '0001', 'MCOPS', 'Ravindra Prabhu A', 'false', ''),
(110600104, '0104', 'MCOPS', 'Jayashree B S', 'false', ''),
(110600013, '0013', 'MCOPS', 'Sreedhara Ranganath Pai', 'false', ''),
(110600006, '0006', 'MCOPS', 'Jayashree B S', 'false', ''),
(110600005, '0005', 'MCOPS', 'Suvarna G Kini', 'false', ''),
(100600001, '0001', 'MCOPS', 'V M Subramanyam', 'false', ''),
(90600022, '0022', 'MCOPS', 'Sreedhara C S', 'false', ''),
(90600021, '0021', 'MCOPS', 'M Mukhyaprana Prabhu', 'false', ''),
(90600008, '0008', 'MCOPS', 'Sreedhara Ranganath Pai', 'false', ''),
(162900102, '0102', 'DAMP', 'Santhosh Chidangil', 'false', ''),
(162900101, '0101', 'DAMP', 'Sajan D George', 'false', ''),
(162900002, '0002', 'DAMP', 'Suresh D Kulkarni', 'false', ''),
(152900027, '0027', 'DAMP', 'Sajan D George', 'false', ''),
(152900026, '0026', 'DAMP', 'Unnikrishnan V K', 'false', ''),
(152900025, '0025', 'DAMP', 'Rajeev Kumar Sinha', 'false', ''),
(152900002, '0002', 'DAMP', 'Santhosh Chidangil', 'false', ''),
(132900103, '0103', 'DAMP', 'Abdul Ajees Abdul Salam', 'false', ''),
(132900102, '0102', 'DAMP', 'Unnikrishnan V K', 'false', ''),
(132900101, '0101', 'DAMP', 'Sajan D George', 'false', ''),
(122900102, '0102', 'DAMP', 'Santhosh Chidangil', 'false', ''),
(122900101, '0101', 'DAMP', 'Suresh D Kulkarni', 'false', ''),
(112900119, '0119', 'DAMP', 'Santhosh Chidangil', 'false', ''),
(112900118, '0118', 'DAMP', 'Santhosh Chidangil', 'false', ''),
(112900116, '0116', 'DAMP', 'Santhosh Chidangil', 'false', ''),
(174000101, '0101', 'MCNS', 'Kazuyuki Furuuchi', 'false', ''),
(164000101, '0101', 'MCNS', 'Debbijoy Bhattacharya', 'false', ''),
(124000101, '0101', 'MCNS', 'Mohini Gupta', 'false', ''),
(171700104, '0104', 'MLSC', 'Shama Prasada K', 'false', ''),
(171700103, '0103', 'MLSC', 'T S Murali', 'false', ''),
(171700102, '0102', 'MLSC', 'Satyamoorthy K', 'false', ''),
(171700002, '0002', 'MLSC', 'Sanjiban Chakrabarty', 'false', ''),
(171700001, '0001', 'MLSC', 'Satyamoorthy K', 'false', ''),
(161700102, '0102', 'MLSC', 'Padmalatha Rai S', 'false', ''),
(161700001, '0001', 'MLSC', 'Satyamoorthy K', 'false', ''),
(151700002, '0002', 'MLSC', 'Satyamoorthy K', 'false', ''),
(151700001, '0001', 'MLSC', 'Satyamoorthy K', 'false', ''),
(141700105, '0105', 'MLSC', 'Satyamoorthy K', 'false', ''),
(141700104, '0104', 'MLSC', 'A Muthusamy', 'false', ''),
(141700103, '0103', 'MLSC', 'Krishna Kishore Mahato', 'false', ''),
(141700101, '0101', 'MLSC', 'Manjunath B Joshi', 'false', ''),
(141700002, '0002', 'MLSC', 'Krishna Kishore Mahato', 'false', ''),
(141700001, '0001', 'MLSC', 'Padmalatha Rai S', 'false', ''),
(131700108, '0108', 'MLSC', 'Vidhu Sankar Babu', 'false', ''),
(131700106, '0106', 'MLSC', 'A Muthusamy', 'false', ''),
(131700104, '0104', 'MLSC', 'Satyamoorthy K', 'false', ''),
(131700103, '0103', 'MLSC', 'Herman Sunil D Souza', 'false', ''),
(131700102, '0102', 'MLSC', 'Padmalatha Rai S', 'false', ''),
(131700101, '0101', 'MLSC', 'T S Murali', 'false', ''),
(131500002, '0002', 'MLSC', 'Narasimhan S (Now he is in Biotech MIT)', 'false', ''),
(121700102, '0102', 'MLSC', 'Guruprasad K P', 'false', ''),
(121700101, '0101', 'MLSC', 'Satish Rao B S', 'false', ''),
(121700002, '0002', 'MLSC', 'Satyamoorthy K', 'false', ''),
(121700001, '0001', 'MLSC', 'Manjunath B Joshi', 'false', ''),
(111700134, '0134', 'MLSC', 'Moka Raja Sekhar', 'false', ''),
(111700131, '0131', 'MLSC', 'Satish Rao B S', 'false', ''),
(111700129, '0129', 'MLSC', 'Manjunath B Joshi', 'false', ''),
(111700127, '0127', 'MLSC', 'Satyamoorthy K', 'false', ''),
(111700121, '0121', 'MLSC', 'Vidhu Sankar Babu', 'false', ''),
(111700005, '0005', 'MLSC', 'T S Murali', 'false', ''),
(111700004, '0004', 'MLSC', 'T S Murali', 'false', ''),
(111700003, '0003', 'MLSC', 'Saadi Abdul Vahab', 'false', ''),
(111700002, '0002', 'MLSC', 'Gopinath P M', 'false', ''),
(101700104, '0104', 'MLSC', 'Guruprasad K P', 'false', ''),
(171100102, '0102', 'MCOAHS', 'Ramesh S Ve', 'false', ''),
(171100101, '0101', 'MCOAHS', 'John Solomon H', 'false', ''),
(171100003, '0003', 'MCOAHS', 'Smiti Sripathi', 'false', ''),
(171100002, '0002', 'MCOAHS', 'Saleena Ummer Velladath', 'false', ''),
(171100001, '0001', 'MCOAHS', 'Padmakumar R', 'false', ''),
(161100101, '0101', 'MCOAHS', 'Arun G Maiya', 'false', ''),
(161100005, '0005', 'MCOAHS', 'Somu G', 'false', ''),
(161100004, '0004', 'MCOAHS', 'John Solomon H', 'false', ''),
(161100003, '0003', 'MCOAHS', 'Shashikiran Umakanth', 'false', ''),
(161100002, '0002', 'MCOAHS', 'P S V N Sharma', 'false', ''),
(161100001, '0001', 'MCOAHS', 'Arun G Maiya', 'false', ''),
(151100101, '0101', 'MCOAHS', 'Ramesh S Ve', 'false', ''),
(141100103, '0103', 'MCOAHS', 'Krishna Y', 'false', ''),
(141100102, '0102', 'MCOAHS', 'Arun G Maiya', 'false', ''),
(141100101, '0101', 'MCOAHS', 'John Solomon H', 'false', ''),
(141100005, '0005', 'MCOAHS', 'Peter Allen', 'false', ''),
(141100004, '0004', 'MCOAHS', 'Prakashini K', 'false', ''),
(141100003, '0003', 'MCOAHS', 'Venkataraja Aithal U', 'false', ''),
(141100002, '0002', 'MCOAHS', 'Gopeekrishnan .', 'false', ''),
(141100001, '0001', 'MCOAHS', 'Krishna Y', 'false', ''),
(131100102, '0102', 'MCOAHS', 'Bhamini K Rao', 'false', ''),
(131100101, '0101', 'MCOAHS', 'Venkataraja Aithal U', 'false', ''),
(131100008, '0008', 'MCOAHS', 'P S V N Sharma', 'false', ''),
(131100007, '0007', 'MCOAHS', 'Krishna Y', 'false', ''),
(131100006, '0006', 'MCOAHS', 'Bhamini K Rao', 'false', ''),
(131100005, '0005', 'MCOAHS', 'Gogate Parikshit Madhav', 'false', ''),
(131100004, '0004', 'MCOAHS', 'Mary Mathew', 'false', ''),
(131100003, '0003', 'MCOAHS', 'Shobha K L', 'false', ''),
(131100002, '0002', 'MCOAHS', 'Rajagopal K V', 'false', ''),
(131100001, '0001', 'MCOAHS', 'Rajashekhar B', 'false', ''),
(121100101, '0101', 'MCOAHS', 'Kavitha Raja', 'false', ''),
(121100004, '0004', 'MCOAHS', 'Pratap Kumar Narayan', 'false', ''),
(121100002, '0002', 'MCOAHS', 'Raj Devashis Chakravarty', 'false', ''),
(121100001, '0001', 'MCOAHS', 'P S V N Sharma', 'false', ''),
(111100006, '0006', 'MCOAHS', 'Unnikrishnan B', 'false', ''),
(111100002, '0002', 'MCOAHS', 'Padmakumar R', 'false', ''),
(91100006, '0006', 'MCOAHS', 'Kavitha Raja', 'false', ''),
(163600101, '0101', 'MCFPAH', 'Apaar Kumar', 'false', ''),
(153600101, '0101', 'MCFPAH', 'Sundar Sarukkai', 'false', ''),
(143600103, '0103', 'MCFPAH', 'Nikhil Govind', 'false', ''),
(143600102, '0102', 'MCFPAH', 'Meera Baindur', 'false', ''),
(163300101, '0101', 'MCFES', 'Neeta Inamdar', 'false', ''),
(163300024, '0024', 'MCFES', 'Neeta Inamdar', 'false', ''),
(162700101, '0101', 'DOG', 'Monish Tourangbam', 'false', ''),
(142700028, '0028', 'DOG', 'Arvind Kumar', 'false', ''),
(132700101, '0101', 'DOG', 'Nanda Kishor MS', 'false', ''),
(132700016, '0016', 'DOG', 'Arvind Kumar', 'false', ''),
(122700101, '0101', 'DOG', 'Arvind Kumar', 'false', ''),
(172600001, '0001', 'DOCM', 'Sandeep Shenoy', 'false', ''),
(152600012, '0012', 'DOCM', 'Suresh Ramana Mayya', 'false', ''),
(132600021, '0021', 'DOCM', 'H G Joshi', 'false', ''),
(132600020, '0020', 'DOCM', 'H G Joshi', 'false', ''),
(122600035, '0035', 'DOCM', 'Suresh Ramana Mayya', 'false', ''),
(110900057, '0057', 'DOCM', 'H G Joshi', 'false', ''),
(151200103, '0103', 'MIOM', 'Savitha ..', 'false', ''),
(151200102, '0102', 'MIOM', 'S Lakshmi Narayanan', 'false', ''),
(151200101, '0101', 'MIOM', 'V K Ranjith', 'false', ''),
(90900052, '0052', 'MIOM', 'Pratap Chandra Biswal', 'false', ''),
(173700003, '0003', 'MSAP', 'Nandineni Rama Devi', 'false', ''),
(123700019, '0019', 'MSAP', 'Ganapayya Bhat P', 'false', ''),
(123700017, '0017', 'MSAP', 'N K Garg (Left the institution)', 'false', ''),
(173100104, '0104', 'DOS', 'Sudhakara G Adiga', 'false', ''),
(173100011, '0011', 'DOS', 'M P Yashoda', 'false', ''),
(163100107, '0107', 'DOS', 'Maddasani Srinivasulu', 'false', ''),
(163100106, '0106', 'DOS', ' ', 'false', ''),
(163100105, '0105', 'DOS', ' ', 'false', ''),
(163100103, '0103', 'DOS', 'M P Yashoda', 'false', ''),
(163100029, '0029', 'DOS', 'M P Yashoda', 'false', ''),
(153100104, '0104', 'DOS', 'Mahesha M G', 'false', ''),
(153100103, '0103', 'DOS', 'Pradeep G Bhat', 'false', ''),
(153100101, '0101', 'DOS', 'Manjunatha Gudekote', 'false', ''),
(153100056, '0056', 'DOS', 'Padmalatha R Rao', 'false', ''),
(153100039, '0039', 'DOS', 'Gowrish Rao', 'false', ''),
(153100038, '0038', 'DOS', 'Ashok Rao', 'false', ''),
(153100034, '0034', 'DOS', 'Rajendra B V', 'false', ''),
(153100020, '0020', 'DOS', 'Sudha D Kamath', 'false', ''),
(143100103, '0103', 'DOS', 'Rajendra B V', 'false', ''),
(143100101, '0101', 'DOS', 'Padmalatha R Rao', 'false', ''),
(143100001, '0001', 'DOS', 'Mohan Rao K', 'false', ''),
(133100105, '0105', 'DOS', 'Nagaraj N Katagi', 'false', ''),
(133100104, '0104', 'DOS', 'Dhanya Sunil', 'false', ''),
(133100103, '0103', 'DOS', 'Gowrish Rao', 'false', ''),
(133100102, '0102', 'DOS', 'Shetty Nitin Kumar Sudhakar', 'false', ''),
(133100101, '0101', 'DOS', 'Kuncham Shyam Prasad', 'false', ''),
(130900028, '0028', 'MIT', 'K Balakrishna', 'false', ''),
(130900033, '0033', 'MIT', 'Balaji S', 'false', ''),
(130900035, '0035', 'MIT', 'Ciji Pearl Kurian', 'false', ''),
(130900036, '0036', 'MIT', 'Vytla Ramachandra Murty', 'false', ''),
(130900037, '0037', 'MIT', 'Kedukodi Babushri Srinivas', 'false', ''),
(130900038, '0038', 'MIT', 'Vemuru Hema Sundara Murthy', 'false', ''),
(130900044, '0044', 'MIT', 'Bharath Raja Guru', 'false', ''),
(130900046, '0046', 'MIT', 'Kotegar Karunakar Annappa', 'false', ''),
(130900049, '0049', 'MIT', 'Shreesha Chokkadi', 'false', ''),
(130900050, '0050', 'MIT', 'Raviraja Adhikari', 'false', ''),
(130900054, '0054', 'MIT', 'Subrahmanya Bhat K', 'false', ''),
(130900055, '0055', 'MIT', 'Manohar Pai M M', 'false', ''),
(130900057, '0057', 'MIT', 'Balachandra .', 'false', ''),
(130900058, '0058', 'MIT', 'Radhika M Pai', 'false', ''),
(130900059, '0059', 'MIT', 'Ashalatha Nayak', 'false', ''),
(130900061, '0061', 'MIT', 'Kotegar Karunakar Annappa', 'false', ''),
(130900062, '0062', 'MIT', 'Manohar Pai M M', 'false', ''),
(130900101, '0101', 'MIT', 'Balaji S', 'false', ''),
(130900102, '0102', 'MIT', 'Bharath Raja Guru', 'false', ''),
(130900103, '0103', 'MIT', 'Ashalatha Nayak', 'false', ''),
(130900104, '0104', 'MIT', 'Somashekara Bhat', 'false', ''),
(130900106, '0106', 'MIT', 'Dinesh Acharya U', 'false', ''),
(130900107, '0107', 'MIT', 'Hareesha K S', 'false', ''),
(140900002, '0002', 'MIT', 'Surekha Kamath', 'false', ''),
(140900004, '0004', 'MIT', 'Lewlyn Lester Raj Rodrigues', 'false', ''),
(140900006, '0006', 'MIT', 'Kumara Shama', 'false', ''),
(140900007, '0007', 'MIT', 'K Prabhakar Nayak (retiered)', 'false', ''),
(140900010, '0010', 'MIT', 'S Ravishankar Bhat', 'false', ''),
(140900015, '0015', 'MIT', 'Balachandra .', 'false', ''),
(140900019, '0019', 'MIT', 'Nagaraj N Katagi', 'false', ''),
(140900020, '0020', 'MIT', 'A Krishnamoorthy', 'false', ''),
(140900021, '0021', 'MIT', 'Pradeep G Bhat', 'false', ''),
(140900030, '0030', 'MIT', 'B Gopalakrishna', 'false', ''),
(140900031, '0031', 'MIT', 'Sudhakara G Adiga', 'false', ''),
(140900032, '0032', 'MIT', 'Niranjana S', 'false', ''),
(140900033, '0033', 'MIT', 'Raghunandana K', 'false', ''),
(140900101, '0101', 'MIT', 'V I George', 'false', ''),
(140900102, '0102', 'MIT', 'Hareesha K S', 'false', ''),
(140900103, '0103', 'MIT', 'Raviraja Adhikari', 'false', ''),
(140900104, '0104', 'MIT', 'Satish Shenoy B', 'false', ''),
(140900105, '0105', 'MIT', 'Kotegar Karunakar Annappa', 'false', ''),
(140900106, '0106', 'MIT', 'H N Udaya Shankar', 'false', ''),
(140900108, '0108', 'MIT', 'Kumara Shama', 'false', ''),
(140900109, '0109', 'MIT', 'Renuka A', 'false', ''),
(150900010, '0010', 'MIT', 'Ashalatha Nayak', 'false', ''),
(150900011, '0011', 'MIT', 'Sanjay Singh', 'false', ''),
(150900013, '0013', 'MIT', 'A Krishnamoorthy', 'false', ''),
(150900014, '0014', 'MIT', 'Ciji Pearl Kurian', 'false', ''),
(150900015, '0015', 'MIT', 'I Thirunavukkarasu', 'false', ''),
(150900016, '0016', 'MIT', 'Anitha H', 'false', ''),
(150900017, '0017', 'MIT', 'Tungesh G M', 'false', ''),
(150900019, '0019', 'MIT', 'Srikanth Prabhu', 'false', ''),
(150900021, '0021', 'MIT', 'Nityananda Pai', 'false', ''),
(150900033, '0033', 'MIT', 'Vemuru Hema Sundara Murthy', 'false', ''),
(150900035, '0035', 'MIT', 'K Balakrishna', 'false', ''),
(150900041, '0041', 'MIT', 'Somashekara Bhat', 'false', ''),
(150900043, '0043', 'MIT', 'K Balakrishna', 'false', ''),
(150900044, '0044', 'MIT', 'Santhosh K V', 'false', ''),
(150900054, '0054', 'MIT', 'Ciji Pearl Kurian', 'false', ''),
(150900055, '0055', 'MIT', 'H N Udaya Shankar', 'false', ''),
(150900101, '0101', 'MIT', 'Bharath Raja Guru', 'false', ''),
(150900102, '0102', 'MIT', 'Vijay G S', 'false', ''),
(150900104, '0104', 'MIT', 'Divyashree M S', 'false', ''),
(150900105, '0105', 'MIT', 'Praveen Kumar', 'false', ''),
(150900106, '0106', 'MIT', 'Sathyashankara Sharma', 'false', ''),
(150900107, '0107', 'MIT', 'Manjula Shenoy K', 'false', ''),
(153100105, '0105', 'MIT', 'Pramoda Kumara Shetty', 'false', ''),
(160900003, '0003', 'MIT', 'Kiran Kamath', 'false', ''),
(160900004, '0004', 'MIT', 'Dayananda Pai K', 'false', ''),
(160900010, '0010', 'MIT', 'Vytla Ramachandra Murty', 'false', ''),
(160900011, '0011', 'MIT', 'Savitha G Kini', 'false', ''),
(160900015, '0015', 'MIT', 'Harish S V', 'false', ''),
(160900017, '0017', 'MIT', 'Satish Shenoy B', 'false', ''),
(160900018, '0018', 'MIT', 'Sathyashankara Sharma', 'false', ''),
(160900025, '0025', 'MIT', 'Sathyashankara Sharma', 'false', ''),
(160900026, '0026', 'MIT', 'Dayananda Pai K', 'false', ''),
(160900027, '0027', 'MIT', 'Srivatsa Kumar B R', 'false', ''),
(160900028, '0028', 'MIT', 'U Achutha Kini', 'false', ''),
(160900030, '0030', 'MIT', 'Raghunandana K', 'false', ''),
(160900032, '0032', 'MIT', 'I Thirunavukkarasu', 'false', ''),
(160900033, '0033', 'MIT', 'U Achutha Kini', 'false', ''),
(160900035, '0035', 'MIT', 'Mamatha Balachandra', 'false', ''),
(160900040, '0040', 'MIT', 'Meenatchi Sundaram S', 'false', ''),
(160900046, '0046', 'MIT', 'Meenatchi Sundaram S', 'false', ''),
(160900048, '0048', 'MIT', 'Gopalakrishna Prabhu', 'false', ''),
(160900049, '0049', 'MIT', 'V I George', 'false', ''),
(160900050, '0050', 'MIT', 'Sathyashankara Sharma', 'false', ''),
(160900051, '0051', 'MIT', 'Muddu Madakyaru', 'false', ''),
(160900101, '0101', 'MIT', 'Naresh Kumar Mani', 'false', ''),
(160900103, '0103', 'MIT', 'Balakrishna Rao K', 'false', ''),
(160900104, '0104', 'MIT', 'K Balakrishna', 'false', ''),
(160900105, '0105', 'MIT', 'P C Siddalingaswamy', 'false', ''),
(160900106, '0106', 'MIT', 'Kamath Dattaguru Vinayak', 'false', ''),
(160900107, '0107', 'MIT', 'Surekha Kamath', 'false', ''),
(160900108, '0108', 'MIT', 'Raghuvir Pai Ballambat', 'false', ''),
(160900109, '0109', 'MIT', 'Anitha H', 'false', ''),
(160900110, '0110', 'MIT', 'Kotegar Karunakar Annappa', 'false', ''),
(160900112, '0112', 'MIT', 'Balachandra .', 'false', ''),
(160900113, '0113', 'MIT', 'V I George', 'false', ''),
(160900115, '0115', 'MIT', 'M Ramananda Bhat', 'false', ''),
(163100101, '0101', 'MIT', 'Harikrishnan P K', 'false', ''),
(163100102, '0102', 'MIT', 'Raviprakash Y', 'false', ''),
(163100104, '0104', 'MIT', 'Vyasa Updhyaya', 'false', ''),
(170900001, '0001', 'MIT', 'Manjula Shenoy K', 'false', ''),
(170900002, '0002', 'MIT', 'Jayalakshmi N S', 'false', ''),
(170900006, '0006', 'MIT', 'Geetha M', 'false', ''),
(170900007, '0007', 'MIT', 'Ashalatha Nayak', 'false', ''),
(170900008, '0008', 'MIT', 'Balachandra .', 'false', ''),
(170900009, '0009', 'MIT', 'H N Udaya Shankar', 'false', ''),
(170900010, '0010', 'MIT', 'Ciji Pearl Kurian', 'false', ''),
(170900020, '0020', 'MIT', 'Pradeep G Bhat', 'false', ''),
(170900021, '0021', 'MIT', 'Sudhakara G Adiga', 'false', ''),
(170900022, '0022', 'MIT', 'Baiju T', 'false', ''),
(170900023, '0023', 'MIT', 'Divyashree M S', 'false', ''),
(170900024, '0024', 'MIT', 'Santhosh K V', 'false', ''),
(170900025, '0025', 'MIT', 'Muddu Madakyaru', 'false', ''),
(170900026, '0026', 'MIT', 'Ashalatha Nayak', 'false', ''),
(170900027, '0027', 'MIT', 'Mohandas Chadaga', 'false', ''),
(170900101, '0101', 'MIT', 'Sathyashankara Sharma', 'false', ''),
(170900104, '0104', 'MIT', 'I Thirunavukkarasu', 'false', ''),
(170900105, '0105', 'MIT', 'Prema K V', 'false', ''),
(170900106, '0106', 'MIT', 'Shivarudraswamy .', 'false', ''),
(170900107, '0107', 'MIT', 'Preetham Kumar', 'false', ''),
(170900108, '0108', 'MIT', 'Jayalakshmi N S', 'false', ''),
(170900109, '0109', 'MIT', 'Ciji Pearl Kurian', 'false', ''),
(170900111, '0111', 'MIT', 'Ritu Sareen', 'false', ''),
(173100102, '0102', 'MIT', 'Ashok Rao', 'false', ''),
(173100105, '0105', 'MIT', 'M Selva kumar', 'false', ''),
(102400001, '0001', 'DOS', 'Manjunath Prasad K', 'true', ''),
(122400001, '0001', 'DOS', 'Manjunath Prasad K', 'false', ''),
(132400101, '0101', 'DOS', 'Sreekumaran Nair N', 'false', ''),
(142400101, '0101', 'DOS', 'Binu V S', 'false', ''),
(142400102, '0102', 'DOS', 'Sreekumaran Nair N', 'false', ''),
(142400103, '0103', 'DOS', 'Manjunath Prasad K', 'false', ''),
(162400001, '0001', 'DOS', 'Manjunath Prasad K', 'false', ''),
(162400002, '0002', 'DOS', 'Sripathy Pnichithaya K', 'false', ''),
(162400101, '0101', 'DOS', 'Vasudeva Guddattu', 'false', ''),
(162400102, '0102', 'DOS', 'Binu V S', 'false', ''),
(162400103, '0103', 'DOS', 'Manjunath Prasad K', 'false', ''),
(172400001, '0001', 'DOS', 'Shreemathi S Mayya', 'false', ''),
(172400101, '0101', 'DOS', 'Binu V S', 'false', ''),
(133800101, '0101', 'DLIS', 'Mahabaleswara Rao', 'false', '');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `regno` int(11) NOT NULL,
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

INSERT INTO `progress` (`regno`, `institute`, `q22`, `q23`, `q24`, `q24i`, `q24ii`, `q25`) VALUES
(70900013, 'MIT', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes'),
(80100005, 'KMC', 'No', 'No', 'No', '', '', 'No'),
(102400001, 'DOS', 'No', 'No', 'No', '', '', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `workbal`
--

CREATE TABLE `workbal` (
  `regno` int(11) NOT NULL,
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

INSERT INTO `workbal` (`regno`, `institute`, `q17`, `q18`, `q19`, `q20`, `q21`) VALUES
(70900013, 'MIT', 'Excellent', 'Less than 11 hours', 'Extremely Supportive', 'Yes', 'Yes'),
(80100005, 'KMC', 'Good', 'Less than 11 hours', 'Very Supportive', 'Yes', 'Yes'),
(102400001, 'DOS', 'Excellent', '11-20 hours', 'Slightly Supportive', 'Yes', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `institute` (`institute`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`regno`),
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
  ADD KEY `institute` (`institute`);

--
-- Indexes for table `guidance`
--
ALTER TABLE `guidance`
  ADD PRIMARY KEY (`regno`),
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
  ADD KEY `institute` (`institute`);

--
-- Indexes for table `workbal`
--
ALTER TABLE `workbal`
  ADD PRIMARY KEY (`regno`),
  ADD KEY `institute` (`institute`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
