-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 20, 2020 at 10:28 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resultgrading`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `staffId` varchar(255) NOT NULL,
  `adminTypeId` int(20) NOT NULL,
  `isAssigned` int(10) NOT NULL,
  `isPasswordChanged` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `otherName`, `emailAddress`, `phoneNo`, `password`, `staffId`, `adminTypeId`, `isAssigned`, `isPasswordChanged`, `dateCreated`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'admin@gmail.com', '09000088899', 'admin', 'STAF000001', 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmintype`
--

DROP TABLE IF EXISTS `tbladmintype`;
CREATE TABLE IF NOT EXISTS `tbladmintype` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `adminTypeName` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmintype`
--

INSERT INTO `tbladmintype` (`Id`, `adminTypeName`) VALUES
(1, 'Super Administrator'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tblcgparesult`
--

DROP TABLE IF EXISTS `tblcgparesult`;
CREATE TABLE IF NOT EXISTS `tblcgparesult` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `matricNo` varchar(50) NOT NULL,
  `cgpa` varchar(50) NOT NULL,
  `classOfDiploma` varchar(50) NOT NULL,
  `dateAdded` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcgparesult`
--

INSERT INTO `tblcgparesult` (`Id`, `matricNo`, `cgpa`, `classOfDiploma`, `dateAdded`) VALUES
(5, 'NCSF/15/0002', '2.67', 'Lower Credit', '2020-09-23'),
(4, 'NCSF/15/0001', '3.23', 'Upper Credit', '2020-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

DROP TABLE IF EXISTS `tblcourse`;
CREATE TABLE IF NOT EXISTS `tblcourse` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `courseTitle` varchar(255) NOT NULL,
  `courseCode` varchar(255) NOT NULL,
  `courseUnit` int(10) NOT NULL,
  `facultyId` varchar(255) NOT NULL,
  `departmentId` varchar(255) NOT NULL,
  `levelId` varchar(10) NOT NULL,
  `semesterId` varchar(20) NOT NULL,
  `dateAdded` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`Id`, `courseTitle`, `courseCode`, `courseUnit`, `facultyId`, `departmentId`, `levelId`, `semesterId`, `dateAdded`) VALUES
(29, 'Introduction to Computing', 'COM111', 3, '1', '1', '1', '1', '2020-09-21'),
(30, 'Introduction to Programming', 'COM113', 3, '1', '1', '1', '1', '2020-09-21'),
(31, 'Introduction to Digital Electronics', 'COM112', 3, '1', '1', '1', '1', '2020-09-21'),
(32, 'Business Mathematics', 'BAM111', 3, '3', '3', '1', '1', '2020-09-21'),
(33, 'Taxation', 'BAM112', 2, '3', '3', '1', '1', '2020-09-21'),
(34, 'Descriptive Statistics 1', 'STA111', 2, '1', '1', '1', '1', '2020-09-22'),
(35, 'Elementary Probability theory', 'STA112', 2, '1', '1', '1', '1', '2020-09-22'),
(36, 'Logic and Linear Algebra', 'MTH111', 2, '1', '1', '1', '1', '2020-09-22'),
(37, 'Trigonometry and Analytical Geometry', 'MTH112', 2, '1', '1', '1', '1', '2020-09-22'),
(38, 'Technical English 1', 'OTM101', 2, '1', '1', '1', '1', '2020-09-22'),
(39, 'Citizenship Education 1', 'GNS111', 2, '1', '1', '1', '1', '2020-09-22'),
(40, 'Use of Library', 'GNS117', 1, '1', '1', '1', '1', '2020-09-22'),
(41, 'Scientific Prog Using OOJava', 'COM121', 3, '1', '1', '1', '2', '2020-09-23'),
(42, 'Intro to Internet', 'COM122', 3, '1', '1', '1', '2', '2020-09-23'),
(43, 'Computer Application Packages 1', 'COM123', 3, '1', '1', '1', '2', '2020-09-23'),
(44, 'Data Structures and Algorithms', 'COM124', 3, '1', '1', '1', '2', '2020-09-23'),
(45, 'Introduction to System Analysis', 'COM125', 3, '1', '1', '1', '2', '2020-09-23'),
(46, 'PC Upgrade and maintainance ', 'COM126', 2, '1', '1', '1', '2', '2020-09-23'),
(47, 'Citizenship Education II', 'GNS128', 2, '1', '1', '1', '2', '2020-09-23'),
(48, 'Technical English II', 'OTM201', 2, '1', '1', '1', '2', '2020-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

DROP TABLE IF EXISTS `tbldepartment`;
CREATE TABLE IF NOT EXISTS `tbldepartment` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(255) NOT NULL,
  `facultyId` int(20) NOT NULL,
  `dateCreated` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`Id`, `departmentName`, `facultyId`, `dateCreated`) VALUES
(1, 'Computer Science', 1, ''),
(2, 'Mechanical Engineering', 2, ''),
(3, 'Business Administration', 3, '2020-06-22'),
(4, 'Public Administration', 3, '2020-06-22'),
(5, 'Accounting', 3, '2020-06-24'),
(6, 'Science Laboratory Technology', 1, '2020-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `tblfaculty`
--

DROP TABLE IF EXISTS `tblfaculty`;
CREATE TABLE IF NOT EXISTS `tblfaculty` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `facultyName` varchar(255) NOT NULL,
  `dateCreated` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfaculty`
