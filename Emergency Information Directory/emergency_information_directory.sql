-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2020 at 08:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emergency_information_directory`
--

-- --------------------------------------------------------

--
-- Table structure for table `bazar`
--

CREATE TABLE `bazar` (
  `bazar_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_no` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `subdistrict` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bazar`
--

INSERT INTO `bazar` (`bazar_id`, `name`, `contact_no`, `address`, `subdistrict`, `district`, `division`) VALUES
('c0052', 'Ramna Bazar', '01222456486', 'Bazar Road', 'Chilmari', 'Kurigram', '\r\nRangpur\r\n'),
('c5869', 'Puran Bazar', '01256986600', 'Puran Bazar Road', 'Domar', 'Nilphamari', 'Rangpur'),
('c8596', 'Thanahat Bazar', '01224555645', 'Thanahat Bazar Road', '\r\nChilmari\r\n', 'Kurigram ', 'Rangpur'),
('k0152', 'Zia Bazar', '01211224340', 'Bazar Road', 'Kurigram Sadar ', 'Kurigram', 'Rangpur'),
('k0225', 'Notun Bazar', '01245679457', 'College Road', 'Kurigram Sadar', 'Kurigram', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `disctrict_council`
--

CREATE TABLE `disctrict_council` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `chairman` varchar(50) NOT NULL,
  `contact_no` text NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disctrict_council`
--

INSERT INTO `disctrict_council` (`id`, `name`, `chairman`, `contact_no`, `district`, `division`) VALUES
('dc442578', 'Dinajpur Zila Parishad', 'Md.Rohan Uddin', '01856943569', 'Dinajpur', 'Rangpur'),
('dc659635', ' Kurigram Zila Parishad', 'Babul Uddin', '01712569871', 'Kurigram', 'Rangpur'),
('dc745863', 'Lalmonirhat Zila Parishad', 'Md. Sadekul Haq', '01742569872', 'Lalmonirhat', 'Rangpur'),
('dc859874', 'Rangpur Zila Parishad', 'Kamrul Islam', '01833258963', 'Rangpur', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `district_administration`
--

CREATE TABLE `district_administration` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `chairman` varchar(50) NOT NULL,
  `contact_no` text NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district_administration`
--

INSERT INTO `district_administration` (`id`, `name`, `chairman`, `contact_no`, `district`, `division`) VALUES
('bd225885', 'Rangpur District Administration', 'Md Asif Ahsan', '01825454252', 'Rangpur ', 'Rangpur '),
('bd401285', 'Lalmonirhat District Administration', 'Md.Abu Zafar', '01712565563', 'Lalmonirhat', 'Rangpur'),
('bd748235', 'Kurigram District Administration', 'Sultana Parvin', '01708585656', 'Kurigram', 'Rangpur'),
('bd748635', 'Dinajpur District Administration', 'Md Mahmudul Alam', '01913232525', 'Dinajpu', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `divisional_administration`
--

CREATE TABLE `divisional_administration` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `commissioner` varchar(50) NOT NULL,
  `contact_no` text NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisional_administration`
--

INSERT INTO `divisional_administration` (`id`, `name`, `commissioner`, `contact_no`, `division`) VALUES
('dv321541', ' Rangpur Division Administration', 'MD ASIF AHASAN', '01712254456', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `chamber_name` varchar(50) NOT NULL,
  `cobsultation_hour` varchar(50) NOT NULL,
  `consultation_fee` int(50) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `name`, `speciality`, `chamber_name`, `cobsultation_hour`, `consultation_fee`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('doc004455', 'Anika Tahsin ', 'Medicine', 'Lab Aid Rangpur', '4pm - 8pm', 800, '01222288840', 'Rangpur', 'Rangpur', 'Rangpur'),
('doc113245', 'Dr. Md. Anowar Hossain', 'Cardiologist', 'Rangpur Heart Hospital ', '5pm-10pm', 1000, '01712585896', 'Rangpur', 'Rangpur', 'Rangpur'),
('doc114415', 'Prakash Paul', 'Neurologist', 'New Care Hospital', '2pm - 5pm', 800, '01222244440', 'Rangpur', 'Rangpur', 'Rangpur'),
('doc114455', 'Krishna Prashad Roy', 'Medicine', 'New Care Hospital', '2pm - 5pm', 500, '01222244440', 'Rangpur', 'Rangpur', 'Rangpur'),
('doc1144569', 'Khan Mohammad', 'Medicine', 'Chilmari Health Complex', '10am - 5pm', 300, '01255554455', 'Chilmari', 'Kurigram', 'Rangpur'),
('doc224455', 'Sukanta Barua', 'Eye Specialist', 'Momota Memorial Hospital', '10am - 5pm', 500, '01210101045', 'Lalmonirhat', 'Lalmonirhat', 'Rangpur'),
('doc256525', 'Prof. Md. Lutfor Rahman', 'Neurologist', 'Lab Aid Rangpur', '3pm-8pm', 1000, '01712598589', 'Rangpur', 'Rangpur', 'Rangpur'),
('doc332258', 'Dr. Md. Maruful Islam', 'Colon and Rectal Surgeon', 'Update Clinic Kurigram', '4pm-9pm', 600, '01712523258', 'Kurigram', 'Kurigram', 'Rangpur'),
('doc475236', 'Dr. Md. Abdur Rouf', 'Child Specialist', 'Central Child Hospital', '5pm-10pm', 400, '01712589658', 'Dinajpur', 'Dinajpur', 'Rangpur'),
('doc556472', 'Dr. M.A. Quayum', 'Surgery', 'Cresent Imagine center ', '4pm-9pm', 800, '01712574748', 'Hatibandha', 'Lalmonirhat', 'Rangpur'),
('doc653696', 'Dr. Syed Md. Abu Taleb', 'Dermatologist', 'Lab Aid Rangpur', '3pm-8pm', 1000, '01712536525', 'Rangpur', 'Rangpur', 'Rangpur'),
('doc662598', 'Dr. Md. Zahidul Islam', 'Medicine', 'Centreal laboratory Kurigram', '3pm-10pm', 400, '01712532589', 'Kurigram', 'Kurigram', 'Rangpur'),
('doc666214', 'Dr. Hriday Ranjan Roy', 'Gastroenterologists', 'Doctors Chember Dinajpur', '4pm-9pm', 800, '01712545869', 'Dinajpur', 'Dinajpur', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `fire_station`
--

CREATE TABLE `fire_station` (
  `fire_station_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fire_station`
--

INSERT INTO `fire_station` (`fire_station_id`, `name`, `address`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('fir223648', 'Hatibandha Fire Station', 'Dakbanglo purbogate', '01700252369', 'Hatibandha', 'Lalmonirhat', 'Rangpur'),
('fir258914', 'Rangpur Fire Station', 'Shenpara,mainroad mor', '01753111525', 'Rangpur sadar', 'Rangpur', 'Rangpur'),
('fir364585', 'Lalmonirhat Fire station', 'Zila Parishad office mor ', '01870006987', 'Lalmonirhat', 'Lalmonirhat', 'Rangpur'),
('fir987425', 'Kurigram Fire Station', 'Thana Road ', '01742589369', 'Kurigram', 'Kurigram', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `name`, `category`, `address`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('hos110011', 'Rangpur Heart Hospital ', 'Cardiology Hospital', 'Rangpur Thana Mor', '01222000000', 'Rangpur', 'Rangpur', 'Rangpur'),
('hos211235', 'Lab Aid Rangpur', 'GeneralHospital', 'Rangpur Khamar para mor', '01725254369', 'Rangpur', 'Rangpur', 'Rangpur'),
('hos364525', 'Momota Memorial Hospital', 'Eye Hospital', 'Lalmonirhat Sadar', '01742026589', 'Lalmonirhat ', 'Lalmonirhat ', 'Rangpur'),
('hos585228', 'Central Child Hospital', 'Child Hospital', 'Kurigram station Mor', '01745369258', 'Kurigram', 'Kurigram', 'Rangpur'),
('hos658632', 'Popular Lalmonirhat', 'General Hospital', 'Lalmonirhat Station Mor', '01745369258', 'Lalmonirhat', 'Lalmonirhat', 'Rangpur'),
('hos698526', 'Update Hospital', 'General Hospital', 'Pirganj Bazar', '0172325653', 'Pirganj', 'Rangpur', 'Rangpur'),
('hos889636', 'Care Hospital', 'General Hospital', 'Burimari Bazar', '01725369256', 'Burimari', 'Lalmonirhat', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `name`, `address`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('h215685', 'Zila Parishad Rest House', 'Station Road', '01231224333', 'Kurigram Sadar ', 'Kurigram ', 'Rangpur'),
('h254585', 'Ramna Hotel', 'Ramna Bazar Station', '01212456886', 'Chilmari', 'Kurigram', 'Rangpur'),
('h658525', 'Zila Parishad Rest House', 'Thanahat Bazar Road', '01224005645', 'Chilmari', 'Kurigram ', 'Rangpur'),
('h986525', 'Kurigram Hotel', 'Bus Terminal', '01215679777', 'Kurigram Sadar', 'Kurigram', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `municipality`
--

CREATE TABLE `municipality` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mayor` varchar(50) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `municipality`
--

INSERT INTO `municipality` (`id`, `name`, `mayor`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('mc552583', 'Dinajpur Zila Parishad', 'Md lovelu Hosssain', '01701258934', 'Aditmari', 'Kurigram', 'Rangpur'),
('mc589636', 'Lalmonirhat Zila Parishad', 'Mozaffar islam', '01710256895', 'Hatibandha', 'Lalmonirhat', 'Rangpur'),
('mc665891', 'Kurigram Zila Parishad', 'Md Salam', '01852532596', 'Patgram', 'Lalmonirhat', 'Rangpur'),
('mc747214', 'Rangpur Zila Parishad', 'Md shohan', '01972546987', 'Lalmonirhat', 'Lalmonirhat', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `police_station_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`police_station_id`, `name`, `address`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('ps102014', 'Hatibandha police station', 'Dakbanglo purbogate', '01715252369', 'Hatibandha', 'Lalmonirhat', 'Rangpur'),
('ps225865', 'Lalmonirhat Police station', 'Zila Parishad office mor ', '01875986987', 'Lalmonirhat', 'Lalmonirhat', 'Rangpur'),
('ps852147', 'Rangpur Police Station', 'Shenpara,mainroad mor', '01753565525', 'Rangpur', 'Rangpur', 'Rangpur'),
('ps966525', 'Kurigram Police station station', 'Thana Road \r\n', '01702589369', 'Kurigram', 'Kurigram ', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `subdistrict_administration`
--

CREATE TABLE `subdistrict_administration` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `uno` varchar(50) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subdistrict_administration`
--

INSERT INTO `subdistrict_administration` (`id`, `name`, `uno`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('sa003645', 'Rangpur Subdistrict Administration', 'Mst Sanjida khatun', '01704141252', 'Rangpur', 'Rangpur', 'Rangpur'),
('sa201896', 'Lalmonirhat Subdistrict Administration', 'Md .Nahiyan Khan', '01728585656', 'Lalmonirhat', 'Lalmonirhat', 'Rangpur'),
('sa334428', 'Kurigram Subdistrict Administration', 'Ashraful Islam', '01824545858', 'Kurigram ', 'Kurigram ', 'Rangpur'),
('sa886201', 'Dinajpur Subdistrict Administration', 'Md.Delowar Hossain', '01718252565', 'Dinajpur', 'Dinajpur ', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `subdistrict_counil`
--

CREATE TABLE `subdistrict_counil` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `chairman` varchar(50) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subdistrict_counil`
--

INSERT INTO `subdistrict_counil` (`id`, `name`, `chairman`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('sc002585', 'Panchagarh Upazila Parishad', 'Kashem Uddin', '01742583697', 'Panchagarh', 'Panchagarh', 'Rangpur'),
('sc665207', 'Gaibandha Upazila Parishad', 'MD Alim Islam', '01740269857', 'Gaibandha', 'Gaibandha', 'Rangpur'),
('sc990028', 'Thakurgaon Upazila Parishad', 'Mondol Shafikul', '01712569836', 'Thakurgaon', 'Thakurgaon', 'Rangpur'),
('sc993605', 'Nilphamari Upazila Parishad', 'Md Fazlar Rahman', '01725896259', 'Nilphamari', 'Nilphamari', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `union_council`
--

CREATE TABLE `union_council` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `chairman` varchar(50) NOT NULL,
  `contact_no` text NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `union_council`
--

INSERT INTO `union_council` (`id`, `name`, `chairman`, `contact_no`, `subdistrict`, `district`, `division`) VALUES
('uc001122', 'Burimari Union Parishad', 'Md.khairul islam', '01859872359', 'Patgram', 'Lalmonirhat', 'Rangpur'),
('uc003218', 'Nowdabash Union Parishad', 'Md.alomgir Hossain', '01748796687', 'Patgram', 'Lalmonirhat', 'Rangpur'),
('uc552410', 'Bhelaguri Union Parishad', 'Mohir Uddin', '01712589635', 'Hatibandha', 'Lalmonirhat', 'Rangpur'),
('uc660028', 'Gotamati Union Parishad', 'Md.shabu mia', '01725896325', 'Hatibandha', 'Lalmonirhat', 'Rangpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bazar`
--
ALTER TABLE `bazar`
  ADD PRIMARY KEY (`bazar_id`);

--
-- Indexes for table `disctrict_council`
--
ALTER TABLE `disctrict_council`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district_administration`
--
ALTER TABLE `district_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisional_administration`
--
ALTER TABLE `divisional_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `fire_station`
--
ALTER TABLE `fire_station`
  ADD PRIMARY KEY (`fire_station_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `municipality`
--
ALTER TABLE `municipality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`police_station_id`);

--
-- Indexes for table `subdistrict_administration`
--
ALTER TABLE `subdistrict_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistrict_counil`
--
ALTER TABLE `subdistrict_counil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `union_council`
--
ALTER TABLE `union_council`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
