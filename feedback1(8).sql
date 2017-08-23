-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2017 at 08:41 PM
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
  `regno` int(11) DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `inst` varchar(100) DEFAULT NULL,
  `q1` varchar(200) DEFAULT NULL,
  `q2` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`regno`, `name1`, `inst`, `q1`, `q2`) VALUES
(70900013, 'Rajesh G', 'MIT', 'none', 'none2');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `regno` int(11) DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `inst` varchar(100) DEFAULT NULL,
  `q10` varchar(200) DEFAULT NULL,
  `q11` varchar(200) DEFAULT NULL,
  `q12` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`regno`, `name1`, `inst`, `q10`, `q11`, `q12`) VALUES
(70900013, 'Rajesh G', 'MIT', 'PartTime', '2-3 hours everyday', 'zxcz');

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
  `regno` int(11) DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `inst` varchar(100) DEFAULT NULL,
  `q1` varchar(200) DEFAULT NULL,
  `q2` varchar(200) DEFAULT NULL,
  `q3` varchar(200) DEFAULT NULL,
  `q4` varchar(200) DEFAULT NULL,
  `q5` varchar(200) DEFAULT NULL,
  `q6` varchar(200) DEFAULT NULL,
  `q7` varchar(200) DEFAULT NULL,
  `q8` varchar(200) DEFAULT NULL,
  `q9` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`regno`, `name1`, `inst`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`) VALUES
(70900013, 'Rajesh G', 'MIT', 'Excellent', 'Good', 'Satisfactory', 'Poor', 'Yes', 'Yes', 'Yes', 'Yes', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `guidance`
--

CREATE TABLE `guidance` (
  `regno` int(11) DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `inst` varchar(100) DEFAULT NULL,
  `q1` varchar(200) DEFAULT NULL,
  `q2` varchar(200) DEFAULT NULL,
  `q3` varchar(200) DEFAULT NULL,
  `q4` varchar(200) DEFAULT NULL,
  `q5` varchar(200) DEFAULT NULL,
  `q6` varchar(200) DEFAULT NULL,
  `q7` varchar(200) DEFAULT NULL,
  `q8` varchar(200) DEFAULT NULL,
  `q9` varchar(200) DEFAULT NULL,
  `q10` varchar(200) DEFAULT NULL,
  `q11` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guidance`
--