--

INSERT INTO `tblfaculty` (`Id`, `facultyName`, `dateCreated`) VALUES
(1, 'Pure and Applied Science', ''),
(2, 'Engineering', ''),
(3, 'Business and Management Studies', '2020-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `tblfinalresult`
--

DROP TABLE IF EXISTS `tblfinalresult`;
CREATE TABLE IF NOT EXISTS `tblfinalresult` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `matricNo` varchar(50) NOT NULL,
  `levelId` varchar(10) NOT NULL,
  `semesterId` varchar(10) NOT NULL,
  `sessionId` varchar(10) NOT NULL,
  `totalCourseUnit` varchar(10) NOT NULL,
  `totalScoreGradePoint` varchar(10) NOT NULL,
  `gpa` varchar(255) NOT NULL,
  `classOfDiploma` varchar(50) NOT NULL,
  `dateAdded` varchar(25) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfinalresult`
--

INSERT INTO `tblfinalresult` (`Id`, `matricNo`, `levelId`, `semesterId`, `sessionId`, `totalCourseUnit`, `totalScoreGradePoint`, `gpa`, `classOfDiploma`, `dateAdded`) VALUES
(13, 'NCSF/15/0001', '1', '1', '1', '22', '64.5', '2.93', 'Lower Credit', '2020-09-22'),
(14, 'NCSF/15/0001', '1', '2', '1', '21', '74.5', '3.55', 'Distinction', '2020-09-23'),
(15, 'NCSF/15/0002', '1', '1', '1', '22', '58.75', '2.67', 'Lower Credit', '2020-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbllevel`
--

DROP TABLE IF EXISTS `tbllevel`;
CREATE TABLE IF NOT EXISTS `tbllevel` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `levelName` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllevel`
--

INSERT INTO `tbllevel` (`Id`, `levelName`) VALUES
(1, 'ND1\r\n'),
(2, 'ND2'),
(3, 'HND1'),
(4, 'HND2');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

DROP TABLE IF EXISTS `tblresult`;
CREATE TABLE IF NOT EXISTS `tblresult` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `matricNo` varchar(50) NOT NULL,
  `levelId` varchar(10) NOT NULL,
  `semesterId` varchar(10) NOT NULL,
  `sessionId` varchar(10) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `courseUnit` varchar(50) NOT NULL,
  `score` varchar(50) NOT NULL,
  `scoreGradePoint` varchar(50) NOT NULL,
  `scoreLetterGrade` varchar(10) NOT NULL,
  `totalScoreGradePoint` varchar(50) NOT NULL,
  `dateAdded` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`Id`, `matricNo`, `levelId`, `semesterId`, `sessionId`, `courseCode`, `courseUnit`, `score`, `scoreGradePoint`, `scoreLetterGrade`, `totalScoreGradePoint`, `dateAdded`) VALUES
(160, 'NCSF/15/0002', '1', '1', '1', 'COM113', '3', '78', '4', 'AA', '12', '2020-09-23'),
(159, 'NCSF/15/0002', '1', '1', '1', 'COM111', '3', '22', '0', 'F', '0', '2020-09-23'),
(158, 'NCSF/15/0001', '1', '2', '1', 'OTM201', '2', '72', '3.5', 'A', '7', '2020-09-23'),
(157, 'NCSF/15/0001', '1', '2', '1', 'GNS128', '2', '56', '2.75', 'BC', '5.5', '2020-09-23'),
(156, 'NCSF/15/0001', '1', '2', '1', 'COM126', '2', '75', '4', 'AA', '8', '2020-09-23'),
(155, 'NCSF/15/0001', '1', '2', '1', 'COM125', '3', '81', '4', 'AA', '12', '2020-09-23'),
(154, 'NCSF/15/0001', '1', '2', '1', 'COM124', '3', '84', '4', 'AA', '12', '2020-09-23'),
(153, 'NCSF/15/0001', '1', '2', '1', 'COM123', '3', '88', '4', 'AA', '12', '2020-09-23'),
(152, 'NCSF/15/0001', '1', '2', '1', 'COM122', '3', '68', '3.25', 'AB', '9.75', '2020-09-23'),
(151, 'NCSF/15/0001', '1', '2', '1', 'COM121', '3', '55', '2.75', 'BC', '8.25', '2020-09-23'),
(150, 'NCSF/15/0001', '1', '1', '1', 'GNS117', '1', '43', '2', 'D', '2', '2020-09-22'),
(149, 'NCSF/15/0001', '1', '1', '1', 'GNS111', '2', '40', '2', 'D', '4', '2020-09-22'),
(148, 'NCSF/15/0001', '1', '1', '1', 'OTM101', '2', '60', '3', 'B', '6', '2020-09-22'),
(147, 'NCSF/15/0001', '1', '1', '1', 'MTH112', '2', '59', '2.75', 'BC', '5.5', '2020-09-22'),
(146, 'NCSF/15/0001', '1', '1', '1', 'MTH111', '2', '68', '3.25', 'AB', '6.5', '2020-09-22'),
(145, 'NCSF/15/0001', '1', '1', '1', 'STA112', '2', '70', '3.5', 'A', '7', '2020-09-22'),
(141, 'NCSF/15/0001', '1', '1', '1', 'COM111', '3', '89', '4', 'AA', '12', '2020-09-22'),
(142, 'NCSF/15/0001', '1', '1', '1', 'COM113', '3', '46', '2.25', 'CD', '6.75', '2020-09-22'),
(143, 'NCSF/15/0001', '1', '1', '1', 'COM112', '3', '68', '3.25', 'AB', '9.75', '2020-09-22'),
(144, 'NCSF/15/0001', '1', '1', '1', 'STA111', '2', '54', '2.5', 'C', '5', '2020-09-22'),
(161, 'NCSF/15/0002', '1', '1', '1', 'COM112', '3', '77', '4', 'AA', '12', '2020-09-23'),
(162, 'NCSF/15/0002', '1', '1', '1', 'STA111', '2', '65', '3.25', 'AB', '6.5', '2020-09-23'),
(163, 'NCSF/15/0002', '1', '1', '1', 'STA112', '2', '52', '2.5', 'C', '5', '2020-09-23'),
(164, 'NCSF/15/0002', '1', '1', '1', 'MTH111', '2', '21', '0', 'F', '0', '2020-09-23'),
(165, 'NCSF/15/0002', '1', '1', '1', 'MTH112', '2', '98', '4', 'AA', '8', '2020-09-23'),
(166, 'NCSF/15/0002', '1', '1', '1', 'OTM101', '2', '78', '4', 'AA', '8', '2020-09-23'),
(167, 'NCSF/15/0002', '1', '1', '1', 'GNS111', '2', '44', '2', 'D', '4', '2020-09-23'),
(168, 'NCSF/15/0002', '1', '1', '1', 'GNS117', '1', '67', '3.25', 'AB', '3.25', '2020-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `tblsemester`
--

DROP TABLE IF EXISTS `tblsemester`;
CREATE TABLE IF NOT EXISTS `tblsemester` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `semesterName` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsemester`
--

INSERT INTO `tblsemester` (`Id`, `semesterName`) VALUES
(1, 'First'),
(2, 'Second');

-- --------------------------------------------------------

--
-- Table structure for table `tblsession`
--

DROP TABLE IF EXISTS `tblsession`;
CREATE TABLE IF NOT EXISTS `tblsession` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `sessionName` varchar(30) NOT NULL,
  `isActive` int(5) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsession`
--

INSERT INTO `tblsession` (`Id`, `sessionName`, `isActive`) VALUES
(1, '2019/2020', 1),
(2, '2020/2021', 0),
(3, '2021/2022', 0),
(5, '2022/2023', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

DROP TABLE IF EXISTS `tblstaff`;
CREATE TABLE IF NOT EXISTS `tblstaff` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `staffId` varchar(255) NOT NULL,
  `isAssigned` int(10) NOT NULL,
  `isPasswordChanged` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`Id`, `firstName`, `lastName`, `otherName`, `emailAddress`, `phoneNo`, `password`, `staffId`, `isAssigned`, `isPasswordChanged`, `dateCreated`) VALUES
(3, 'Bamidele', 'Bayo', 'olakunle', 'Bamidele@gmail.com', '07065903222', '12345', 'STF001111', 1, 0, '2020-06-21'),
(4, 'busola', 'keji', 'busayo', 'KemisolAde@gmail.com', '09073930022', '12345', 'STF002', 1, 0, '2020-06-21'),
(14, 'Samuel', 'Samuel', 'John', 'SamuelJohn@yahoo.com', '09087654321', '12345', 'STF0032', 1, 0, '2020-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE IF NOT EXISTS `tblstudent` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `matricNo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `levelId` int(10) NOT NULL,
  `facultyId` int(10) NOT NULL,
  `departmentId` int(10) NOT NULL,
  `sessionId` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`Id`, `firstName`, `lastName`, `otherName`, `matricNo`, `password`, `levelId`, `facultyId`, `departmentId`, `sessionId`, `dateCreated`) VALUES
(8, 'Tunde', 'Okediran', 'Salau', 'NCSF/15/0001', '12345', 1, 1, 1, 1, '2020-09-21'),
(9, 'Kemi', 'Olunluyo', 'Fakorede', 'NCSF/15/0002', '12345', 1, 1, 1, 1, '2020-09-21'),
(10, 'Bashir', 'Kola', 'Wole', 'NCSF/15/0003', '12345', 1, 1, 1, 1, '2020-09-21'),
(12, 'Adebayo', 'Adewale', 'Afolayan', 'NBAF/15/0005', '12345', 1, 3, 3, 1, '2020-09-21'),
(14, 'Saheed', 'kehinde', 'Ade', 'NBAF/15/0003', '12345', 1, 3, 3, 1, '2020-09-21'),
(15, 'Muhammad', 'Adamu', 'Kabir', 'NCSF/15/0008', '12345', 2, 3, 3, 1, '2020-09-25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
