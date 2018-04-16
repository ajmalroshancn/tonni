-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2018 at 10:05 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2015CSE011`
--
CREATE DATABASE IF NOT EXISTS `2015CSE011` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2015CSE011`;
--
-- Database: `2015cse011`
--
CREATE DATABASE IF NOT EXISTS `2015cse011` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2015cse011`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(13) NOT NULL,
  `password` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`name`) VALUES
('ajmal'),
('sjkdhfdh'),
('ytresh'),
('roshan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);
--
-- Database: `2016cse001`
--
CREATE DATABASE IF NOT EXISTS `2016cse001` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2016cse001`;
--
-- Database: `2016cse00122`
--
CREATE DATABASE IF NOT EXISTS `2016cse00122` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2016cse00122`;

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `aid` int(10) DEFAULT NULL,
  `aname` varchar(20) DEFAULT NULL,
  `cruisingrange` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aid`, `aname`, `cruisingrange`) VALUES
(137, 'kingfisher', 1200),
(143, 'airlines', 750),
(743, 'jet', 289);

-- --------------------------------------------------------

--
-- Table structure for table `certified`
--

CREATE TABLE `certified` (
  `eid` int(10) DEFAULT NULL,
  `aid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certified`
--

INSERT INTO `certified` (`eid`, `aid`) VALUES
(3768, 137),
(1789, 143),
(7879, 743);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(11) DEFAULT NULL,
  `empname` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `empname`, `salary`) VALUES
(3768, 'mukesh', 87000),
(1789, 'suresh', 93000),
(7879, 'bhagre', 78000);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `fno` int(10) DEFAULT NULL,
  `ffrom` varchar(20) DEFAULT NULL,
  `fto` varchar(20) DEFAULT NULL,
  `fdistance` int(10) DEFAULT NULL,
  `fdeparts` time DEFAULT NULL,
  `farrives` time DEFAULT NULL,
  `fprice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`fno`, `ffrom`, `fto`, `fdistance`, `fdeparts`, `farrives`, `fprice`) VALUES
(101, 'bengaluru', 'delhi', 1000, '07:50:00', '17:30:00', 15000),
(102, 'delhi', 'frankfurt', 700, '05:30:00', '16:00:00', 8000),
(103, 'bengaluru', 'mumbai', 800, '07:00:00', '14:00:00', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `flys`
--

CREATE TABLE `flys` (
  `eid` int(10) DEFAULT NULL,
  `fno` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flys`
--

INSERT INTO `flys` (`eid`, `fno`) VALUES
(3768, 101),
(1789, 102),
(7879, 103);
--
-- Database: `2016cse008`
--
CREATE DATABASE IF NOT EXISTS `2016cse008` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2016cse008`;

-- --------------------------------------------------------

--
-- Table structure for table `ACCIDENT`
--

CREATE TABLE `ACCIDENT` (
  `REPORT_NO` int(11) NOT NULL,
  `ACC_DATE` date DEFAULT NULL,
  `LOCATION` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ACCIDENT`
--

INSERT INTO `ACCIDENT` (`REPORT_NO`, `ACC_DATE`, `LOCATION`) VALUES
(101, '2016-02-13', 'YELAHANKA'),
(102, '2012-01-31', 'JAYANAGAR'),
(103, '2012-12-12', 'BTM LAYOUT'),
(104, '2017-07-07', 'JP NAGAR'),
(105, '2016-05-01', 'YELAHANKA'),
(106, '2014-08-13', 'MARATHAHALLI'),
(107, '2006-01-19', 'MARATHAHALLI'),
(108, '2016-05-01', 'YELAHANKA');

-- --------------------------------------------------------

--
-- Table structure for table `ACCOUNT`
--