INSERT INTO `guidance` (`regno`, `name1`, `inst`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`) VALUES
(70900013, 'Rajesh G', 'MIT', 'Sometimes available', 'Extremely useful', 'Mostly on time', 'Encouraged', 'Twice a month', 'Yes', 'Yes', 'Moderately Supportive', 'Yes', 'Yes', 'Yes');

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
  `name` varchar(100) DEFAULT NULL,
  `gname` varchar(100) DEFAULT NULL,
  `filled` varchar(10) DEFAULT 'false',
  `inst` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phd`
--

INSERT INTO `phd` (`regno`, `pwd`, `name`, `gname`, `filled`, `inst`, `email`) VALUES
(133800101, '0101', 'Jessy A', 'Mahabaleswara Rao', 'false', 'DOLAIS', ''),
(102400001, '0001', 'Santhi Sheela Yerraguntla', 'Manjunath Prasad K', 'false', 'DOS', ''),
(122400001, '0001', 'Divya Shenoy P', 'Manjunath Prasad K', 'false', 'DOS', ''),
(132400101, '0101', 'Melissa Glenda Lewis', 'Sreekumaran Nair N', 'false', 'DOS', ''),
(142400101, '0101', 'Amitha Puranik', 'Binu V S', 'false', 'DOS', ''),
(142400102, '0102', 'Bhumika T V', 'Sreekumaran Nair N', 'false', 'DOS', ''),
(142400103, '0103', 'Nupur Nandini', 'Manjunath Prasad K', 'false', 'DOS', ''),
(162400001, '0001', 'David Raj M', 'Manjunath Prasad K', 'false', 'DOS', ''),
(162400002, '0002', 'Meghna Raviraj Karkera', 'Sripathy Pnichithaya K', 'false', 'DOS', ''),
(162400101, '0101', 'Shruti Murthy', 'Vasudeva Guddattu', 'false', 'DOS', ''),
(162400102, '0102', 'Parsekar Shradha Sadanand', 'Binu V S', 'false', 'DOS', ''),
(162400103, '0103', 'Nayan Bhat K', 'Manjunath Prasad K', 'false', 'DOS', ''),
(172400001, '0001', 'Purnima Venkat', 'Shreemathi S Mayya', 'false', 'DOS', ''),
(172400101, '0101', 'Maria Mathews', 'Binu V S', 'false', 'DOS', ''),
(80100005, '0005', 'Annapoorna K', 'Latha K S', 'false', 'KMC', ''),
(110100004, '0004', 'Siva Kumar G', 'Kiranmai S Rai', 'false', 'KMC', ''),
(110100133, '0133', 'Rishikesh Kumar', 'Kavitha Saravu', 'false', 'KMC', ''),
(120100005, '0005', 'R Huban Thomas', 'Kiranmai S Rai', 'false', 'KMC', ''),
(120100006, '0006', 'Fiona Olvitta D Souza', 'Satish Kumar Adiga', 'false', 'KMC', ''),
(120100008, '0008', 'Lydia S Quadros', 'Kumar M R', 'false', 'KMC', ''),
(120100009, '0009', 'Vanishri S Nayak', 'Sreedhara Ranganath Pai', 'false', 'KMC', ''),
(120100102, '0102', 'Suprabha .', 'Ganesh Pai C', 'false', 'KMC', ''),
(120100108, '0108', 'Sri Lakshmi Bhavani G', 'Girisha K M', 'false', 'KMC', ''),
(130100001, '0001', 'Sachin Digamber', 'Satish Kumar Adiga', 'false', 'KMC', ''),
(130100003, '0003', 'Ramya Nair M T', 'Guruprasad Kalthur', 'false', 'KMC', ''),
(130100004, '0004', 'Umesh Thonse', 'P S V N Sharma', 'false', 'KMC', ''),
(130100005, '0005', 'Sushma R K', 'Kumar M R', 'false', 'KMC', ''),
(130100006, '0006', 'Sapna Ganesh', 'Sripathy Bhat M', 'false', 'KMC', ''),
(130100101, '0101', 'Thejas K R', 'Suma Nair', 'false', 'KMC', ''),
(130100102, '0102', 'Shivakumar M', 'Leslie Edward Lewis', 'false', 'KMC', ''),
(130100103, '0103', 'Ranjini H S', 'Padmanabha Udupa E G', 'false', 'KMC', ''),
(130100104, '0104', 'Kiran Kumar N', 'Ranjan S K', 'false', 'KMC', ''),
(130100105, '0105', 'Kamat Nagesh Narayan', 'Ganesh Pai C', 'false', 'KMC', ''),
(131500001, '0001', 'Swapna S', 'Anantha Nagappa Naik', 'false', 'KMC', ''),
(140100001, '0001', 'Azadeh Bagheri', 'Pragna Rao', 'false', 'KMC', ''),
(140100002, '0002', 'Sanu Susan Jacob', 'Pragna Rao', 'false', 'KMC', ''),
(140100003, '0003', 'Ansha Patel', 'P S V N Sharma', 'false', 'KMC', ''),
(140100101, '0101', 'Prashant P Nair', 'Rajagopal K V', 'false', 'KMC', ''),
(140100102, '0102', 'Avinash M Holla', 'Sudha Vidyasagar', 'false', 'KMC', ''),
(140100103, '0103', 'Smrithi .', 'Girisha K M', 'false', 'KMC', ''),
(140100104, '0104', 'Malavika H', 'Anju Shukla', 'false', 'KMC', ''),
(140100105, '0105', 'Prasad N Shetty', 'Tom Devasia', 'false', 'KMC', ''),
(140100106, '0106', 'Anjaneyulu Konuri', 'Kumar M R', 'false', 'KMC', ''),
(141300006, '0006', 'Suganthi Martena Devadas', 'Mamatha Ballal', 'false', 'KMC', ''),
(141300007, '0007', 'Vignesh B S', 'Mamatha Ballal', 'false', 'KMC', ''),
(150100101, '0101', 'Deepak .', 'Ranjan S K', 'false', 'KMC', ''),
(150100102, '0102', 'Sohan Rodney Bangera', 'Mamatha Ballal', 'false', 'KMC', ''),
(160100001, '0001', 'M V Sandhya Kumari', 'Guruprasad Kalthur', 'false', 'KMC', ''),
(160100002, '0002', 'Prasanna L C', 'Kumar M R', 'false', 'KMC', ''),
(160100003, '0003', 'Tushar Shaw', 'Chiranjay Mukhopadhyay', 'false', 'KMC', ''),
(160100101, '0101', 'Radhakrishnan P', 'Girisha K M', 'false', 'KMC', ''),
(160100102, '0102', 'Ajit Singh', 'Tom Devasia', 'false', 'KMC', ''),
(160100103, '0103', 'Guruprasad Nayak', 'Guruprasad Kalthur', 'false', 'KMC', ''),
(160100105, '0105', 'Puneeth H S', 'Anju Shukla', 'false', 'KMC', ''),
(160100106, '0106', 'Neethukrishna K', 'Girisha K M', 'false', 'KMC', ''),
(160100107, '0107', 'Praveen Kumar S E', 'Laxminarayana Bairy K', 'false', 'KMC', ''),
(170100001, '0001', 'Sudipta Patra', 'Chiranjay Mukhopadhyay', 'false', 'KMC', ''),
(170100101, '0101', 'Parneet Kaur', 'Anju Shukla', 'false', 'KMC', ''),
(170100102, '0102', 'Prajna P Shetty', 'Nalini K', 'false', 'KMC', ''),
(170100103, '0103', 'Arpitha N Rao', 'Guruprasad Kalthur', 'false', 'KMC', ''),
(70900013, '0013', 'Rajesh G', 'N V Subba Reddy', 'true', 'MIT', ''),
(80900013, '0013', 'Bhat Sangeetha Gopal', 'Maddasani Srinivasulu', 'false', 'MIT', ''),
(90900029, '0029', 'Narendra V G', 'Hareesha K S', 'false', 'MIT', ''),
(90900039, '0039', 'Prashanth Kumar Shetty', 'Somashekara Bhat', 'false', 'MIT', ''),
(90900054, '0054', 'Salmataj S A', 'Shobha U Kamath', 'false', 'MIT', ''),
(100900016, '0016', 'Geetha .', 'Ashok Rao', 'false', 'MIT', ''),
(100900020, '0020', 'Sumana M', 'Hareesha K S', 'false', 'MIT', ''),
(100900029, '0029', 'Linda Varghese', 'V I George', 'false', 'MIT', ''),
(100900030, '0030', 'Durga Prasad', 'Niranjan N Chiplunkar', 'false', 'MIT', ''),
(100900036, '0036', 'Shobha R Prabhu', 'Vyasa Updhyaya', 'false', 'MIT', ''),
(100900037, '0037', 'Manjunath M S', 'N Yagnesh Sharma', 'false', 'MIT', ''),
(100900038, '0038', 'Shiva Prasad Shetty M', 'N V Anil Kumar', 'false', 'MIT', ''),
(100900103, '0103', 'Ravindra Mallya', 'Raghuvir Pai Ballambat', 'false', 'MIT', ''),
(110900006, '0006', 'Archana H', 'Krishnamoorthy Makkithaya', 'false', 'MIT', ''),
(110900010, '0010', 'G Muralidhar Bairy', 'Rajendra Acharya U', 'false', 'MIT', ''),
(110900012, '0012', 'Shailendra Kumar Tiwari', 'Somashekara Bhat', 'false', 'MIT', ''),
(110900014, '0014', 'Rohini R Rao', 'Krishnamoorthy Makkithaya', 'false', 'MIT', ''),
(110900022, '0022', 'Shailesh K R', 'Ciji Pearl Kurian', 'false', 'MIT', ''),
(110900033, '0033', 'Nagaraj Kamath H', 'Lewlyn Lester Raj Rodrigues', 'false', 'MIT', ''),
(110900034, '0034', 'Ananthakrishna T', 'Kumara Shama', 'false', 'MIT', ''),
(110900040, '0040', 'Sandhya  Laxmi G Navada', 'Chandrashekara  S Adiga', 'false', 'MIT', ''),
(110900051, '0051', 'Sowmya .', 'M Selva kumar', 'false', 'MIT', ''),
(110900053, '0053', 'Asha Srinivas Pai', 'Lewlyn Lester Raj Rodrigues', 'false', 'MIT', ''),
(110900116, '0116', 'Gune  Minal Milind', 'K Balakrishna', 'false', 'MIT', ''),
(113100130, '0130', 'Shubhalakshmi .', 'Subrahmanya Bhat K', 'false', 'MIT', ''),
(120900002, '0002', 'Rakesha Kakkrannaya A', 'Mohan Rao K', 'false', 'MIT', ''),
(120900005, '0005', 'Ahamed Shafeeq B M', 'Hareesha K S', 'false', 'MIT', ''),
(120900009, '0009', 'Kolekar Suchetha Viswanath', 'Radhika M Pai', 'false', 'MIT', ''),
(120900010, '0010', 'Susan G Varghese', 'Ciji Pearl Kurian', 'false', 'MIT', ''),
(120900012, '0012', 'Ramakrishna M', 'Kotegar Karunakar Annappa', 'false', 'MIT', ''),
(120900013, '0013', 'Akshay Bhat', 'Kotegar Karunakar Annappa', 'false', 'MIT', ''),
(120900014, '0014', 'Vishnumurthi Kedlaya K', 'M Sathish Kumar', 'false', 'MIT', ''),
(120900015, '0015', 'Deepangkar Sarkar', 'Mahesha M G', 'false', 'MIT', ''),
(120900018, '0018', 'Ramya S', 'Kumara Shama', 'false', 'MIT', ''),
(120900027, '0027', 'Raghavendra K Holla B', 'A S Vasudev Rao', 'false', 'MIT', ''),
(120900031, '0031', 'Madhwesh N', 'N Yagnesh Sharma', 'false', 'MIT', ''),
(120900032, '0032', 'Mahesha G T', 'Satish Shenoy B', 'false', 'MIT', ''),
(120900033, '0033', 'Aparna U', 'M Sathish Kumar', 'false', 'MIT', ''),
(120900036, '0036', 'Jayashree P K', 'Raviraj Shetty', 'false', 'MIT', ''),
(120900037, '0037', 'Dasharathraj K Shetty', 'Dinesh Acharya U', 'false', 'MIT', ''),
(120900040, '0040', 'Sachidananda H K', 'Raghunandana K', 'false', 'MIT', ''),
(120900042, '0042', 'Bipin Krishna', 'V I George', 'false', 'MIT', ''),
(120900043, '0043', 'Khyati Satish Shetty', 'Lewlyn Lester Raj Rodrigues', 'false', 'MIT', ''),
(120900046, '0046', 'Suma D', 'Dinesh Acharya U', 'false', 'MIT', ''),
(120900101, '0101', 'Rajarshi Paul', 'Shreesha Chokkadi', 'false', 'MIT', ''),
(120900102, '0102', 'Dileep M V', 'Surekha Kamath', 'false', 'MIT', ''),
(120900103, '0103', 'Syam Krishna', 'Rameash R Galigekere', 'false', 'MIT', ''),
(120900104, '0104', 'Sabu George', 'Manohar Pai M M', 'false', 'MIT', ''),
(120900106, '0106', 'Manjunath K N', 'Gopalakrishna Prabhu', 'false', 'MIT', ''),
(120900107, '0107', 'Shreema .', 'Manohar Pai M M', 'false', 'MIT', ''),
(120900109, '0109', 'Sandhya Parasnath Dubey', 'N Gopalakrishna Kini', 'false', 'MIT', ''),
(130900001, '0001', 'Smitha Ganesh Bhat', 'S Ravishankar Bhat', 'false', 'MIT', ''),
(130900002, '0002', 'Gururaj .', 'Kotegar Karunakar Annappa', 'false', 'MIT', ''),
(130900005, '0005', 'Lakshmanrao Paragond', 'Ciji Pearl Kurian', 'false', 'MIT', ''),
(130900008, '0008', 'Bindu S', 'Vinod V Thomas', 'false', 'MIT', ''),
(130900012, '0012', 'Nirmal Kumar Nigam', 'Krishnamoorthy Makkithaya', 'false', 'MIT', ''),
(130900014, '0014', 'Subbalaxmi S', 'Vytla Ramachandra Murty', 'false', 'MIT', ''),
(130900015, '0015', 'Ravishanker Baliga B', 'Raghuvir Pai Ballambat', 'false', 'MIT', ''),
(130900022, '0022', 'Krishna Prakasha K', 'Balachandra .', 'false', 'MIT', ''),
(130900023, '0023', 'P B Shanthi', 'Hareesha K S', 'false', 'MIT', ''),
(130900025, '0025', 'Vidya H C', 'Srivatsa Kumar B R', 'false', 'MIT', ''),
(130900027, '0027', 'K Arathi Bhat', 'Sudhakara G Adiga', 'false', 'MIT', ''),
(130900028, '0028', 'Derrick Ian Joshua', 'K Balakrishna', 'false', 'MIT', ''),
(130900033, '0033', 'Kannan N', 'Balaji S', 'false', 'MIT', ''),
(130900035, '0035', 'Srividya R', 'Ciji Pearl Kurian', 'false', 'MIT', ''),
(130900036, '0036', 'Vairavel P', 'Vytla Ramachandra Murty', 'false', 'MIT', ''),
(130900037, '0037', 'Kavitha Koppula', 'Kedukodi Babushri Srinivas', 'false', 'MIT', ''),
(130900038, '0038', 'R M Piragash Kumar', 'Vemuru Hema Sundara Murthy', 'false', 'MIT', ''),
(130900044, '0044', 'Acharya Sriprasad', 'Bharath Raja Guru', 'false', 'MIT', ''),
(130900046, '0046', 'Ganapathi Nayak K', 'Kotegar Karunakar Annappa', 'false', 'MIT', ''),
(130900049, '0049', 'Anjan Gudigar', 'Shreesha Chokkadi', 'false', 'MIT', ''),
(130900050, '0050', 'Ashwin Kumar Devraj', 'Raviraja Adhikari', 'false', 'MIT', ''),
(130900054, '0054', 'B S Manjunatha', 'Subrahmanya Bhat K', 'false', 'MIT', ''),
(130900055, '0055', 'Sanoop M', 'Manohar Pai M M', 'false', 'MIT', ''),
(130900057, '0057', 'Muralikrishna S N', 'Balachandra .', 'false', 'MIT', ''),
(130900058, '0058', 'Raghavendra Ganiga', 'Radhika M Pai', 'false', 'MIT', ''),
(130900059, '0059', 'Rajesh K', 'Ashalatha Nayak', 'false', 'MIT', ''),
(130900061, '0061', 'S K Sahenawaz Sarwar Shameem', 'Kotegar Karunakar Annappa', 'false', 'MIT', ''),
(130900062, '0062', 'Girija V Attigeri', 'Manohar Pai M M', 'false', 'MIT', ''),
(130900101, '0101', 'Priyodip Paul', 'Balaji S', 'false', 'MIT', ''),
(130900102, '0102', 'Sushruta S Hakkimane', 'Bharath Raja Guru', 'false', 'MIT', ''),
(130900103, '0103', 'Shreyas Suresh Rao', 'Ashalatha Nayak', 'false', 'MIT', ''),
(130900104, '0104', 'Adarsh Rag S', 'Somashekara Bhat', 'false', 'MIT', ''),
(130900106, '0106', 'Rudresh Deepak Shirwaikar', 'Dinesh Acharya U', 'false', 'MIT', ''),
(130900107, '0107', 'Redkar Shweta Anand', 'Hareesha K S', 'false', 'MIT', ''),
(140900002, '0002', 'Dayakshini .', 'Surekha Kamath', 'false', 'MIT', ''),
(140900004, '0004', 'Asish Oommen Mathew', 'Lewlyn Lester Raj Rodrigues', 'false', 'MIT', ''),
(140900006, '0006', 'Guruprasad .', 'Kumara Shama', 'false', 'MIT', ''),
(140900007, '0007', 'Supreetha B S', 'K Prabhakar Nayak (retiered)', 'false', 'MIT', ''),
(140900010, '0010', 'Sayinath Udupa N V', 'S Ravishankar Bhat', 'false', 'MIT', ''),
(140900015, '0015', 'Manjula C Belavagi', 'Balachandra .', 'false', 'MIT', ''),
(140900019, '0019', 'Ashwini Bhat', 'Nagaraj N Katagi', 'false', 'MIT', ''),
(140900020, '0020', 'Radhika Bhandary P', 'A Krishnamoorthy', 'false', 'MIT', ''),
(140900021, '0021', 'Swati Nayak', 'Pradeep G Bhat', 'false', 'MIT', ''),
(140900030, '0030', 'Swathi K S', 'B Gopalakrishna', 'false', 'MIT', ''),
(140900031, '0031', 'Vinay Madhusudanan', 'Sudhakara G Adiga', 'false', 'MIT', ''),
(140900032, '0032', 'Shashi Kumar G S', 'Niranjana S', 'false', 'MIT', ''),
(140900033, '0033', 'Srinivas G', 'Raghunandana K', 'false', 'MIT', ''),
(140900101, '0101', 'Akhil Appu Shetty', 'V I George', 'false', 'MIT', ''),
(140900102, '0102', 'Smitha R', 'Hareesha K S', 'false', 'MIT', ''),
(140900103, '0103', 'Bharath K Bhat', 'Raviraja Adhikari', 'false', 'MIT', ''),
(140900104, '0104', 'Chandrakantha Bekal', 'Satish Shenoy B', 'false', 'MIT', ''),
(140900105, '0105', 'Abhilash K Pai', 'Kotegar Karunakar Annappa', 'false', 'MIT', ''),
(140900106, '0106', 'Sruthi Balakrishnan', 'H N Udaya Shankar', 'false', 'MIT', ''),
(140900108, '0108', 'Rohan Pinto', 'Kumara Shama', 'false', 'MIT', ''),
(140900109, '0109', 'Adesh N D', 'Renuka A', 'false', 'MIT', ''),
(150900010, '0010', 'Rashmi Naveen Raj', 'Ashalatha Nayak', 'false', 'MIT', ''),
(150900011, '0011', 'Santhosha Kamath', 'Sanjay Singh', 'false', 'MIT', ''),
(150900013, '0013', 'M Prasanna Kumar', 'A Krishnamoorthy', 'false', 'MIT', ''),
(150900014, '0014', 'Anitha Marina Colaco', 'Ciji Pearl Kurian', 'false', 'MIT', ''),
(150900015, '0015', 'Vinayambika S Bhat', 'I Thirunavukkarasu', 'false', 'MIT', ''),
(150900016, '0016', 'Suhas M V', 'Anitha H', 'false', 'MIT', ''),
(150900017, '0017', 'Rashmi Devdas Hegde', 'Tungesh G M', 'false', 'MIT', ''),
(150900019, '0019', 'Bhargav J Bhatkalkar', 'Srikanth Prabhu', 'false', 'MIT', ''),
(150900021, '0021', 'Sampath Kumar V S', 'Nityananda Pai', 'false', 'MIT', ''),
(150900033, '0033', 'A Venkatesh', 'Vemuru Hema Sundara Murthy', 'false', 'MIT', ''),
(150900035, '0035', 'Praveen Kumar Reddy Y', 'K Balakrishna', 'false', 'MIT', ''),
(150900041, '0041', 'Aneesha Acharya K', 'Somashekara Bhat', 'false', 'MIT', ''),
(150900043, '0043', 'Nisha B K', 'K Balakrishna', 'false', 'MIT', ''),
(150900044, '0044', 'Bhagya R Navada', 'Santhosh K V', 'false', 'MIT', ''),
(150900054, '0054', 'Sowmya R', 'Ciji Pearl Kurian', 'false', 'MIT', ''),
(150900055, '0055', 'Vishnu Sharma A', 'H N Udaya Shankar', 'false', 'MIT', ''),
(150900101, '0101', 'Joyceline Pravena D', 'Bharath Raja Guru', 'false', 'MIT', ''),
(150900102, '0102', 'Girish S Chiniwalar', 'Vijay G S', 'false', 'MIT', ''),
(150900104, '0104', 'Geethu M', 'Divyashree M S', 'false', 'MIT', ''),
(150900105, '0105', 'Neerada Meenakshi Warrier', 'Praveen Kumar', 'false', 'MIT', ''),
(150900106, '0106', 'Ananda Hegde', 'Sathyashankara Sharma', 'false', 'MIT', ''),
(150900107, '0107', 'Chiranjeevi H S', 'Manjula Shenoy K', 'false', 'MIT', ''),
(153100105, '0105', 'Indudhar Panduranga Vali', 'Pramoda Kumara Shetty', 'false', 'MIT', ''),
(160900003, '0003', 'Dhanalakshmi .', 'Kiran Kamath', 'false', 'MIT', ''),
(160900004, '0004', 'Manikandan A', 'Dayananda Pai K', 'false', 'MIT', ''),
(160900010, '0010', 'Lavanya M', 'Vytla Ramachandra Murty', 'false', 'MIT', ''),
(160900011, '0011', 'Anjan N Padmasali', 'Savitha G Kini', 'false', 'MIT', ''),
(160900015, '0015', 'Manoj R', 'Harish S V', 'false', 'MIT', ''),
(160900017, '0017', 'Chethan K N', 'Satish Shenoy B', 'false', 'MIT', ''),
(160900018, '0018', 'Gurumurthy B M', 'Sathyashankara Sharma', 'false', 'MIT', ''),
(160900025, '0025', 'Harisha S R', 'Sathyashankara Sharma', 'false', 'MIT', ''),
(160900026, '0026', 'Padmaraj N H', 'Dayananda Pai K', 'false', 'MIT', ''),
(160900027, '0027', 'D Anu Radha', 'Srivatsa Kumar B R', 'false', 'MIT', ''),
(160900028, '0028', 'Jamaluddin Hindi', 'U Achutha Kini', 'false', 'MIT', ''),
(160900030, '0030', 'Amar Murthy Ambarkar', 'Raghunandana K', 'false', 'MIT', ''),
(160900032, '0032', 'Eadala Sarath Yadav', 'I Thirunavukkarasu', 'false', 'MIT', ''),
(160900033, '0033', 'Manjunath Shettar', 'U Achutha Kini', 'false', 'MIT', ''),
(160900035, '0035', 'Radhika Kamath', 'Mamatha Balachandra', 'false', 'MIT', ''),
(160900040, '0040', 'Nevin Augustine', 'Meenatchi Sundaram S', 'false', 'MIT', ''),
(160900046, '0046', 'srinivasan C R', 'Meenatchi Sundaram S', 'false', 'MIT', ''),
(160900048, '0048', 'Bharathi .', 'Gopalakrishna Prabhu', 'false', 'MIT', ''),
(160900049, '0049', 'Mukund Kumar Menon', 'V I George', 'false', 'MIT', ''),
(160900050, '0050', 'Pavan Hiremath', 'Sathyashankara Sharma', 'false', 'MIT', ''),
(160900051, '0051', 'Ramakrishna Kini K', 'Muddu Madakyaru', 'false', 'MIT', ''),
(160900101, '0101', 'Anusha Prabhu', 'Naresh Kumar Mani', 'false', 'MIT', ''),
(160900103, '0103', 'Patil Suhas Vijay', 'Balakrishna Rao K', 'false', 'MIT', ''),
(160900104, '0104', 'Gopal C M', 'K Balakrishna', 'false', 'MIT', ''),
(160900105, '0105', 'Sameena Begum Pathan', 'P C Siddalingaswamy', 'false', 'MIT', ''),
(160900106, '0106', 'Phalguna P S', 'Kamath Dattaguru Vinayak', 'false', 'MIT', ''),
(160900107, '0107', 'Cifha Crecil Dias', 'Surekha Kamath', 'false', 'MIT', ''),
(160900108, '0108', 'Girish H', 'Raghuvir Pai Ballambat', 'false', 'MIT', ''),
(160900109, '0109', 'Vikas R Bhat', 'Anitha H', 'false', 'MIT', ''),
(160900110, '0110', 'Pooja Prabhu', 'Kotegar Karunakar Annappa', 'false', 'MIT', ''),
(160900112, '0112', 'Josy Elsa Varghese', 'Balachandra .', 'false', 'MIT', ''),
(160900113, '0113', 'Navya Thirumaleshwar Hegde', 'V I George', 'false', 'MIT', ''),
(160900115, '0115', 'Deblina Das', 'M Ramananda Bhat', 'false', 'MIT', ''),
(163100101, '0101', 'Prasanna Poojary', 'Harikrishnan P K', 'false', 'MIT', ''),
(163100102, '0102', 'Nagabhushan J Choudhari', 'Raviprakash Y', 'false', 'MIT', ''),
(163100104, '0104', 'Vinaya P P', 'Vyasa Updhyaya', 'false', 'MIT', ''),
(170900001, '0001', 'Veena K M', 'Manjula Shenoy K', 'false', 'MIT', ''),
(170900002, '0002', 'Pramod Bhat Nempu', 'Jayalakshmi N S', 'false', 'MIT', ''),
(170900006, '0006', 'Shwetha Rai', 'Geetha M', 'false', 'MIT', ''),
(170900007, '0007', 'Diana Olivia', 'Ashalatha Nayak', 'false', 'MIT', ''),
(170900008, '0008', 'Akshay K C', 'Balachandra .', 'false', 'MIT', ''),
(170900009, '0009', 'Bhagyashree .', 'H N Udaya Shankar', 'false', 'MIT', ''),
(170900010, '0010', 'Sarun Soman', 'Ciji Pearl Kurian', 'false', 'MIT', ''),
(170900020, '0020', 'Amrithalakshmi .', 'Pradeep G Bhat', 'false', 'MIT', ''),
(170900021, '0021', 'Shahistha .', 'Sudhakara G Adiga', 'false', 'MIT', ''),
(170900022, '0022', 'Sandhya S Pai', 'Baiju T', 'false', 'MIT', ''),
(170900023, '0023', 'Vrunda R', 'Divyashree M S', 'false', 'MIT', ''),
(170900024, '0024', 'V Sravani', 'Santhosh K V', 'false', 'MIT', ''),
(170900025, '0025', 'P Chinchu Sai Babu', 'Muddu Madakyaru', 'false', 'MIT', ''),
(170900026, '0026', 'Tanuja Shailesh', 'Ashalatha Nayak', 'false', 'MIT', ''),
(170900027, '0027', 'Nausha Shetty', 'Mohandas Chadaga', 'false', 'MIT', ''),
(170900101, '0101', 'Rajesh .', 'Sathyashankara Sharma', 'false', 'MIT', ''),
(170900104, '0104', 'Harish Prabhu', 'I Thirunavukkarasu', 'false', 'MIT', ''),
(170900105, '0105', 'Vidya Rao', 'Prema K V', 'false', 'MIT', ''),
(170900106, '0106', 'Deekshitha S Nayak', 'Shivarudraswamy .', 'false', 'MIT', ''),
(170900107, '0107', 'Sumaiya Pathan', 'Preetham Kumar', 'false', 'MIT', ''),
(170900108, '0108', 'Bhargavi K M', 'Jayalakshmi N S', 'false', 'MIT', ''),
(170900109, '0109', 'Sanjeev Kumar T M', 'Ciji Pearl Kurian', 'false', 'MIT', ''),
(170900111, '0111', 'Goutam Mohan Pawaskar', 'Ritu Sareen', 'false', 'MIT', ''),
(173100102, '0102', 'Riya Thomas', 'Ashok Rao', 'false', 'MIT', ''),
(173100105, '0105', 'Sangeetha D N', 'M Selva kumar', 'false', 'MIT', ''),
(152800001, '0001', 'P Arathi Rao', 'Hitesh Shah', 'false', 'DOPH', ''),
(152800002, '0002', 'Ida D souza', 'Lena Ashok', 'false', 'DOPH', ''),
(162800001, '0001', 'Usha Rani', 'Leslie Edward Lewis', 'false', 'DOPH', ''),
(143500001, '0001', 'Aswathy Raj S', 'Arunkumar G', 'false', 'DOV', ''),
(153500001, '0001', 'Sudheesh N', 'Arunkumar G', 'false', 'DOV', ''),
(173500001, '0001', 'Santhosha Devadiga', 'Arun ', 'false', 'DOV', ''),
(101700104, '0104', 'Puspendu Paladhi', 'Guruprasad K P', 'false', 'MLSC', ''),
(111700002, '0002', 'Jayakrishna Nayak', 'Gopinath P M', 'false', 'MLSC', ''),
(111700003, '0003', 'Smitha Bhat', 'Saadi Abdul Vahab', 'false', 'MLSC', ''),
(111700004, '0004', 'Kavitha .', 'T S Murali', 'false', 'MLSC', ''),
(111700005, '0005', 'Bharath Prasad A S', 'T S Murali', 'false', 'MLSC', ''),
(111700121, '0121', 'Abitha Thomas', 'Vidhu Sankar Babu', 'false', 'MLSC', ''),
(111700127, '0127', 'Chinchu Jayaprakash', 'Satyamoorthy K', 'false', 'MLSC', ''),
(111700129, '0129', 'A Balakrishnan', 'Manjunath B Joshi', 'false', 'MLSC', ''),
(111700131, '0131', 'Shubhankar Das', 'Satish Rao B S', 'false', 'MLSC', ''),
(111700134, '0134', 'Yashvanthi Borkar', 'Moka Raja Sekhar', 'false', 'MLSC', ''),
(121700001, '0001', 'Venu S', 'Manjunath B Joshi', 'false', 'MLSC', ''),
(121700002, '0002', 'Vinay Koshy Varghese', 'Satyamoorthy K', 'false', 'MLSC', ''),
(121700101, '0101', 'Suma Prabhu', 'Satish Rao B S', 'false', 'MLSC', ''),
(121700102, '0102', 'Raghu K S', 'Guruprasad K P', 'false', 'MLSC', ''),
(131500002, '0002', 'Bhaskar Ballal', 'Narasimhan S (Now he is in Biotech MIT)', 'false', 'MLSC', ''),
(131700101, '0101', 'Deepika V Bhat', 'T S Murali', 'false', 'MLSC', ''),
(131700102, '0102', 'Manik Vohra', 'Padmalatha Rai S', 'false', 'MLSC', ''),
(131700103, '0103', 'Monica Shirley Mani', 'Herman Sunil D Souza', 'false', 'MLSC', ''),
(131700104, '0104', 'Vaibhav Shukla', 'Satyamoorthy K', 'false', 'MLSC', ''),
(131700106, '0106', 'Swathy P S', 'A Muthusamy', 'false', 'MLSC', ''),
(131700108, '0108', 'Ipsita Pujari', 'Vidhu Sankar Babu', 'false', 'MLSC', ''),
(141700001, '0001', 'Manoj Bhat K', 'Padmalatha Rai S', 'false', 'MLSC', ''),
(141700002, '0002', 'Bharath H R', 'Krishna Kishore Mahato', 'false', 'MLSC', ''),
(141700101, '0101', 'Mangala Hegde', 'Manjunath B Joshi', 'false', 'MLSC', ''),
(141700103, '0103', 'Raghushaker C R', 'Krishna Kishore Mahato', 'false', 'MLSC', ''),
(141700104, '0104', 'Kiran K R', 'A Muthusamy', 'false', 'MLSC', ''),
(141700105, '0105', 'Melisa Jovita Andrade', 'Satyamoorthy K', 'false', 'MLSC', ''),
(151700001, '0001', 'Supriti Ghosh', 'Satyamoorthy K', 'false', 'MLSC', ''),
(151700002, '0002', 'Shreesha Bhat K', 'Satyamoorthy K', 'false', 'MLSC', ''),
(161700001, '0001', 'Keshava Prasad', 'Satyamoorthy K', 'false', 'MLSC', ''),
(161700102, '0102', 'Anu Radha Sharma', 'Padmalatha Rai S', 'false', 'MLSC', ''),
(171700001, '0001', 'Sima Chaudhari', 'Satyamoorthy K', 'false', 'MLSC', ''),
(171700002, '0002', 'Raviprasad K V', 'Sanjiban Chakrabarty', 'false', 'MLSC', ''),
(171700102, '0102', 'Neena George', 'Satyamoorthy K', 'false', 'MLSC', ''),
(171700103, '0103', 'Anjali Warrier', 'T S Murali', 'false', 'MLSC', ''),
(171700104, '0104', 'Divya .', 'Shama Prasada K', 'false', 'MLSC', ''),
(124000101, '0101', 'Devaraja H M', 'Mohini Gupta', 'false', 'MCNS', ''),
(164000101, '0101', 'Sanna Gulati', 'Debbijoy Bhattacharya', 'false', 'MCNS', ''),
(174000101, '0101', 'Suvedha Suresh Naik', 'Kazuyuki Furuuchi', 'false', 'MCNS', ''),
(112900116, '0116', 'Praveen U Devangad', 'Santhosh Chidangil', 'false', 'DAMP', ''),
(112900118, '0118', 'Surekha B', 'Santhosh Chidangil', 'false', 'DAMP', ''),
(112900119, '0119', 'Maktumhusen Tamboli', 'Santhosh Chidangil', 'false', 'DAMP', ''),
(122900101, '0101', 'Samvit G Mennon', 'Suresh D Kulkarni', 'false', 'DAMP', ''),
(122900102, '0102', 'Vanessa Rozelle Maria Rodrigues', 'Santhosh Chidangil', 'false', 'DAMP', ''),
(132900101, '0101', 'Jijo Easo George', 'Sajan D George', 'false', 'DAMP', ''),
(132900102, '0102', 'Muhammed Shameem K M', 'Unnikrishnan V K', 'false', 'DAMP', ''),
(132900103, '0103', 'Shilpa T', 'Abdul Ajees Abdul Salam', 'false', 'DAMP', ''),
(152900002, '0002', 'Yogesha M', 'Santhosh Chidangil', 'false', 'DAMP', ''),
(152900025, '0025', 'Bijay Kumar Barik', 'Rajeev Kumar Sinha', 'false', 'DAMP', ''),
(152900026, '0026', 'Surya Harikrishnan', 'Unnikrishnan V K', 'false', 'DAMP', ''),
(152900027, '0027', 'Choudhari Khoobaram Subharam', 'Sajan D George', 'false', 'DAMP', ''),
(162900002, '0002', 'Deepak Hebbar N', 'Suresh D Kulkarni', 'false', 'DAMP', ''),
(162900101, '0101', 'Shivanand H Nannuri', 'Sajan D George', 'false', 'DAMP', ''),
(162900102, '0102', 'Reena V John', 'Santhosh Chidangil', 'false', 'DAMP', ''),
(90600008, '0008', 'Pawan G Nayak', 'Sreedhara Ranganath Pai', 'false', 'MCOPS', ''),
(90600021, '0021', 'Vasudev Shenoy M', 'M Mukhyaprana Prabhu', 'false', 'MCOPS', ''),
(90600022, '0022', 'Amitabha Ghosh', 'Sreedhara C S', 'false', 'MCOPS', ''),
(100600001, '0001', 'Venkatesh Kamath B', 'V M Subramanyam', 'false', 'MCOPS', ''),
(110600005, '0005', 'Muhammed Mubeen', 'Suvarna G Kini', 'false', 'MCOPS', ''),
(110600006, '0006', 'Aravinda Pai', 'Jayashree B S', 'false', 'MCOPS', ''),
(110600013, '0013', 'H V Keerthi Prashanth', 'Sreedhara Ranganath Pai', 'false', 'MCOPS', ''),
(110600104, '0104', 'Sukriti Nigam', 'Jayashree B S', 'false', 'MCOPS', ''),
(120600001, '0001', 'Prasanna Kumar', 'Ravindra Prabhu A', 'false', 'MCOPS', ''),
(120600004, '0004', 'Ruchi Verma', 'Gautham Shenoy G', 'false', 'MCOPS', ''),
(120600006, '0006', 'Ayyadurai S', 'V M Subramanyam', 'false', 'MCOPS', ''),
(120600103, '0103', 'Devkar Raviraj Anand', 'M Manjunath Setty', 'false', 'MCOPS', ''),
(120600104, '0104', 'Shilpee .', 'Chandrashekar K S', 'false', 'MCOPS', ''),
(130600001, '0001', 'Swapnil Jayant Dengle', 'Krishna Murthy Bhat', 'false', 'MCOPS', ''),
(130600003, '0003', 'Asim Priyendu', 'Anantha Nagappa Naik', 'false', 'MCOPS', ''),
(130600004, '0004', 'Vasudev Pai', 'Sreedhara C S', 'false', 'MCOPS', ''),
(130600006, '0006', 'Lokhande Alkeshkumar Pandharinath', 'Unnikrishnan M K', 'false', 'MCOPS', ''),
(130600007, '0007', 'Chonkar Ankita Deepak', 'Nayanabhirama Udupa', 'false', 'MCOPS', ''),
(130600008, '0008', 'Seena K X', 'M Manjunath Setty', 'false', 'MCOPS', ''),
(130600009, '0009', 'John Preshanth Kumar P', 'H Manjunath Hande', 'false', 'MCOPS', ''),
(130600010, '0010', 'Deepak Bhere', 'Sreedhara Ranganath Pai', 'false', 'MCOPS', ''),
(130600011, '0011', 'Amol Baban Khade', 'Gautham Shenoy G', 'false', 'MCOPS', ''),
(130600101, '0101', 'Managuli Renuka Suresh', 'Srinivas Mutalik', 'false', 'MCOPS', ''),
(130600102, '0102', 'Bhavana B Bhat', 'D Sreedhar', 'false', 'MCOPS', ''),
(130600103, '0103', 'Rajalekshmi M', 'Sreedhara C S', 'false', 'MCOPS', ''),
(140600001, '0001', 'Nimmy Kumar', 'Richard Lobo', 'false', 'MCOPS', ''),
(140600002, '0002', 'Akhila H S', 'Unnikrishnan M K', 'false', 'MCOPS', ''),
(140600003, '0003', 'Anuraag Muralidharan', 'J Venkata Rao', 'false', 'MCOPS', ''),
(140600004, '0004', 'Magith Thambi', 'Kurupath Radhakrishnan (approved as special case)', 'false', 'MCOPS', ''),
(140600101, '0101', 'Subhankar Biswas', 'Mallikarjuna Rao C', 'false', 'MCOPS', ''),
(140600102, '0102', 'Sanchari Basu Mallik', 'Rekha Raghuveer Shenoy', 'false', 'MCOPS', ''),
(140600103, '0103', 'Abhishek Shah', 'Richard Lobo', 'false', 'MCOPS', ''),
(140600104, '0104', 'Aarti Abhishek Shah', 'Yogendra Nayak', 'false', 'MCOPS', ''),
(140600105, '0105', 'Varsha A Prabhu', 'Unnikrishnan M K', 'false', 'MCOPS', ''),
(150600001, '0001', 'Karthik Gourishetti', 'Rekha Raghuveer Shenoy', 'false', 'MCOPS', ''),
(150600002, '0002', 'Polu Picheswara Rao', 'Nayanabhirama Udupa', 'false', 'MCOPS', ''),
(150600003, '0003', 'Jyothsna M .', 'Srinivas Mutalik', 'false', 'MCOPS', ''),
(150600004, '0004', 'Aswathi R Hegde', 'Srinivas Mutalik', 'false', 'MCOPS', ''),
(150600005, '0005', 'Aditya Kiran Gatta', 'J Venkata Rao', 'false', 'MCOPS', ''),
(150600101, '0101', 'Ashutosh Prasad Tiwari', 'Varadaraj Bhat G', 'false', 'MCOPS', ''),
(150600102, '0102', 'Elizabeth Mary Mathew', 'Sudheer Moorkoth', 'false', 'MCOPS', ''),
(150600103, '0103', 'Vivek Ghate M', 'Shaila Angela Lewis', 'false', 'MCOPS', ''),
(160600001, '0001', 'Amita Rai', 'Raghavendra Shetty', 'false', 'MCOPS', ''),
(160600002, '0002', 'Koteshwara Ananthamurthy', 'V M Subramanyam', 'false', 'MCOPS', ''),
(160600101, '0101', 'Raut Sushil Yadaorao', 'Srinivas Mutalik', 'false', 'MCOPS', ''),
(160600102, '0102', 'Rajdeep Ray', 'Gautham Shenoy G', 'false', 'MCOPS', ''),
(160600103, '0103', 'Reema Narayan', 'Usha Yogendra Nayak', 'false', 'MCOPS', ''),
(160600104, '0104', 'K S Navyasree', 'Krishna Murthy Bhat', 'false', 'MCOPS', ''),
(160600105, '0105', 'Athira B', 'Girish Thunga P', 'false', 'MCOPS', ''),
(170600001, '0001', 'Nancy V Philip', 'Raghu Chandrashekhar H', 'false', 'MCOPS', ''),
(170600002, '0002', 'Shreya A B', 'Srinivas Mutalik', 'false', 'MCOPS', ''),
(170600101, '0101', 'Divya Gopalan', 'Nayanabhirama Udupa', 'false', 'MCOPS', ''),
(120300001, '0001', 'Aparna I N', 'Satish Shenoy B', 'false', 'MCODS', ''),
(131400039, '0039', 'G Parvadhavardhini', 'H G Joshi', 'false', 'WGSHA', ''),
(141400026, '0026', 'Sethu H S', 'Asha Kamath', 'false', 'WGSHA', ''),
(171400037, '0037', 'Paritosh Dabral', 'Senthil Kumaran P', 'false', 'WGSHA', ''),
(90500002, '0002', 'Daisy Josphine Lobo', 'Ravindra Prabhu A', 'false', 'MCON', ''),
(110500002, '0002', 'Leena Sequira', 'Ravindra Prabhu A', 'false', 'MCON', ''),
(120500001, '0001', 'Sulochana B', 'Dinesh M Nayak', 'false', 'MCON', ''),
(120500002, '0002', 'Latha T', 'Anil K Bhat', 'false', 'MCON', ''),
(120500003, '0003', 'Binu Margaret E', 'Leslie Edward Lewis', 'false', 'MCON', ''),
(120500004, '0004', 'Sushmitha Ramona Karkada', 'Parvati V Bhat', 'false', 'MCON', ''),
(120500005, '0005', 'Sangeetha Priyadarshini', 'Pramod Kumar', 'false', 'MCON', ''),
(120500006, '0006', 'Melita Sheilini', 'H Manjunath Hande', 'false', 'MCON', ''),
(120500007, '0007', 'Flavia Castelino', 'M Mukhyaprana Prabhu', 'false', 'MCON', ''),
(120500008, '0008', 'Yashoda Sathish', 'Leslie Edward Lewis', 'false', 'MCON', ''),
(120500102, '0102', 'Aldrin Vas', 'Elsa Sanatombi Devi', 'false', 'MCON', ''),
(130500001, '0001', 'Anjalin D Souza', 'Dinesh M Nayak', 'false', 'MCON', ''),
(130500002, '0002', 'Ansuya .', 'Baby S Nayak', 'false', 'MCON', ''),
(130500101, '0101', 'Ramesh C', 'Baby S Nayak', 'false', 'MCON', ''),
(130500102, '0102', 'Shejila C H', 'Mamatha Shivanand Pai', 'false', 'MCON', ''),
(130500103, '0103', 'Vishnu Renjith', 'Anice George', 'false', 'MCON', ''),
(131800001, '0001', 'Binil V', 'Christopher Sudhaker', 'false', 'MCON', ''),
(131800002, '0002', 'Soumya Christabel', 'Christopher Sudhaker', 'false', 'MCON', ''),
(151800001, '0001', 'Radhika R Pai', 'Ravikiran Ongole', 'false', 'MCON', ''),
(160500001, '0001', 'Anil Raj A', 'Judith Angelitta Noronha', 'false', 'MCON', ''),
(90900030, '0030', 'Sundaresean C', 'P R Venkateswaran (Left the Institution)', 'false', 'MCFIS', ''),
(100900008, '0008', 'J Mohan Kumar', 'P R Venkateswaran (Left the Institution)', 'false', 'MCFIS', ''),
(110900008, '0008', 'Ravindra B V', 'N Sriraam', 'false', 'MCFIS', ''),
(110900031, '0031', 'Sathyendranath Malli', 'Nagesh H R', 'false', 'MCFIS', ''),
(110900032, '0032', 'Deepak Rao', 'Nagesh H R', 'false', 'MCFIS', ''),
(121000020, '0020', 'Darryl Jeethesh Dsouza', 'H G Joshi', 'false', 'MCFIS', ''),
(121000021, '0021', 'Raghavendra Prabhu', 'H G Joshi', 'false', 'MCFIS', ''),
(131000024, '0024', 'Madhushankara M', 'Somashekara Bhat', 'false', 'MCFIS', ''),
(131000042, '0042', 'Nandish S', 'Gopalakrishna Prabhu', 'false', 'MCFIS', ''),
(131000053, '0053', 'Chaitanya C V S', 'P R Venkateswaran (Left the Institution)', 'false', 'MCFIS', ''),
(141000003, '0003', 'Sandeep Patil H G', 'Ramkumar P S', 'false', 'MCFIS', ''),
(141000022, '0022', 'Vidya Kudva', 'Keerthana I', 'false', 'MCFIS', ''),
(151000036, '0036', 'Roopa B Hegde', 'Keerthana I', 'false', 'MCFIS', ''),
(161000036, '0036', 'Arockiaraj S', 'Harishchandra Hebbar', 'false', 'MCFIS', ''),
(161000102, '0102', 'Santosh N Vasist', 'Parvati V Bhat', 'false', 'MCFIS', ''),
(113100111, '0111', 'John D Dominic G', 'M P Yashoda', 'false', 'DOS', ''),
(123100104, '0104', 'Chaya Ravi Gobbiner', 'Dhananjaya Kekuda', 'false', 'DOS', ''),
(133100006, '0006', 'Muhammed Ali A V', 'Dhananjaya Kekuda', 'false', 'DOS', ''),
(133100029, '0029', 'Akshatha .', 'Sudha D Kamath', 'false', 'DOS', ''),
(133100056, '0056', 'Chaitra U', 'Mohan Rao K', 'false', 'DOS', ''),
(133100101, '0101', 'Hamsa Nayak', 'Kuncham Shyam Prasad', 'false', 'DOS', ''),
(133100102, '0102', 'Hemant Hegde', 'Shetty Nitin Kumar Sudhakar', 'false', 'DOS', ''),
(133100103, '0103', 'Ashith V K', 'Gowrish Rao', 'false', 'DOS', ''),
(133100104, '0104', 'Pooja R Kamath', 'Dhanya Sunil', 'false', 'DOS', ''),
(133100105, '0105', 'Harinakshi karkera', 'Nagaraj N Katagi', 'false', 'DOS', ''),
(143100001, '0001', 'Lalitha Devi B', 'Mohan Rao K', 'false', 'DOS', ''),
(143100101, '0101', 'Charitha B P', 'Padmalatha R Rao', 'false', 'DOS', ''),
(143100103, '0103', 'Sumanth Joishy', 'Rajendra B V', 'false', 'DOS', ''),
(153100020, '0020', 'Vinod Hegde', 'Sudha D Kamath', 'false', 'DOS', ''),
(153100034, '0034', 'Sindhu H S', 'Rajendra B V', 'false', 'DOS', ''),
(153100038, '0038', 'Shyam Prasad K', 'Ashok Rao', 'false', 'DOS', ''),
(153100039, '0039', 'Priya K', 'Gowrish Rao', 'false', 'DOS', ''),
(153100056, '0056', 'Shalini .', 'Padmalatha R Rao', 'false', 'DOS', ''),
(153100101, '0101', 'Rajashekhar V Choudhari', 'Manjunatha Gudekote', 'false', 'DOS', ''),
(153100103, '0103', 'Gowtham H J', 'Pradeep G Bhat', 'false', 'DOS', ''),
(153100104, '0104', 'Rashmitha .', 'Mahesha M G', 'false', 'DOS', ''),
(163100029, '0029', 'Manohara J D', 'M P Yashoda', 'false', 'DOS', ''),
(163100103, '0103', 'Akshatha N', 'M P Yashoda', 'false', 'DOS', ''),
(163100105, '0105', 'Sarvajith M S', ' ', 'false', 'DOS', ''),
(163100106, '0106', 'Albin Antony', ' ', 'false', 'DOS', ''),
(163100107, '0107', 'Aparna Prasad D', 'Maddasani Srinivasulu', 'false', 'DOS', ''),
(173100011, '0011', 'Pavithra K S', 'M P Yashoda', 'false', 'DOS', ''),
(173100104, '0104', 'Jyoti Shetty', 'Sudhakara G Adiga', 'false', 'DOS', ''),
(123700017, '0017', 'Pradeep G Kini', 'N K Garg (Left the institution)', 'false', 'MSAP', ''),
(123700019, '0019', 'Sumana .', 'Ganapayya Bhat P', 'false', 'MSAP', ''),
(173700003, '0003', 'Vidya Rao', 'Nandineni Rama Devi', 'false', 'MSAP', ''),
(90900052, '0052', 'Bhat Vrishali Narayana', 'Pratap Chandra Biswal', 'false', 'MIOM', ''),
(151200101, '0101', 'Prathibha Patel M', 'V K Ranjith', 'false', 'MIOM', ''),
(151200102, '0102', 'Badrinarayan S Ramaprasad', 'S Lakshmi Narayanan', 'false', 'MIOM', ''),
(151200103, '0103', 'Ankitha Shetty', 'Savitha ..', 'false', 'MIOM', ''),
(110900057, '0057', 'Satish Kumar', 'H G Joshi', 'false', 'DOC', ''),
(122600035, '0035', 'Priyanka Pandey', 'Suresh Ramana Mayya', 'false', 'DOC', ''),
(132600020, '0020', 'Vikram Baliga K', 'H G Joshi', 'false', 'DOC', ''),
(132600021, '0021', 'Jose Mamman', 'H G Joshi', 'false', 'DOC', ''),
(152600012, '0012', 'Vishwanath Pai M', 'Suresh Ramana Mayya', 'false', 'DOC', ''),
(172600001, '0001', 'Adithya D Shetty', 'Sandeep Shenoy', 'false', 'DOC', ''),
(122700101, '0101', 'Guruswamy Vignesh Ram', 'Arvind Kumar', 'false', 'DOG', ''),
(132700016, '0016', 'Anand V', 'Arvind Kumar', 'false', 'DOG', ''),
(132700101, '0101', 'Dhanasree Jayaram', 'Nanda Kishor MS', 'false', 'DOG', ''),
(142700028, '0028', 'Alok Mohan', 'Arvind Kumar', 'false', 'DOG', ''),
(162700101, '0101', 'Ramu C M', 'Monish Tourangbam', 'false', 'DOG', ''),
(163300024, '0024', 'Devika Rani K', 'Neeta Inamdar', 'false', 'MCFES', ''),
(163300101, '0101', 'Pranjali Kirloskar', 'Neeta Inamdar', 'false', 'MCFES', ''),
(143600102, '0102', 'Tapswi H M', 'Meera Baindur', 'false', 'MCFPAH', ''),
(143600103, '0103', 'Sonia Ghalian', 'Nikhil Govind', 'false', 'MCFPAH', ''),
(153600101, '0101', 'Srajana Jayant Kaikini', 'Sundar Sarukkai', 'false', 'MCFPAH', ''),
(163600101, '0101', 'Vivek Kumar R', 'Apaar Kumar', 'false', 'MCFPAH', ''),
(91100006, '0006', 'Payal Katyal', 'Kavitha Raja', 'false', 'MCOAHS', ''),
(111100002, '0002', 'Abraham Samuel Babu', 'Padmakumar R', 'false', 'MCOAHS', ''),
(111100006, '0006', 'Dola Saha', 'Unnikrishnan B', 'false', 'MCOAHS', ''),
(121100001, '0001', 'Vinita Amruthraj Acharya', 'P S V N Sharma', 'false', 'MCOAHS', ''),
(121100002, '0002', 'Karvannan H', 'Raj Devashis Chakravarty', 'false', 'MCOAHS', ''),
(121100004, '0004', 'Krishnananda Nayak', 'Pratap Kumar Narayan', 'false', 'MCOAHS', ''),
(121100101, '0101', 'Srilatha .', 'Kavitha Raja', 'false', 'MCOAHS', ''),
(131100001, '0001', 'Kishan M M', 'Rajashekhar B', 'false', 'MCOAHS', ''),
(131100002, '0002', 'S Suresh', 'Rajagopal K V', 'false', 'MCOAHS', ''),
(131100003, '0003', 'Kusumakshi .', 'Shobha K L', 'false', 'MCOAHS', ''),
(131100004, '0004', 'Asha Patil', 'Mary Mathew', 'false', 'MCOAHS', ''),
(131100005, '0005', 'Jyothi Thomas', 'Gogate Parikshit Madhav', 'false', 'MCOAHS', ''),
(131100006, '0006', 'Sahana A', 'Bhamini K Rao', 'false', 'MCOAHS', ''),
(131100007, '0007', 'Archana G', 'Krishna Y', 'false', 'MCOAHS', ''),
(131100008, '0008', 'K R Banumathe', 'P S V N Sharma', 'false', 'MCOAHS', ''),
(131100101, '0101', 'Gunjawate Dhanshree Rajesh', 'Venkataraja Aithal U', 'false', 'MCOAHS', ''),
(131100102, '0102', 'Sonia Khurana', 'Bhamini K Rao', 'false', 'MCOAHS', ''),
(141100001, '0001', 'Aju Abraham', 'Krishna Y', 'false', 'MCOAHS', ''),
(141100002, '0002', 'Kiran S', 'Gopeekrishnan .', 'false', 'MCOAHS', ''),
(141100003, '0003', 'Sheela S', 'Venkataraja Aithal U', 'false', 'MCOAHS', ''),
(141100004, '0004', 'Kotian Rahul Pratap', 'Prakashini K', 'false', 'MCOAHS', ''),
(141100005, '0005', 'Krithica S', 'Peter Allen', 'false', 'MCOAHS', ''),
(141100101, '0101', 'R Vasanthan', 'John Solomon H', 'false', 'MCOAHS', ''),
(141100102, '0102', 'Animesh Hazari', 'Arun G Maiya', 'false', 'MCOAHS', ''),
(141100103, '0103', 'Rohit Ravi', 'Krishna Y', 'false', 'MCOAHS', ''),
(151100101, '0101', 'A Adityachaitanya', 'Ramesh S Ve', 'false', 'MCOAHS', ''),
(161100001, '0001', 'Shubha G', 'Arun G Maiya', 'false', 'MCOAHS', ''),
(161100002, '0002', 'Guruprasad V', 'P S V N Sharma', 'false', 'MCOAHS', ''),
(161100003, '0003', 'Prabhath M', 'Shashikiran Umakanth', 'false', 'MCOAHS', ''),
(161100004, '0004', 'Akash Shah', 'John Solomon H', 'false', 'MCOAHS', ''),
(161100005, '0005', 'Rajesh Navada G V', 'Somu G', 'false', 'MCOAHS', ''),
(161100101, '0101', 'A Sampath Kumar', 'Arun G Maiya', 'false', 'MCOAHS', ''),
(171100001, '0001', 'Jyothi .', 'Padmakumar R', 'false', 'MCOAHS', ''),
(171100002, '0002', 'Anju M', 'Saleena Ummer Velladath', 'false', 'MCOAHS', ''),
(171100003, '0003', 'Winniecia Dkhar', 'Smiti Sripathi', 'false', 'MCOAHS', ''),
(171100101, '0101', 'Amreen Mahmood', 'John Solomon H', 'false', 'MCOAHS', ''),
(171100102, '0102', 'Rajhans Vidyut Sateesh', 'Ramesh S Ve', 'false', 'MCOAHS', '');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `regno` int(11) DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `inst` varchar(100) DEFAULT NULL,
  `q1` varchar(200) DEFAULT NULL,
  `q2` varchar(200) DEFAULT NULL,
  `q3` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`regno`, `name1`, `inst`, `q1`, `q2`, `q3`) VALUES
(70900013, 'Rajesh G', 'MIT', 'Yes', 'Excellent', 'asc');

-- --------------------------------------------------------

--
-- Table structure for table `workbal`
--

CREATE TABLE `workbal` (
  `regno` int(11) DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `inst` varchar(100) DEFAULT NULL,
  `q1` varchar(200) DEFAULT NULL,
  `q2` varchar(200) DEFAULT NULL,
  `q3` varchar(200) DEFAULT NULL,
  `q4` varchar(200) DEFAULT NULL,
  `q5` varchar(200) DEFAULT NULL,
  `q6` varchar(200) DEFAULT NULL,
  `q7` varchar(200) DEFAULT NULL,
  `q8` varchar(200) DEFAULT NULL,
  `q9` varchar(200) DEFAULT NULL,
  `q10` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workbal`
--

INSERT INTO `workbal` (`regno`, `name1`, `inst`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`) VALUES
(70900013, 'Rajesh G', 'MIT', 'Excellent', '21-20 hours', 'Yes', 'NO', 'Finding research careers within academia', 'NO', 'Finding research careers within government', 'NO', 'NO', 'NO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dr`
--
ALTER TABLE `dr`
  ADD PRIMARY KEY (`username`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