CREATE TABLE `ACCOUNT` (
  `ACC_NO` int(11) NOT NULL,
  `B_NAME` varchar(20) DEFAULT NULL,
  `BALANCE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ACCOUNT`
--

INSERT INTO `ACCOUNT` (`ACC_NO`, `B_NAME`, `BALANCE`) VALUES
(123456, 'KORMANGALA', 5000),
(123457, 'SADASHIVANAGAR', 35000),
(123458, 'VITTALNAGAR', 60000),
(123459, 'KASTHURINAGAR', 255600),
(123460, 'VITTALNAGAR', 37890),
(123461, 'MARUTINAGAR', 20000),
(123462, 'SADASHIVANAGAR', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `AIRCRAFT`
--

CREATE TABLE `AIRCRAFT` (
  `AID` int(10) NOT NULL,
  `ANAME` varchar(20) DEFAULT NULL,
  `CRUISINGRANGE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AIRCRAFT`
--

INSERT INTO `AIRCRAFT` (`AID`, `ANAME`, `CRUISINGRANGE`) VALUES
(11, 'BOEING', 8000),
(12, 'AIRBUS', 6000),
(13, 'AIRINDIA', 5000),
(14, 'INDIGO', 900),
(15, 'SPICEJET', 800);

-- --------------------------------------------------------

--
-- Table structure for table `AIR_EMPLOYEE`
--

CREATE TABLE `AIR_EMPLOYEE` (
  `EID` int(10) NOT NULL,
  `ENAME` varchar(20) DEFAULT NULL,
  `SALARY` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AIR_EMPLOYEE`
--

INSERT INTO `AIR_EMPLOYEE` (`EID`, `ENAME`, `SALARY`) VALUES
(100, 'ARJUN', 200000),
(200, 'NISHA', 150000),
(300, 'KAVYA', 200000),
(400, 'AKHILESH', 80000),
(500, 'PRIYA', 100000),
(600, 'RAJ', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `BORROWER`
--

CREATE TABLE `BORROWER` (
  `C_NAME` varchar(20) NOT NULL,
  `L_NO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BORROWER`
--

INSERT INTO `BORROWER` (`C_NAME`, `L_NO`) VALUES
('KAVYA', '231'),
('KSHAMITHA', '232'),
('SACHIN', '233'),
('LIKITH', '234'),
('ABHAY', '235');

-- --------------------------------------------------------

--
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `B_NAME` varchar(20) NOT NULL,
  `B_CITY` varchar(20) DEFAULT NULL,
  `ASSETS` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BRANCH`
--

INSERT INTO `BRANCH` (`B_NAME`, `B_CITY`, `ASSETS`) VALUES
('KASTHURINAGAR', 'DELHI', 125000),
('KORMANGALA', 'BENGALURU', 20500.3),
('MARUTINAGAR', 'HYDERABAD', 212351.6),
('SADASHIVANAGAR', 'BENGALURU', 154329.5),
('VITTALNAGAR', 'HYDERABAD', 350000);

-- --------------------------------------------------------

--
-- Table structure for table `CAR`
--

CREATE TABLE `CAR` (
  `REG_NO` varchar(15) NOT NULL,
  `MODEL` varchar(20) DEFAULT NULL,
  `YEAR` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CAR`
--

INSERT INTO `CAR` (`REG_NO`, `MODEL`, `YEAR`) VALUES
('KA05D9834', 'MARUTI 800', '2010'),
('KA23J1890', 'MARUTI ZEN', '2005'),
('KA25Y1878', 'AUDI A4', '2015'),
('KA35F2845', 'FIAT PUNTO', '2013'),
('KA36M0377', 'MERC 520', '2016'),
('KA36M9089', 'MAHINDRA XUV', '2017'),
('KA37K3442', 'HONDA CITY', '2013');

-- --------------------------------------------------------

--
-- Table structure for table `CERTIFIED`
--

CREATE TABLE `CERTIFIED` (
  `EID` int(10) NOT NULL,
  `AID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CERTIFIED`
--

INSERT INTO `CERTIFIED` (`EID`, `AID`) VALUES
(100, 11),
(200, 11),
(100, 12),
(400, 12),
(100, 13),
(200, 14),
(500, 14),
(100, 15),
(200, 15),
(600, 15);

-- --------------------------------------------------------

--
-- Table structure for table `CERTIFIED_PILOT`
--

CREATE TABLE `CERTIFIED_PILOT` (
  `EID` int(10) NOT NULL,
  `FNO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CERTIFIED_PILOT`
--

INSERT INTO `CERTIFIED_PILOT` (`EID`, `FNO`) VALUES
(100, 111),
(100, 112),
(200, 113),
(200, 114),
(400, 114),
(200, 115),
(300, 115);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `C_NAME` varchar(20) NOT NULL,
  `C_STREET` varchar(30) DEFAULT NULL,
  `C_CITY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`C_NAME`, `C_STREET`, `C_CITY`) VALUES
('ABHAY', 'KAMALANAGAR', 'TUMKUR'),
('KAVYA', 'SADASHIVANAGAR', 'BENGALURU'),
('KSHAMITHA', 'MARUTILAYOUT', 'TUMKUR'),
('LIKITH', 'MADHURANAGAR', 'HYDERABAD'),
('SACHIN', 'VITTALNAGAR', 'HYDERABAD'),
('SHEETAL', 'KASTHURINAGAR', 'BENGALURU');

-- --------------------------------------------------------

--
-- Table structure for table `DEPARTMENT`
--

CREATE TABLE `DEPARTMENT` (
  `DNO` int(11) NOT NULL,
  `DNAME` varchar(30) DEFAULT NULL,
  `MGR_SSN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPARTMENT`
--

INSERT INTO `DEPARTMENT` (`DNO`, `DNAME`, `MGR_SSN`) VALUES
(1, 'RESEARCH', 103),
(2, 'DEVELOPMENT', 102),
(3, 'MARKETING', 105),
(4, 'SALES', 106);

-- --------------------------------------------------------

--
-- Table structure for table `DEPOSITOR`
--

CREATE TABLE `DEPOSITOR` (
  `C_NAME` varchar(20) NOT NULL,
  `ACC_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPOSITOR`
--

INSERT INTO `DEPOSITOR` (`C_NAME`, `ACC_NO`) VALUES
('ABHAY', 123456),
('KAVYA', 123456),
('KAVYA', 123457),
('KSHAMITHA', 123458),
('KSHAMITHA', 123460),
('LIKITH', 123461),
('KAVYA', 123462);

-- --------------------------------------------------------

--
-- Table structure for table `DEPT`
--

CREATE TABLE `DEPT` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPT_NAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPT`
--

INSERT INTO `DEPT` (`DEPT_ID`, `DEPT_NAME`) VALUES
(1, 'ACCOUNTING'),
(2, 'SALES'),
(3, 'MARKETING');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `EMP_ID` int(11) NOT NULL,
  `EMP_NAME` varchar(20) DEFAULT NULL,
  `DEPT_NUM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`EMP_ID`, `EMP_NAME`, `DEPT_NUM`) VALUES
(1, 'ALICE', NULL),
(2, 'BOB', 1),
(3, 'CHARLES', 2),
(4, 'DAN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYII`
--

CREATE TABLE `EMPLOYII` (
  `SSN` int(11) NOT NULL,
  `ENAME` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL,
  `SALARY` double DEFAULT NULL,
  `SEX` enum('M','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EMPLOYII`
--

INSERT INTO `EMPLOYII` (`SSN`, `ENAME`, `DOB`, `ADDRESS`, `SALARY`, `SEX`) VALUES
(101, 'AMITH', '2000-03-30', 'HEBBAL', 40000, 'M'),
(102, 'ANIL', '1997-01-20', 'KR PURAM', 20000, 'M'),
(103, 'KRUTHI', '1995-02-05', 'YELAHANKA', 30000, 'F'),
(104, 'SHRUTHI', '1996-04-25', 'HSR LAYOUT', 35000, 'F'),
(105, 'GANESH', '1997-08-27', 'SILK BOARD', 50000, 'M'),
(106, 'MARIA', '1998-05-18', 'BANASHANKARI', 60000, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `FLIGHTS`
--

CREATE TABLE `FLIGHTS` (
  `FNO` int(10) NOT NULL,
  `FFROM` varchar(20) DEFAULT NULL,
  `FTO` varchar(20) DEFAULT NULL,
  `FDISTANCE` int(10) DEFAULT NULL,
  `FDEPARTS` time DEFAULT NULL,
  `FARRIVES` time DEFAULT NULL,
  `FPRICE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FLIGHTS`
--

INSERT INTO `FLIGHTS` (`FNO`, `FFROM`, `FTO`, `FDISTANCE`, `FDEPARTS`, `FARRIVES`, `FPRICE`) VALUES
(111, 'BENGALURU', 'FRANKFURT', 7000, '21:30:00', '07:30:00', 7000),
(112, 'BENGALURU', 'NEWDELHI', 2000, '06:00:00', '08:30:00', 9000),
(113, 'BENGALURU', 'MUMBAI', 1000, '07:05:00', '07:55:00', 8000),
(114, 'MUMBAI', 'DELHI', 1000, '19:30:00', '21:00:00', 7000),
(115, 'BENGALURU', 'NEWDELHI', 2000, '08:00:00', '09:15:00', 4000),
(116, 'BENGALURU', 'PUNE', 800, '08:00:00', '09:25:00', 5000),
(117, 'BENGALURU', 'FRANKFURT', 7000, '07:30:00', '21:30:00', 7500),
(119, 'MUMBAI', 'LASVEGAS', 8000, '21:00:00', '05:00:00', 15000),
(120, 'NEWDELHI', 'LASVEGAS', 8000, '21:00:00', '05:00:00', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `LOAN`
--

CREATE TABLE `LOAN` (
  `L_NO` varchar(10) NOT NULL,
  `B_NAME` varchar(20) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LOAN`
--

INSERT INTO `LOAN` (`L_NO`, `B_NAME`, `AMOUNT`) VALUES
('231', 'SADASHIVANAGAR', 50500.5),
('232', 'VITTALNAGAR', 25000),
('233', 'MARUTINAGAR', 60300.3),
('234', 'KASTHURINAGAR', 45000.7),
('235', 'KORMANGALA', 25534);

-- --------------------------------------------------------

--
-- Table structure for table `OWNS`
--

CREATE TABLE `OWNS` (
  `DRIVER_ID` int(10) DEFAULT NULL,
  `REG_NO` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OWNS`
--

INSERT INTO `OWNS` (`DRIVER_ID`, `REG_NO`) VALUES
(10, 'KA37K3442'),
(11, 'KA05D9834'),
(12, 'KA23J1890'),
(13, 'KA35F2845'),
(14, 'KA36M0377'),
(15, 'KA25Y1878'),
(16, 'KA36M9089');

-- --------------------------------------------------------

--
-- Table structure for table `PARTICIPATED`
--

CREATE TABLE `PARTICIPATED` (
  `DRIVER_ID` int(10) NOT NULL,
  `REG_NO` varchar(15) NOT NULL,
  `REPORT_NO` int(11) NOT NULL,
  `DAMAGE_AMT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PARTICIPATED`
--

INSERT INTO `PARTICIPATED` (`DRIVER_ID`, `REG_NO`, `REPORT_NO`, `DAMAGE_AMT`) VALUES
(10, 'KA37K3442', 101, 25000),
(11, 'KA05D9834', 102, 14300),
(12, 'KA05D9834', 103, 15400),
(12, 'KA23J1890', 104, 12450),
(13, 'KA35F2845', 105, 10000),
(15, 'KA25Y1878', 106, 30000),
(15, 'KA25Y1878', 107, 20000),
(15, 'KA25Y1878', 108, 5900);

-- --------------------------------------------------------

--
-- Table structure for table `PERSON`
--

CREATE TABLE `PERSON` (
  `DRIVER_ID` int(10) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PERSON`
--

INSERT INTO `PERSON` (`DRIVER_ID`, `NAME`, `ADDRESS`) VALUES
(10, 'AMITH', 'NO A-1-12 KOPPAL'),
(11, 'ANIL', '23 VIJAYA APTS'),
(12, 'JOHN', 'NO 3423 VICKY'),
(13, 'ARUN', 'KAMAL NIVAS KAOPPAL'),
(14, 'SUNIL', 'NO 54 RAVI NAGAR'),
(15, 'CHARLIE', '4TH CROSS RAJANKUNTE'),
(16, 'MARK', '2ND MAIN YELAHANKA');

-- --------------------------------------------------------

--
-- Table structure for table `PROJECT`
--

CREATE TABLE `PROJECT` (
  `PNO` int(11) NOT NULL,
  `PNAME` varchar(40) DEFAULT NULL,
  `PLOCATION` varchar(30) DEFAULT NULL,
  `DNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PROJECT`
--

INSERT INTO `PROJECT` (`PNO`, `PNAME`, `PLOCATION`, `DNO`) VALUES
(501, 'DATA ANALYSIS', 'MUMBAI', 1),
(502, 'IOT', 'DELHI', 1),
(503, 'HADOOP ANALYSIS', 'CHENNAI', 3),
(504, 'AI', 'BENGALURU', 4),
(505, 'AIRLINE MANAGEMENT', 'BENGALURU', 2),
(506, 'BANKING SYSTEM', 'CHENNAI', 3),
(507, 'RAILWAY RESERVATION', 'BENGALURU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `WORKS_FOR`
--

CREATE TABLE `WORKS_FOR` (
  `SSN` int(11) NOT NULL,
  `DNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `WORKS_FOR`
--

INSERT INTO `WORKS_FOR` (`SSN`, `DNO`) VALUES
(101, 1),
(103, 1),
(102, 2),
(103, 2),
(106, 2),
(104, 3),
(105, 3),
(101, 4),
(105, 4);

-- --------------------------------------------------------

--
-- Table structure for table `WORKS_ON`
--

CREATE TABLE `WORKS_ON` (
  `SSN` int(11) NOT NULL,
  `PNO` int(11) NOT NULL,
  `HOURS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `WORKS_ON`
--

INSERT INTO `WORKS_ON` (`SSN`, `PNO`, `HOURS`) VALUES
(101, 501, 4),
(101, 502, 1),
(101, 503, 3),
(101, 504, 1),
(101, 505, 1),
(101, 506, 1),
(102, 502, 3.5),
(102, 503, 2.5),
(104, 504, 5),
(104, 505, 3),
(105, 501, 10),
(106, 502, 7),
(106, 506, 10);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_NAME` varchar(10) NOT NULL,
  `Meets_At` varchar(10) DEFAULT NULL,
  `Room` varchar(5) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_NAME`, `Meets_At`, `Room`, `F_ID`) VALUES
('CN', '2:00', 'R128', 104),
('DBMS', '9:00', 'MF01', 101),
('DS', '9:00', 'MF02', 103),
('EM4', '10:00', 'MF01', 103),
('ENGLISH', '2:00', 'MF01', 105),
('OOPJ', '11:15', 'MF04', 103),
('OS', '1:00', 'R128', 103),
('TOC', '10:00', 'MF02', 102);

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `S_NUM` int(11) NOT NULL,
  `C_NAME` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`S_NUM`, `C_NAME`) VALUES
(10, 'DBMS'),
(20, 'DBMS'),
(30, 'DBMS'),
(40, 'DBMS'),
(50, 'DBMS'),
(60, 'DS'),
(20, 'EM4'),
(50, 'ENGLISH'),
(30, 'OOPJ'),
(40, 'OS'),
(20, 'TOC');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `F_ID` int(11) NOT NULL,
  `F_Name` varchar(25) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Dept_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`F_ID`, `F_Name`, `Address`, `Dept_ID`) VALUES
(101, 'KAVYA', 'no.92 Hebbala', 41),
(102, 'KISHORE', 'no.12 KRPURAM', 42),
(103, 'AVINASH', '2ND CROSS RAJANKUNTE', 43),
(104, 'PRABHU', '1ST MAIN SANJAY NAGAR', 44),
(105, 'ABHAY', '3RD CROSS BANASHANKARI', 41),
(106, 'SHEETAL', 'HNO 37 KODIGEHALLI', 42),
(107, 'POOJA', 'HNO 61 DOMLUR', 45);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `PersonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderNumber`, `PersonID`) VALUES
(1, 77895, 3),
(2, 44678, 3),
(3, 22456, 2),
(4, 24562, 1);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `ID` int(11) NOT NULL,
  `FisrtName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) NOT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`ID`, `FisrtName`, `LastName`, `Age`) VALUES
(1, 'Ola', 'Hansen', 30),
(2, 'Tove', 'Svendson', 23),
(3, 'Kari', 'Pettersen', 20);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `S_NUM` int(11) NOT NULL,
  `S_NAME` varchar(25) DEFAULT NULL,
  `major` varchar(25) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S_NUM`, `S_NAME`, `major`, `level`, `DOB`) VALUES
(10, 'AJAY', 'CSE', 'JR', '1999-06-30'),
(20, 'ARCHANA', 'ISE', 'SR', '1987-06-25'),
(30, 'BHARATH', 'ISE', 'JR', '1989-10-20'),
(40, 'LIKITH', 'MECH', 'JR', '1992-08-15'),
(50, 'BHAVYA', 'MECH', 'JR', '1991-03-28'),
(60, 'NISHA', 'CSE', 'JR', '1992-02-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACCIDENT`
--
ALTER TABLE `ACCIDENT`
  ADD PRIMARY KEY (`REPORT_NO`);

--
-- Indexes for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  ADD PRIMARY KEY (`ACC_NO`),
  ADD KEY `B_NAME` (`B_NAME`);

--
-- Indexes for table `AIRCRAFT`
--
ALTER TABLE `AIRCRAFT`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `AIR_EMPLOYEE`
--
ALTER TABLE `AIR_EMPLOYEE`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `BORROWER`
--
ALTER TABLE `BORROWER`
  ADD PRIMARY KEY (`C_NAME`,`L_NO`),
  ADD KEY `L_NO` (`L_NO`);

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`B_NAME`);

--
-- Indexes for table `CAR`
--
ALTER TABLE `CAR`
  ADD PRIMARY KEY (`REG_NO`);

--
-- Indexes for table `CERTIFIED`
--
ALTER TABLE `CERTIFIED`
  ADD PRIMARY KEY (`EID`,`AID`),
  ADD KEY `AID` (`AID`);

--
-- Indexes for table `CERTIFIED_PILOT`
--
ALTER TABLE `CERTIFIED_PILOT`
  ADD PRIMARY KEY (`EID`,`FNO`),
  ADD KEY `FNO` (`FNO`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`C_NAME`);

--
-- Indexes for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  ADD PRIMARY KEY (`DNO`),
  ADD KEY `MGR_SSN` (`MGR_SSN`);

--
-- Indexes for table `DEPOSITOR`
--
ALTER TABLE `DEPOSITOR`
  ADD PRIMARY KEY (`C_NAME`,`ACC_NO`),
  ADD KEY `ACC_NO` (`ACC_NO`);

--
-- Indexes for table `DEPT`
--
ALTER TABLE `DEPT`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `DEPT_NUM` (`DEPT_NUM`);

--
-- Indexes for table `EMPLOYII`
--
ALTER TABLE `EMPLOYII`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `FLIGHTS`
--
ALTER TABLE `FLIGHTS`
  ADD PRIMARY KEY (`FNO`);

--
-- Indexes for table `LOAN`
--
ALTER TABLE `LOAN`
  ADD PRIMARY KEY (`L_NO`),
  ADD KEY `B_NAME` (`B_NAME`);

--
-- Indexes for table `OWNS`
--
ALTER TABLE `OWNS`
  ADD KEY `DRIVER_ID` (`DRIVER_ID`),
  ADD KEY `REG_NO` (`REG_NO`);

--
-- Indexes for table `PARTICIPATED`
--
ALTER TABLE `PARTICIPATED`
  ADD PRIMARY KEY (`DRIVER_ID`,`REG_NO`,`REPORT_NO`),
  ADD KEY `REPORT_NO` (`REPORT_NO`),
  ADD KEY `REG_NO` (`REG_NO`);

--
-- Indexes for table `PERSON`
--
ALTER TABLE `PERSON`
  ADD PRIMARY KEY (`DRIVER_ID`);

--
-- Indexes for table `PROJECT`
--
ALTER TABLE `PROJECT`
  ADD PRIMARY KEY (`PNO`),
  ADD KEY `DNO` (`DNO`);

--
-- Indexes for table `WORKS_FOR`
--
ALTER TABLE `WORKS_FOR`
  ADD PRIMARY KEY (`SSN`,`DNO`),
  ADD KEY `DNO` (`DNO`);

--
-- Indexes for table `WORKS_ON`
--
ALTER TABLE `WORKS_ON`
  ADD PRIMARY KEY (`SSN`,`PNO`),
  ADD KEY `PNO` (`PNO`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_NAME`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`S_NUM`,`C_NAME`),
  ADD KEY `C_NAME` (`C_NAME`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `PersonID` (`PersonID`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`S_NUM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ACCIDENT`
--
ALTER TABLE `ACCIDENT`
  MODIFY `REPORT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `PERSON`
--
ALTER TABLE `PERSON`
  MODIFY `DRIVER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  ADD CONSTRAINT `ACCOUNT_ibfk_1` FOREIGN KEY (`B_NAME`) REFERENCES `BRANCH` (`B_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `BORROWER`
--
ALTER TABLE `BORROWER`
  ADD CONSTRAINT `BORROWER_ibfk_1` FOREIGN KEY (`C_NAME`) REFERENCES `CUSTOMER` (`C_NAME`) ON DELETE CASCADE,
  ADD CONSTRAINT `BORROWER_ibfk_2` FOREIGN KEY (`L_NO`) REFERENCES `LOAN` (`L_NO`) ON DELETE CASCADE;

--
-- Constraints for table `CERTIFIED`
--
ALTER TABLE `CERTIFIED`
  ADD CONSTRAINT `CERTIFIED_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `AIR_EMPLOYEE` (`EID`) ON DELETE CASCADE,
  ADD CONSTRAINT `CERTIFIED_ibfk_2` FOREIGN KEY (`AID`) REFERENCES `AIRCRAFT` (`AID`) ON DELETE CASCADE;

--
-- Constraints for table `CERTIFIED_PILOT`
--
ALTER TABLE `CERTIFIED_PILOT`
  ADD CONSTRAINT `CERTIFIED_PILOT_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `AIR_EMPLOYEE` (`EID`) ON DELETE CASCADE,
  ADD CONSTRAINT `CERTIFIED_PILOT_ibfk_2` FOREIGN KEY (`FNO`) REFERENCES `FLIGHTS` (`FNO`) ON DELETE CASCADE;

--
-- Constraints for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  ADD CONSTRAINT `DEPARTMENT_ibfk_1` FOREIGN KEY (`MGR_SSN`) REFERENCES `EMPLOYII` (`SSN`);

--
-- Constraints for table `DEPOSITOR`
--
ALTER TABLE `DEPOSITOR`
  ADD CONSTRAINT `DEPOSITOR_ibfk_1` FOREIGN KEY (`C_NAME`) REFERENCES `CUSTOMER` (`C_NAME`) ON DELETE CASCADE,
  ADD CONSTRAINT `DEPOSITOR_ibfk_2` FOREIGN KEY (`ACC_NO`) REFERENCES `ACCOUNT` (`ACC_NO`) ON DELETE CASCADE;

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`DEPT_NUM`) REFERENCES `DEPT` (`DEPT_ID`) ON DELETE CASCADE;

--
-- Constraints for table `LOAN`
--
ALTER TABLE `LOAN`
  ADD CONSTRAINT `LOAN_ibfk_1` FOREIGN KEY (`B_NAME`) REFERENCES `BRANCH` (`B_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `OWNS`
--
ALTER TABLE `OWNS`
  ADD CONSTRAINT `OWNS_ibfk_1` FOREIGN KEY (`DRIVER_ID`) REFERENCES `PERSON` (`DRIVER_ID`),
  ADD CONSTRAINT `OWNS_ibfk_2` FOREIGN KEY (`REG_NO`) REFERENCES `CAR` (`REG_NO`);

--
-- Constraints for table `PARTICIPATED`
--
ALTER TABLE `PARTICIPATED`
  ADD CONSTRAINT `PARTICIPATED_ibfk_1` FOREIGN KEY (`REPORT_NO`) REFERENCES `ACCIDENT` (`REPORT_NO`),
  ADD CONSTRAINT `PARTICIPATED_ibfk_2` FOREIGN KEY (`DRIVER_ID`) REFERENCES `PERSON` (`DRIVER_ID`),
  ADD CONSTRAINT `PARTICIPATED_ibfk_3` FOREIGN KEY (`REG_NO`) REFERENCES `CAR` (`REG_NO`);

--
-- Constraints for table `PROJECT`
--
ALTER TABLE `PROJECT`
  ADD CONSTRAINT `PROJECT_ibfk_1` FOREIGN KEY (`DNO`) REFERENCES `DEPARTMENT` (`DNO`);

--
-- Constraints for table `WORKS_FOR`
--
ALTER TABLE `WORKS_FOR`
  ADD CONSTRAINT `WORKS_FOR_ibfk_1` FOREIGN KEY (`DNO`) REFERENCES `DEPARTMENT` (`DNO`),
  ADD CONSTRAINT `WORKS_FOR_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `EMPLOYII` (`SSN`);

--
-- Constraints for table `WORKS_ON`
--
ALTER TABLE `WORKS_ON`
  ADD CONSTRAINT `WORKS_ON_ibfk_1` FOREIGN KEY (`PNO`) REFERENCES `PROJECT` (`PNO`),
  ADD CONSTRAINT `WORKS_ON_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `EMPLOYII` (`SSN`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `faculty` (`F_ID`) ON DELETE CASCADE;

--
-- Constraints for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD CONSTRAINT `enrolled_ibfk_1` FOREIGN KEY (`S_NUM`) REFERENCES `student` (`S_NUM`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolled_ibfk_2` FOREIGN KEY (`C_NAME`) REFERENCES `course` (`C_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`ID`);
--
-- Database: `2016cse077`
--
CREATE DATABASE IF NOT EXISTS `2016cse077` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2016cse077`;

-- --------------------------------------------------------

--
-- Table structure for table `ACCOUNT`
--

CREATE TABLE `ACCOUNT` (
  `ACC_NO` int(11) NOT NULL,
  `B_NAME` varchar(20) DEFAULT NULL,
  `BALANCE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ACCOUNT`
--

INSERT INTO `ACCOUNT` (`ACC_NO`, `B_NAME`, `BALANCE`) VALUES
(123456, 'KORMANGALA', 5000),
(123457, 'SADASHIVANAGAR', 35000),
(123458, 'VITTALNAGAR', 60000),
(123459, 'KASTHURINAGAR', 255600),
(123460, 'VITTALNAGAR', 37890),
(123461, 'MARUTINAGAR', 20000),
(123462, 'SADASHIVANAGAR', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `BORROWER`
--

CREATE TABLE `BORROWER` (
  `C_NAME` varchar(20) NOT NULL,
  `L_NO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BORROWER`
--

INSERT INTO `BORROWER` (`C_NAME`, `L_NO`) VALUES
('KAVYA', '231'),
('KSHAMITHA', '232'),
('SACHIN', '233'),
('LIKITH', '234'),
('ABHAY', '235');

-- --------------------------------------------------------

--
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `B_NAME` varchar(20) NOT NULL,
  `B_CITY` varchar(20) DEFAULT NULL,
  `ASSETS` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BRANCH`
--

INSERT INTO `BRANCH` (`B_NAME`, `B_CITY`, `ASSETS`) VALUES
('KASTHURINAGAR', 'DELHI', 125000),
('KORMANGALA', 'BENGALURU', 20500.3),
('MARUTINAGAR', 'HYDERABAD', 212351.6),
('SADASHIVANAGAR', 'BENGALURU', 154329.5),
('VITTALNAGAR', 'HYDERABAD', 350000);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `C_NAME` varchar(20) NOT NULL,
  `C_STREET` varchar(30) DEFAULT NULL,
  `C_CITY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`C_NAME`, `C_STREET`, `C_CITY`) VALUES
('ABHAY', 'KAMALANAGAR', 'TUMKUR'),
('KAVYA', 'SADASHIVANAGAR', 'BENGALURU'),
('KSHAMITHA', 'MARUTILAYOUT', 'TUMKUR'),
('LIKITH', 'MADHURANAGAR', 'HYDERABAD'),
('SACHIN', 'VITTALNAGAR', 'HYDERABAD'),
('SHEETAL', 'KASTHURINAGAR', 'BENGALURU');

-- --------------------------------------------------------

--
-- Table structure for table `DEPOSITOR`
--

CREATE TABLE `DEPOSITOR` (
  `C_NAME` varchar(20) NOT NULL,
  `ACC_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPOSITOR`
--

INSERT INTO `DEPOSITOR` (`C_NAME`, `ACC_NO`) VALUES
('ABHAY', 123456),
('KAVYA', 123456),
('KAVYA', 123457),
('KSHAMITHA', 123458),
('KSHAMITHA', 123460),
('LIKITH', 123461),
('KAVYA', 123462);

-- --------------------------------------------------------

--
-- Table structure for table `LOAN`
--

CREATE TABLE `LOAN` (
  `L_NO` varchar(10) NOT NULL,
  `B_NAME` varchar(20) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LOAN`
--

INSERT INTO `LOAN` (`L_NO`, `B_NAME`, `AMOUNT`) VALUES
('231', 'SADASHIVANAGAR', 50500.5),
('232', 'VITTALNAGAR', 25000),
('233', 'MARUTINAGAR', 60300.3),
('234', 'KASTHURINAGAR', 45000.7),
('235', 'KORMANGALA', 25534);

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `aid` int(11) NOT NULL,
  `aname` varchar(15) DEFAULT NULL,
  `cruisingrange` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aid`, `aname`, `cruisingrange`) VALUES
(11, 'boeing', 2000),
(12, 'airlines', 6000),
(13, 'air india', 5000),
(14, 'indigo', 900),
(15, 'spicejet', 800);

-- --------------------------------------------------------

--
-- Table structure for table `certified`
--

CREATE TABLE `certified` (
  `eid` int(11) NOT NULL,
  `aid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certified`
--

INSERT INTO `certified` (`eid`, `aid`) VALUES
(100, 11),
(200, 11),
(100, 12),
(400, 12),
(100, 13),
(200, 14),
(500, 14),
(100, 15),
(200, 15),
(600, 15);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_NAME` varchar(10) NOT NULL,
  `Meets_At` varchar(10) DEFAULT NULL,
  `Room` varchar(5) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_NAME`, `Meets_At`, `Room`, `F_ID`) VALUES
('CN', '2:00', 'R128', 104),
('DBMS', '9:00', 'MF01', 101),
('DS', '9:00', 'MF02', 103),
('EM4', '10:00', 'MF01', 103),
('ENGLISH', '2:00', 'MF01', 105),
('OOPJ', '11:15', 'MF04', 103),
('OS', '1:00', 'R128', 103),
('TOC', '10:00', 'MF02', 102);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `ename` varchar(15) DEFAULT NULL,
  `salary` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `salary`) VALUES
(100, 'arjun', 200000),
(200, 'nisha', 150000),
(300, 'kavya', 200000),
(400, 'akhilesh', 80000),
(500, 'priya', 10000),
(600, 'raj', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `S_NUM` int(11) NOT NULL,
  `C_NAME` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`S_NUM`, `C_NAME`) VALUES
(10, 'DBMS'),
(20, 'DBMS'),
(30, 'DBMS'),
(40, 'DBMS'),
(50, 'DBMS'),
(60, 'DS'),
(20, 'EM4'),
(50, 'ENGLISH'),
(30, 'OOPJ'),
(40, 'OS'),
(20, 'TOC');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `F_ID` int(11) NOT NULL,
  `F_Name` varchar(25) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Dept_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`F_ID`, `F_Name`, `Address`, `Dept_ID`) VALUES
(101, 'KAVYA', 'no.92 Hebbala', 41),
(102, 'KISHORE', 'no.12 KRPURAM', 42),
(103, 'AVINASH', '2ND CROSS RAJANKUNTE', 43),
(104, 'PRABHU', '1ST MAIN SANJAY NAGAR', 44),
(105, 'ABHAY', '3RD CROSS BANASHANKARI', 41),
(106, 'SHEETAL', 'HNO 37 KODIGEHALLI', 42),
(107, 'POOJA', 'HNO 61 DOMLUR', 45);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `fno` int(11) NOT NULL,
  `f_from` varchar(10) NOT NULL,
  `f_to` varchar(10) NOT NULL,
  `distance` int(11) DEFAULT NULL,
  `departs` varchar(10) DEFAULT NULL,
  `arrives` varchar(10) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`fno`, `f_from`, `f_to`, `distance`, `departs`, `arrives`, `price`) VALUES
(111, 'bengaluru', 'frankfurt', 7000, '21:30', '7:30', 70000),
(112, 'bengaluru', 'new delhi', 2000, '6:00', '8:30', 9000),
(113, 'bengaluru', 'mumbai', 1000, '7:05', '7:55', 8000),
(114, 'mumbai', 'new delhi', 1000, '19:30', '21:00', 7000),
(115, 'bengaluru', 'new delhi', 2000, '8:00', '9:15', 4000),
(116, 'bengaluru', 'pune', 800, '8:00', '9:25', 5000),
(117, 'bengaluru', 'frankfurt', 7000, '7:30', '21:30', 70500);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `PersonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderNumber`, `PersonID`) VALUES
(1, 77895, 3),
(2, 44678, 3),
(3, 22456, 2),
(4, 24562, 1);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `ID` int(11) NOT NULL,
  `FisrtName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) NOT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`ID`, `FisrtName`, `LastName`, `Age`) VALUES
(1, 'Ola', 'Hansen', 30),
(2, 'Tove', 'Svendson', 23),
(3, 'Kari', 'Pettersen', 20);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `S_NUM` int(11) NOT NULL,
  `S_NAME` varchar(25) DEFAULT NULL,
  `major` varchar(25) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S_NUM`, `S_NAME`, `major`, `level`, `DOB`) VALUES
(10, 'AJAY', 'CSE', 'JR', '1999-06-30'),
(20, 'ARCHANA', 'ISE', 'SR', '1987-06-25'),
(30, 'BHARATH', 'ISE', 'JR', '1989-10-20'),
(40, 'LIKITH', 'MECH', 'JR', '1992-08-15'),
(50, 'BHAVYA', 'MECH', 'JR', '1991-03-28'),
(60, 'NISHA', 'CSE', 'JR', '1992-02-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  ADD PRIMARY KEY (`ACC_NO`),
  ADD KEY `B_NAME` (`B_NAME`);

--
-- Indexes for table `BORROWER`
--
ALTER TABLE `BORROWER`
  ADD PRIMARY KEY (`C_NAME`,`L_NO`),
  ADD KEY `L_NO` (`L_NO`);

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`B_NAME`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`C_NAME`);

--
-- Indexes for table `DEPOSITOR`
--
ALTER TABLE `DEPOSITOR`
  ADD PRIMARY KEY (`C_NAME`,`ACC_NO`),
  ADD KEY `ACC_NO` (`ACC_NO`);

--
-- Indexes for table `LOAN`
--
ALTER TABLE `LOAN`
  ADD PRIMARY KEY (`L_NO`),
  ADD KEY `B_NAME` (`B_NAME`);

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `certified`
--
ALTER TABLE `certified`
  ADD PRIMARY KEY (`eid`,`aid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_NAME`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`S_NUM`,`C_NAME`),
  ADD KEY `C_NAME` (`C_NAME`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`fno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `PersonID` (`PersonID`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`S_NUM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  ADD CONSTRAINT `ACCOUNT_ibfk_1` FOREIGN KEY (`B_NAME`) REFERENCES `BRANCH` (`B_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `BORROWER`
--
ALTER TABLE `BORROWER`
  ADD CONSTRAINT `BORROWER_ibfk_1` FOREIGN KEY (`C_NAME`) REFERENCES `CUSTOMER` (`C_NAME`) ON DELETE CASCADE,
  ADD CONSTRAINT `BORROWER_ibfk_2` FOREIGN KEY (`L_NO`) REFERENCES `LOAN` (`L_NO`) ON DELETE CASCADE;

--
-- Constraints for table `DEPOSITOR`
--
ALTER TABLE `DEPOSITOR`
  ADD CONSTRAINT `DEPOSITOR_ibfk_1` FOREIGN KEY (`C_NAME`) REFERENCES `CUSTOMER` (`C_NAME`) ON DELETE CASCADE,
  ADD CONSTRAINT `DEPOSITOR_ibfk_2` FOREIGN KEY (`ACC_NO`) REFERENCES `ACCOUNT` (`ACC_NO`) ON DELETE CASCADE;

--
-- Constraints for table `LOAN`
--
ALTER TABLE `LOAN`
  ADD CONSTRAINT `LOAN_ibfk_1` FOREIGN KEY (`B_NAME`) REFERENCES `BRANCH` (`B_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `certified`
--
ALTER TABLE `certified`
  ADD CONSTRAINT `certified_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE CASCADE,
  ADD CONSTRAINT `certified_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `aircraft` (`aid`) ON DELETE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `faculty` (`F_ID`) ON DELETE CASCADE;

--
-- Constraints for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD CONSTRAINT `enrolled_ibfk_1` FOREIGN KEY (`S_NUM`) REFERENCES `student` (`S_NUM`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolled_ibfk_2` FOREIGN KEY (`C_NAME`) REFERENCES `course` (`C_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`ID`);
--
-- Database: `AJMAL`
--
CREATE DATABASE IF NOT EXISTS `AJMAL` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `AJMAL`;
--
-- Database: `ajmal`
--
CREATE DATABASE IF NOT EXISTS `ajmal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ajmal`;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` varchar(10) NOT NULL,
  `customerName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

CREATE TABLE `orderline` (
  `quantity` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` varchar(10) NOT NULL,
  `orderDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` varchar(10) NOT NULL,
  `price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `customer` (`customerID`);
--
-- Database: `blogger`
--
CREATE DATABASE IF NOT EXISTS `blogger` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blogger`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `title` varchar(50) DEFAULT NULL,
  `body` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`title`, `body`) VALUES
('Sample Title', 'Kiran is a Kudi'),
('Why do we use it?', 'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries');
--
-- Database: `cse071230318`
--
CREATE DATABASE IF NOT EXISTS `cse071230318` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cse071230318`;

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `aid` int(11) NOT NULL,
  `aname` varchar(15) DEFAULT NULL,
  `cruisingrange` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aid`, `aname`, `cruisingrange`) VALUES
(1, 'Gripen', 7000),
(8, 'Dassault', 3000),
(9, 'Falcon', 8000),
(10, 'Boeing', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `certified`
--

CREATE TABLE `certified` (
  `eid` int(11) NOT NULL,
  `aid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certified`
--

INSERT INTO `certified` (`eid`, `aid`) VALUES
(111, 7),
(112, 8),
(113, 10),
(114, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `eid` int(11) NOT NULL,
  `ename` varchar(15) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`eid`, `ename`, `salary`) VALUES
(111, 'Stuart', 200000),
(112, 'Tom', 150000),
(113, 'Harry', 80000),
(115, 'Jill', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `fno` int(11) NOT NULL,
  `f_from` varchar(20) NOT NULL,
  `f_to` varchar(20) NOT NULL,
  `distance` int(11) DEFAULT NULL,
  `departs` time DEFAULT NULL,
  `arrives` time DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`fno`, `f_from`, `f_to`, `distance`, `departs`, `arrives`, `price`) VALUES
(11, 'Bengaluru', 'Mumbai', 1000, '09:00:00', '10:30:00', 2000),
(12, 'Mumbai', 'NewDelhi', 3000, '09:00:00', '11:00:00', 4000),
(13, 'Bengaluru', 'Frankfurt', 5000, '09:00:00', '13:00:00', 8000),
(14, 'Bengaluru', 'NewDelhi', 6000, '09:00:00', '15:00:00', 9000),
(15, 'Bengaluru', 'NewDelhi', 4000, '10:00:00', '12:00:00', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `flys`
--

CREATE TABLE `flys` (
  `eid` int(11) NOT NULL,
  `fno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `certified`
--
ALTER TABLE `certified`
  ADD PRIMARY KEY (`eid`,`aid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`fno`);

--
-- Indexes for table `flys`
--
ALTER TABLE `flys`
  ADD PRIMARY KEY (`eid`,`fno`),
  ADD KEY `fno` (`fno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flys`
--
ALTER TABLE `flys`
  ADD CONSTRAINT `flys_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employees` (`eid`) ON DELETE CASCADE,
  ADD CONSTRAINT `flys_ibfk_2` FOREIGN KEY (`fno`) REFERENCES `flights` (`fno`) ON DELETE CASCADE;
--
-- Database: `it`
--
CREATE DATABASE IF NOT EXISTS `it` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `it`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`) VALUES
(1, 'John'),
(2, 'Danny'),
(3, 'Ben'),
(4, 'Ray'),
(5, 'Roshan');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `idnum` varchar(12) NOT NULL,
  `password` varchar(10) NOT NULL,
  `voted` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `idnum`, `password`, `voted`) VALUES
(1, '2015CSE122', 'sanjana122', b'1'),
(2, '2015CSE121', 'sanjana121', b'1'),
(3, '2015CSE154', 'varshin154', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `quantity` int(20) NOT NULL,
  `order_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(20) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `voterid` int(20) NOT NULL,
  `vname` varchar(20) NOT NULL,
  `votec` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`voterid`, `vname`, `votec`) VALUES
(1, 'ABC', 4),
(2, 'DEF', 1),
(3, 'GHI', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idnum` (`idnum`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`voterid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `voterid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `order_line_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_line_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
--
-- Database: `marks`
--
CREATE DATABASE IF NOT EXISTS `marks` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `marks`;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `marks` int(10) DEFAULT NULL,
  `grade` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`marks`, `grade`) VALUES
(60, 'a+'),
(70, 'b+'),
(80, 'o'),
(35, 'fail');

-- --------------------------------------------------------

--
-- Table structure for table `vote1`
--

CREATE TABLE `vote1` (
  `s_name` varchar(13) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `addresss` varchar(22) DEFAULT NULL,
  `phone_no` int(15) DEFAULT NULL,
  `email_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vott`
--

CREATE TABLE `vott` (
  `s_name` varchar(20) DEFAULT NULL,
  `phone_no` int(15) DEFAULT NULL,
  `address` varchar(23) DEFAULT NULL,
  `email_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vott`
--

INSERT INTO `vott` (`s_name`, `phone_no`, `address`, `email_id`) VALUES
('ajaml', 12234565, 'bangalore', 'abc@gmail.com'),
('ajl', 12234545, 'mysore', 'bc@gmail.com'),
('ajlx', 12234445, 'kolkata', 'lkbc@gmail.com'),
('ssajlx', 34234445, 'delhi', 'dilbc@gmail.com');
--
-- Database: `roshan`
--
CREATE DATABASE IF NOT EXISTS `roshan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `roshan`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);
--
-- Database: `voting`
--
CREATE DATABASE IF NOT EXISTS `voting` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `voting`;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `section` int(2) DEFAULT NULL,
  `votecount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `section`, `votecount`) VALUES
('2015CSE010', 'Calypso', 1, 2),
('2015CSE011', 'Bootstrap Bill', 1, 5),
('2015CSE012', 'Jack Sparrow', 2, 8),
('2015CSE013', 'Philip Swan', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `section` int(2) DEFAULT NULL,
  `voted` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`, `section`, `voted`) VALUES
('2015CSE001', 'Jack Sparrow', 'pass001', 1, 1),
('2015CSE002', 'Elizabeth Swan', 'pass002', 1, 1),
('2015CSE003', 'Will Turner', 'pass003', 1, 1),
('2015CSE004', 'Barbosa', 'pass004', 2, 1),
('2015CSE005', 'Master Gibbs', 'pass005', 2, 1),
('2015CSE006', 'Davy Jones', 'pass006', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
