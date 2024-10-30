-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 05:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playschool_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `absent_teacher_table`
--

CREATE TABLE `absent_teacher_table` (
  `S_No` int(11) DEFAULT NULL,
  `Absent_Teacher_Name` varchar(255) DEFAULT NULL,
  `New_Teacher_ID_Name` varchar(255) DEFAULT NULL,
  `Assign_Day` varchar(255) DEFAULT NULL,
  `Assign_Period` varchar(100) DEFAULT NULL,
  `Assign_Period_Details` varchar(255) DEFAULT NULL,
  `Assign_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accg`
--

CREATE TABLE `accg` (
  `CAT_CODE` double NOT NULL,
  `CAT_ABBR` varchar(150) DEFAULT NULL,
  `CAT_DESC` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accg`
--

INSERT INTO `accg` (`CAT_CODE`, `CAT_ABBR`, `CAT_DESC`) VALUES
(1, 'ACADEMIC', 'ACADEMIC                                                                                                                                   '),
(2, 'SUNIL_ENTERPRISES', 'SUNIL_ENTERPRISES');

-- --------------------------------------------------------

--
-- Table structure for table `accscg`
--

CREATE TABLE `accscg` (
  `CAT_ABBR` varchar(30) DEFAULT NULL,
  `CAT_DESC` varchar(50) DEFAULT NULL,
  `CAT_Amt` double DEFAULT NULL,
  `cat_code` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accscg`
--

INSERT INTO `accscg` (`CAT_ABBR`, `CAT_DESC`, `CAT_Amt`, `cat_code`) VALUES
('CAPITAL FUND', 'CAPITAL FUND', 0, 1),
('RESERVE & SURPLUS', 'RESURVE & SURPLUS', 0, 2),
('SECURED LOANS', 'SECURED LOANS', 0, 3),
('UNSECURED LOANS', 'UNSECURED LOANS', 0, 4),
('SECURITY DEPOSITS', 'SECURITY DEPOSITS', 900, 5),
('IYYIUYIU', 'JKHIO', 89, 6),
('FIXED ASSETS', 'FIXED ASSETS', 0, 7),
('INVESTMENTS', 'INVESTMENTS', 0, 8),
('CURRENT ASSETS', 'CURRENT ASSETS', 0, 9),
('LOANS', 'LOANS', 0, 10),
('SECURITY DEPOSITS (ASSET)', 'SECURITY DEPOSITS (ASSET)', 890, 11),
('ADVANCES', 'ADVANCES', 0, 12),
('CASH & BANK BALANCES', 'CASH & BANK BALANCES', 0, 13),
('FEES/SALES', 'FEES/SALES', 0, 14),
('ESTABLISHMENT', 'ESTABLISHMENT', 0, 15),
('ADMINISTRATION CHARGES', 'ADMINISTRATION CHARGES', 0, 16),
('RENT, RATES & TAXES', 'RENT, RATES & TAXES', 0, 17),
('UTILITIES', 'UTILITIES', 0, 18),
('COMMUNICATION EXPENSES', 'COMMUNICATION EXPENSES', 0, 19),
('TRAVELLING & CONVEYANCE', 'TRAVELLING & CONVEYANCE', 0, 20),
('WELFARE, ENTERTAINMENT', 'WELFARE, ENTERTAINMENT', 0, 21),
('STATIONARY AND SUPPLIES', 'STATIONARY AND SUPPLIES', 0, 22),
('MEMBERSHIP & SUBSCRIPTION', 'MEMBERSHIP & SUBSCRIPTION', 0, 23),
('ADVERTISEMENTS', 'ADVERTISEMENTS', 0, 24),
('INSURANCE', 'INSURANCE', 0, 25),
('VEHICLE MAINTENANCE CHARGES', 'VEHICLE MAINTENANCE CHARGES', 0, 26),
('MAINTENANCE EXPENSES', 'MAINTENANCE EXPENSES', 0, 27),
('INTEREST PAID ON LOANS', 'INTEREST PAID ON LOANS', 0, 28),
('LEGAL, PROFESSIONAL SUPPORT', 'LEGAL, PROFESSIONAL SUPPORT', 0, 29),
('AUDIT FEES', 'AUDIT FEES', 0, 30),
('ASSISTANCE', 'ASSISTANCE', 0, 31),
('OTHER EXPENSES', 'OTHER EXPENSES', 0, 32),
('EXPENSES OF EXCEPTIONAL NATURE', 'EXPENSES OF EXCEPTIONAL NATURE', 0, 33),
('PRIOR PERIOD EXPENSES', 'PRIOR PERIOD EXPENSES', 0, 34),
('DEFERRED REVENUE EXP. WR OFF', 'DEFERRED REVENUE EXP. WR OFF', 0, 35),
('WELFARE EXPENSES', 'WELFARE EXPENSES', 0, 36),
('TRANSPORT EXPENSES', 'TRANSPORT EXPENSES', 0, 37),
('OTHER INCOME', 'OTHER INCOME', 0, 38),
('DEPRECIATION', 'DEPRECIATION', 0, 39),
('SCHOOL FUND TRANSFER', 'SCHOOL FUND TRANSFER', 100000, 40),
('SANDEEP AMOUNT', 'AUDIT AMOUNT', 0, 41),
('RISHABH JAIN', 'RISHABH', 10000, 42),
('RISHABH ', 'RJ AUDIT', 150050, 43),
('CASH A/C', 'CASH A/C', 0, 44),
('CHECKING ', 'CHECKING DESCRIPTION', 0, 122);

-- --------------------------------------------------------

--
-- Table structure for table `acessionmaster`
--

CREATE TABLE `acessionmaster` (
  `RefNo` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acessionmaster`
--

INSERT INTO `acessionmaster` (`RefNo`) VALUES
(14524);

-- --------------------------------------------------------

--
-- Table structure for table `acgroup`
--

CREATE TABLE `acgroup` (
  `AcName` varchar(100) DEFAULT NULL,
  `GName` varchar(50) DEFAULT NULL,
  `AcType` varchar(50) DEFAULT NULL,
  `YesNo` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acgroup`
--

INSERT INTO `acgroup` (`AcName`, `GName`, `AcType`, `YesNo`) VALUES
('ACCOUNTS PAYABLE', 'G1', 'Libilities', 'No'),
('DEPOSITS (Assets)', 'G10', 'Assets', 'No'),
('SALES TAX', 'G11', 'Libilities', 'No'),
('EXPENDITURE', 'G12', 'Expenses', 'No'),
('EXPENSES (Trading A/C)', 'G13', 'Expenses', 'No'),
('EXPENSES (Profit & Loss A/C)', 'G14', 'Expenses', 'No'),
('FIXED ASSETS', 'G15', 'Assets', 'No'),
('INCOME (Revenue)', 'G16', 'Income', 'No'),
('INVESTMENTS', 'G17', 'Assets', 'No'),
('LOANS & ADVANCES (Assets)', 'G18', 'Assets', 'No'),
('LOAN (Liabilities)', 'G19', 'Libilities', 'No'),
('ACCOUNTS RECEIVABLE', 'G2', 'Assets', 'No'),
('MFG. & TDG. EXPENSES', 'G20', 'Expenses', 'No'),
('MISC. EXPENSES (Assets)', 'G21', 'Expenses', 'No'),
('PROVISIONS', 'G22', 'Liabilities', 'No'),
('PURCHASE ACCOUNT', 'G23', 'Expenses', 'No'),
('RESERVES & SURPLUS', 'G24', 'Liabilities', 'No'),
('SALES ACCOUNT', 'G25', 'Income', 'No'),
('SECURED LOANS', 'G26', 'Liabilities', 'No'),
('OPENING STOCK', 'G27', 'Assets', 'No'),
('SUNDRY CREDITORS', 'G28', 'Liabilities', 'No'),
('SUNDRY DEBTORS', 'G29', 'Assets', 'No'),
('ADMN. EXPENSES', 'G3', 'Expenses', 'No'),
('SUSPENSE ACCOUNT', 'G30', 'Expenses', 'No'),
('UNSECURED LOANS', 'G31', 'Liabilities', 'No'),
('PURCHASE RETURNS', 'G32', 'Expenses', 'No'),
('SALES RETURNS', 'G33', 'Income', 'No'),
('WITHDRAWAL', 'G34', 'Expenses', 'No'),
('ADDITIONAL CAPITAL', 'G35', 'Liabilities', 'No'),
('CLOSING STOCK', 'G36', 'Assets', 'No'),
('BANK ACCOUNT', 'G4', 'Assets', 'No'),
('BANK OCC A/C', 'G5', 'Liabilities', 'No'),
('CAPITAL ACCOUNT', 'G6', 'Liabilities', 'No'),
('CASH A/C', 'G7', 'Assets', 'No'),
('ASSETS', 'G8', 'Assets', 'No'),
('LIABILITIES', 'G9', 'Liabilities', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `acnar`
--

CREATE TABLE `acnar` (
  `Id` int(11) NOT NULL,
  `Act` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acnar`
--

INSERT INTO `acnar` (`Id`, `Act`) VALUES
(1, 'THIS IS THE FIRST NARRATI'),
(2, 'THIS IS THE THIRD NARATIONS'),
(3, 'THIS IS THE THIRD NARATION'),
(4, 'being cash paid to '),
(5, 'being cheque paid in favour of Rishabh Jain'),
(6, 'qwertyuioplkjhgfdsazxcvbnm          qwertyuioplkjh'),
(7, 'THIS IS NARRATION');

-- --------------------------------------------------------

--
-- Table structure for table `activity_master`
--

CREATE TABLE `activity_master` (
  `Activity_Id` int(11) DEFAULT NULL,
  `Activity` varchar(50) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `activity_nonactivity`
--

CREATE TABLE `activity_nonactivity` (
  `activity` bit(1) DEFAULT NULL,
  `Non_activity` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_no`
--

CREATE TABLE `adm_no` (
  `ID` varchar(200) NOT NULL,
  `adm_no` varchar(20) NOT NULL,
  `studentid` varchar(20) DEFAULT NULL,
  `chartno` varchar(20) DEFAULT NULL,
  `bonano` varchar(255) DEFAULT NULL,
  `dobno` varchar(255) DEFAULT NULL,
  `tcno` varchar(20) DEFAULT NULL,
  `Current_Year` varchar(20) DEFAULT NULL,
  `FeeType` smallint(6) DEFAULT NULL,
  `MasterLedger` int(11) DEFAULT NULL,
  `tchead` varchar(50) DEFAULT NULL,
  `Tution_fee_Head` int(11) DEFAULT NULL,
  `Caution_Money` int(11) DEFAULT NULL,
  `EMP_ID` varchar(255) DEFAULT NULL,
  `STD_ID` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_no`
--

INSERT INTO `adm_no` (`ID`, `adm_no`, `studentid`, `chartno`, `bonano`, `dobno`, `tcno`, `Current_Year`, `FeeType`, `MasterLedger`, `tchead`, `Tution_fee_Head`, `Caution_Money`, `EMP_ID`, `STD_ID`) VALUES
('1', '2324001', 'A', '1', '5', '2', '9', '2024', 5, 6, 'BCH/24-25', 5, 9, '3', 'EMP/');

-- --------------------------------------------------------

--
-- Table structure for table `advance_salary_history`
--

CREATE TABLE `advance_salary_history` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` varchar(255) NOT NULL,
  `NO_OF_INSTALLMENT` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT 1 COMMENT '1 = ADVANCE,  2 = DEDUCTION',
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `allowance_master`
--

CREATE TABLE `allowance_master` (
  `Alo_ID1` int(11) DEFAULT NULL,
  `Alo_Nm1` varchar(255) DEFAULT NULL,
  `Alo_ID2` int(11) DEFAULT NULL,
  `Alo_Nm2` varchar(255) DEFAULT NULL,
  `Alo_ID3` int(11) DEFAULT NULL,
  `Alo_Nm3` varchar(255) DEFAULT NULL,
  `Alo_ID4` int(11) DEFAULT NULL,
  `Alo_Nm4` varchar(255) DEFAULT NULL,
  `Alo_ID5` int(11) DEFAULT NULL,
  `Alo_Nm5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allowance_master`
--

INSERT INTO `allowance_master` (`Alo_ID1`, `Alo_Nm1`, `Alo_ID2`, `Alo_Nm2`, `Alo_ID3`, `Alo_Nm3`, `Alo_ID4`, `Alo_Nm4`, `Alo_ID5`, `Alo_Nm5`) VALUES
(1, '2', 2, '3', 3, '4', 4, '5', 5, '6');

-- --------------------------------------------------------

--
-- Table structure for table `allowance_name`
--

CREATE TABLE `allowance_name` (
  `ID` int(11) DEFAULT NULL,
  `Allowance_Name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allowance_name`
--

INSERT INTO `allowance_name` (`ID`, `Allowance_Name`) VALUES
(1, 'TA'),
(2, 'Med. Alw'),
(3, 'Other Alw'),
(4, 'Spl. Alw'),
(5, 'Misc. Alw');

-- --------------------------------------------------------

--
-- Table structure for table `amemp`
--

CREATE TABLE `amemp` (
  `SNo` int(11) DEFAULT NULL,
  `EID` varchar(50) DEFAULT NULL,
  `EN` varchar(50) DEFAULT NULL,
  `PAdd` varchar(100) DEFAULT NULL,
  `PCity` varchar(50) DEFAULT NULL,
  `PDist` varchar(50) DEFAULT NULL,
  `PState` varchar(50) DEFAULT NULL,
  `PPin` varchar(50) DEFAULT NULL,
  `PPh` varchar(50) DEFAULT NULL,
  `PFax` varchar(50) DEFAULT NULL,
  `PMob` varchar(50) DEFAULT NULL,
  `PEmail` varchar(50) DEFAULT NULL,
  `CAdd` varchar(100) DEFAULT NULL,
  `CCity` varchar(50) DEFAULT NULL,
  `CDist` varchar(50) DEFAULT NULL,
  `CState` varchar(50) DEFAULT NULL,
  `CPin` varchar(50) DEFAULT NULL,
  `CPh` varchar(50) DEFAULT NULL,
  `CFax` varchar(50) DEFAULT NULL,
  `CMob` varchar(50) DEFAULT NULL,
  `CEmail` varchar(50) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `DOJ_DAV` datetime DEFAULT NULL,
  `DOJ_Sch` datetime DEFAULT NULL,
  `DORetire` datetime DEFAULT NULL,
  `DOJ_PF` datetime DEFAULT NULL,
  `DOJ_Scale` datetime DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `Qul` varchar(50) DEFAULT NULL,
  `Cadre` int(11) DEFAULT NULL,
  `Des` int(11) DEFAULT NULL,
  `PFAcNo` varchar(50) DEFAULT NULL,
  `PenAcNo` varchar(50) DEFAULT NULL,
  `PayScale` varchar(50) DEFAULT NULL,
  `BasicPay` double DEFAULT NULL,
  `BankAcNo` varchar(50) DEFAULT NULL,
  `PanNo` varchar(50) DEFAULT NULL,
  `CLeave` int(11) DEFAULT NULL,
  `ELeave` int(11) DEFAULT NULL,
  `Adhoc` bit(1) DEFAULT NULL,
  `Mar_Status` varchar(50) DEFAULT NULL,
  `InsPol1` varchar(50) DEFAULT NULL,
  `PremAmt1` decimal(18,2) DEFAULT NULL,
  `INomi1` varchar(50) DEFAULT NULL,
  `InsPol2` varchar(50) DEFAULT NULL,
  `PremAmt2` decimal(18,2) DEFAULT NULL,
  `INomi2` varchar(50) DEFAULT NULL,
  `InsPol3` varchar(50) DEFAULT NULL,
  `PremAmt3` decimal(18,2) DEFAULT NULL,
  `INomi3` varchar(50) DEFAULT NULL,
  `InsPol4` varchar(50) DEFAULT NULL,
  `PremAmt4` decimal(18,2) DEFAULT NULL,
  `INomi4` varchar(50) DEFAULT NULL,
  `InsPol5` varchar(50) DEFAULT NULL,
  `PremAmt5` decimal(18,2) DEFAULT NULL,
  `INomi5` varchar(50) DEFAULT NULL,
  `NName1` varchar(50) DEFAULT NULL,
  `NAdd1` varchar(140) DEFAULT NULL,
  `NRel1` varchar(20) DEFAULT NULL,
  `NDob1` datetime DEFAULT NULL,
  `NShare1` decimal(18,2) DEFAULT NULL,
  `NGName1` varchar(50) DEFAULT NULL,
  `NName2` varchar(50) DEFAULT NULL,
  `NAdd2` varchar(140) DEFAULT NULL,
  `NRel2` varchar(20) DEFAULT NULL,
  `NDob2` datetime DEFAULT NULL,
  `NShare2` decimal(18,2) DEFAULT NULL,
  `NGName2` varchar(50) DEFAULT NULL,
  `NName3` varchar(50) DEFAULT NULL,
  `NAdd3` varchar(140) DEFAULT NULL,
  `NRel3` varchar(20) DEFAULT NULL,
  `NDob3` datetime DEFAULT NULL,
  `NShare3` decimal(18,2) DEFAULT NULL,
  `NGName3` varchar(50) DEFAULT NULL,
  `FName1` varchar(50) DEFAULT NULL,
  `FRel1` varchar(20) DEFAULT NULL,
  `FDOB1` datetime DEFAULT NULL,
  `FName2` varchar(50) DEFAULT NULL,
  `FRel2` varchar(20) DEFAULT NULL,
  `FDOB2` datetime DEFAULT NULL,
  `FName3` varchar(50) DEFAULT NULL,
  `FRel3` varchar(20) DEFAULT NULL,
  `FDOB3` datetime DEFAULT NULL,
  `FName4` varchar(50) DEFAULT NULL,
  `FRel4` varchar(20) DEFAULT NULL,
  `FDOB4` datetime DEFAULT NULL,
  `FName5` varchar(50) DEFAULT NULL,
  `FRel5` varchar(20) DEFAULT NULL,
  `FDOB5` datetime DEFAULT NULL,
  `FName6` varchar(50) DEFAULT NULL,
  `FRel6` varchar(20) DEFAULT NULL,
  `FDOB6` datetime DEFAULT NULL,
  `FName7` varchar(50) DEFAULT NULL,
  `FRel7` varchar(20) DEFAULT NULL,
  `FDOB7` datetime DEFAULT NULL,
  `FName8` varchar(50) DEFAULT NULL,
  `FRel8` varchar(20) DEFAULT NULL,
  `FDOB8` datetime DEFAULT NULL,
  `FName9` varchar(50) DEFAULT NULL,
  `FRel9` varchar(20) DEFAULT NULL,
  `FDOB9` datetime DEFAULT NULL,
  `FName10` varchar(50) DEFAULT NULL,
  `FRel10` varchar(20) DEFAULT NULL,
  `FDOB10` datetime DEFAULT NULL,
  `LLICNo` varchar(50) DEFAULT NULL,
  `LDOI` datetime DEFAULT NULL,
  `LIssFrm` varchar(50) DEFAULT NULL,
  `LVfrm` datetime DEFAULT NULL,
  `LVUpto` datetime DEFAULT NULL,
  `LVType` varchar(20) DEFAULT NULL,
  `LDOR` datetime DEFAULT NULL,
  `AppType` varchar(10) DEFAULT NULL,
  `Tranfrom` varchar(50) DEFAULT NULL,
  `LastPFNo` varchar(20) DEFAULT NULL,
  `BStop` int(11) DEFAULT NULL,
  `Library` bit(1) DEFAULT NULL,
  `AdmNo1` varchar(10) DEFAULT NULL,
  `AdmNo2` varchar(10) DEFAULT NULL,
  `AdmNo3` varchar(10) DEFAULT NULL,
  `AdmNo4` varchar(10) DEFAULT NULL,
  `AdmNo5` varchar(10) DEFAULT NULL,
  `BGroup` varchar(5) DEFAULT NULL,
  `VAdhoc` decimal(18,2) DEFAULT NULL,
  `NIncreDate` datetime DEFAULT NULL,
  `InsPol6` varchar(50) DEFAULT NULL,
  `PremAmt6` decimal(18,2) DEFAULT NULL,
  `INomi6` varchar(50) DEFAULT NULL,
  `InsPol7` varchar(50) DEFAULT NULL,
  `PremAmt7` decimal(18,2) DEFAULT NULL,
  `INomi7` varchar(50) DEFAULT NULL,
  `InsPol8` varchar(50) DEFAULT NULL,
  `PremAmt8` decimal(18,2) DEFAULT NULL,
  `INomi8` varchar(50) DEFAULT NULL,
  `LWP` smallint(6) DEFAULT NULL,
  `Grade_Pay` smallint(6) DEFAULT NULL,
  `PFPen` bit(1) DEFAULT NULL,
  `HRent` bit(1) DEFAULT NULL,
  `ESI_NO` varchar(20) DEFAULT NULL,
  `ESITF` bit(1) DEFAULT NULL,
  `PayType` bit(1) DEFAULT NULL,
  `IWH` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `app_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` text NOT NULL,
  `class` varchar(25) NOT NULL,
  `email` text NOT NULL,
  `number` varchar(15) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `submit_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`app_id`, `name`, `father_name`, `mother_name`, `class`, `email`, `number`, `address1`, `address2`, `status`, `submit_date`) VALUES
(1, 'TEST', 'TEST', 'TEST', 'Prep', 'abc@gmail.com', '1111111111', 'TEST', 'TEST', '2', '2024-10-19'),
(2, 'SONU YADAV', 'TEST', 'TEST', 'Baby Pre-Nursery', 'abc@gmail.com', '2313133213', 'sssssssssssss', 'aaaaaaaaaaaaaaa', '2', '2024-10-26'),
(3, 'sdfdsf', 'sdfds', 'dsfsf', 'Prep', 'dffdgds@sdgdsg', '5345435345', 'sdfgd', 'dggsd', '2', '2024-10-26'),
(4, 'sasad', 'sadsa', 'asdsa', 'Baby Pre-Nursery', 'wesdads@sdfsd', '2213213213', 'dfsf', 'sdfdf@dgdg', '2', '2024-10-26'),
(5, 'fdssdfs', 'fafdafd', 'sdfssfad', 'Baby Pre-Nursery', 'dsffd@dffb', '2434242342', 'sdsad', '333sds', '2', '2024-10-26'),
(6, 'fdssdfs', 'fafdafd', 'sdfssfad', 'Baby Pre-Nursery', 'dsffd@dffb', '2434242342', 'qwdwqd', '333sds', '2', '2024-10-26'),
(7, 'Rishabh Jain', 'S K JAIN', 'M JAIN', 'Pre-Nursery', 'rishabhjain3034@gmail.com', '9304002355', 'Ranchi', 'Ranchi', '2', '2024-10-28'),
(8, 'Rishabh Jain', 'S K JAIN', 'M JAIN', 'Prep', 'rishabhjain30394@gmail.com', '9304002355', '1259/J Sumer Villa Above Bachpan Play School\r\nNew Anantpur Over Bridge', '1259/J Sumer Villa Above Bachpan Play School\r\nNew Anantpur Over Bridge', '1', '2024-10-28'),
(26, 'ADS', 'ASDASD', 'ASDASD', 'Mother Toddler', 'Ghgsa@gmail', '1221212121', 'ASDASDA', 'ASDASDAS', '1', '2024-10-29'),
(27, 'ADS', 'ASDASD', 'ASDASD', 'Mother Toddler', 'Ghgsa@gmail', '1221212121', 'ASDASDA', 'ASDASDAS', '1', '2024-10-29'),
(28, 'ADS', 'ASDASD', 'ASDASD', 'Mother Toddler', 'Ghgsa@gmail', '1221212121', 'ASDASDA', 'ASDASDAS', '1', '2024-10-29'),
(29, 'ADS', 'ASDASD', 'ASDASD', 'Mother Toddler', 'Ghgsa@gmail', '1221212121', 'ASDASDA', 'ASDASDAS', '1', '2024-10-29'),
(30, 'ADS', 'ASDASD', 'ASDASD', 'Mother Toddler', 'Ghgsa@gmail', '1221212121', 'ASDASDA', 'ASDASDAS', '1', '2024-10-29'),
(31, 'ADS', 'ASDASD', 'ASDASD', 'Mother Toddler', 'Ghgsa@gmail', '1221212121', 'ASDASDA', 'ASDASDAS', '1', '2024-10-29'),
(32, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(33, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(34, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(35, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(36, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(37, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(38, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(39, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(40, 'sdasda', 'dasdasd', 'asdasdas', 'Mother Toddler', 'Ghgsa@gmail', '312312121', 'asdasdas', 'asdasdasd', '1', '2024-10-29'),
(41, 'qsdasd', 'dasdasd', 'asdasd', 'Mother Toddler', 'Ghgsa@gmail', '1231231231', 'asdasdasd', 'qadqwdfad', '1', '2024-10-29'),
(42, 'sdqwdds', 'asdasd', 'qdsasd', 'Mother Toddler', 'me@mydomain.com', '1111111111', 'SDASDAS', 'aSDASDA', '1', '2024-10-29'),
(43, 'riya', 'riya', 'riya', 'Mother Toddler', 'Ghgsa@gmail', '2121212121', 'zxcsa', 'zcZC', '1', '2024-10-29'),
(44, 'riya', 'riya', 'riya', 'Mother Toddler', 'Ghgsa@gmail', '2121212121', 'zxcsa', 'zcZC', '1', '2024-10-29'),
(45, 'riya', 'riya', 'riya', 'Mother Toddler', 'Ghgsa@gmail', '2121212121', 'zxcsa', 'zcZC', '1', '2024-10-29'),
(46, 'casdcasc', 'asdasdad', 'asdasda', 'Mother Toddler', 'A@GMAIL.COM', '2111111111', 'asdasdasd', 'asdasd', '1', '2024-10-29'),
(47, 'casdcasc', 'asdasdad', 'asdasda', 'Mother Toddler', 'A@GMAIL.COM', '2111111111', 'asdasdasd', 'asdasd', '1', '2024-10-29'),
(48, 'asdas', 'dasdasd', 'asdasd', 'Mother Toddler', 'Ghgsa@gmail', '1212312312', 'asdasdasd', 'qawdasdasd', '1', '2024-10-29'),
(49, 'sam', 'adas', 'dasdas', 'Toddler', 'me@mydomain.com', '3333333333', 'cascasc', 'asdcascasc', '1', '2024-10-29'),
(50, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(51, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(52, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(53, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(54, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(55, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(56, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(57, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(58, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(59, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(60, 'casd', 'asdasd', 'dasdasd', 'Mother Toddler', 'Ghgsa@gmail', '2222212121', 'sdasdasd', 'adasda', '1', '2024-10-29'),
(61, 'asdasd', 'asdasd', 'asdasda', 'Mother Toddler', 'r@gmail.com', '1231231231', 'dasdasd', 'asdasda', '1', '2024-10-29'),
(62, 'asdasd', 'asdasd', 'asdasda', 'Mother Toddler', 'r@gmail.com', '1231231231', 'dasdasd', 'asdasda', '1', '2024-10-29'),
(63, 'asdasd', 'asdasd', 'asdasda', 'Mother Toddler', 'r@gmail.com', '1231231231', 'dasdasd', 'asdasda', '1', '2024-10-29'),
(64, 'asdasd', 'asdasd', 'asdasda', 'Mother Toddler', 'r@gmail.com', '1231231231', 'dasdasd', 'asdasda', '1', '2024-10-29'),
(65, 'asdasd', 'asdasd', 'asdasda', 'Mother Toddler', 'r@gmail.com', '1231231231', 'dasdasd', 'asdasda', '2', '2024-10-29'),
(66, 'casdasd', 'asda', 'sdasda', 'Mother Toddler', 'Ghgsa@gmail', '2131231231', 'asdasda', 'asdasd', '2', '2024-10-29'),
(67, 'sfd', 'fsdfsd', 'fdsfs', 'Mother Toddler', 'Ghgsa@gmail', '2222222222', 'sdfsdf', 'asdfasdf', '1', '2024-10-29'),
(68, 'ergd', 'ggsfsd', 'dfgsdfg', 'Prep/Sr.KG', 'Ghgsa@gmail', '1344232342', 'fgjhfgjhgh', 'gdjkfhj', '1', '2024-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `arrear`
--

CREATE TABLE `arrear` (
  `EMPID` varchar(6) DEFAULT NULL,
  `MONTH` double DEFAULT NULL,
  `YEAR` double DEFAULT NULL,
  `MTH_NAME` varchar(12) DEFAULT NULL,
  `YEAR_NAME` double DEFAULT NULL,
  `WORK_DAY` double DEFAULT NULL,
  `BASIC` double DEFAULT NULL,
  `DA` double DEFAULT NULL,
  `DP` double DEFAULT NULL,
  `CCA_PAID` double DEFAULT NULL,
  `DA_RATE_PD` double DEFAULT NULL,
  `BASIC_ARR` double DEFAULT NULL,
  `DA_ARR` double DEFAULT NULL,
  `DP_ARR` double DEFAULT NULL,
  `CCA_DUE` double DEFAULT NULL,
  `DA_RATE_DU` double DEFAULT NULL,
  `CCA_ARR` double DEFAULT NULL,
  `OTHER_ARR` double DEFAULT NULL,
  `HRA_PAID` double DEFAULT NULL,
  `HRA_DUE` double DEFAULT NULL,
  `pfAcNo` varchar(50) DEFAULT NULL,
  `f1` int(11) DEFAULT NULL,
  `f2` int(11) DEFAULT NULL,
  `PFA` int(11) DEFAULT NULL,
  `PENA` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arrearvi`
--

CREATE TABLE `arrearvi` (
  `EMPID` varchar(6) DEFAULT NULL,
  `MONTH` double DEFAULT NULL,
  `YEAR` double DEFAULT NULL,
  `MTH_NAME` varchar(12) DEFAULT NULL,
  `YEAR_NAME` double DEFAULT NULL,
  `WORK_DAY` double DEFAULT NULL,
  `BASIC` double DEFAULT NULL,
  `Grade_Paid` double DEFAULT NULL,
  `DA` double DEFAULT NULL,
  `Transport` double DEFAULT NULL,
  `HRA_Paid` double DEFAULT NULL,
  `Med_Paid` smallint(6) DEFAULT NULL,
  `PaidDA` smallint(6) DEFAULT NULL,
  `BASIC_ARR` double DEFAULT NULL,
  `GRADE_ARR` int(11) DEFAULT NULL,
  `DA_ARR` double DEFAULT NULL,
  `TA_ARR` double DEFAULT NULL,
  `HRA_ARR` double DEFAULT NULL,
  `MED_ARR` double DEFAULT NULL,
  `DA_PAYABLE` double DEFAULT NULL,
  `ARREAR_AMT` double DEFAULT NULL,
  `PF_AMT` double DEFAULT NULL,
  `PEN_AMT` double DEFAULT NULL,
  `pfAcNo` varchar(50) DEFAULT NULL,
  `Adhoc` decimal(18,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arrearvvi`
--

CREATE TABLE `arrearvvi` (
  `EMPID` varchar(6) DEFAULT NULL,
  `MONTH` double DEFAULT NULL,
  `YEAR` double DEFAULT NULL,
  `MTH_NAME` varchar(12) DEFAULT NULL,
  `YEAR_NAME` double DEFAULT NULL,
  `WORK_DAY` double DEFAULT NULL,
  `BASIC` double DEFAULT NULL,
  `Grade_Paid` double DEFAULT NULL,
  `DA` double DEFAULT NULL,
  `Transport` double DEFAULT NULL,
  `HRA_Paid` double DEFAULT NULL,
  `Med_Paid` smallint(6) DEFAULT NULL,
  `PaidDA` smallint(6) DEFAULT NULL,
  `BASIC_ARR` double DEFAULT NULL,
  `GRADE_ARR` int(11) DEFAULT NULL,
  `DA_ARR` double DEFAULT NULL,
  `TA_ARR` double DEFAULT NULL,
  `HRA_ARR` double DEFAULT NULL,
  `MED_ARR` double DEFAULT NULL,
  `DA_PAYABLE` double DEFAULT NULL,
  `ARREAR_AMT` double DEFAULT NULL,
  `PF_AMT` double DEFAULT NULL,
  `PEN_AMT` double DEFAULT NULL,
  `pfAcNo` varchar(50) DEFAULT NULL,
  `MNa` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arr_head`
--

CREATE TABLE `arr_head` (
  `EMPID` varchar(6) DEFAULT NULL,
  `MONTH` double DEFAULT NULL,
  `YEAR` double DEFAULT NULL,
  `EFFECTIVE` datetime DEFAULT NULL,
  `APPROVED` datetime DEFAULT NULL,
  `SCALE` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_entry`
--

CREATE TABLE `attendance_entry` (
  `class_nm` varchar(255) DEFAULT NULL,
  `sec_nm` varchar(255) DEFAULT NULL,
  `admno` varchar(255) DEFAULT NULL,
  `snm` varchar(255) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `att_date` datetime DEFAULT NULL,
  `mnth` varchar(255) DEFAULT NULL,
  `Slno` int(11) DEFAULT NULL,
  `year_nm` int(11) DEFAULT NULL,
  `sel_one` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `att_temp_save`
--

CREATE TABLE `att_temp_save` (
  `id` int(11) NOT NULL,
  `admno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `att_temp_save`
--

INSERT INTO `att_temp_save` (`id`, `admno`, `name`, `roll`, `user_id`) VALUES
(1, '216738', 'SHASHI PANDEY', 0, 'Baby Pre-Nursery'),
(2, '206274', 'ETHAN SHALEEN', 0, 'Baby Pre-Nursery'),
(3, '216738', 'SHASHI PANDEY', 0, 'Baby Pre-Nursery'),
(4, '206274', 'ETHAN SHALEEN', 0, 'Baby Pre-Nursery');

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `Bank_Code` int(11) DEFAULT NULL,
  `Bank_Name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`Bank_Code`, `Bank_Name`) VALUES
(1, 'Axis Bank'),
(2, 'Allahabad Bank'),
(3, 'American Express'),
(4, 'Andhra Bank'),
(5, 'Arab Bangladesh'),
(6, 'Bank of Baroda India'),
(7, 'Bank Muscat'),
(8, 'Bank of America'),
(9, 'Bank of India'),
(10, 'Bank of Maharashtra'),
(11, 'Bank of Punjab'),
(12, 'Bank of Rajasthan'),
(13, 'Barclays Bank PLC'),
(14, 'Bharat Overseas'),
(15, 'Canara Bank'),
(16, 'Catholic Syrian'),
(17, 'Centurion'),
(18, 'Ceylon'),
(19, 'Citibank'),
(20, 'Corporation'),
(21, 'Cosmos Co-operative Bank'),
(22, 'DBS'),
(23, 'Dena'),
(24, 'Deutsche Bank'),
(25, 'Development Credit'),
(26, 'Dhanlakshmi'),
(27, 'Export-Import Bank Of India'),
(28, 'Federal Bank India'),
(29, 'Global Trust'),
(30, 'HDFC'),
(31, 'Hongkong Shanghai Banking'),
(32, 'ICICI Bank'),
(33, 'IDBI Bank'),
(34, 'Ind Bank Housing'),
(35, 'Indian Overseas'),
(36, 'IndusInd Bank'),
(37, 'Industrial Development'),
(38, 'ING Vysya'),
(39, 'Jammu and Kashmir'),
(40, 'JP Morgan Chase'),
(41, 'Karnataka'),
(42, 'Karur vysya'),
(43, 'Kotak Mahindra'),
(44, 'Lakshmi Vilas'),
(45, 'Lord Krishna'),
(46, 'Mizuho Corporate'),
(47, 'Mudra Bank'),
(48, 'The Nainital Bank Ltd.'),
(49, 'North Knara G.S.B. Co-op.'),
(50, 'Oriental Bank of Commerce'),
(51, 'Punjab and Sind'),
(52, 'Punjab National'),
(53, 'Ratnakar'),
(54, 'Reserve Bank of India'),
(55, 'Royal Bank of Scotland'),
(56, 'SBI Commercial'),
(57, 'Shamrao Vithal Co-operative'),
(58, 'South Indian'),
(59, 'Standard Chartered'),
(60, 'State Bank Of Bikaner & Jaipur'),
(61, 'State Bank of Hyderabad'),
(62, 'State Bank of India'),
(63, 'State Bank of Indore'),
(64, 'State Bank of Mysore'),
(65, 'State Bank of Patiala'),
(66, 'State Bank of Travancore'),
(67, 'Syndicate Bank'),
(68, 'Tamilnad Mercantile'),
(69, 'Union Bank Of India'),
(70, 'UCO Bank'),
(71, 'United Bank of India'),
(72, 'Vijaya Bank'),
(73, 'Yes Bank');

-- --------------------------------------------------------

--
-- Table structure for table `bonafide_certificate`
--

CREATE TABLE `bonafide_certificate` (
  `CERT_NO` varchar(255) DEFAULT NULL,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `S_NAME` varchar(75) DEFAULT NULL,
  `F_NAME` varchar(50) DEFAULT NULL,
  `M_Name` varchar(25) DEFAULT NULL,
  `Adm_Date` datetime DEFAULT NULL,
  `End_DATE` datetime DEFAULT NULL,
  `class_name` varchar(25) DEFAULT NULL,
  `Issued_Date` datetime DEFAULT NULL,
  `duplcate_Issue` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_master`
--

CREATE TABLE `book_master` (
  `Stock_ID` int(11) DEFAULT NULL,
  `Book_Nm` varchar(255) DEFAULT NULL,
  `Publisher_Nm` varchar(255) DEFAULT NULL,
  `Class_Name` varchar(255) DEFAULT NULL,
  `Book_Price` double DEFAULT NULL,
  `Current_Stock` int(11) DEFAULT NULL,
  `Opening_Stock` int(11) DEFAULT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Item_group_id` int(11) DEFAULT NULL,
  `measure` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `busnomaster`
--

CREATE TABLE `busnomaster` (
  `BusCode` double NOT NULL,
  `BusNo` varchar(255) DEFAULT NULL,
  `seats` double DEFAULT NULL,
  `regn_no` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `tax_paid_date` date DEFAULT NULL,
  `tax_expiry_date` date DEFAULT NULL,
  `fitness_date` date DEFAULT NULL,
  `fitness_renewal_date` date DEFAULT NULL,
  `gprs_installed` varchar(255) DEFAULT NULL,
  `pollution_date` date DEFAULT NULL,
  `pollution_expiry_date` date DEFAULT NULL,
  `insuance_comp_name` varchar(255) DEFAULT NULL,
  `insuance_comp_address` varchar(255) DEFAULT NULL,
  `insurance_policy_no` varchar(255) DEFAULT NULL,
  `insurance_amt` double DEFAULT NULL,
  `insurance_renewal_date` date DEFAULT NULL,
  `insurance_expiry_date` date DEFAULT NULL,
  `bus_no` double DEFAULT NULL,
  `cctv` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busnomaster`
--

INSERT INTO `busnomaster` (`BusCode`, `BusNo`, `seats`, `regn_no`, `chasis_no`, `engine_no`, `tax_paid_date`, `tax_expiry_date`, `fitness_date`, `fitness_renewal_date`, `gprs_installed`, `pollution_date`, `pollution_expiry_date`, `insuance_comp_name`, `insuance_comp_address`, `insurance_policy_no`, `insurance_amt`, `insurance_renewal_date`, `insurance_expiry_date`, `bus_no`, `cctv`) VALUES
(1, '01', 15, '8998', '8998', '8998', '2023-06-01', '2023-12-31', '2023-07-01', '2023-12-31', 'n', '2023-07-01', '2023-12-31', 'NA', 'NA', 'NA', 0, '2023-06-01', '2023-12-31', 1, 'N'),
(2, '02', 15, '3496', '3496', '3496', '2023-07-01', '2023-12-31', '2023-04-01', '2023-12-31', 'n', '2023-07-01', '2023-12-31', 'NA', 'NA', 'NA', 0, '2023-12-31', '2023-12-31', 2, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `bus_incharge_master`
--

CREATE TABLE `bus_incharge_master` (
  `Incharge_Id` int(11) DEFAULT NULL,
  `Incharge_nm` varchar(255) DEFAULT NULL,
  `Incharge_ph_no` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bus_route_master`
--

CREATE TABLE `bus_route_master` (
  `Route_Id` int(11) DEFAULT NULL,
  `BusCode` int(11) DEFAULT NULL,
  `Trip_ID` int(11) DEFAULT NULL,
  `Prefer_ID` int(11) DEFAULT NULL,
  `STOPNO` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bus_trip_master`
--

CREATE TABLE `bus_trip_master` (
  `Trip_ID` int(11) DEFAULT NULL,
  `Trip_Nm` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campus_master`
--

CREATE TABLE `campus_master` (
  `Campus_ID` int(11) NOT NULL,
  `Campus_Name` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campus_master`
--

INSERT INTO `campus_master` (`Campus_ID`, `Campus_Name`) VALUES
(1, 'CAMPUS-1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CAT_CODE` double DEFAULT NULL,
  `CAT_ABBR` varchar(15) DEFAULT NULL,
  `CAT_DESC` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CAT_CODE`, `CAT_ABBR`, `CAT_DESC`) VALUES
(1, 'ST', 'ST'),
(2, 'SC', 'SC'),
(3, 'OBC-I', 'OBC-I'),
(4, 'GEN', 'GEN'),
(5, 'PHY H', 'PHY H'),
(6, 'OBC-II', 'OBC-II');

-- --------------------------------------------------------

--
-- Table structure for table `charcert`
--

CREATE TABLE `charcert` (
  `CERT_NO` mediumtext DEFAULT NULL,
  `ADM_NO` mediumtext DEFAULT NULL,
  `S_NAME` mediumtext DEFAULT NULL,
  `F_NAME` mediumtext DEFAULT NULL,
  `M_Name` mediumtext DEFAULT NULL,
  `Adm_Date` datetime DEFAULT NULL,
  `End_DATE` datetime DEFAULT NULL,
  `class_name` mediumtext DEFAULT NULL,
  `Issued_Date` datetime DEFAULT NULL,
  `duplcate_Issue` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cheque_entry`
--

CREATE TABLE `cheque_entry` (
  `PFDDNO` varchar(20) DEFAULT NULL,
  `PFDate` datetime DEFAULT NULL,
  `PFAmount` int(11) DEFAULT NULL,
  `PenDDNO` varchar(20) DEFAULT NULL,
  `PenDate` datetime DEFAULT NULL,
  `PenAmount` int(11) DEFAULT NULL,
  `GPFDDNO` varchar(20) DEFAULT NULL,
  `GPFDate` datetime DEFAULT NULL,
  `GPFAmount` int(11) DEFAULT NULL,
  `LEVDDNO` varchar(20) DEFAULT NULL,
  `LEVDate` datetime DEFAULT NULL,
  `LEVAmount` int(11) DEFAULT NULL,
  `EDLIDDNO` varchar(20) DEFAULT NULL,
  `EDLIDate` datetime DEFAULT NULL,
  `EDLIAmount` int(11) DEFAULT NULL,
  `MonthName` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `childhist`
--

CREATE TABLE `childhist` (
  `StId` varchar(50) DEFAULT NULL,
  `AdmNo` varchar(50) DEFAULT NULL,
  `Name1` varchar(50) DEFAULT NULL,
  `DOB1` date DEFAULT NULL,
  `Sex1` varchar(50) DEFAULT NULL,
  `Adm1` varchar(50) DEFAULT NULL,
  `Name2` varchar(50) DEFAULT NULL,
  `DOB2` date DEFAULT NULL,
  `Sex2` varchar(50) DEFAULT NULL,
  `Adm2` varchar(50) DEFAULT NULL,
  `Name3` varchar(50) DEFAULT NULL,
  `DOB3` date DEFAULT NULL,
  `Sex3` varchar(50) DEFAULT NULL,
  `Adm3` varchar(50) DEFAULT NULL,
  `Name4` varchar(50) DEFAULT NULL,
  `DOB4` date DEFAULT NULL,
  `Sex4` varchar(50) DEFAULT NULL,
  `Adm4` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childhist`
--

INSERT INTO `childhist` (`StId`, `AdmNo`, `Name1`, `DOB1`, `Sex1`, `Adm1`, `Name2`, `DOB2`, `Sex2`, `Adm2`, `Name3`, `DOB3`, `Sex3`, `Adm3`, `Name4`, `DOB4`, `Sex4`, `Adm4`) VALUES
('A14254', '216738', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14255', '216757', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14256', '314802', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14257', '206276', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14258', '314809', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14259', '216740', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14260', '206271', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14261', '216759', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14262', '216758', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14263', '216734', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14264', '206274', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14265', '216733', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14266', '206279', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14267', '216755', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14268', '121676010', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14269', '216751', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14270', '216754', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14271', '183890', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14272', '216731', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14273', '183884', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14274', '314801', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14275', '183888', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14276', '183886', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14277', '206278', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14278', '206277', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14279', '216732', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14280', '183882', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14281', '183889', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14282', '314805', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14283', '183887', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14284', '216737', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14285', '314807', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14288', '319012', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14290', '319020', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14291', '319019', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14292', '314804', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14293', '319018', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14289', '314806', '', '1970-01-01', '', '', '', '1970-01-01', '', '', '', '1970-01-01', '', '', '', '1970-01-01', '', ''),
('A14294', '319017', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14295', '319016', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14296', '14296', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14297', '14297', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14301', '14301', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14301', '14301', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14303', '14303', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14304', '14304', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', '0000-00-00', '', ''),
('A14308', '2425001', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', NULL, '', NULL, '', NULL, '', NULL),
('A1', '2425002', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', NULL, '', NULL, '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `Class_No` int(11) NOT NULL,
  `CLASS_NM` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`Class_No`, `CLASS_NM`) VALUES
(1, 'Baby Pre-Nursery'),
(2, 'Pre-Nursery'),
(3, 'Nursery'),
(4, 'Prep');

-- --------------------------------------------------------

--
-- Table structure for table `class_section_wise_subject_allocation`
--

CREATE TABLE `class_section_wise_subject_allocation` (
  `ID` int(11) NOT NULL,
  `Class_Sec_SubCode` int(11) DEFAULT NULL,
  `Class_No` int(11) DEFAULT NULL,
  `section_no` int(11) DEFAULT NULL,
  `subject_code` int(11) DEFAULT NULL,
  `Total_Period_inWeek` int(11) DEFAULT NULL,
  `Subject_option` int(11) DEFAULT NULL,
  `Main_Teacher_Required` int(11) DEFAULT NULL,
  `Support_Teacher_Required` int(11) DEFAULT NULL,
  `Merged_WithSubCode` varchar(255) DEFAULT NULL,
  `Subject_Name_Dispaly` varchar(255) DEFAULT NULL,
  `Class_name_Roman` varchar(255) DEFAULT NULL,
  `Class_Name_Hindu_arabic` varchar(255) DEFAULT NULL,
  `Class_Display_Sorting` int(11) DEFAULT NULL,
  `Class_Sub_sorting` int(11) DEFAULT NULL,
  `Main_Teacher_Code` varchar(255) DEFAULT NULL,
  `Support_Teacher_Code` varchar(50) DEFAULT NULL,
  `Merge_Class_Status` int(11) DEFAULT NULL,
  `Merge_Class_Details` varchar(255) DEFAULT NULL,
  `Teacher_Merge_Class_Status` int(11) DEFAULT NULL,
  `Teacher_Merge_Class_Details` varchar(255) DEFAULT NULL,
  `AssignTotal_Period` int(11) DEFAULT NULL,
  `subj_nm` varchar(255) DEFAULT NULL,
  `opt_code` int(11) DEFAULT NULL,
  `sorting_no` int(11) DEFAULT NULL,
  `applicable_exam` int(11) DEFAULT NULL,
  `display_subnm_rp` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_section_wise_subject_allocation`
--

INSERT INTO `class_section_wise_subject_allocation` (`ID`, `Class_Sec_SubCode`, `Class_No`, `section_no`, `subject_code`, `Total_Period_inWeek`, `Subject_option`, `Main_Teacher_Required`, `Support_Teacher_Required`, `Merged_WithSubCode`, `Subject_Name_Dispaly`, `Class_name_Roman`, `Class_Name_Hindu_arabic`, `Class_Display_Sorting`, `Class_Sub_sorting`, `Main_Teacher_Code`, `Support_Teacher_Code`, `Merge_Class_Status`, `Merge_Class_Details`, `Teacher_Merge_Class_Status`, `Teacher_Merge_Class_Details`, `AssignTotal_Period`, `subj_nm`, `opt_code`, `sorting_no`, `applicable_exam`, `display_subnm_rp`) VALUES
(1, 1, 1, 1, 10, 3, 0, 1, 0, '0', 'ENG', 'LEVEL 0-A', NULL, NULL, NULL, 'EMP0225', NULL, NULL, NULL, 0, '1', NULL, 'ENGLISH', NULL, NULL, NULL, 'ENGLISH'),
(2, 1, 1, 1, 18, 2, 0, 1, 0, '0', 'HIN', 'LEVEL 0-A', NULL, NULL, NULL, 'EMP0225', NULL, NULL, NULL, 0, '1', NULL, 'HINDI', NULL, NULL, NULL, 'HINDI'),
(3, 1, 1, 1, 22, 2, 0, 1, 0, '0', 'MATHS', 'LEVEL 0-A', NULL, NULL, NULL, 'EMP0225', NULL, NULL, NULL, 0, '1', NULL, 'MATHS', NULL, NULL, NULL, 'MATHS'),
(4, 1, 1, 1, 1, 2, 0, 1, 0, '0', 'ACT', 'LEVEL 0-A', NULL, NULL, NULL, 'EMP0225', NULL, NULL, NULL, 0, '1', NULL, 'ACTIVITY', NULL, NULL, NULL, 'ACTIVITY'),
(5, 1, 1, 1, 2, 1, 0, 1, 0, '0', 'ART', 'LEVEL 0-A', NULL, NULL, NULL, 'EMP0225', NULL, NULL, NULL, 0, '1', NULL, 'ART', NULL, NULL, NULL, 'ART'),
(6, 1, 1, 1, 8, 3, 0, 1, 0, '0', 'DRA', 'LEVEL 0-A', NULL, NULL, NULL, 'EMP0225', NULL, NULL, NULL, 0, '1', NULL, 'DRAWING', NULL, NULL, NULL, 'DRAWING'),
(7, 2, 2, 1, 10, 3, 0, 1, 0, '0', 'ENG', 'LEVEL I-A', NULL, NULL, NULL, 'EMP0226', NULL, NULL, NULL, 0, '2', NULL, 'ENGLISH', NULL, NULL, NULL, 'ENGLISH'),
(8, 2, 2, 1, 18, 2, 0, 1, 0, '0', 'HIN', 'LEVEL I-A', NULL, NULL, NULL, 'EMP0226', NULL, NULL, NULL, 0, '2', NULL, 'HINDI', NULL, NULL, NULL, 'HINDI'),
(9, 2, 2, 1, 22, 2, 0, 1, 0, '0', 'MATHS', 'LEVEL I-A', NULL, NULL, NULL, 'EMP0226', NULL, NULL, NULL, 0, '2', NULL, 'MATHS', NULL, NULL, NULL, 'MATHS'),
(10, 2, 2, 1, 1, 2, 0, 1, 0, '0', 'ACT', 'LEVEL I-A', NULL, NULL, NULL, 'EMP0226', NULL, NULL, NULL, 0, '2', NULL, 'ACTIVITY', NULL, NULL, NULL, 'ACTIVITY'),
(11, 2, 2, 1, 2, 1, 0, 1, 0, '0', 'ART', 'LEVEL I-A', NULL, NULL, NULL, 'EMP0226', NULL, NULL, NULL, 0, '2', NULL, 'ART', NULL, NULL, NULL, 'ART'),
(12, 2, 2, 1, 8, 3, 0, 1, 0, '0', 'DRA', 'LEVEL I-A', NULL, NULL, NULL, 'EMP0226', NULL, NULL, NULL, 0, '2', NULL, 'DRAWING', NULL, NULL, NULL, 'DRAWING'),
(13, 3, 3, 1, 10, 3, 0, 1, 0, '0', 'ENG', 'LEVEL II-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENGLISH', NULL, NULL, NULL, 'ENGLISH'),
(14, 3, 3, 1, 18, 2, 0, 1, 0, '0', 'HIN', 'LEVEL II-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HINDI', NULL, NULL, NULL, 'HINDI'),
(15, 3, 3, 1, 22, 2, 0, 1, 0, '0', 'MATHS', 'LEVEL II-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MATHS', NULL, NULL, NULL, 'MATHS'),
(16, 3, 3, 1, 1, 2, 0, 1, 0, '0', 'ACT', 'LEVEL II-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVITY', NULL, NULL, NULL, 'ACTIVITY'),
(17, 3, 3, 1, 2, 1, 0, 1, 0, '0', 'ART', 'LEVEL II-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ART', NULL, NULL, NULL, 'ART'),
(18, 3, 3, 1, 8, 3, 0, 1, 0, '0', 'DRA', 'LEVEL II-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DRAWING', NULL, NULL, NULL, 'DRAWING'),
(19, 4, 4, 1, 10, 3, 0, 1, 0, '0', 'ENG', 'LEVEL III-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENGLISH', NULL, NULL, NULL, 'ENGLISH'),
(20, 4, 4, 1, 18, 2, 0, 1, 0, '0', 'HIN', 'LEVEL III-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HINDI', NULL, NULL, NULL, 'HINDI'),
(21, 4, 4, 1, 22, 2, 0, 1, 0, '0', 'MATHS', 'LEVEL III-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MATHS', NULL, NULL, NULL, 'MATHS'),
(22, 4, 4, 1, 1, 2, 0, 1, 0, '0', 'ACT', 'LEVEL III-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVITY', NULL, NULL, NULL, 'ACTIVITY'),
(23, 4, 4, 1, 2, 1, 0, 1, 0, '0', 'ART', 'LEVEL III-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ART', NULL, NULL, NULL, 'ART'),
(24, 4, 4, 1, 8, 3, 0, 1, 0, '0', 'DRA', 'LEVEL III-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DRAWING', NULL, NULL, NULL, 'DRAWING');

-- --------------------------------------------------------

--
-- Table structure for table `co_scholastic`
--

CREATE TABLE `co_scholastic` (
  `SkillID` int(11) DEFAULT NULL,
  `SkillNm` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `co_scholastic`
--

INSERT INTO `co_scholastic` (`SkillID`, `SkillNm`) VALUES
(1, 'WORK EDUCATION'),
(2, 'ART EDUCATION'),
(3, 'HEALTH & PHYSICAL EDUCATION');

-- --------------------------------------------------------

--
-- Table structure for table `co_scholastic_grade`
--

CREATE TABLE `co_scholastic_grade` (
  `Adm_no` mediumtext DEFAULT NULL,
  `Class` mediumtext DEFAULT NULL,
  `Sec` mediumtext DEFAULT NULL,
  `Term` int(11) DEFAULT NULL,
  `SkillCode` int(11) DEFAULT NULL,
  `Grade` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daycoll`
--

CREATE TABLE `daycoll` (
  `RECT_NO` varchar(255) NOT NULL,
  `RECT_DATE` date DEFAULT NULL,
  `STU_NAME` varchar(255) DEFAULT NULL,
  `STUDENTID` varchar(255) DEFAULT NULL,
  `ADM_NO` varchar(250) DEFAULT NULL,
  `CLASS` varchar(25) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `PERIOD` varchar(255) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `APR_FEE` varchar(255) DEFAULT NULL,
  `MAY_FEE` varchar(255) DEFAULT NULL,
  `JUNE_FEE` varchar(255) DEFAULT NULL,
  `JULY_FEE` varchar(255) DEFAULT NULL,
  `AUG_FEE` varchar(255) DEFAULT NULL,
  `SEP_FEE` varchar(255) DEFAULT NULL,
  `OCT_FEE` varchar(255) DEFAULT NULL,
  `NOV_FEE` varchar(255) DEFAULT NULL,
  `DEC_FEE` varchar(255) DEFAULT NULL,
  `JAN_FEE` varchar(255) DEFAULT NULL,
  `FEB_FEE` varchar(255) DEFAULT NULL,
  `MAR_FEE` varchar(255) DEFAULT NULL,
  `CHQ_NO` varchar(255) DEFAULT NULL,
  `Narr` varchar(255) DEFAULT NULL,
  `TAmt` double DEFAULT NULL,
  `Fee_Book_No` varchar(255) DEFAULT NULL,
  `Collection_Mode` int(11) DEFAULT NULL,
  `User_Id` varchar(255) DEFAULT NULL,
  `Payment_Mode` mediumtext NOT NULL,
  `Bank_Name` varchar(500) NOT NULL DEFAULT 'N/A',
  `Pay_Date` date NOT NULL DEFAULT current_timestamp(),
  `Session_Year` int(11) NOT NULL DEFAULT 2019,
  `FORM_NO` varchar(200) NOT NULL DEFAULT 'N/A',
  `voucher_created` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daycoll`
--

INSERT INTO `daycoll` (`RECT_NO`, `RECT_DATE`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `PERIOD`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CHQ_NO`, `Narr`, `TAmt`, `Fee_Book_No`, `Collection_Mode`, `User_Id`, `Payment_Mode`, `Bank_Name`, `Pay_Date`, `Session_Year`, `FORM_NO`, `voucher_created`) VALUES
('A000039', '2024-05-17', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'MAY', 2050, 0, 0, 0, 0, 2000, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000039', 'A000039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANIMA KUMARI', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000038', '2024-05-13', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'MAY', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000038', 'A000038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MOHAMMAD AASIT', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000037', '2024-05-10', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'MAY', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000037', 'A000037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAHUL KR GUPTA', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000036', '2024-05-07', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 'MAY', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000036', 'A000036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CHANDAN KR', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000035', '2024-05-07', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 'MAY', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000035', 'A000035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ROHIT RAO', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000034', '2024-05-07', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'MAY', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000034', 'A000034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000033', '2024-05-07', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 'MAY', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000033', 'A000033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VIVEK VIJAY', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000032', '2024-05-07', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 'MAY', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000032', 'A000032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000031', '2024-05-06', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 'MAY', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000031', 'A000031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MADHU KUMARI', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000030', '2024-05-06', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'MAY', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'A000030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAVI DUBEY', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000029', '2024-05-04', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 'MAY', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000029', 'A000029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000028', '2024-05-04', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 'MAY', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'A000028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SWETAKUMARI', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000027', '2024-04-29', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 'MAY', 17400, 4000, 0, 5500, 4000, 2000, 0, 0, 400, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'A000027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MD ASGHAR', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000025', '2024-04-25', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'PRE.DUES-FEB-MAR', 6000, 0, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 6000, NULL, NULL, NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A000025', 'A000025', 'SATYAM KUMAR', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-13', 2024, 'N/A', 0),
('D1', '2024-03-30', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 2600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 600, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SUBHADIP KOLEY', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-03-30', 2024, 'N/A', 0),
('D2', '2024-04-04', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AMAN SAMIR LAKRA', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-04-04', 2024, 'N/A', 0),
('D3', '2024-04-08', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 1, 'N/A', 1, 'SE', 'CASH', 'N/A', '2024-04-08', 2024, 'N/A', 0),
('D4', '2024-04-08', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'BABLOO TURI', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-04-08', 2024, 'N/A', 0),
('D5', '2024-03-30', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'RAVI RANJAN DUBEY', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-03-30', 2024, 'N/A', 0),
('D6', '2024-04-01', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'RISHI ROSHAN', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-04-01', 2024, 'N/A', 0),
('D7', '2024-04-01', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'SHWETA KUMARI', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-04-01', 2024, 'N/A', 0),
('D8', '2024-04-29', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 2600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 600, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'MOHAMMAD ASGHAR', 'N/A', 1, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-04-29', 2024, 'N/A', 0),
('A000022', '2024-04-08', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'APR', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2404081419567286294664 T240408142138152738228', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000021', '2024-04-09', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 'APR', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '410052431505', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000020', '2024-04-09', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'APR', 6750, 0, 0, 2750, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2404090920118774457884', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000017', '2024-04-08', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'APR', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000016', '2024-04-05', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 'PRE.DUES-FEB-MAR', 6000, 0, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 6000, NULL, NULL, NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A000016', 'A000016', '3240405121155362760704', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-13', 2024, 'N/A', 0),
('A000010', '2024-04-03', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'APR', 6750, 0, 0, 2750, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '409460262882', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000009', '2024-04-03', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 'APR', 6750, 0, 0, 2750, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '409490965106', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000008', '2024-04-03', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 'APR', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T240403091349904', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000007', '2024-04-03', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 'PRE.DUES-MAR', 3120, 0, NULL, 0, 0, 0, 120, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 3000, NULL, NULL, NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A000007', '404913081591', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-13', 2024, 'N/A', 0),
('A000006', '2024-04-02', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'PRE.DUES-OCT-NOV-DEC-JAN-FEB-MAR', 16000, 0, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 16000, NULL, NULL, NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A000006', 'A000006', 'A000006', 'A000006', 'A000006', 'A000006', '445916123460', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-13', 2024, 'N/A', 0),
('A000026', '2024-04-25', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'APR', 13000, 0, 0, 5500, 4000, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SATYAM KUMAR', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000024', '2024-04-25', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'APR', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAVI DUBEY', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000023', '2024-04-15', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 'APR', 6750, 0, 0, 2750, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PAWAN KUMAR', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000019', '2024-04-08', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'APR-MAY-JUN-JUL-AUG-SEP', 21500, 0, 0, 5500, 4000, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000019', 'A000019', 'A000019', 'A000019', 'A000019', 'A000019', NULL, NULL, NULL, NULL, NULL, NULL, '409914318116', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000018', '2024-04-08', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 'APR', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '446538859964', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000015', '2024-04-04', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'APR', 8250, 0, 0, 2750, 2000, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '446111799551 446112150510 446113407837', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000014', '2024-04-04', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 'APR', 6750, 0, 0, 2750, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2440412030730', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000013', '2024-04-04', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 'APR', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4461876226939', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000012', '2024-04-04', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 'APR', 13000, 0, 0, 5500, 4000, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '409592802461', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000011', '2024-04-04', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 'APR', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000005', '2024-04-01', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'APR', 9500, 0, 0, 5500, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000004', '2024-04-01', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 'APR', 9500, 0, 0, 5500, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '445891227736', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000003', '2024-04-01', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'APR', 9500, 0, 0, 5500, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '445852716636', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000001', '2024-03-30', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'APR', 9500, 0, 0, 5500, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '409032524504', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000002', '2024-03-30', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 'APR', 15700, 4000, 0, 5500, 4000, 1800, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2403301300436', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000040', '2024-05-17', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'MAY', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'A000040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAVI SHANKAR', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000041', '2024-05-17', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'JUN', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAVI SHANKAR', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000042', '2024-06-07', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000042', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAVI DUBEY', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000043', '2024-06-07', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MADHU KUMARI', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000044', '2024-06-07', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 'JUN', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000044', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SHWETA KUMARI', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000045', '2024-06-07', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2406071525137558093331', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000046', '2024-06-08', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000046', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUBHADEEP KOLEY', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000047', '2024-06-08', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VIVEK VIJAY', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000048', '2024-06-10', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ROHIT RAO', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000049', '2024-06-11', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'JUN', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000049', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 1, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2024, 'N/A', 0),
('A000050', '2024-06-11', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'JUL', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 15, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-06-24', 2024, 'N/A', 0),
('A000051', '2024-06-12', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'JUN', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3775', 'N/A', 3, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-24', 2024, 'N/A', 0),
('A000052', '2024-06-19', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000052', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-06-24', 2024, 'N/A', 0),
('A000053', '2024-06-19', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 'JUN', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000053', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md Asghar', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-24', 2024, 'N/A', 0),
('A000054', '2024-06-19', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000054', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 1, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-06-24', 2024, 'N/A', 0),
('A000055', '2024-06-20', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 'APR-MAY-JUN-JUL', 6000, 0, 0, 0, 0, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000055', 'A000055', 'A000055', 'A000055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babloo Turi', 'N/A', 2, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-24', 2024, 'N/A', 0),
('A000056', '2024-06-15', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 'JUN', 15500, 4000, 0, 5500, 4000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000056', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manojit Das', 'N/A', 3, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-24', 2024, 'N/A', 0),
('A000057', '2024-06-28', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'JUN', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TID 7684', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-28', 2024, 'N/A', 0),
('A000058', '2024-06-26', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'MAY-JUN', 7265, 0, 0, 0, 0, 4000, 265, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'A000058', 'A000058', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'satyam kumar', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-06-29', 2024, 'N/A', 0),
('A000059', '2024-06-26', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 'APR-MAY', 8000, 0, 0, 0, 4000, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000059', 'A000059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-06-29', 2024, 'N/A', 0),
('A000060', '2024-07-01', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 'JUL', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-07-01', 2024, 'N/A', 0),
('A000061', '2024-07-01', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY-JUN-JUL', 10770, 0, 0, 0, 0, 6000, 270, 0, 0, 4500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000061', 'A000061', 'A000061', 'A000061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'saadam', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-01', 2024, 'N/A', 0),
('A000062', '2024-07-02', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 'JUL', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'madhu kumari', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-02', 2024, 'N/A', 0),
('A000063', '2024-07-02', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 'JUL', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'manojeet das', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-02', 2024, 'N/A', 0),
('A000064', '2024-07-04', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'APR-MAY', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000064', 'A000064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rishi roshan', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-04', 2024, 'N/A', 0),
('A000065', '2024-06-08', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'JUN', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5692', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-04', 2024, 'N/A', 0),
('A000066', '2024-07-02', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'JUL', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rishi roshan', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-04', 2024, 'N/A', 0),
('A000067', '2024-07-04', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'APR-MAY-JUN', 7000, 0, 0, 0, 0, 4000, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000067', 'A000067', 'A000067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'neeraj kumar pandey', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-04', 2024, 'N/A', 0),
('A000068', '2024-07-05', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 'JUL', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shweta kumari', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-05', 2024, 'N/A', 0),
('A000069', '2024-07-06', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'JUL', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mohammad aasif', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-06', 2024, 'N/A', 0),
('A000070', '2024-07-08', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 'JUL', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3483', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-08', 2024, 'N/A', 0),
('A000071', '2024-07-08', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'JUL', 3505, 0, 0, 0, 0, 2000, 5, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2397', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-08', 2024, 'N/A', 0),
('A000072', '2024-07-09', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'JUL-AUG-SEP', 10500, 0, 0, 0, 0, 6000, 0, 0, 0, 4500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000072', 'A000072', 'A000072', NULL, NULL, NULL, NULL, NULL, NULL, 'sarva priya ranjan', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-09', 2024, 'N/A', 0),
('A000073', '2024-07-10', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 'JUL', 2010, 0, 0, 0, 0, 2000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-07-10', 2024, 'N/A', 0),
('A000074', '2024-07-10', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'JUL', 2010, 0, 0, 0, 0, 2000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1836', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-10', 2024, 'N/A', 0),
('A000075', '2024-07-10', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 'JUL', 2010, 0, 0, 0, 0, 2000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1746', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-10', 2024, 'N/A', 0),
('A000076', '2024-07-10', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'JUL', 2010, 0, 0, 0, 0, 2000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-07-10', 2024, 'N/A', 0),
('A000077', '2024-07-10', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 'JUN', 9150, 2000, 0, 2750, 2000, 2000, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9150', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-10', 2024, 'N/A', 0),
('A000078', '2024-07-10', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 'JUL', 2010, 0, 0, 0, 0, 2000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000078', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6523', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-10', 2024, 'N/A', 0),
('A000079', '2024-07-10', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'JUL', 2010, 0, 0, 0, 0, 2000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3335', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-11', 2024, 'N/A', 0),
('A000080', '2024-07-11', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 'JUL', 3515, 0, 0, 0, 0, 2000, 15, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohammad asghar', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-11', 2024, 'N/A', 0),
('D9', '2024-07-12', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '2397', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-07-12', 2024, 'N/A', 0),
('A000081', '2024-07-16', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 'MAY-JUN', 6000, 0, 0, 0, 0, 2745, 255, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'A000081', 'A000081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-07-16', 2024, 'N/A', 0),
('A000082', '2024-07-16', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 'JUL', 4755, 0, 0, 0, 0, 3255, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000082', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'keshav enterprises', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-16', 2024, 'N/A', 0),
('A000083', '2024-07-18', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 'JUL', 2050, 0, 0, 0, 0, 2000, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000083', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pawan kumar', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-18', 2024, 'N/A', 0),
('D10', '2024-07-19', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 2100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2024-07-19', 2024, 'N/A', 0),
('D11', '2024-07-29', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '6775', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-07-29', 2024, 'N/A', 0),
('A000084', '2024-07-29', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 'JUN-JUL', 4225, 0, 0, 0, 0, 4000, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000084', 'A000084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ashish ', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-07-29', 2024, 'N/A', 0),
('A000085', '2024-08-05', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-05', 2024, 'N/A', 0),
('A000086', '2024-08-05', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000086', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'subhadeep koley', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-05', 2024, 'N/A', 0),
('A000087', '2024-08-05', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-05', 2024, 'N/A', 0),
('A000088', '2024-08-05', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 'AUG', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shweta kumari', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-05', 2024, 'N/A', 0),
('A000089', '2024-08-06', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 'AUG', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-06', 2024, 'N/A', 0),
('A000090', '2024-08-06', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'AUG', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-06', 2024, 'N/A', 0),
('A000091', '2024-08-06', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000091', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vivek vijay', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-06', 2024, 'N/A', 0),
('A000092', '2024-08-07', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-07', 2024, 'N/A', 0),
('A000093', '2024-08-07', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 'AUG', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohammad Asghar', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-07', 2024, 'N/A', 0),
('A000094', '2024-08-07', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'AUG', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-07', 2024, 'N/A', 0),
('A000095', '2024-08-07', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8828', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-07', 2024, 'N/A', 0),
('A000096', '2024-08-07', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'AUG', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000096', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RISHI ROSHAN', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-08', 2024, 'N/A', 0),
('A000097', '2024-08-07', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000097', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3335', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-08', 2024, 'N/A', 0),
('A000098', '2024-08-08', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 'AUG', 2005, 0, 0, 0, 0, 2000, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CHANDAN KUMAR', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-08', 2024, 'N/A', 0),
('A000099', '2024-08-08', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-08', 2024, 'N/A', 0),
('A000100', '2024-08-09', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 'AUG', 2010, 0, 0, 0, 0, 2000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8994', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-09', 2024, 'N/A', 0),
('D12', '2024-08-12', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '3335', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-08-12', 2024, 'N/A', 0),
('A000101', '2024-08-13', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'AUG', 3525, 0, 0, 0, 0, 2000, 25, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUPER PE', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-13', 2024, 'N/A', 0),
('A000102', '2024-08-13', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 'AUG', 8250, 0, 0, 2750, 2000, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-13', 2024, 'N/A', 0),
('D13', '2024-08-14', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 2100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ashish', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-08-14', 2024, 'N/A', 0),
('D14', '2024-08-14', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 2100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'ashish', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-08-14', 2024, 'N/A', 0),
('A000103', '2024-08-20', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'AUG', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 3, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-08-20', 2024, 'N/A', 0),
('A000104', '2024-08-27', 'KRITARTH JHA', 'A14304', '14304', 'Baby Pre-Nursery', 'A', 0, 'AUG', 17400, 4000, 0, 5500, 4000, 2000, 0, 0, 400, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pankaj jha', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-08-27', 2024, 'N/A', 0),
('A000105', '2024-09-02', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'SEP', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000105', NULL, NULL, NULL, NULL, NULL, NULL, '4435', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-02', 2024, 'N/A', 0),
('A000106', '2024-09-02', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 'SEP', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000106', NULL, NULL, NULL, NULL, NULL, NULL, 'subhadhip koley', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-02', 2024, 'N/A', 0),
('A000107', '2024-09-03', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 'SEP', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000107', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('A000108', '2024-09-03', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 'SEP', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000108', NULL, NULL, NULL, NULL, NULL, NULL, 'azgar ', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('A000109', '2024-09-03', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'SEP', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000109', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('D15', '2024-09-03', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'anima kumari', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('A000110', '2024-09-03', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'SEP', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000110', NULL, NULL, NULL, NULL, NULL, NULL, 'anima bose', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('A000111', '2024-09-03', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'SEP', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000111', NULL, NULL, NULL, NULL, NULL, NULL, 'aasif', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('A000112', '2024-09-03', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 'SEP', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000112', NULL, NULL, NULL, NULL, NULL, NULL, 'sweta kumari', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('A000113', '2024-09-03', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'JUL', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'amrita ', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('D16', '2024-09-03', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'arvind kumar', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('A000114', '2024-09-03', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'SEP', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000114', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-09-03', 2024, 'N/A', 0),
('A000115', '2024-09-04', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 'SEP', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000115', NULL, NULL, NULL, NULL, NULL, NULL, '3474', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-04', 2024, 'N/A', 0),
('A000116', '2024-09-04', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'SEP', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000116', NULL, NULL, NULL, NULL, NULL, NULL, 'rishi roshan', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-04', 2024, 'N/A', 0),
('A000117', '2024-09-05', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 'SEP', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000117', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-09-05', 2024, 'N/A', 0),
('A000118', '2024-09-07', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'SEP', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000118', NULL, NULL, NULL, NULL, NULL, NULL, '3335', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-07', 2024, 'N/A', 0),
('A000119', '2024-09-09', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 'SEP', 2010, 0, 0, 0, 0, 2000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000119', NULL, NULL, NULL, NULL, NULL, NULL, '9228', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-09', 2024, 'N/A', 0),
('A000120', '2024-09-10', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 'SEP', 3515, 0, 0, 0, 0, 2000, 15, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000120', NULL, NULL, NULL, NULL, NULL, NULL, '7323', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-10', 2024, 'N/A', 0),
('A000121', '2024-09-10', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 'SEP', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000121', NULL, NULL, NULL, NULL, NULL, NULL, 'shankar', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-11', 2024, 'N/A', 0),
('A000122', '2024-09-12', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 'SEP', 2020, 0, 0, 0, 0, 2000, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000122', NULL, NULL, NULL, NULL, NULL, NULL, '9234', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-12', 2024, 'N/A', 0),
('A000123', '2024-09-30', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000123', NULL, NULL, NULL, NULL, NULL, '3688', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-09-30', 2024, 'N/A', 0),
('A000124', '2024-10-01', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000124', NULL, NULL, NULL, NULL, NULL, 'SUBHADIP', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-01', 2024, 'N/A', 0);
INSERT INTO `daycoll` (`RECT_NO`, `RECT_DATE`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `PERIOD`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CHQ_NO`, `Narr`, `TAmt`, `Fee_Book_No`, `Collection_Mode`, `User_Id`, `Payment_Mode`, `Bank_Name`, `Pay_Date`, `Session_Year`, `FORM_NO`, `voucher_created`) VALUES
('A000125', '2024-10-01', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000125', NULL, NULL, NULL, NULL, NULL, '9953', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-01', 2024, 'N/A', 0),
('A000126', '2024-10-03', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'OCT', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000126', NULL, NULL, NULL, NULL, NULL, 'rishi roshan', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-03', 2024, 'N/A', 0),
('A000127', '2024-10-03', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'OCT-NOV-DEC', 9900, 0, 0, 0, 0, 6000, 0, 0, 0, 3900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000127', 'A000127', 'A000127', NULL, NULL, NULL, '1863', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-03', 2024, 'N/A', 0),
('A000128', '2024-10-03', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'JAN-FEB-MAR', 9900, 0, 0, 0, 0, 6000, 0, 0, 0, 3900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000128', 'A000128', 'A000128', '1863', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-03', 2024, 'N/A', 0),
('A000129', '2024-10-03', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000129', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-03', 2024, 'N/A', 0),
('A000130', '2024-10-03', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000130', NULL, NULL, NULL, NULL, NULL, '3335', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-03', 2024, 'N/A', 0),
('D17', '2024-10-03', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 'ARTICLE SOLD-ARTICLES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '3335', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2024-10-03', 2024, 'N/A', 0),
('A000131', '2024-10-03', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 'OCT', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000131', NULL, NULL, NULL, NULL, NULL, 'Mohammad Asghar', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-03', 2024, 'N/A', 0),
('A000132', '2024-10-04', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000132', NULL, NULL, NULL, NULL, NULL, 'ravidubey', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-04', 2024, 'N/A', 0),
('A000133', '2024-10-04', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000133', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-04', 2024, 'N/A', 0),
('A000134', '2024-10-07', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000134', NULL, NULL, NULL, NULL, NULL, 'anima kumari', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-07', 2024, 'N/A', 0),
('A000135', '2024-10-07', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 'OCT', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000135', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-07', 2024, 'N/A', 0),
('A000136', '2024-10-07', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'OCT', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000136', NULL, NULL, NULL, NULL, NULL, '898494220', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-07', 2024, 'N/A', 0),
('A000137', '2024-10-07', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 'OCT', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000137', NULL, NULL, NULL, NULL, NULL, '0652', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-07', 2024, 'N/A', 0),
('A000138', '2024-10-07', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'OCT', 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000138', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-07', 2024, 'N/A', 0),
('A000139', '2024-10-07', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 'OCT', 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000139', NULL, NULL, NULL, NULL, NULL, '3951', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-10-08', 2024, 'N/A', 0),
('A000140', '2024-10-15', 'RISHABH JAIN', 'A14305', '14305', 'Baby Pre-Nursery', 'A', 0, 'APR', 18900, 4000, 0, 5500, 4000, 2000, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A000140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-15', 2024, 'N/A', 0),
('A000141', '2024-10-15', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'AUG', 20500, 4000, 0, 5500, 4000, 4000, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-15', 2024, 'N/A', 0),
('A000142', '2024-10-15', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'SEP-OCT', 7000, 0, 0, 0, 0, 4000, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000142', 'A000142', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-15', 2024, 'N/A', 0),
('A000143', '2024-10-23', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'NOV', 2000, 0, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000143', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-23', 2024, 'N/A', 0),
('A000144', '2024-10-23', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'DEC', 5000, 0, 0, 0, 0, 3000, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000144', NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-23', 2024, 'N/A', 0),
('A000145', '1970-01-01', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 'OCT-NOV', 44000, 0, 0, 0, 0, 0, 44000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000145', 'A000145', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-29', 2024, 'N/A', 0),
('A000146', '1970-01-01', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 'SEP', 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000146', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-10-29', 2024, 'N/A', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbo_payslip`
--

CREATE TABLE `dbo_payslip` (
  `SCH_CODE` varchar(30) DEFAULT NULL,
  `EMPID` varchar(50) DEFAULT NULL,
  `EMPNAME` varchar(40) DEFAULT NULL,
  `CADRE` int(11) DEFAULT NULL,
  `PF_AC_NO` varchar(20) DEFAULT NULL,
  `PaySlip_Year` int(11) DEFAULT NULL,
  `P_MONTH` int(11) DEFAULT NULL,
  `PAY_DATE` datetime DEFAULT NULL,
  `WORK_DAY` int(11) DEFAULT NULL,
  `DAYS_WORK` int(11) DEFAULT NULL,
  `PAY_SCALE` varchar(50) DEFAULT NULL,
  `BASIC_PAY` int(11) DEFAULT NULL,
  `DEAR_ALW` int(11) DEFAULT NULL,
  `DEAR_PAY` int(11) DEFAULT NULL,
  `GRADE_PAY` int(11) DEFAULT NULL,
  `CITYC_ALW` int(11) DEFAULT NULL,
  `OTHER_ALW` int(11) DEFAULT NULL,
  `HRENT_ALW` int(11) DEFAULT NULL,
  `MED_ALW` int(11) DEFAULT NULL,
  `TEACH_ALW` int(11) DEFAULT NULL,
  `TRAV_ALW` int(11) DEFAULT NULL,
  `SPL_ALW` int(11) DEFAULT NULL,
  `MISC_ALW` int(11) DEFAULT NULL,
  `ARREAR` int(11) DEFAULT NULL,
  `PF_DED` int(11) DEFAULT NULL,
  `INSU_DED` int(11) DEFAULT NULL,
  `LOAN_DED` int(11) DEFAULT NULL,
  `ITAX_DED` int(11) DEFAULT NULL,
  `HRENT_DED` int(11) DEFAULT NULL,
  `MISC_DED` int(11) DEFAULT NULL,
  `STAFF_CAR` int(11) DEFAULT NULL,
  `OTHER_DED` int(11) DEFAULT NULL,
  `PTAX` int(11) DEFAULT NULL,
  `ESIE` int(11) DEFAULT NULL,
  `ESIO` int(11) DEFAULT NULL,
  `NET_PAY` int(11) DEFAULT NULL,
  `BASIC_RATE` int(11) DEFAULT NULL,
  `GRADE_RATE` int(11) DEFAULT NULL,
  `PF` int(11) DEFAULT NULL,
  `PEN` int(11) DEFAULT NULL,
  `Total_Pay` int(11) DEFAULT NULL,
  `Total_Deduction` int(11) DEFAULT NULL,
  `Leave_Encashment` int(11) DEFAULT NULL,
  `GratuityPoolFund` int(11) DEFAULT NULL,
  `EDLI` int(11) DEFAULT NULL,
  `Admin_Charge` int(11) DEFAULT NULL,
  `Gross_Salary` int(11) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `NatureOfApp` varchar(50) DEFAULT NULL,
  `Total_Alw` int(11) DEFAULT NULL,
  `Total4GPFReport` int(11) DEFAULT NULL,
  `F_Name` varchar(200) DEFAULT NULL,
  `DA_percent` int(11) DEFAULT NULL,
  `PayType` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `desig`
--

CREATE TABLE `desig` (
  `DESIG` varchar(20) DEFAULT NULL,
  `Sno` tinyint(4) NOT NULL,
  `print_position` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desig`
--

INSERT INTO `desig` (`DESIG`, `Sno`, `print_position`) VALUES
('PRINCIPAL', 2, 1),
('VICE PRINCIPAL', 3, 2),
('TEACHER', 5, 4),
('IT HEAD', 6, 5),
('ACCOUNTANT HEAD', 7, 6),
('LIBRARIAN', 8, 7),
('OTHER', 9, 8),
('SECTION IN CHARGE', 10, 3),
('FEE ADMIN', 11, 9),
('FEE', 12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `discipline`
--

CREATE TABLE `discipline` (
  `SkillID` int(11) DEFAULT NULL,
  `SkillNm` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discipline`
--

INSERT INTO `discipline` (`SkillID`, `SkillNm`) VALUES
(1, 'Attendance'),
(2, 'Sincerity'),
(3, 'Behaviour'),
(4, 'Values');

-- --------------------------------------------------------

--
-- Table structure for table `discipline_grades`
--

CREATE TABLE `discipline_grades` (
  `Adm_No` mediumtext DEFAULT NULL,
  `Class` mediumtext DEFAULT NULL,
  `Sec` mediumtext DEFAULT NULL,
  `Term` int(11) DEFAULT NULL,
  `SkillCode` int(11) DEFAULT NULL,
  `Grade` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dob_certificate`
--

CREATE TABLE `dob_certificate` (
  `CERT_NO` varchar(255) DEFAULT NULL,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `S_NAME` varchar(75) DEFAULT NULL,
  `F_NAME` varchar(50) DEFAULT NULL,
  `M_Name` varchar(25) DEFAULT NULL,
  `Birth_Date` datetime DEFAULT NULL,
  `class_name` varchar(25) DEFAULT NULL,
  `Issued_Date` datetime DEFAULT NULL,
  `duplcate_Issue` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `driver_master`
--

CREATE TABLE `driver_master` (
  `Driver_ID` int(11) NOT NULL,
  `BusCode` int(11) DEFAULT NULL,
  `driver_empid` varchar(200) NOT NULL,
  `driver_name` varchar(200) DEFAULT NULL,
  `driver_address` varchar(200) DEFAULT NULL,
  `driver_dob` date DEFAULT NULL,
  `driver_ph_no` varchar(20) DEFAULT NULL,
  `driver_license_no` varchar(200) DEFAULT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `khallasi_empid` varchar(200) NOT NULL,
  `khallasi_nm` varchar(200) DEFAULT NULL,
  `khallasi_ph_no` varchar(50) DEFAULT NULL,
  `incharge_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `EMPID` varchar(10) DEFAULT NULL,
  `EMP_FNAME` varchar(60) DEFAULT NULL,
  `EMP_MNAME` varchar(10) DEFAULT NULL,
  `EMP_LNAME` varchar(15) DEFAULT NULL,
  `D_O_J` date DEFAULT NULL,
  `D_O_B` date DEFAULT NULL,
  `SEX` varchar(50) DEFAULT NULL COMMENT '1=male 2=female 3=notallowed ',
  `DESIG` double DEFAULT NULL,
  `CADRE` double DEFAULT NULL,
  `BLOOD_GRP` varchar(3) DEFAULT NULL,
  `BASIC` double DEFAULT NULL,
  `DA_GRADE` double DEFAULT NULL,
  `D_O_PF` varchar(40) DEFAULT NULL,
  `P_ADD` varchar(255) DEFAULT NULL,
  `P_CITY` varchar(50) DEFAULT NULL,
  `P_STATE` varchar(50) DEFAULT NULL,
  `P_COUNTRY` varchar(50) DEFAULT NULL,
  `P_PIN` varchar(50) DEFAULT NULL,
  `P_PH1` varchar(50) DEFAULT NULL,
  `P_PH2` varchar(50) DEFAULT NULL,
  `P_FAX` varchar(50) DEFAULT NULL,
  `P_MOBILE` varchar(50) DEFAULT NULL,
  `P_EMAIL` varchar(50) DEFAULT NULL,
  `C_ADD` varchar(255) DEFAULT NULL,
  `C_CITY` varchar(50) DEFAULT NULL,
  `C_STATE` varchar(50) DEFAULT NULL,
  `C_COUNTRY` varchar(50) DEFAULT NULL,
  `C_PIN` varchar(50) DEFAULT NULL,
  `C_PH1` varchar(50) DEFAULT NULL,
  `C_PH2` varchar(50) DEFAULT NULL,
  `C_FAX` varchar(50) DEFAULT NULL,
  `C_MOBILE` varchar(50) DEFAULT NULL,
  `C_EMAIL` varchar(50) DEFAULT NULL,
  `PAY_SCALE` varchar(12) DEFAULT NULL,
  `PTAX` int(1) DEFAULT NULL,
  `AD_HOC` int(1) DEFAULT NULL,
  `N_INC_DATE` varchar(40) DEFAULT NULL,
  `PF_AC_NO` varchar(32) DEFAULT NULL,
  `PF_JOIN_DT` date DEFAULT NULL,
  `BANK_AC_NO` varchar(25) DEFAULT NULL,
  `INS_POLNO` varchar(22) DEFAULT NULL,
  `NOMINEE1` varchar(100) DEFAULT NULL,
  `PAN_NUMBER` varchar(12) DEFAULT NULL,
  `CAS_LEAVE` double DEFAULT NULL,
  `LOAN_ID` varchar(6) DEFAULT NULL,
  `D_O_SUANN` varchar(40) DEFAULT NULL,
  `MAR_STAT` varchar(50) DEFAULT NULL,
  `G_NAME` varchar(30) DEFAULT NULL,
  `EL` double DEFAULT NULL,
  `ADVANCE` double DEFAULT NULL,
  `FRESH` bit(1) DEFAULT NULL,
  `TRANS_FROM` varchar(60) DEFAULT NULL,
  `LAST_PFNO` varchar(30) DEFAULT NULL,
  `VAdhoc` int(11) DEFAULT NULL,
  `ESI_AC_NO` varchar(25) DEFAULT NULL,
  `ESI_APP` int(1) DEFAULT 0,
  `GRADEPAY` double DEFAULT NULL,
  `PF_APP` int(1) DEFAULT 0,
  `UANNO` varchar(12) DEFAULT NULL,
  `AADHAARNO` varchar(12) DEFAULT NULL,
  `PANCARD` varchar(10) DEFAULT NULL,
  `COMPID` int(11) DEFAULT NULL,
  `EMPLOYEEID` varchar(15) DEFAULT NULL,
  `CTC` double DEFAULT NULL,
  `QUAL` double DEFAULT NULL,
  `MASTERQUAL` double DEFAULT NULL,
  `PROFQUAL` varchar(255) DEFAULT NULL,
  `JOINDTTYPE` varchar(1) DEFAULT NULL,
  `RELATIONTYPE` varchar(1) DEFAULT NULL,
  `WORKEXP` varchar(50) DEFAULT NULL,
  `INITIALS` varchar(255) DEFAULT NULL,
  `FATHERS_NAME` varchar(2555) DEFAULT NULL,
  `EMP_TYPE` varchar(255) DEFAULT NULL,
  `STAFF_TYPE` varchar(255) DEFAULT NULL COMMENT '1=teaching,2=non-teaching',
  `TEACHER_TYPE` varchar(20) DEFAULT NULL,
  `HRA_APP` int(1) DEFAULT 0,
  `EPS_AC_NO` varchar(255) DEFAULT NULL,
  `TA_ALLOWANCE_APP` int(1) DEFAULT 0,
  `TA_SLAB` int(11) DEFAULT 0,
  `QUATER_NO` varchar(255) DEFAULT NULL,
  `QUATER_TYPE` varchar(255) DEFAULT NULL,
  `QUATER_AREA` int(11) DEFAULT NULL,
  `QUARTER_RENT` float(10,2) DEFAULT NULL,
  `SECOND_SHIFT_ALLOW` int(1) DEFAULT 0,
  `SPECIAL_ALLOW` int(1) DEFAULT NULL,
  `GROUP_INS_POLI` int(1) DEFAULT NULL,
  `CONTRACT_TYPE` varchar(255) DEFAULT NULL,
  `LEVEL_NO` int(11) DEFAULT NULL,
  `LEVEL_YEAR` int(11) DEFAULT NULL,
  `ML` int(11) DEFAULT NULL,
  `SHIFT` varchar(255) DEFAULT NULL,
  `ROLE_ID` int(11) NOT NULL,
  `WING_MASTER_ID` int(11) NOT NULL,
  `EMP_LEVEL` int(11) DEFAULT NULL,
  `VPF` float(10,2) DEFAULT NULL,
  `CATEGORY` varchar(25) NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT 1 COMMENT 'status code comes from library',
  `DATE_OF_SEPARATION` date DEFAULT NULL,
  `profile_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `EMPID`, `EMP_FNAME`, `EMP_MNAME`, `EMP_LNAME`, `D_O_J`, `D_O_B`, `SEX`, `DESIG`, `CADRE`, `BLOOD_GRP`, `BASIC`, `DA_GRADE`, `D_O_PF`, `P_ADD`, `P_CITY`, `P_STATE`, `P_COUNTRY`, `P_PIN`, `P_PH1`, `P_PH2`, `P_FAX`, `P_MOBILE`, `P_EMAIL`, `C_ADD`, `C_CITY`, `C_STATE`, `C_COUNTRY`, `C_PIN`, `C_PH1`, `C_PH2`, `C_FAX`, `C_MOBILE`, `C_EMAIL`, `PAY_SCALE`, `PTAX`, `AD_HOC`, `N_INC_DATE`, `PF_AC_NO`, `PF_JOIN_DT`, `BANK_AC_NO`, `INS_POLNO`, `NOMINEE1`, `PAN_NUMBER`, `CAS_LEAVE`, `LOAN_ID`, `D_O_SUANN`, `MAR_STAT`, `G_NAME`, `EL`, `ADVANCE`, `FRESH`, `TRANS_FROM`, `LAST_PFNO`, `VAdhoc`, `ESI_AC_NO`, `ESI_APP`, `GRADEPAY`, `PF_APP`, `UANNO`, `AADHAARNO`, `PANCARD`, `COMPID`, `EMPLOYEEID`, `CTC`, `QUAL`, `MASTERQUAL`, `PROFQUAL`, `JOINDTTYPE`, `RELATIONTYPE`, `WORKEXP`, `INITIALS`, `FATHERS_NAME`, `EMP_TYPE`, `STAFF_TYPE`, `TEACHER_TYPE`, `HRA_APP`, `EPS_AC_NO`, `TA_ALLOWANCE_APP`, `TA_SLAB`, `QUATER_NO`, `QUATER_TYPE`, `QUATER_AREA`, `QUARTER_RENT`, `SECOND_SHIFT_ALLOW`, `SPECIAL_ALLOW`, `GROUP_INS_POLI`, `CONTRACT_TYPE`, `LEVEL_NO`, `LEVEL_YEAR`, `ML`, `SHIFT`, `ROLE_ID`, `WING_MASTER_ID`, `EMP_LEVEL`, `VPF`, `CATEGORY`, `STATUS`, `DATE_OF_SEPARATION`, `profile_img`) VALUES
(33, 'EMP0224', 'EKTA JAIN', '', '', '2018-08-06', '1974-10-13', '2', 7, NULL, NULL, 20000, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7004282397', '', NULL, NULL, NULL, NULL, NULL, '2019-06-22', '', NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '', NULL, NULL, NULL, NULL, 12, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '2', NULL, 0, NULL, 0, NULL, '', '', 0, NULL, NULL, NULL, 0, 'Permanent', 1, 1, 10, '1', 4, 4, 1, NULL, '', 1, '0000-00-00', 'uploads/emp_profile/EMP0224.jpg'),
(34, 'EMP0225', 'NITIMA SINGH', '', '', '2019-10-01', '1989-02-05', '2', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8709868455', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 7, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '1', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', 1, 1, 10, '1-2', 2, 1, 1, NULL, 'General', 1, '0000-00-00', ''),
(35, 'EMP0226', 'PRITI RAJ', '', '', '2016-04-02', '1996-12-07', '2', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8092422898', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 6, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '1', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', 1, 1, 10, '1-2', 2, 1, 1, NULL, 'General', 1, '0000-00-00', ''),
(37, 'EMP0228', 'ANITA RAY', '', '', '2012-07-26', '1984-02-12', '2', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7903329659', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 5, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '1', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', 1, 1, 10, '1', 2, 1, 1, NULL, 'General', 1, '0000-00-00', ''),
(38, 'EMP0229', 'FEES', '', '', '2019-12-06', '2019-12-12', '2', 7, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '99999999999', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 1, 0, '', NULL, NULL, NULL, 'Shri', '', '1', '2', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', NULL, NULL, 10, '1', 10, 1, 1, NULL, 'General', 1, '0000-00-00', ''),
(36, 'EMP0228', 'ANUSHA ALI', '', '', '2012-07-26', '1984-02-12', '2', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 5, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '1', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', 1, 1, 10, '1', 2, 1, 1, NULL, 'General', 1, '0000-00-00', ''),
(40, 'EMP0231', 'LALITA', '', '', '2020-01-01', '2020-01-01', '2', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7739117449', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 2, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '1', 'TGT', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', NULL, NULL, 10, '1', 2, 1, 1, NULL, 'General', 1, NULL, ''),
(41, 'EMP0232', 'POOJA', '', '', '2020-01-01', '2020-01-01', '2', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7631381539', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 3, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '1', 'TGT', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', NULL, NULL, 10, '1', 2, 1, 1, NULL, 'General', 1, NULL, ''),
(42, 'EMP0233', 'SANJU', '', '', '2020-01-01', '2020-01-01', '2', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9263965993', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 3, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '1', 'TGT', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', NULL, NULL, 10, '1', 2, 1, 1, NULL, 'General', 1, NULL, ''),
(43, 'EMP0234', 'PREETI', '', '', '2020-01-01', '2020-01-01', '2', 5, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9122757138', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8, NULL, NULL, NULL, '', 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, 2, 0, '', NULL, NULL, NULL, 'Smt.', '', '1', '1', 'TGT', 0, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Permanent', NULL, NULL, 10, '1', 2, 1, 1, NULL, 'General', 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_lic`
--

CREATE TABLE `employee_lic` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `policyno1` varchar(255) DEFAULT NULL,
  `premium_amt_1` float(10,2) DEFAULT NULL,
  `nominee1` varchar(255) DEFAULT NULL,
  `policyno2` varchar(255) DEFAULT NULL,
  `premium_amt_2` float(10,2) DEFAULT NULL,
  `nominee2` varchar(255) DEFAULT NULL,
  `policyno3` varchar(255) DEFAULT NULL,
  `premium_amt_3` float(10,2) DEFAULT NULL,
  `nominee3` varchar(255) DEFAULT NULL,
  `policyno4` varchar(255) DEFAULT NULL,
  `premium_amt_4` float(10,2) DEFAULT NULL,
  `nominee4` varchar(255) DEFAULT NULL,
  `policyno5` varchar(255) DEFAULT NULL,
  `premium_amt_5` float(10,2) DEFAULT NULL,
  `nominee5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_applied_leave_history`
--

CREATE TABLE `emp_applied_leave_history` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` varchar(255) DEFAULT NULL,
  `APPLY_DATE` timestamp NULL DEFAULT current_timestamp(),
  `DAY_TYPE` int(11) NOT NULL DEFAULT 1 COMMENT '1 = FULL DAY, 2 = HALF DAY',
  `LEAVE_TYPE` int(11) DEFAULT NULL,
  `APPLIED_LEAVE_TYPE` int(11) DEFAULT NULL,
  `DATE_FROM` date DEFAULT NULL,
  `DATE_TO` date DEFAULT NULL,
  `AGAINST_DATE_FROM` date DEFAULT NULL,
  `AGAINST_DATE_TO` date DEFAULT NULL,
  `TOTAL_DAYS` float(10,2) NOT NULL,
  `REASON` text DEFAULT NULL,
  `REASON_DETAILS` text DEFAULT NULL,
  `DOCUMENT` text DEFAULT NULL,
  `STATUS` int(11) NOT NULL COMMENT '0 = PENDING, 1 = APPROVED, 2 = DISAPPROVED',
  `ADMIN_ID` varchar(255) DEFAULT NULL,
  `REMARKS` text DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `MANUAL_ADMIN_ID` varchar(255) NOT NULL DEFAULT '0',
  `UPDATE_LOCK` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Yes',
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

CREATE TABLE `emp_attendance` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) NOT NULL,
  `IN_TIME` timestamp NULL DEFAULT NULL,
  `IN_CHECK_DIFFER` time DEFAULT NULL,
  `IN_TIME_REMARKS` text DEFAULT NULL,
  `OUT_TIME` timestamp NULL DEFAULT NULL,
  `OUT_CHECK_DIFFER` time DEFAULT NULL,
  `OUT_TIME_REMARKS` text DEFAULT NULL,
  `SHIFT_MASTER_ID` int(11) DEFAULT NULL,
  `SHIFT_IN_TIME` time DEFAULT NULL,
  `SHIFT_OUT_TIME` time DEFAULT NULL,
  `SHIFT_DURATION` time DEFAULT NULL,
  `MIN_HRS_FULL` time DEFAULT NULL,
  `MIN_HRS_HALF` time DEFAULT NULL,
  `TOTAL_DURATION` time DEFAULT NULL,
  `ATTEN_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `STATUS` int(11) NOT NULL DEFAULT 1 COMMENT '1 = IN, 2 = OUT',
  `PUNCH_TYPE` int(11) NOT NULL COMMENT '0 = MACHINE, 1 = MANUAL',
  `ADMIN_ID` varchar(255) NOT NULL DEFAULT '0' COMMENT '0 = MACHINE',
  `REMARKS` text DEFAULT NULL,
  `UPDATE_LOCK` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Yes',
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave_attendance`
--

CREATE TABLE `emp_leave_attendance` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` varchar(255) DEFAULT NULL,
  `APPLY_DATE` date DEFAULT NULL,
  `LEAVE_TYPE` int(11) DEFAULT NULL,
  `APPLIED_LEAVE_TYPE` int(11) DEFAULT NULL,
  `DATE_FROM` date DEFAULT NULL,
  `DATE_TO` date DEFAULT NULL,
  `AGAINST_DATE_FROM` date NOT NULL,
  `AGAINST_DATE_TO` date NOT NULL,
  `TOTAL_DAYS` int(11) NOT NULL,
  `REASON` text DEFAULT NULL,
  `REASON_DETAILS` text DEFAULT NULL,
  `DOCUMENT` text DEFAULT NULL,
  `STATUS` int(11) NOT NULL COMMENT '0 = PENDING, 1 = APPROVED, 2 = DISAPPROVED',
  `ADMIN_ID` varchar(255) DEFAULT NULL,
  `REMARKS` text DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `MANUAL_ADMIN_ID` varchar(255) NOT NULL DEFAULT '0',
  `UPDATE_LOCK` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Yes',
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave_history`
--

CREATE TABLE `emp_leave_history` (
  `ID` int(11) NOT NULL,
  `EMP_LEAVE_ATTENDANCE_ID` int(11) NOT NULL,
  `LEAVE_TYPE` int(11) NOT NULL,
  `STATUS` int(11) DEFAULT NULL COMMENT '0 = PENDING, 1 = APPROVED, 2 = DISAPPROVED',
  `REMARKS` text DEFAULT NULL,
  `ADMIN_ID` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_separation_log`
--

CREATE TABLE `emp_separation_log` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(25) NOT NULL,
  `joining_date` date NOT NULL,
  `separation_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_separation_log`
--

INSERT INTO `emp_separation_log` (`id`, `emp_id`, `joining_date`, `separation_date`, `created_at`) VALUES
(0, 'EMP0224', '2015-04-01', '0000-00-00', '2019-12-26 11:38:10'),
(0, 'EMP0224', '2015-04-01', '0000-00-00', '2019-12-26 11:39:56'),
(0, 'EMP0229', '2019-12-06', '0000-00-00', '2019-12-26 11:43:26'),
(0, 'EMP0229', '2019-12-06', '0000-00-00', '2019-12-26 11:55:10'),
(0, 'EMP0225', '2019-10-01', '0000-00-00', '2019-12-28 07:17:39'),
(0, 'EMP0226', '2016-04-02', '0000-00-00', '2019-12-28 07:18:56'),
(0, 'EMP0228', '2012-07-26', '0000-00-00', '2019-12-28 07:20:18'),
(0, 'EMP0227', '2012-07-26', '0000-00-00', '2019-12-28 07:21:28'),
(0, 'EMP0224', '2018-08-06', '0000-00-00', '2019-12-28 07:24:00'),
(0, 'EMP0230', '2019-04-01', '0000-00-00', '2020-01-29 05:26:08'),
(0, 'EMP0231', '2020-01-01', '0000-00-00', '2020-01-29 05:27:02'),
(0, 'EMP0232', '2020-01-01', '0000-00-00', '2020-01-29 05:27:46'),
(0, 'EMP0233', '2020-01-01', '0000-00-00', '2020-01-29 06:26:49'),
(0, 'EMP0234', '2020-01-01', '0000-00-00', '2020-01-29 06:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `eward`
--

CREATE TABLE `eward` (
  `HOUSENO` double NOT NULL,
  `HOUSENAME` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eward`
--

INSERT INTO `eward` (`HOUSENO`, `HOUSENAME`) VALUES
(1, 'NONE'),
(2, 'MICANS'),
(3, '50% CONCESSION'),
(4, '-'),
(5, '-'),
(6, '-');

-- --------------------------------------------------------

--
-- Table structure for table `exammaster`
--

CREATE TABLE `exammaster` (
  `ExamCode` tinyint(4) DEFAULT NULL,
  `ExamName` varchar(20) DEFAULT NULL,
  `wetage1` varchar(255) DEFAULT NULL,
  `wetage2` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exammaster`
--

INSERT INTO `exammaster` (`ExamCode`, `ExamName`, `wetage1`, `wetage2`) VALUES
(1, 'PERIODIC TEST 1', '10', 8),
(2, 'NOTEBOOK', '5', 4),
(3, 'SUBJECT_ENRICHMENT', '5', 4),
(4, 'HALF YEARLY', '80', 80),
(5, 'SECOND TERM', '80', 80),
(6, 'ACTIVITY/PROJECT', '0', 4),
(7, 'PERIODIC TEST 2', '10', 8),
(8, 'PERIODIC TEST 3', '10', 8);

-- --------------------------------------------------------

--
-- Table structure for table `feegeneration`
--

CREATE TABLE `feegeneration` (
  `Month_NM` varchar(50) DEFAULT NULL,
  `STU_NAME` varchar(75) DEFAULT NULL,
  `STUDENTID` varchar(100) DEFAULT NULL,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `CLASS` varchar(25) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `Fee_details` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feegeneration`
--

INSERT INTO `feegeneration` (`Month_NM`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `Fee_details`, `id`) VALUES
('APR', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 1),
('APR', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 2),
('APR', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 3),
('APR', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 4),
('APR', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 5),
('APR', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 6),
('APR', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 7),
('APR', 'ANVIE ', 'A14274', '314801', 'Prep', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 8),
('APR', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 9),
('APR', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 10),
('APR', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 11),
('APR', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 12),
('APR', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 13),
('APR', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 14),
('APR', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 15),
('APR', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 16),
('APR', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 17),
('APR', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 18),
('APR', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 19),
('APR', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 20),
('APR', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 21),
('APR', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 22),
('APR', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 24900, 4000, 0, 5500, 4000, 1800, 0, 0, 400, 0, 600, 600, 1400, 0, 1600, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 23),
('APR', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-05-04', 24),
('MAY', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 25),
('MAY', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 26),
('MAY', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 27),
('MAY', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 28),
('MAY', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 29),
('MAY', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 30),
('MAY', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 11500, 0, 0, 5500, 4000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 31),
('MAY', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 32),
('MAY', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 33),
('MAY', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 34),
('MAY', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 35),
('MAY', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 36),
('MAY', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 37),
('MAY', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 38),
('MAY', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 39),
('MAY', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 40),
('MAY', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 41),
('MAY', 'KRITARTH JHA', 'A14304', '14304', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 42),
('MAY', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 43),
('MAY', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 44),
('MAY', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 45),
('MAY', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 46),
('MAY', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 47),
('MAY', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 48),
('MAY', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 49),
('JUN', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 50),
('JUN', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 51),
('JUN', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 52),
('JUN', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 53),
('JUN', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 13000, 0, 0, 5500, 4000, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 54),
('JUN', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 55),
('JUN', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 56),
('JUN', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 57),
('JUN', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 58),
('JUN', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 59),
('JUN', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 60),
('JUN', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 61),
('JUN', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 62),
('JUN', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 63),
('JUN', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 64),
('JUN', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 65),
('JUN', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 66),
('JUN', 'KRITARTH JHA', 'A14304', '14304', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 67),
('JUN', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 68),
('JUN', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 69),
('JUN', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 70),
('JUN', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 71),
('JUN', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 72),
('JUN', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 73),
('JUN', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 74),
('JUL', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 75),
('JUL', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 11500, 0, 0, 5500, 4000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 76),
('JUL', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 77),
('JUL', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 78),
('JUL', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 79),
('JUL', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 80),
('JUL', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 81),
('JUL', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 82),
('JUL', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 83),
('JUL', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 84),
('JUL', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 85),
('JUL', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 86),
('JUL', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 87),
('JUL', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 88),
('JUL', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 89),
('JUL', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 90),
('JUL', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 91),
('JUL', 'KRITARTH JHA', 'A14304', '14304', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 92),
('JUL', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 93),
('JUL', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 94),
('JUL', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 95),
('JUL', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 96),
('JUL', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 97),
('JUL', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 98),
('JUL', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 99),
('AUG', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 100),
('AUG', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 101),
('AUG', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 102),
('AUG', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 103),
('AUG', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 104),
('AUG', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 105),
('AUG', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 106),
('AUG', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 107),
('AUG', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 108),
('AUG', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 109),
('AUG', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 110),
('AUG', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 111),
('AUG', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 112),
('AUG', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 113),
('AUG', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 114),
('AUG', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 115),
('AUG', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 116),
('AUG', 'KRITARTH JHA', 'A14304', '14304', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 117),
('AUG', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 118),
('AUG', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 119),
('AUG', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 120),
('AUG', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 121),
('AUG', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 122),
('AUG', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 26700, 4000, 0, 5500, 4000, 2000, 0, 0, 400, 1500, 600, 600, 1500, 0, 1600, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 123),
('AUG', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-03', 124),
('SEP', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 125),
('SEP', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 126),
('SEP', 'RIYANSH RAJ', 'A14263', '216734', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 127),
('SEP', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 128),
('SEP', 'AADITRI JHA', 'A14268', '121676010', 'Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 129),
('SEP', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 130),
('SEP', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 131),
('SEP', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 132),
('SEP', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 133),
('SEP', 'SHREYANSH RANJAN', 'A14285', '314807', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 134),
('SEP', 'REEVA VIJAY', 'A14288', '319012', 'Prep', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 135),
('SEP', 'AARUSH KUMAR', 'A14289', '314806', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 136),
('SEP', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 137),
('SEP', 'UTKARSH KUMAR', 'A14301', '14301', 'Baby Pre-Nursery', 'A', 0, 25200, 4000, 0, 5500, 4000, 2000, 0, 0, 400, 0, 600, 600, 1500, 0, 1600, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 138),
('SEP', 'ANSH RAJ', 'A14291', '319019', 'Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 139),
('SEP', 'KESHAV KUMAR', 'A14292', '314804', 'Prep', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 140),
('SEP', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 141),
('SEP', 'KRITARTH JHA', 'A14304', '14304', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 142),
('SEP', 'EVANSHIKA', 'A14303', '14303', 'Baby Pre-Nursery', 'A', 0, 18450, 2000, 0, 2750, 2000, 2000, 0, 0, 400, 0, 600, 600, 1500, 0, 1600, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 143),
('SEP', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 144),
('SEP', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 145),
('SEP', 'FATIMA HUSSAIN', 'A14296', '14296', 'Baby Pre-Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 146),
('SEP', 'ABHIRUP KOLEY', 'A14298', '14298', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 147),
('SEP', 'ZOBIA MUSARRAT', 'A14299', '14299', 'Nursery', 'A', 0, 3500, 0, 0, 0, 0, 2000, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 148),
('SEP', 'PURVI VISHNU ADPA ', 'A14297', '14297', 'Baby Pre-Nursery', 'A', 0, 2000, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-30', 149);

-- --------------------------------------------------------

--
-- Table structure for table `feegeneration_2324`
--

CREATE TABLE `feegeneration_2324` (
  `Month_NM` varchar(50) DEFAULT NULL,
  `STU_NAME` varchar(75) DEFAULT NULL,
  `STUDENTID` varchar(100) DEFAULT NULL,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `CLASS` varchar(25) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `Fee_details` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feegeneration_2324`
--

INSERT INTO `feegeneration_2324` (`Month_NM`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `Fee_details`, `id`) VALUES
('APR', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 1),
('APR', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 2),
('APR', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 3),
('APR', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 4),
('APR', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 5),
('APR', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 6),
('APR', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 7),
('APR', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 8),
('APR', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 9),
('APR', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 10),
('APR', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 11),
('APR', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 12),
('APR', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 13),
('APR', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 14),
('APR', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 15),
('APR', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 16),
('APR', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 17),
('APR', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 18),
('APR', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 19),
('APR', 'ADARSH KUMAR SINGH', 'A14273', '183884', 'Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 20),
('APR', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 21),
('APR', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 22),
('APR', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 23),
('APR', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 24),
('APR', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 25),
('APR', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 26),
('APR', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 27),
('APR', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 28),
('APR', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 12500, 0, 0, 5500, 4000, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 29),
('APR', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 30),
('APR', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 31),
('APR', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 11300, 0, 0, 5500, 4000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 32),
('MAY', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 33),
('MAY', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 34),
('MAY', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 35),
('MAY', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 36),
('MAY', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 37),
('MAY', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 38),
('MAY', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 39),
('MAY', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 40),
('MAY', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 41),
('MAY', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 42),
('MAY', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 43),
('MAY', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 44),
('MAY', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 45),
('MAY', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 46),
('MAY', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 47),
('MAY', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 48),
('MAY', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 49),
('MAY', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 50),
('MAY', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 51),
('MAY', 'ADARSH KUMAR SINGH', 'A14273', '183884', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 52),
('MAY', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 53),
('MAY', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 54),
('MAY', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 55),
('MAY', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 56),
('MAY', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 57),
('MAY', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 58),
('MAY', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 59),
('MAY', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 60),
('MAY', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 61),
('MAY', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 62),
('MAY', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 63),
('MAY', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 64),
('JUN', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 65),
('JUN', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 66),
('JUN', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 67),
('JUN', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 68),
('JUN', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 69),
('JUN', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 70),
('JUN', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 71),
('JUN', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 72),
('JUN', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 73),
('JUN', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 74),
('JUN', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 75),
('JUN', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 76),
('JUN', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 77),
('JUN', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 78),
('JUN', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 79),
('JUN', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 80),
('JUN', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 81),
('JUN', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 82),
('JUN', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 83),
('JUN', 'ADARSH KUMAR SINGH', 'A14273', '183884', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 84),
('JUN', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 85),
('JUN', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 86),
('JUN', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 87),
('JUN', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 88),
('JUN', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 89),
('JUN', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 90),
('JUN', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 91),
('JUN', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 92),
('JUN', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 93),
('JUN', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 94),
('JUN', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 95),
('JUN', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-26', 96),
('JUL', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 97),
('JUL', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 98),
('JUL', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 99),
('JUL', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 100),
('JUL', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 101),
('JUL', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 102),
('JUL', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 103),
('JUL', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 104),
('JUL', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 105),
('JUL', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 106),
('JUL', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 107),
('JUL', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 108),
('JUL', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 109),
('JUL', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 110),
('JUL', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 111),
('JUL', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 112),
('JUL', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 113),
('JUL', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 114),
('JUL', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 115),
('JUL', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 116),
('JUL', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 117),
('JUL', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 118),
('JUL', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 119),
('JUL', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 120),
('JUL', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 121),
('JUL', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 122),
('JUL', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 123),
('JUL', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 124),
('JUL', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 125),
('JUL', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 126),
('JUL', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 127),
('JUL', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 128),
('JUL', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 129),
('JUL', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 130),
('JUL', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 131),
('JUL', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 132),
('JUL', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 133),
('JUL', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 134),
('AUG', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 137),
('AUG', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 138),
('AUG', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 139),
('AUG', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 140),
('AUG', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 141),
('AUG', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 142),
('AUG', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 143),
('AUG', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 144),
('AUG', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 145),
('AUG', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 146),
('AUG', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 147),
('AUG', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 148),
('AUG', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 149),
('AUG', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 150),
('AUG', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 151),
('AUG', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 152),
('AUG', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 153),
('AUG', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 154),
('AUG', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 155),
('AUG', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 156),
('AUG', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 157),
('AUG', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 158),
('AUG', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 159),
('AUG', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 160),
('AUG', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 161),
('AUG', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 162),
('AUG', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 163),
('AUG', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 164),
('AUG', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 165),
('AUG', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 166),
('AUG', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 167),
('AUG', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 168),
('AUG', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 169),
('AUG', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 170),
('AUG', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 171),
('AUG', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 172),
('AUG', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 173),
('AUG', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 174),
('SEP', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 177),
('SEP', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 178),
('SEP', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 179),
('SEP', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 180),
('SEP', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 181),
('SEP', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 182),
('SEP', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 183),
('SEP', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 184),
('SEP', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 185),
('SEP', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 186),
('SEP', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 187),
('SEP', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 188),
('SEP', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 189),
('SEP', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 190),
('SEP', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 191),
('SEP', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 192),
('SEP', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 193),
('SEP', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 194),
('SEP', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 195),
('SEP', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 196),
('SEP', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 197),
('SEP', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 198),
('SEP', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 199),
('SEP', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 200),
('SEP', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 201),
('SEP', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 202),
('SEP', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 203),
('SEP', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 204),
('SEP', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 205),
('SEP', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 206),
('SEP', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 207),
('SEP', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 208),
('SEP', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 209),
('SEP', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 210),
('SEP', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 211),
('SEP', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 212),
('SEP', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 213),
('SEP', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 214),
('OCT', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 217),
('OCT', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 218),
('OCT', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 219),
('OCT', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 220),
('OCT', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 221),
('OCT', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 222),
('OCT', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 223),
('OCT', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 224),
('OCT', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 225),
('OCT', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 226),
('OCT', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 227),
('OCT', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 228),
('OCT', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 229),
('OCT', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 230),
('OCT', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 231),
('OCT', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 232),
('OCT', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 233),
('OCT', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 234),
('OCT', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 235),
('OCT', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 236),
('OCT', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 237),
('OCT', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 238),
('OCT', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 239),
('OCT', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 240),
('OCT', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 241),
('OCT', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 242),
('OCT', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 243),
('OCT', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 244),
('OCT', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 245),
('OCT', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 246),
('OCT', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 247),
('OCT', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 248),
('OCT', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 249),
('OCT', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 250),
('OCT', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 251),
('OCT', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 252),
('OCT', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 253),
('OCT', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 254),
('NOV', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 255),
('NOV', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 256),
('NOV', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 257),
('NOV', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 258),
('NOV', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 259),
('NOV', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 260),
('NOV', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 261),
('NOV', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 262),
('NOV', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 263),
('NOV', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 264),
('NOV', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 265),
('NOV', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 266),
('NOV', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 267),
('NOV', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 268),
('NOV', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 269),
('NOV', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 270),
('NOV', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 271),
('NOV', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 272),
('NOV', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 273),
('NOV', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 274),
('NOV', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 275),
('NOV', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 276),
('NOV', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 277),
('NOV', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 278),
('NOV', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 279),
('NOV', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 280),
('NOV', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 281),
('NOV', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 282),
('NOV', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 283),
('NOV', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 284),
('NOV', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 285),
('NOV', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 286),
('NOV', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 287),
('NOV', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 288),
('NOV', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 289),
('NOV', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 290),
('NOV', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 291),
('DEC', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 292),
('DEC', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 293),
('DEC', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 294),
('DEC', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 295);
INSERT INTO `feegeneration_2324` (`Month_NM`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `Fee_details`, `id`) VALUES
('DEC', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 296),
('DEC', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 297),
('DEC', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 298),
('DEC', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 299),
('DEC', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 300),
('DEC', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 301),
('DEC', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 302),
('DEC', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 303),
('DEC', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 304),
('DEC', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 305),
('DEC', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 306),
('DEC', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 307),
('DEC', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 308),
('DEC', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 309),
('DEC', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 310),
('DEC', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 311),
('DEC', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 312),
('DEC', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 313),
('DEC', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 314),
('DEC', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 315),
('DEC', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 316),
('DEC', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 317),
('DEC', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 318),
('DEC', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 319),
('DEC', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 320),
('DEC', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 321),
('DEC', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 322),
('DEC', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 323),
('DEC', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 324),
('DEC', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 325),
('DEC', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 326),
('DEC', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 327),
('DEC', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 328),
('JAN', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 329),
('JAN', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 330),
('JAN', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 331),
('JAN', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 332),
('JAN', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 333),
('JAN', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 334),
('JAN', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 335),
('JAN', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 336),
('JAN', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 337),
('JAN', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 338),
('JAN', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 339),
('JAN', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 340),
('JAN', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 341),
('JAN', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 342),
('JAN', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 343),
('JAN', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 344),
('JAN', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 345),
('JAN', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 346),
('JAN', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 347),
('JAN', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 348),
('JAN', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 349),
('JAN', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 350),
('JAN', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 351),
('JAN', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 352),
('JAN', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 353),
('JAN', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 354),
('JAN', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 355),
('JAN', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 356),
('JAN', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 357),
('JAN', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 358),
('JAN', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 359),
('JAN', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 360),
('JAN', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 361),
('JAN', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 362),
('JAN', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 363),
('JAN', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 364),
('JAN', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-01-16', 365);

-- --------------------------------------------------------

--
-- Table structure for table `feegeneration_bak_04092023`
--

CREATE TABLE `feegeneration_bak_04092023` (
  `Month_NM` varchar(50) DEFAULT NULL,
  `STU_NAME` varchar(75) DEFAULT NULL,
  `STUDENTID` varchar(100) DEFAULT NULL,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `CLASS` varchar(15) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `Fee_details` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feegeneration_bak_04092023`
--

INSERT INTO `feegeneration_bak_04092023` (`Month_NM`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `Fee_details`, `id`) VALUES
('AUG', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 137),
('AUG', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 138),
('AUG', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 139),
('AUG', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 140),
('AUG', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 141),
('AUG', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 142),
('AUG', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 143),
('AUG', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 144),
('AUG', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 145),
('AUG', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nurser', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 146),
('AUG', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 147),
('AUG', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 148),
('AUG', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 149),
('AUG', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 150),
('AUG', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 151),
('AUG', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 152),
('AUG', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 153),
('AUG', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 154),
('AUG', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 155),
('AUG', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 156),
('AUG', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 157),
('AUG', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 158),
('AUG', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 159),
('AUG', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 160),
('AUG', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 161),
('AUG', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 162),
('AUG', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 163),
('AUG', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 164),
('AUG', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 165),
('AUG', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 166),
('AUG', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 167),
('AUG', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 168),
('AUG', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 169),
('AUG', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 170),
('AUG', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 171),
('AUG', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 172),
('AUG', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 3000, 0, 0, 0, 0, 1800, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 173),
('AUG', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nurser', 'A', 0, 1800, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-09-04', 174);

-- --------------------------------------------------------

--
-- Table structure for table `feegeneration_old`
--

CREATE TABLE `feegeneration_old` (
  `Month_NM` varchar(50) DEFAULT NULL,
  `STU_NAME` varchar(75) DEFAULT NULL,
  `STUDENTID` varchar(100) DEFAULT NULL,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `CLASS` varchar(15) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `Fee_details` varchar(100) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feegeneration_old`
--

INSERT INTO `feegeneration_old` (`Month_NM`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `Fee_details`, `id`) VALUES
('APR', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 1),
('APR', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 2),
('APR', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 9500, 2500, 0, 2200, 3000, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 3),
('APR', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 6400, 0, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 4),
('APR', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 6400, 0, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 5),
('APR', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 6),
('APR', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 6400, 0, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 7),
('APR', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 6400, 0, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 8),
('APR', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 9200, 0, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 9),
('APR', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 10),
('APR', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 11),
('APR', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 12),
('APR', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 13),
('APR', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 14),
('APR', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 15),
('APR', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 16),
('APR', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 17),
('APR', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 18),
('APR', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 19),
('APR', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 9200, 2800, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 20),
('APR', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 21),
('APR', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 22),
('APR', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 23),
('APR', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 24),
('APR', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 25),
('APR', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 26),
('APR', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 27),
('APR', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 7100, 0, 0, 2200, 3000, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 28),
('APR', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 7050, 0, 0, 2200, 3000, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 29),
('APR', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 7050, 0, 0, 2200, 3000, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 30),
('APR', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 31),
('APR', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 9200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 32),
('APR', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 6400, 0, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 33),
('APR', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 34),
('APR', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 35),
('APR', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 36),
('APR', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 6400, 0, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 37),
('APR', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 7100, 0, 0, 2200, 3000, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 38),
('APR', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 6200, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 39),
('APR', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 7050, 0, 0, 2200, 3000, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 40),
('APR', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 9900, 2800, 0, 2200, 3000, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 41),
('APR', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 9950, 2800, 0, 2200, 3000, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 42),
('APR', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 43),
('APR', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 6400, 0, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 44),
('APR', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 45),
('APR', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 46),
('APR', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 47),
('APR', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 48),
('APR', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 9200, 2800, 0, 2200, 3000, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 50),
('APR', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 51),
('APR', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 54),
('APR', 'DEVESH TRIPATHI', 'A14240', '1920/005', 'Prep', 'A', 5, 6400, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '20-01-03', 56),
('APR', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 57),
('APR', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 59),
('MAY', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 60),
('MAY', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 61),
('MAY', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 1800, 0, 0, 0, 0, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 62),
('MAY', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 63),
('MAY', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 64),
('MAY', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 65),
('MAY', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 66),
('MAY', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 67),
('MAY', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 68),
('MAY', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 69),
('MAY', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 70),
('MAY', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 71),
('MAY', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 72),
('MAY', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 73),
('MAY', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 74),
('MAY', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 75),
('MAY', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 76),
('MAY', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 77),
('MAY', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 78),
('MAY', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 79),
('MAY', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 80),
('MAY', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 81),
('MAY', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 82),
('MAY', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 83),
('MAY', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 84),
('MAY', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 85),
('MAY', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 86),
('MAY', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 87),
('MAY', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 88),
('MAY', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 89),
('MAY', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 90),
('MAY', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 91),
('MAY', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 92),
('MAY', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 93),
('MAY', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 94),
('MAY', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 95),
('MAY', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 96),
('OCT', 'ATHARV  ', 'A14239', '1920/004', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 97),
('OCT', 'ARUL  ', 'A14240', '1920/005', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 98),
('OCT', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 99),
('OCT', 'ARNAV  SINGH', 'A14243', '1920/008', 'LEVEL 0', 'Z', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 100),
('OCT', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 101),
('NOV', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 102),
('NOV', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 103),
('NOV', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 1800, 0, 0, 0, 0, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 104),
('NOV', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 105),
('NOV', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 106),
('NOV', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 107),
('NOV', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 108),
('MAY', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 109),
('MAY', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 110),
('MAY', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 111),
('MAY', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 112),
('MAY', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 113),
('MAY', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 114),
('MAY', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 115),
('MAY', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 116),
('MAY', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 117),
('MAY', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 118),
('MAY', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 119),
('MAY', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 121),
('MAY', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 122),
('MAY', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 125),
('MAY', 'ARUL  ', 'A14240', '1920/005', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 127),
('MAY', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 128),
('MAY', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 130),
('JUN', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 131),
('JUN', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 132),
('JUN', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 1800, 0, 0, 0, 0, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 133),
('JUN', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 134),
('JUN', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 135),
('JUN', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 136),
('JUN', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 137),
('JUN', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 138),
('JUN', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 139),
('JUN', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 140),
('JUN', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 141),
('JUN', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 142),
('JUN', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 143),
('JUN', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 144),
('JUN', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 145),
('JUN', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 146),
('JUN', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 147),
('JUN', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 148),
('JUN', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 149),
('JUN', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 150),
('JUN', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 151),
('JUN', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 152),
('JUN', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 153),
('JUN', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 154),
('JUN', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 155),
('JUN', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 156),
('JUN', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 157),
('JUN', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 158),
('JUN', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 159),
('JUN', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 160),
('JUN', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 161),
('JUN', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 162),
('JUN', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 163),
('JUN', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 164),
('JUN', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 165),
('JUN', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 166),
('JUN', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 167),
('JUN', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 168),
('JUN', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 169),
('JUN', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 170),
('JUN', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 171),
('JUN', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 172),
('JUN', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 173),
('JUN', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 174),
('JUN', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 175),
('JUN', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 176),
('JUN', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 177),
('JUN', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 178),
('JUN', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 180),
('JUN', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 181),
('JUN', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 184),
('JUN', 'ARUL  ', 'A14240', '1920/005', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 186),
('JUN', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 187),
('JUN', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 189),
('JUL', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 190),
('JUL', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 191),
('JUL', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 1800, 0, 0, 0, 0, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 192),
('JUL', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 193),
('JUL', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 194),
('JUL', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 195),
('JUL', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 196),
('JUL', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 197),
('JUL', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 198),
('JUL', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 199),
('JUL', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 200),
('JUL', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 201),
('JUL', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 202),
('JUL', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 203),
('JUL', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 204),
('JUL', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 205),
('JUL', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 206),
('JUL', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 207),
('JUL', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 208),
('JUL', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 209),
('JUL', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 210),
('JUL', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 211),
('JUL', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 212),
('JUL', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 213),
('JUL', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 214),
('JUL', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 215),
('JUL', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 216),
('JUL', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 217),
('JUL', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 218),
('JUL', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 219),
('JUL', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 220),
('JUL', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 221),
('JUL', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 222),
('JUL', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 223),
('JUL', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 224),
('JUL', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 225),
('JUL', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 226),
('JUL', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 227),
('JUL', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 228),
('JUL', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 229),
('JUL', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 230),
('JUL', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 231),
('JUL', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 232),
('JUL', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 233),
('JUL', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 234),
('JUL', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 235),
('JUL', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 236),
('JUL', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 237),
('JUL', 'ANIKA BHARDWAJ  ', 'A14232', '171509', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 238),
('JUL', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 239),
('JUL', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 240),
('JUL', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 243),
('JUL', 'ARUL  ', 'A14240', '1920/005', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 245),
('JUL', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 246),
('JUL', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 248),
('AUG', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 249),
('AUG', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 250),
('AUG', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 1800, 0, 0, 0, 0, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 251),
('AUG', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 252),
('AUG', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 253),
('AUG', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 254),
('AUG', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 255),
('AUG', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 256),
('AUG', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 257),
('AUG', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 258),
('AUG', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 259),
('AUG', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 260),
('AUG', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 261),
('AUG', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 262),
('AUG', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 263),
('AUG', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 264),
('AUG', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 265),
('AUG', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 266),
('AUG', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 267),
('AUG', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 268),
('AUG', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 269),
('AUG', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 270),
('AUG', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 271),
('AUG', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 272),
('AUG', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 273),
('AUG', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 274),
('AUG', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 275),
('AUG', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 276),
('AUG', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 277),
('AUG', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 278),
('AUG', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 279),
('AUG', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 280),
('AUG', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 281),
('AUG', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 282),
('AUG', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 283),
('AUG', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 284),
('AUG', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 285),
('AUG', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 286),
('AUG', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 287),
('AUG', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 288),
('AUG', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 289),
('AUG', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 290),
('AUG', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 291),
('AUG', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 292),
('AUG', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 293),
('AUG', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 294),
('AUG', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 295),
('AUG', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 296),
('AUG', 'ANIKA BHARDWAJ  ', 'A14232', '171509', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 297),
('AUG', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 298),
('AUG', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 299),
('AUG', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 302),
('AUG', 'ARUL  ', 'A14240', '1920/005', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 304),
('AUG', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 305),
('AUG', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 307),
('SEP', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 308),
('SEP', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 309),
('SEP', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 1800, 0, 0, 0, 0, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 310),
('SEP', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 311),
('SEP', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 312),
('SEP', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 313),
('SEP', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 314),
('SEP', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 315),
('SEP', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 316);
INSERT INTO `feegeneration_old` (`Month_NM`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `Fee_details`, `id`) VALUES
('SEP', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 317),
('SEP', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 318),
('SEP', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 319),
('SEP', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 320),
('SEP', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 321),
('SEP', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 322),
('SEP', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 323),
('SEP', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 324),
('SEP', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 325),
('SEP', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 326),
('SEP', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 327),
('SEP', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 328),
('SEP', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 329),
('SEP', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 330),
('SEP', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 331),
('SEP', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 332),
('SEP', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 333),
('SEP', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 334),
('SEP', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 335),
('SEP', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 336),
('SEP', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 337),
('SEP', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 338),
('SEP', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 339),
('SEP', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 340),
('SEP', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 341),
('SEP', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 342),
('SEP', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 343),
('SEP', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 344),
('SEP', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 345),
('SEP', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 346),
('SEP', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 347),
('SEP', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 348),
('SEP', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 349),
('SEP', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 350),
('SEP', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 351),
('SEP', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 352),
('SEP', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 353),
('SEP', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 354),
('SEP', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 355),
('SEP', 'ANIKA BHARDWAJ  ', 'A14232', '171509', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 356),
('SEP', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 357),
('SEP', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 358),
('SEP', 'ADRITO  ADHIKARY', 'A14236', '171508', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 359),
('SEP', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 361),
('SEP', 'ARUL  ', 'A14240', '1920/005', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 363),
('SEP', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 364),
('SEP', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 366),
('OCT', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 367),
('OCT', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 368),
('OCT', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 1800, 0, 0, 0, 0, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 369),
('OCT', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 370),
('OCT', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 371),
('OCT', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 372),
('OCT', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 373),
('OCT', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 374),
('OCT', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 375),
('OCT', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 376),
('OCT', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 377),
('OCT', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 378),
('OCT', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 379),
('OCT', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 380),
('OCT', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 381),
('OCT', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 382),
('OCT', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 383),
('OCT', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 384),
('OCT', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 385),
('OCT', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 386),
('OCT', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 387),
('OCT', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 388),
('OCT', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 389),
('OCT', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 390),
('OCT', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 391),
('OCT', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 392),
('OCT', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 393),
('OCT', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 394),
('OCT', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 395),
('OCT', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 396),
('OCT', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 397),
('OCT', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 398),
('OCT', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 399),
('OCT', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 400),
('OCT', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 401),
('OCT', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 402),
('OCT', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 403),
('OCT', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 404),
('OCT', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 405),
('OCT', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 406),
('OCT', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 407),
('OCT', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 408),
('OCT', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 409),
('OCT', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 410),
('OCT', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 411),
('OCT', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 412),
('OCT', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 413),
('OCT', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 414),
('OCT', 'ANIKA BHARDWAJ  ', 'A14232', '171509', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 415),
('OCT', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 416),
('OCT', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 417),
('OCT', 'ADRITO  ADHIKARY', 'A14236', '171508', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 418),
('OCT', 'PREETHA  MUKHERJEE', 'A14237', '1920/002', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 419),
('OCT', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 420),
('NOV', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 421),
('NOV', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 422),
('NOV', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 423),
('NOV', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 424),
('NOV', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 425),
('NOV', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 426),
('NOV', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 427),
('NOV', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 428),
('NOV', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 429),
('NOV', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 430),
('NOV', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 431),
('NOV', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 432),
('NOV', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 433),
('NOV', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 434),
('NOV', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 435),
('NOV', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 436),
('NOV', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 437),
('NOV', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 438),
('NOV', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 439),
('NOV', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 440),
('NOV', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 441),
('NOV', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 442),
('NOV', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 443),
('NOV', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 444),
('NOV', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 445),
('NOV', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 446),
('NOV', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 447),
('NOV', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 448),
('NOV', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 449),
('NOV', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 450),
('NOV', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 451),
('NOV', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 452),
('NOV', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 453),
('NOV', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 454),
('NOV', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 455),
('NOV', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 456),
('NOV', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 457),
('NOV', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 458),
('NOV', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 459),
('NOV', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 460),
('NOV', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 461),
('NOV', 'ANIKA BHARDWAJ  ', 'A14232', '171509', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 462),
('NOV', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 463),
('NOV', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 464),
('NOV', 'ADRITO  ADHIKARY', 'A14236', '171508', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 465),
('NOV', 'PREETHA  MUKHERJEE', 'A14237', '1920/002', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 466),
('NOV', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 467),
('NOV', 'ATHARV  ', 'A14239', '1920/004', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 468),
('NOV', 'ARUL  ', 'A14240', '1920/005', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 469),
('NOV', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 470),
('NOV', 'ARNAV  SINGH', 'A14243', '1920/008', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 471),
('NOV', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 472),
('DEC', 'AADHYA  VERMA ', 'A14245', '145706', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 473),
('DEC', 'SANAYA  KUMARI', 'A14220', '175878', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 474),
('DEC', 'YAKSHIT VATS  ', 'A14221', '1920/001', 'LEVEL 0', 'Z', 0, 1800, 0, 0, 0, 0, 1000, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 475),
('DEC', 'ALIZA   RIZWAN', 'A14172', '25849', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 476),
('DEC', 'VINAYAK  GOPE', 'A14142', '008772', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 477),
('DEC', 'GARIMA  SINGH', 'A14148', '008779', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 478),
('DEC', 'ASHMIT KUMAR BHARTI', 'A14155', '25806', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 479),
('DEC', 'MD FARHAN  ', 'A14186', '053752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 480),
('DEC', 'SWASTIKA  ROY', 'A14188', '053754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 481),
('DEC', 'MAHARSHI  ROY', 'A14194', '14194', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 482),
('DEC', 'ASHWIK   SAMANTA', 'A14195', '053760', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 483),
('DEC', 'ARNAV   SINGH', 'A14196', '124751', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 484),
('DEC', 'PURUSHOTTAM ANAND TIWARY', 'A14197', '124752', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 485),
('DEC', 'NAVYA  SINHA', 'A14198', '124753', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 486),
('DEC', 'NILAYAN   DAS', 'A14200', '124754', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 487),
('DEC', 'PRABHASH   PRAKHAR', 'A14203', '124759', 'LEVEL I', 'A', 0, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 488),
('DEC', 'ASHI SINGH   ', 'A14209', '111864', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 489),
('DEC', 'ARYAN  SHUKLA', 'A14210', '111865', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 490),
('DEC', 'VIVAAN   GOYAL', 'A14211', '111866', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 491),
('DEC', 'AVIKA  PATIAL', 'A14212', '111868', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 492),
('DEC', 'ARYAN   KUMAR', 'A14213', '111869', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 493),
('DEC', 'AUSTIN  BHENGRA', 'A14214', '111870', 'LEVEL I', 'A', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 494),
('DEC', 'OISHIKI   ROY', 'A14215', '175875', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 495),
('DEC', 'AIZZEL  TIRKEY', 'A14216', '175872', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 496),
('DEC', 'SARTHAK  KUMAR  PANDEY', 'A14217', '175873', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 497),
('DEC', 'NAMISH  DEV SHARMA', 'A14218', '175874', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 498),
('DEC', 'AAMNA  ZAHEEN', 'A14219', '175876', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 499),
('DEC', 'UTKARSH  ROY', 'A14191', '053757', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 500),
('DEC', 'ADITI  KUMARI', 'A14192', '053758', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 501),
('DEC', 'AYUSH EMMANUEL TIRKEY', 'A14193', '053759', 'LEVEL I', 'A', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 502),
('DEC', 'AADRIKA  RAJ', 'A14204', '124758', 'LEVEL I', 'A', 0, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 503),
('DEC', 'ARSAL  TOPNO', 'A14205', '124757', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 504),
('DEC', 'RITISHA  GARAI', 'A14206', '111861', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 505),
('DEC', 'ANVI  KUMARI', 'A14207', '111862', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 506),
('DEC', 'SAKSHAM  KUMAR', 'A14208', '111863', 'LEVEL I', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 507),
('DEC', 'KAUSTUBH  KAMLESH', 'A14169', '25846', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 508),
('DEC', 'ROUNIT  YADAV', 'A14154', '25805', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 509),
('DEC', 'ANSH  KUMAR', 'A14159', '25809', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 510),
('DEC', 'ARYAN  ', 'A14165', '14165', 'LEVEL II', 'A', 0, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 511),
('DEC', 'ARADHYA   SHAH', 'A14143', '008773', 'LEVEL III', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 512),
('DEC', 'ARADHYA  YADAV  ', 'A14223', '171504', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 513),
('DEC', 'RUHI   ', 'A14224', '171505', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 514),
('DEC', 'AANCHAL  EKKA', 'A14225', '171506', 'LEVEL 0', 'Z', 0, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 515),
('DEC', 'SHITIJA  DUTTA', 'A14226', '053742', 'LEVEL I', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 516),
('DEC', 'PRATIK KUMAR  MISHRA', 'A14227', '171501', 'LEVEL 0', 'Z', 0, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 517),
('DEC', 'SHARVANI   MAHATAPA', 'A14228', '175880', 'LEVEL II', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 518),
('DEC', 'ANSH KUMAR MAHTO', 'A14229', '175871', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 519),
('DEC', 'RAJ ARYAN ', 'A14231', '171507', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 520),
('DEC', 'ANIKA BHARDWAJ  ', 'A14232', '171509', 'LEVEL 0', 'Z', 0, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 521),
('DEC', 'AUSTIN  GURIA', 'A14234', '175879', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 522),
('DEC', 'PRATEEK KUMAR SHARMA', 'A14235', '145703', 'LEVEL 0', 'Z', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 523),
('DEC', 'ADRITO  ADHIKARY', 'A14236', '171508', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 524),
('DEC', 'PREETHA  MUKHERJEE', 'A14237', '1920/002', 'LEVEL 0', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 525),
('DEC', 'NIRUPAMA  ', 'A14238', '1920/003', 'LEVEL 0', 'A', 0, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 526),
('DEC', 'ATHARV  ', 'A14239', '1920/004', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 527),
('DEC', 'ARUL  ', 'A14240', '1920/005', 'LEVEL II', 'A', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 528),
('DEC', 'ADWIKA  ', 'A14241', '1920/006', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 529),
('DEC', 'ARNAV  SINGH', 'A14243', '1920/008', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 530),
('DEC', 'AYANSH   SRIVASTAV', 'A14244', '145701', 'LEVEL 0', 'Z', 0, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 531),
('JAN', 'VINAYAK GOPE', 'A14142', '008772', 'Nursery', 'A', 9, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 532),
('JAN', 'ARADHYA SHAH', 'A14143', '008773', 'Prep', 'A', 1, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 533),
('JAN', 'GARIMA SINGH', 'A14148', '008779', 'Nursery', 'A', 6, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 534),
('JAN', 'SHITIJA DUTTA', 'A14226', '053742', 'Nursery', 'A', 10, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 535),
('JAN', 'MD FARHAN', 'A14186', '053752', 'Nursery', 'A', 5, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 536),
('JAN', 'SWASTIKA ROY', 'A14188', '053754', 'Nursery', 'A', 7, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 537),
('JAN', 'UTKARSH ROY', 'A14191', '053757', 'Nursery', 'A', 12, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 538),
('JAN', 'ADITI KUMARI', 'A14192', '053758', 'Nursery', 'A', 3, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 539),
('JAN', 'AYUSH', 'A14193', '053759', 'Nursery', 'A', 15, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 540),
('JAN', 'ASHWIK SAMANTA', 'A14195', '053760', 'Pre-Nursery', 'A', 2, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 541),
('JAN', 'RITISHA GORAI', 'A14206', '111861', 'Nursery', 'A', 13, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 542),
('JAN', 'ANVI KUMARI', 'A14207', '111862', 'Pre-Nursery', 'A', 1, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 543),
('JAN', 'SAKSHAM KUMAR', 'A14208', '111863', 'Nursery', 'A', 8, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 544),
('JAN', 'ASHI SINGH ', 'A14209', '111864', 'Pre-Nursery', 'A', 4, 1700, 0, 0, 0, 0, 1200, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 545),
('JAN', 'ARYAN SHUKLA', 'A14210', '111865', 'Baby Pre-Nurser', 'A', 3, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 546),
('JAN', 'VIVAAN GOYAL', 'A14211', '111866', 'Baby Pre-Nurser', 'A', 15, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 547),
('JAN', 'ARYAN SINGH', 'A14213', '111869', 'Baby Pre-Nurser', 'A', 2, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 548),
('JAN', 'AUSTIN BHENGRA', 'A14214', '111870', 'Pre-Nursery', 'A', 3, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 549),
('JAN', 'ARNAV ', 'A14196', '124751', 'Nursery', 'A', 11, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 550),
('JAN', 'PURUSHOTTAM ARTH', 'A14197', '124752', 'Pre-Nursery', 'A', 10, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 551),
('JAN', 'NAVYA SINHA', 'A14198', '124753', 'Pre-Nursery', 'A', 8, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 552),
('JAN', 'NILAYAN DAS', 'A14200', '124754', 'Pre-Nursery', 'A', 7, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 553),
('JAN', 'ARSAL TOPNO', 'A14205', '124757', 'Baby Pre-Nurser', 'A', 1, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 554),
('JAN', 'AADRIKA RAJ', 'A14204', '124758', 'Nursery', 'A', 14, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 555),
('JAN', 'PRABHASH PRAKHAR', 'A14203', '124759', 'Pre-Nursery', 'A', 9, 2100, 0, 0, 0, 0, 1200, 0, 0, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 556),
('JAN', 'ARYAN', 'A14165', '14165', 'Prep', 'A', 4, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 557),
('JAN', 'MAHARSHI', 'A14194', '14194', 'Pre-Nursery', 'A', 13, 1000, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 558),
('JAN', 'AYANSH SRIVASTAVA', 'A14244', '145701', 'Baby Pre-Nurser', 'A', 22, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 559),
('JAN', 'PRATIK SHARMA', 'A14235', '145703', 'Baby Pre-Nurser', 'A', 20, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 560),
('JAN', 'AADHYA VERMA', 'A14245', '145706', 'Baby Pre-Nurser', 'A', 23, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 561),
('JAN', 'ARUSHI MAURYA', 'A14246', '145707', 'Baby Pre-Nurser', 'A', 24, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 562),
('JAN', 'PRATIK KR. MISHRA', 'A14227', '171501', 'Baby Pre-Nurser', 'A', 10, 1850, 0, 0, 0, 0, 1200, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 563),
('JAN', 'ARADHYA  YADAV', 'A14223', '171504', 'Prep', 'A', 2, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 564),
('JAN', 'RUHI KUMARI', 'A14224', '171505', 'Pre-Nursery', 'A', 11, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 565),
('JAN', 'AANCHAL', 'A14225', '171506', 'Pre-Nursery', 'A', 5, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 566),
('JAN', 'RAJ ARYAN', 'A14231', '171507', 'Baby Pre-Nurser', 'A', 16, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 567),
('JAN', 'ADRITO ADHIKARY', 'A14236', '171508', 'Baby Pre-Nurser', 'A', 21, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 568),
('JAN', 'ANIKA BHARDWAJ', 'A14232', '171509', 'Baby Pre-Nurser', 'A', 17, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 569),
('JAN', 'ANSH MAHTO', 'A14229', '175871', 'Baby Pre-Nurser', 'A', 5, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 570),
('JAN', 'AIZZEL', 'A14216', '175872', 'Pre-Nursery', 'A', 6, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 571),
('JAN', 'SARTHAK PANDEY', 'A14217', '175873', 'Baby Pre-Nurser', 'A', 13, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 572),
('JAN', 'NAMISH DEV SHARMA', 'A14218', '175874', 'Baby Pre-Nurser', 'A', 12, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 573),
('JAN', 'OISHIKI ROY', 'A14215', '175875', 'Baby Pre-Nurser', 'A', 7, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 574),
('JAN', 'AAMNA ZAHEEN', 'A14219', '175876', 'Baby Pre-Nurser', 'A', 6, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 575),
('JAN', 'SANAYA KUMARI', 'A14220', '175878', 'Baby Pre-Nurser', 'A', 14, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 576),
('JAN', 'AUSTIN GURIA', 'A14234', '175879', 'Baby Pre-Nurser', 'A', 9, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 577),
('JAN', 'SHARVANI MAHATAPA', 'A14228', '175880', 'Nursery', 'A', 16, 1950, 0, 0, 0, 0, 1200, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 578),
('JAN', 'YAKSHIT VATS', 'A14221', '1920/001', 'Baby Pre-Nurser', 'A', 8, 2000, 0, 0, 0, 0, 1200, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 579),
('JAN', 'PREETHA MUKHERJEE', 'A14237', '1920/002', 'Baby Pre-Nurser', 'A', 11, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 580),
('JAN', 'NIRUPAMA', 'A14238', '1920/003', 'Pre-Nursery', 'A', 14, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 581),
('JAN', 'ATHARV', 'A14239', '1920/004', 'Baby Pre-Nurser', 'A', 19, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 582),
('JAN', 'ARUL', 'A14240', '1920/005', 'Prep', 'A', 5, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 583),
('JAN', 'ADWIKA', 'A14241', '1920/006', 'Baby Pre-Nurser', 'A', 18, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 584),
('JAN', 'SHOURAB', 'A14242', '1920/007', 'Pre-Nursery', 'A', 12, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 585),
('JAN', 'ARNAV SINGH', 'A14243', '1920/008', 'Baby Pre-Nurser', 'A', 4, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 586),
('JAN', 'ROUNIT YADAV', 'A14154', '25805', 'Prep', 'A', 7, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 587),
('JAN', 'ASHMIT AARAV', 'A14155', '25806', 'Nursery', 'A', 1, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 588),
('JAN', 'ANSH KUMAR', 'A14159', '25809', 'Prep', 'A', 3, 1900, 0, 0, 0, 0, 1200, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 589),
('JAN', 'KAUSTUBH KAMLESH', 'A14169', '25846', 'Prep', 'A', 6, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CURRENT YEAR', 590),
('JAN', 'ALIZA RIZWAN', 'A14172', '25849', 'Nursery', 'A', 4, 1200, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-01-03', 591);

-- --------------------------------------------------------

--
-- Table structure for table `feehead`
--

CREATE TABLE `feehead` (
  `ACT_CODE` smallint(6) NOT NULL DEFAULT 0,
  `FEE_HEAD` varchar(50) DEFAULT NULL,
  `MONTHLY` smallint(6) DEFAULT NULL,
  `CL_BASED` smallint(6) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL,
  `SHNAME` varchar(35) DEFAULT NULL,
  `EMP` double DEFAULT NULL,
  `CCL` double DEFAULT NULL,
  `SPL` double DEFAULT NULL,
  `EXT` double DEFAULT NULL,
  `INTERNAL` double DEFAULT NULL,
  `AccG` smallint(6) DEFAULT NULL,
  `HType` varchar(50) DEFAULT NULL,
  `APR` smallint(6) DEFAULT NULL,
  `may` smallint(6) DEFAULT NULL,
  `JUN` smallint(6) DEFAULT NULL,
  `JUL` smallint(6) DEFAULT NULL,
  `AUG` smallint(6) DEFAULT NULL,
  `SEP` smallint(6) DEFAULT NULL,
  `OCT` smallint(6) DEFAULT NULL,
  `NOV` smallint(6) DEFAULT NULL,
  `DECM` smallint(6) DEFAULT NULL,
  `JAN` smallint(6) DEFAULT NULL,
  `FEB` smallint(6) DEFAULT NULL,
  `MAR` smallint(6) DEFAULT NULL,
  `Annual` smallint(6) DEFAULT NULL COMMENT '2=AMOUNT WILL BE NOT TAKE FOR NEW STUDENT MONTH COLLECTION,3=FOR FORM SALES TIME AMOUNT WILL BE TAKEN',
  `LEDGER_NO` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feehead`
--

INSERT INTO `feehead` (`ACT_CODE`, `FEE_HEAD`, `MONTHLY`, `CL_BASED`, `AMOUNT`, `SHNAME`, `EMP`, `CCL`, `SPL`, `EXT`, `INTERNAL`, `AccG`, `HType`, `APR`, `may`, `JUN`, `JUL`, `AUG`, `SEP`, `OCT`, `NOV`, `DECM`, `JAN`, `FEB`, `MAR`, `Annual`, `LEDGER_NO`) VALUES
(1, 'ADMISSION FORM', 0, 0, 2000, 'ADM FORM', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'L1'),
(2, 'ADMISSION FEES', 0, 0, 37000, 'ADM FEES', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L2'),
(3, 'CAUTION FEES', 0, 0, 7000, 'CAU FEES', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L3'),
(4, 'KIT', 0, 0, 10000, 'KIT', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L4'),
(5, 'VAN FEES', 1, 0, 0, 'VAN FEES', 0, 0, 0, 0, 0, 1, 'BUS', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'L5'),
(6, 'MONTHLY FEES', 1, 1, 0, 'MNTH FEES', 0, 0, 0, 0, 0, 1, 'No', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'L6'),
(7, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L7'),
(8, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'L8'),
(9, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'L9'),
(10, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L10'),
(11, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L11'),
(12, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L12'),
(13, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L13'),
(14, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L14'),
(15, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L15'),
(16, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L16'),
(17, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L17'),
(18, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L18'),
(19, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L19'),
(20, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L20'),
(21, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L21'),
(22, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L22'),
(23, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L23'),
(24, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L24'),
(25, '-', 0, 0, 0, '-', 0, 0, 0, 0, 0, 1, 'No', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'L25');

-- --------------------------------------------------------

--
-- Table structure for table `fee_clw`
--

CREATE TABLE `fee_clw` (
  `CL` smallint(6) DEFAULT NULL,
  `FH` smallint(6) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL,
  `EMP` double DEFAULT NULL,
  `CCL` double DEFAULT NULL,
  `SPL` double DEFAULT NULL,
  `EXT` double DEFAULT NULL,
  `INTERNAL` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_clw`
--

INSERT INTO `fee_clw` (`CL`, `FH`, `AMOUNT`, `EMP`, `CCL`, `SPL`, `EXT`, `INTERNAL`) VALUES
(3, 17, 45, 45, 45, 45, 45, 0),
(3, 3, 5500, 0, 0, 2200, 2200, 0),
(3, 4, 4000, 4000, 4000, 3000, 3000, 0),
(3, 5, 1800, 1000, 900, 0, 0, 0),
(3, 18, 50, 50, 50, 50, 50, 0),
(3, 19, 45, 45, 45, 45, 45, 0),
(3, 20, 20, 20, 20, 20, 20, 0),
(3, 21, 360, 360, 360, 360, 360, 360),
(3, 1, 4000, 4000, 4000, 4000, 4000, 0),
(3, 2, 0, 0, 0, 0, 0, 0),
(3, 6, 5500, 0, 0, 0, 0, 0),
(3, 7, 0, 0, 0, 0, 5000, 5000),
(3, 8, 0, 0, 0, 0, 0, 0),
(3, 9, 0, 0, 0, 0, 0, 0),
(3, 10, 270, 270, 300, 270, 270, 0),
(3, 11, 600, 600, 600, 600, 600, 0),
(3, 22, 0, 0, 0, 0, 0, 0),
(3, 23, 3000, 0, 3000, 0, 0, 0),
(3, 24, 0, 0, 0, 0, 0, 0),
(3, 12, 750, 750, 900, 750, 750, 0),
(3, 13, 560, 560, 700, 560, 560, 0),
(3, 14, 975, 975, 1000, 975, 975, 0),
(3, 15, 0, 0, 0, 0, 0, 0),
(3, 16, 0, 0, 0, 0, 0, 0),
(4, 17, 45, 45, 45, 45, 45, 0),
(4, 3, 5500, 0, 0, 2200, 2200, 0),
(4, 4, 4000, 4000, 4000, 3000, 3000, 0),
(4, 5, 1800, 1000, 900, 0, 0, 0),
(4, 18, 50, 50, 50, 50, 50, 0),
(4, 19, 45, 45, 45, 45, 45, 0),
(4, 20, 20, 20, 20, 20, 20, 0),
(4, 21, 385, 385, 385, 385, 385, 385),
(4, 1, 4000, 4000, 4000, 4000, 4000, 0),
(4, 2, 0, 0, 0, 0, 0, 0),
(4, 6, 5500, 0, 0, 0, 0, 0),
(4, 7, 0, 0, 0, 0, 5000, 5000),
(4, 8, 50, 0, 50, 0, 0, 0),
(4, 9, 0, 0, 0, 0, 0, 0),
(4, 10, 270, 270, 300, 270, 270, 0),
(4, 11, 600, 600, 600, 600, 600, 0),
(4, 22, 0, 0, 0, 0, 0, 0),
(4, 23, 3000, 0, 3000, 0, 0, 0),
(4, 24, 130, 130, 130, 0, 0, 0),
(4, 12, 750, 750, 900, 750, 750, 0),
(4, 13, 560, 560, 700, 560, 560, 0),
(4, 14, 975, 975, 1000, 975, 975, 0),
(4, 15, 0, 0, 0, 0, 0, 0),
(4, 16, 0, 0, 0, 0, 0, 0),
(1, 25, 0, 0, 0, 0, 0, 0),
(2, 25, 23, 23, 23, 0, 0, 0),
(3, 25, 23, 23, 23, 0, 0, 0),
(4, 25, 23, 23, 23, 0, 0, 0),
(1, 17, 45, 45, 45, 45, 45, 0),
(1, 18, 50, 50, 50, 50, 50, 0),
(1, 3, 5500, 0, 0, 2200, 2200, 0),
(1, 4, 4000, 4000, 4000, 3000, 3000, 0),
(1, 5, 1800, 1000, 900, 0, 0, 0),
(1, 6, 5500, 0, 0, 0, 0, 0),
(1, 19, 45, 45, 45, 45, 45, 0),
(1, 20, 20, 20, 20, 20, 20, 0),
(1, 21, 325, 325, 325, 325, 325, 325),
(1, 1, 4000, 4000, 4000, 4000, 4000, 0),
(1, 2, 0, 0, 0, 0, 0, 0),
(1, 7, 0, 0, 0, 0, 5000, 5000),
(1, 8, 0, 0, 0, 0, 0, 0),
(1, 9, 0, 0, 0, 0, 0, 0),
(1, 10, 270, 270, 300, 270, 270, 0),
(1, 11, 600, 600, 600, 600, 600, 0),
(1, 22, 0, 0, 0, 0, 0, 0),
(1, 23, 3000, 0, 3000, 0, 0, 0),
(1, 24, 0, 0, 0, 0, 0, 0),
(1, 12, 750, 750, 900, 750, 750, 0),
(1, 13, 560, 560, 700, 560, 560, 0),
(1, 14, 975, 975, 1000, 975, 975, 0),
(1, 15, 0, 0, 0, 0, 0, 0),
(1, 16, 0, 0, 0, 0, 0, 0),
(2, 17, 45, 45, 45, 45, 45, 0),
(2, 3, 5500, 0, 0, 2200, 2200, 0),
(2, 4, 4000, 4000, 4000, 3000, 3000, 0),
(2, 5, 1800, 1000, 900, 0, 0, 0),
(2, 6, 5500, 0, 0, 0, 0, 0),
(2, 18, 50, 50, 50, 50, 50, 0),
(2, 19, 45, 45, 45, 45, 45, 0),
(2, 20, 20, 20, 20, 20, 20, 0),
(2, 21, 270, 270, 270, 270, 270, 270),
(2, 1, 4000, 4000, 4000, 4000, 4000, 0),
(2, 2, 0, 0, 0, 0, 0, 0),
(2, 7, 0, 0, 0, 0, 5000, 5000),
(2, 8, 0, 0, 0, 0, 0, 0),
(2, 9, 0, 0, 0, 0, 0, 0),
(2, 10, 270, 270, 300, 270, 270, 0),
(2, 11, 600, 600, 600, 600, 600, 0),
(2, 22, 0, 0, 0, 0, 0, 0),
(2, 23, 3000, 0, 3000, 0, 0, 0),
(2, 24, 0, 0, 0, 0, 0, 0),
(2, 12, 750, 750, 900, 750, 750, 0),
(2, 13, 560, 560, 700, 560, 560, 0),
(2, 14, 975, 975, 1000, 975, 975, 0),
(2, 15, 0, 0, 0, 0, 0, 0),
(2, 16, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fee_head_locking`
--

CREATE TABLE `fee_head_locking` (
  `ID` int(11) DEFAULT NULL,
  `Check_On` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_head_locking`
--

INSERT INTO `fee_head_locking` (`ID`, `Check_On`) VALUES
(1, b'1'),
(2, b'1'),
(3, b'1'),
(4, b'1'),
(5, b'1'),
(6, b'1'),
(7, b'1'),
(8, b'1'),
(9, b'1'),
(10, b'1'),
(11, b'1'),
(12, b'1'),
(13, b'1'),
(14, b'1'),
(15, b'1'),
(16, b'1'),
(17, b'1'),
(18, b'1'),
(19, b'1'),
(20, b'1'),
(21, b'1'),
(22, b'1'),
(23, b'1'),
(24, b'1'),
(25, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `grademaster`
--

CREATE TABLE `grademaster` (
  `ORange` double DEFAULT NULL,
  `CRange` double DEFAULT NULL,
  `Grade` mediumtext DEFAULT NULL,
  `Qualitative_Norms` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grademaster`
--

INSERT INTO `grademaster` (`ORange`, `CRange`, `Grade`, `Qualitative_Norms`) VALUES
(100, 91, 'A1', 'Outstanding'),
(90.99, 81, 'A2', 'Excellent'),
(80.99, 71, 'B1', 'Good'),
(70.99, 61, 'B2', 'Average'),
(60.99, 51, 'C1', 'Fair'),
(50.99, 41, 'C2', 'Fair'),
(40.99, 33, 'D', 'FAIL'),
(32.99, 0, 'E', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `head_type`
--

CREATE TABLE `head_type` (
  `id` int(11) NOT NULL,
  `head_name` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head_type`
--

INSERT INTO `head_type` (`id`, `head_name`) VALUES
(1, 'No'),
(2, 'COMPUTER'),
(3, 'BUS'),
(4, 'SCIENCE'),
(5, 'LATEFINE'),
(6, 'BOOK'),
(7, 'DUES'),
(8, 'HOSTEL');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_master`
--

CREATE TABLE `holiday_master` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DAY_TYPE` int(11) DEFAULT NULL COMMENT '1 = SINGLE DAY, 2 = MUTLIPLE DAY',
  `FROM_DATE` date DEFAULT NULL,
  `TO_DATE` date DEFAULT NULL,
  `APPLIED_FOR` int(11) NOT NULL COMMENT '0 = ALL, 1 = EMPLOYEE, 2 = STUDENT',
  `CLASS_ID` int(11) NOT NULL COMMENT '0 = ALL CLASSES',
  `UPDATE_LOCK` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Yes',
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `subject` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `class` int(11) NOT NULL,
  `sec` int(11) NOT NULL,
  `homework_category` int(11) NOT NULL,
  `remarks` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` text NOT NULL,
  `is_allstu` int(11) NOT NULL COMMENT '1=all students,0=particular_student'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homework_adm_wise`
--

CREATE TABLE `homework_adm_wise` (
  `id` int(11) NOT NULL,
  `homework_tbl_id` int(11) NOT NULL,
  `admno` varchar(255) NOT NULL,
  `homework_status` varchar(2) NOT NULL DEFAULT 'N' COMMENT 'Y=completed,N=incomplete',
  `teacher_remarks` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homework_cat_master`
--

CREATE TABLE `homework_cat_master` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homework_cat_master`
--

INSERT INTO `homework_cat_master` (`id`, `category`) VALUES
(1, 'Class Homework'),
(2, 'Holiday Homework');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `HOUSENO` double DEFAULT NULL,
  `HOUSENAME` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`HOUSENO`, `HOUSENAME`) VALUES
(1, 'NA'),
(2, 'RED'),
(3, 'BLUE'),
(4, 'YELLOW'),
(5, 'GREEN');

-- --------------------------------------------------------

--
-- Table structure for table `latefine_master`
--

CREATE TABLE `latefine_master` (
  `ID` int(11) NOT NULL,
  `month_applied` int(11) NOT NULL,
  `date_applied` int(11) NOT NULL,
  `late_amount` int(11) NOT NULL,
  `collection_mode` int(11) NOT NULL COMMENT '1=monthly_fine,2=daily_fine',
  `status` int(11) NOT NULL COMMENT '1=actice,0=unactive'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latefine_master`
--

INSERT INTO `latefine_master` (`ID`, `month_applied`, `date_applied`, `late_amount`, `collection_mode`, `status`) VALUES
(1, 4, 5, 100, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `id` int(100) NOT NULL,
  `news` text DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Y',
  `created_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leave_master`
--

CREATE TABLE `leave_master` (
  `id` int(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `applicable_for` varchar(500) NOT NULL,
  `no_days` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_master`
--

INSERT INTO `leave_master` (`id`, `name`, `applicable_for`, `no_days`) VALUES
(6, '1', '3', 8),
(7, '2', '3', 10),
(8, '3', '1', 10),
(9, '3', '2', 30);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `username` varchar(255) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `pass_word` varchar(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `user_level` varchar(100) DEFAULT NULL,
  `fees` int(100) NOT NULL,
  `contenmng` int(100) NOT NULL,
  `EXAM` int(100) NOT NULL,
  `ATTENDANCE` int(100) NOT NULL,
  `DISCIPLINE` int(100) NOT NULL,
  `ACTIVITY` int(100) NOT NULL,
  `TIME_TABLE` int(100) NOT NULL,
  `LIBRARYmng` int(100) NOT NULL,
  `PAYROLL` int(100) NOT NULL,
  `ACCOUNTS` int(100) NOT NULL,
  `INVENTORY` int(100) NOT NULL,
  `TRANSPORT` int(100) NOT NULL,
  `HEALTH` int(100) NOT NULL,
  `CALLCENTER` int(100) NOT NULL,
  `MASTER_DATABASE` int(100) NOT NULL,
  `MAC_ADDRESS` varchar(200) NOT NULL,
  `login_status` int(100) NOT NULL,
  `login_mode` varchar(100) NOT NULL,
  `Add_Provision` int(100) NOT NULL,
  `Modify_Provision` int(100) NOT NULL,
  `Del_Provision` int(100) NOT NULL,
  `cancel_Provision` int(11) NOT NULL,
  `Mob_No` int(20) NOT NULL,
  `DOB` date NOT NULL,
  `user_address` varchar(1000) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `Security_Ques` varchar(1000) NOT NULL,
  `Security_Ans` varchar(1000) NOT NULL,
  `Activation_date` date NOT NULL,
  `Deactivation_Date` date NOT NULL,
  `Class_tech_sts` int(100) NOT NULL COMMENT '1=class_teacher,0=teacher',
  `Class_No` int(100) NOT NULL,
  `Section_No` int(100) NOT NULL,
  `ROLE_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`username`, `user_id`, `pass_word`, `emp_name`, `user_type`, `user_level`, `fees`, `contenmng`, `EXAM`, `ATTENDANCE`, `DISCIPLINE`, `ACTIVITY`, `TIME_TABLE`, `LIBRARYmng`, `PAYROLL`, `ACCOUNTS`, `INVENTORY`, `TRANSPORT`, `HEALTH`, `CALLCENTER`, `MASTER_DATABASE`, `MAC_ADDRESS`, `login_status`, `login_mode`, `Add_Provision`, `Modify_Provision`, `Del_Provision`, `cancel_Provision`, `Mob_No`, `DOB`, `user_address`, `emailid`, `Security_Ques`, `Security_Ans`, `Activation_date`, `Deactivation_Date`, `Class_tech_sts`, `Class_No`, `Section_No`, `ROLE_ID`) VALUES
('bachpan', 'EMP0224', '81dc9bdb52d04dc20036dbd8313ed055', 'EKTA JAIN', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 4),
('sindhu', 'EMP0225', '81dc9bdb52d04dc20036dbd8313ed055', 'NITIMA SINGH', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, '0', 0, 0, 0, 0, 0, '2019-12-21', '0', '0', '0', '00', '2019-12-21', '2019-12-21', 1, 1, 1, 2),
('priyanka', 'EMP0226', '81dc9bdb52d04dc20036dbd8313ed055', 'PRITI RAJ', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', 1, 2, 1, 2),
('anita', 'EMP0228', '81dc9bdb52d04dc20036dbd8313ed055', 'ANITA RAY', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', 1, 4, 1, 2),
('Fees', 'EMP0229', '81dc9bdb52d04dc20036dbd8313ed055', 'FEES', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 10),
('EMP0231', 'EMP0231', '81dc9bdb52d04dc20036dbd8313ed055', 'LALITA', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 2),
('EMP0232', 'EMP0232', '81dc9bdb52d04dc20036dbd8313ed055', 'POOJA', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 2),
('EMP0233', 'EMP0233', '81dc9bdb52d04dc20036dbd8313ed055', 'SANJU', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `admno` varchar(25) DEFAULT NULL,
  `ExamC` int(11) DEFAULT NULL,
  `SCode` double DEFAULT NULL,
  `M1` double DEFAULT NULL,
  `M2` varchar(15) DEFAULT NULL,
  `M3` double DEFAULT NULL,
  `Classes` varchar(25) DEFAULT NULL,
  `Sec` varchar(25) DEFAULT NULL,
  `EDate` datetime DEFAULT NULL,
  `MA2` double DEFAULT NULL,
  `Term` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `Teacher_code` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `CounterNo` mediumtext DEFAULT NULL,
  `ReceiptNo` int(11) DEFAULT NULL,
  `Collection_Type` int(11) DEFAULT NULL COMMENT '1=counter collection,2=sunil_enterprises_collection,3=bachpan and none collection without alphabet rect',
  `User_ID` mediumtext DEFAULT NULL,
  `Student_ID` mediumtext DEFAULT NULL,
  `Adm_no` int(11) DEFAULT NULL,
  `login_status` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`CounterNo`, `ReceiptNo`, `Collection_Type`, `User_ID`, `Student_ID`, `Adm_no`, `login_status`, `id`) VALUES
('A', 1, 1, 'EMP0229', '', 0, 1, 1),
('D', 18, 2, 'EMP0229', '', 0, 1, 2),
('B', 1, 3, 'EMP0229', '', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `masterpf`
--

CREATE TABLE `masterpf` (
  `id` int(11) NOT NULL,
  `ST_DATE` varchar(40) DEFAULT NULL,
  `OWN_RATE` double DEFAULT NULL,
  `EMP_RATE` double DEFAULT NULL,
  `PEN_RATE` double DEFAULT NULL,
  `PAY_LIMIT` double DEFAULT NULL,
  `HRA_Rate` int(11) DEFAULT NULL,
  `ESI_OWN_RATE` double DEFAULT NULL,
  `ESI_EMP_RATE` double DEFAULT NULL,
  `ESI_LIMIT` int(11) DEFAULT NULL,
  `ESI_Applied` bit(1) DEFAULT NULL,
  `PTAX_Applied` bit(1) DEFAULT NULL,
  `Pay_Limit_Applied` bit(1) DEFAULT NULL,
  `BED_Alow` double DEFAULT NULL,
  `da_rate` int(100) NOT NULL,
  `ta_rate_slab1` int(100) NOT NULL,
  `ta_rate_slab2` int(100) NOT NULL,
  `ta_rate_slab3` int(100) NOT NULL,
  `special_allowance` int(100) NOT NULL,
  `fpf` int(100) NOT NULL,
  `vpf` int(100) NOT NULL,
  `staff_welfare_fund` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterpf`
--

INSERT INTO `masterpf` (`id`, `ST_DATE`, `OWN_RATE`, `EMP_RATE`, `PEN_RATE`, `PAY_LIMIT`, `HRA_Rate`, `ESI_OWN_RATE`, `ESI_EMP_RATE`, `ESI_LIMIT`, `ESI_Applied`, `PTAX_Applied`, `Pay_Limit_Applied`, `BED_Alow`, `da_rate`, `ta_rate_slab1`, `ta_rate_slab2`, `ta_rate_slab3`, `special_allowance`, `fpf`, `vpf`, `staff_welfare_fund`) VALUES
(8, '2019-06-01', 12.5, 12.5, 0, NULL, 14, 1.75, 4.75, 0, b'1', NULL, NULL, NULL, 13, 10, 10, 12, 0, 0, 0, 10),
(9, '2019-06-01', 12.5, 12.5, 8.33, NULL, 14, 1.75, 4.75, 0, b'1', NULL, NULL, NULL, 13, 10, 10, 12, 0, 0, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `maxmarks`
--

CREATE TABLE `maxmarks` (
  `ExamCode` tinyint(4) DEFAULT NULL,
  `ExamMode` double DEFAULT NULL,
  `MaxMarks` int(4) DEFAULT NULL,
  `ClassCode` tinyint(4) DEFAULT NULL,
  `Term` varchar(255) DEFAULT NULL,
  `teacher_code` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mempmthatt`
--

CREATE TABLE `mempmthatt` (
  `SNo` int(11) DEFAULT NULL,
  `EID` varchar(50) DEFAULT NULL,
  `Jan` double DEFAULT NULL,
  `Feb` double DEFAULT NULL,
  `Mar` double DEFAULT NULL,
  `Apr` double DEFAULT NULL,
  `May` double DEFAULT NULL,
  `Jun` double DEFAULT NULL,
  `Jul` double DEFAULT NULL,
  `Aug` double DEFAULT NULL,
  `Sep` double DEFAULT NULL,
  `Oct` double DEFAULT NULL,
  `Nov` double DEFAULT NULL,
  `Dec` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu_data_role`
--

CREATE TABLE `menu_data_role` (
  `ID` int(11) NOT NULL,
  `S_NO` float(10,2) NOT NULL,
  `MODULE` varchar(255) DEFAULT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `CAN_ADD` varchar(255) DEFAULT NULL,
  `CAN_EDIT` varchar(255) DEFAULT NULL,
  `CAN_DELETE` varchar(255) DEFAULT NULL,
  `CAN_VIEW` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_data_role`
--

INSERT INTO `menu_data_role` (`ID`, `S_NO`, `MODULE`, `MENU_NAME`, `CAN_ADD`, `CAN_EDIT`, `CAN_DELETE`, `CAN_VIEW`) VALUES
(1, 1.00, 'Dashboard', NULL, NULL, NULL, NULL, NULL),
(2, 1.10, NULL, 'Principal Dashboard', NULL, NULL, NULL, 'viewPrincipalDashboard'),
(3, 1.20, NULL, 'Employee Dashboard', NULL, 'editEmpDashboard', NULL, 'viewEmpDashboard'),
(4, 2.00, 'Student Information', NULL, NULL, NULL, NULL, NULL),
(5, 2.50, NULL, 'Student Master', 'addStudentMaster', 'editStudentMaster', 'deleteStudentMaster', 'viewStudentMaster'),
(6, 2.60, NULL, 'Scholarship', 'addScholarship', 'editScholarship', 'deleteScholarship', 'viewScholarship'),
(7, 2.10, NULL, 'House Master', 'addHouseMaster', 'editHouseMaster', NULL, 'viewHouseMaster'),
(8, 2.20, NULL, 'Category Master', 'addCategoryMaster', 'editCategoryMaster', '', 'viewCategoryMaster'),
(9, 2.30, NULL, 'Ward Type Master', 'addWardType', 'editWardType', NULL, 'viewWardType'),
(10, 2.40, NULL, 'Religion Master', 'addReligion', 'editReligion', NULL, 'viewReligion'),
(11, 2.70, NULL, 'Student Record Keeping', 'addStudentRecordKeeping', 'editStudentRecordKeeping', '', 'viewStudentRecordKeeping'),
(12, 3.00, 'Student Attendance', NULL, NULL, NULL, NULL, NULL),
(13, 3.10, NULL, 'Daily Attendance', 'addDailyAttendance', 'editDailyAttendance', '', 'viewDailyAttendance'),
(14, 3.20, NULL, 'Daily Attendance Report', NULL, NULL, NULL, 'viewDailyAttenReport'),
(15, 3.30, NULL, 'Monthly Attendance Report', NULL, NULL, NULL, 'viewMonthlyAttenReport'),
(16, 3.40, NULL, 'Student Attendance Type', 'addStuAttenType', 'editStuAttenType', NULL, 'viewStuAttenType'),
(17, 4.00, 'Academics', NULL, NULL, NULL, NULL, NULL),
(18, 4.10, NULL, 'Section Master', 'addSection', 'editSection', NULL, 'viewSection'),
(19, 4.20, NULL, 'Class Master', 'addClass', 'editClass', NULL, 'viewClass'),
(20, 5.70, NULL, 'Student Wise Subject Allocation', 'addStuSubAllocation', 'editStuSubAllocation', '', 'viewStuSubAllocation'),
(21, 5.80, NULL, 'Class Wise Subject Allocation', 'addClassSubAllocation', 'editClassSubAllocation', NULL, 'viewClassSubAllocation'),
(22, 4.30, NULL, 'Assign Class Teacher', 'addAssignClassTeacher', 'editAssignClassTeacher', NULL, 'viewAssignClassTeacher'),
(23, 5.00, 'Examination', NULL, NULL, NULL, NULL, NULL),
(24, 5.10, NULL, 'Main Subject', 'addMainSubject', 'editMainSubject', NULL, 'viewMainSubject'),
(25, 5.20, NULL, 'Co-Scholastic Grade Entry', 'addCoScholGrade', 'editCoScholGrade', NULL, 'viewCoScholGrade'),
(26, 5.30, NULL, 'Discipline Grade', 'addDisciplineGrade', 'editDisciplineGrade', NULL, 'viewDisciplineGrade'),
(27, 5.40, NULL, 'Discipline Grade Skill Wise', 'addDisciGradeSkill', 'editDisciGradeSkill', NULL, 'viewDisciGradeSkill'),
(28, 5.50, NULL, 'Remarks Allocation', 'addRemarksAlloc', 'editRemarksAlloc', NULL, 'viewRemarksAlloc'),
(29, 5.60, NULL, 'Maximum Marks Allocation', 'addMaxMarks', 'editMaxMarks', NULL, 'viewMaxMarks'),
(30, 6.00, 'Human Resource', NULL, NULL, NULL, NULL, NULL),
(31, 6.10, NULL, 'Employee List', 'addEmployee', 'editEmployee', NULL, 'viewEmployee'),
(32, 11.10, NULL, 'Apply Leave', 'addApplyLeave', 'editApplyLeave', NULL, 'viewApplyLeave'),
(106, 18.00, 'Notice', NULL, NULL, NULL, NULL, NULL),
(107, 18.10, NULL, 'Add Notice', 'addNotice', 'editNotice', NULL, 'viewNotice'),
(34, 11.30, NULL, 'Leave Approval', 'addLeaveApproval', 'editLeaveApproval', NULL, 'viewLeaveApproval'),
(35, 6.20, NULL, 'Daily Employee Attendance', 'addEmpAttendance', 'editEmpAttendance', NULL, 'viewEmpAttendance'),
(36, 6.30, NULL, 'Designation', 'addDesignation', 'editDesignation', 'deleteDesignation', 'viewDesignation'),
(37, 6.40, NULL, 'Qualification', 'addQual', 'editQual', 'deleteQual', 'viewQual'),
(38, 6.50, NULL, 'Leave Type', 'addLeaveType', 'editLeaveType', 'deleteLeaveType', 'viewLeaveType'),
(39, 6.60, NULL, 'Separated Employee List', NULL, NULL, NULL, 'viewDisabledEmpList'),
(40, 7.00, 'Payroll', NULL, NULL, NULL, NULL, NULL),
(41, 7.10, NULL, 'Pay Control', NULL, 'editPayControl', NULL, 'viewPayControl'),
(42, 7.20, NULL, 'Shift Attendance', NULL, 'editSecondShiftAttendance', NULL, 'viewSecondShiftAttendance'),
(43, 7.30, NULL, 'Monthly Attendance Generation', 'addMonthlyEmpAtten', 'editMonthlyEmpAtten', NULL, 'viewMonthlyEmpAtten'),
(44, 7.40, NULL, 'Payslip Generation', 'addPayslipGen', 'editPayslipGen', '', 'viewPayslipGen'),
(45, 7.50, NULL, 'Create PF ESI Master', 'addPFESI', 'editPFESI', NULL, 'viewPFESI'),
(46, 8.00, 'General Setting', NULL, NULL, NULL, NULL, NULL),
(47, 8.10, NULL, 'School Setting', NULL, 'editSchoolSetting', NULL, 'viewSchoolSetting'),
(48, 8.20, NULL, 'Session Setting', 'addSession', 'editSession', NULL, 'viewSession'),
(49, 6.70, NULL, 'Shift Master', 'addShift', 'editShift', NULL, 'viewShift'),
(50, 8.40, NULL, 'Holiday Master', 'addHoliday', 'editHoliday', NULL, 'viewHoliday'),
(51, 9.00, 'Fee Collection', NULL, NULL, NULL, NULL, NULL),
(52, 9.10, NULL, 'School Collection', 'addSchoolCollection', 'editSchoolCollection', '', 'viewSchoolCollection'),
(53, 8.50, NULL, 'Role Setting', NULL, NULL, NULL, 'viewRole'),
(54, 10.00, 'Report', NULL, NULL, NULL, NULL, NULL),
(55, 10.10, NULL, 'Fee Reports', NULL, NULL, NULL, 'viewFeeReports'),
(56, 10.20, NULL, 'Fee Defaulter List', NULL, NULL, NULL, 'viewFeeDefaulterList'),
(57, 10.30, NULL, 'Fee Head Wise Defaulter List', NULL, NULL, NULL, 'viewFeeHeadWiseDefaulter'),
(58, 10.40, NULL, 'Term Wise Report card', NULL, NULL, NULL, 'viewTermWiseReportCard'),
(59, 8.60, NULL, 'Active Month For Payroll', NULL, 'editActiveMonth', NULL, 'viewActiveMonth'),
(60, 9.20, NULL, 'Fee Head Master', 'addFeeHeadMaster', 'editFeeHeadMaster', NULL, 'viewFeeHeadMaster'),
(61, 9.30, NULL, 'Fee Generation', 'addFeeGeneration', 'editFeeGeneration', NULL, 'viewFeeGeneration'),
(62, 11.00, 'My Desk', NULL, NULL, NULL, NULL, NULL),
(126, 15.30, NULL, 'School Group', 'addSchoolGroup', 'editSchoolGroup', NULL, 'viewSchoolGroup'),
(64, 13.60, NULL, 'Employee Report', NULL, NULL, NULL, 'viewEMployeeReport'),
(65, 13.70, NULL, 'Monthly Leave Report', NULL, NULL, NULL, 'viewMonthlyLeaveReport'),
(66, 13.80, NULL, 'Monthly Attendance Report', NULL, NULL, NULL, 'viewMonthlyAttenReports'),
(67, 13.90, NULL, 'Allowance Report', NULL, NULL, NULL, 'viewAllowanceReport'),
(68, 13.91, NULL, 'Deduction Report', NULL, NULL, NULL, 'viewDeductionReport'),
(69, 13.92, NULL, 'Yearly Salary Report', NULL, NULL, NULL, 'viewYearlySalaryReport'),
(70, 13.00, 'Salary Report', NULL, NULL, NULL, NULL, NULL),
(71, 13.10, NULL, 'Bank Salary Letter', NULL, NULL, NULL, 'viewBankSalaryLetter'),
(72, 13.20, NULL, 'Salary Bill', NULL, NULL, NULL, 'viewSalaryBill'),
(73, 13.30, NULL, 'Monthly PF Report', NULL, NULL, NULL, 'viewMonthlyPFReport'),
(74, 13.40, NULL, 'PF & ESI Statement Employee Wise', NULL, NULL, NULL, 'viewPfEsiStatement'),
(75, 13.50, NULL, 'Monthly Salary Slip', NULL, NULL, NULL, 'viewMonthlySalarySlip'),
(77, 14.00, 'Certificate', NULL, NULL, NULL, NULL, NULL),
(78, 14.10, NULL, 'Transfer Certificates', NULL, NULL, NULL, 'viewTransferCertificate'),
(79, 14.20, NULL, 'Cancel Reprint TC', NULL, NULL, NULL, 'viewCancelReprintTC'),
(80, 14.30, NULL, 'Character Certificate', NULL, NULL, NULL, 'viewCharacterCertificate'),
(81, 14.40, NULL, 'Bonafide Certificate', NULL, NULL, NULL, 'viewBonafideCertificate'),
(82, 14.50, NULL, 'Date of Birth Certificate', NULL, NULL, NULL, 'viewDOBCertificate'),
(83, 14.60, NULL, 'Tution Fee Certificate', NULL, NULL, NULL, 'viewTutionFeeCertificate'),
(84, 14.70, NULL, 'Fee Paid Certificate', NULL, NULL, NULL, 'viewFeePaidCertificate'),
(85, 10.60, NULL, 'Class Report', NULL, NULL, NULL, 'viewClassReport'),
(86, 10.70, NULL, 'Other Report', NULL, NULL, NULL, 'viewOtherReport'),
(87, 10.80, NULL, 'Card (Admit ID)', NULL, NULL, NULL, 'viewAdmitCard'),
(88, 15.00, 'Account Master', NULL, NULL, NULL, NULL, NULL),
(89, 15.10, NULL, 'Narration', 'addNarration', 'editNarration', NULL, 'viewNarration'),
(90, 15.20, NULL, 'Account Group', 'addAccountGroup', 'editAccountGroup', NULL, 'viewAccountGroup'),
(91, 15.40, NULL, 'Ledger Master', 'addLedgerMaster', 'editLedgerMaster', NULL, 'viewLedgerMaster'),
(92, 16.00, 'Voucher Entry', NULL, NULL, NULL, NULL, NULL),
(93, 16.10, NULL, 'Receipt Voucher (Counter Collection)', 'addReceiptVoucherCounterCollection', 'editReceiptVoucherCounterCollection', NULL, 'viewReceiptVoucherCounterCollection'),
(94, 16.20, NULL, 'Receipt Voucher (Online Collection)', 'addReceiptVoucherOnlineCollection', 'editReceiptVoucherOnlineCollection', NULL, 'viewReceiptVoucherOnlineCollection'),
(95, 16.30, NULL, 'General Entry', 'addGeneralEntry', 'editGeneralEntry', NULL, 'viewGeneralEntry'),
(96, 16.40, NULL, 'Update Voucher', NULL, 'editUpdateVoucher', NULL, 'viewUpdateVoucher'),
(97, 16.50, NULL, 'Print Voucher', NULL, NULL, NULL, 'viewPrintVoucher'),
(98, 16.60, NULL, 'Cancel Voucher', NULL, 'editCancelVoucher', NULL, 'viewCancelVoucher'),
(99, 17.00, 'Accounts Report', NULL, NULL, NULL, NULL, NULL),
(100, 17.10, NULL, 'Cash Book', NULL, NULL, NULL, 'viewCashBook'),
(101, 17.20, NULL, 'Ledger', NULL, NULL, NULL, 'viewLedger'),
(102, 17.30, NULL, 'Trial Balance', NULL, NULL, NULL, 'viewTrialBalance'),
(103, 17.40, NULL, 'Trial Balance (OB) in Separate Column', NULL, NULL, NULL, 'viewTrialBalanceinSeparateColumn'),
(104, 17.50, NULL, 'Trial Balance Monthly', NULL, NULL, NULL, 'viewTrialBalanceMonthly'),
(105, 17.60, NULL, 'Ledger Wise Entry Passsed', NULL, NULL, NULL, 'viewLedgerWiseEntryPassed'),
(108, 19.00, 'Homework', NULL, NULL, NULL, NULL, NULL),
(109, 19.10, NULL, 'Add Homework', 'addHomework', 'editHomework', NULL, 'viewHomework'),
(110, 4.40, NULL, 'Assign Subject Teacher', 'addAssignSubjectTeacher', 'editAssignSubjectTeacher', 'deleteAssignSubjectTeacher', 'viewAssignSubjectTeacher'),
(111, 9.40, NULL, 'Cancel / Re-print Fee Receipt', 'addCanceReprintFeeReceipt', 'editCanceReprintFeeReceipt', 'deleteCanceReprintFeeReceipt', 'viewCanceReprintFeeReceipt'),
(112, 9.50, NULL, 'Late Fine Master', 'addLateFineMaster', 'editLateFineMaster', 'deleteLateFineMaster', 'viewLateFineMaster'),
(113, 18.20, NULL, 'Sent Notice Details', NULL, NULL, NULL, 'viewSentNoticeDetails'),
(114, 19.20, NULL, 'Uploaded Homework Details', NULL, NULL, NULL, 'viewUploadedHomeworkDetails'),
(115, 20.00, 'Bulk Updation', NULL, NULL, NULL, NULL, NULL),
(116, 20.10, NULL, 'Employee Leave', NULL, NULL, NULL, 'viewEmployeeLeave'),
(117, 20.20, NULL, 'Student Details', NULL, NULL, NULL, 'viewStudentDetails'),
(118, 21.00, 'Inventory Master', NULL, NULL, NULL, NULL, NULL),
(119, 21.10, NULL, 'Department', 'addDepartment', 'editDepartment', '', 'viewDepartment'),
(120, 21.20, NULL, 'Supplier', 'addSupplier', 'editSupplier', '', 'viewSupplier'),
(121, 21.30, NULL, 'Item Group', 'addItemGroup', 'editItemGroup', NULL, 'viewItemGroup'),
(122, 21.40, NULL, 'Item Master', 'addItemMaster', 'editItemMaster', NULL, 'viewItemMaster'),
(123, 10.90, NULL, 'Student Report', NULL, NULL, NULL, 'viewStudentReport'),
(124, 18.30, NULL, 'Add Notice Principal', 'addNoticeP', 'editNoticeP', NULL, 'viewNoticeP'),
(125, 18.30, NULL, 'Sent Notice Report Principal', NULL, NULL, NULL, 'viewNoticeReportP'),
(127, 5.90, NULL, 'Lock Exam', NULL, 'editLockExam', NULL, NULL),
(128, 22.00, 'Transport Management', NULL, NULL, NULL, NULL, NULL),
(129, 22.10, NULL, 'Vehicle Master', 'addVehicleMaster', 'editVehicleMaster', 'deleteVehicleMaster', 'viewVehicleMaster'),
(130, 22.20, NULL, 'Vehicle Incharge', 'addVehicleIncharge', 'editVehicleIncharge', 'deleteVehicleIncharge', 'viewVehicleIncharge'),
(131, 22.30, NULL, 'Bus Stoppage Master', 'addBusStoppageMaster', 'editBusStoppageMaster', 'deleteBusStoppageMaster', 'viewBusStoppageMaster'),
(132, 22.40, NULL, 'Add Bus Trip', 'addAddBusTrip', 'editAddBusTrip', 'deleteAddBusTrip', 'viewAddBusTrip'),
(133, 22.50, NULL, 'Driver Master', 'addDriverMaster', 'editDriverMaster', 'deleteDriverMaster', 'viewDriverMaster'),
(134, 22.60, NULL, 'Add Bus Route', 'addAddBusRoute', 'editAddBusRoute', 'deleteAddBusRoute', 'viewAddBusRoute'),
(135, 20.30, NULL, 'Class Section Wise', NULL, 'editClassSecWisseBulkUpdation', NULL, 'viewClassSecWiseBulkUpdation'),
(136, 7.60, NULL, 'Deduction Bulk Updation', NULL, 'editDeductionBulk', NULL, NULL),
(137, 7.70, NULL, 'Allowance Bulk Updation', NULL, 'editAllowanceBulk', NULL, NULL),
(138, 10.11, NULL, 'TransportReport', NULL, NULL, NULL, 'viewTransportReport'),
(139, 2.80, NULL, 'Disabled Student', NULL, NULL, NULL, 'viewDisabledStudent'),
(140, 2.90, NULL, 'Parents Login Credential', NULL, NULL, NULL, 'viewParentsLoginCredential'),
(141, 7.80, NULL, 'Approval of Arrear Salary', NULL, 'editApprovalofArrearSalary', NULL, NULL),
(145, 23.20, NULL, 'Participation Master Creation', NULL, NULL, NULL, 'viewParticipationMasterCreation'),
(143, 23.00, 'Activity Event Management', NULL, NULL, NULL, NULL, NULL),
(144, 23.10, NULL, 'Activity Event Master Creation', NULL, NULL, NULL, 'viewActivityEventMasterCreation'),
(146, 23.30, NULL, 'Photo Upload', NULL, NULL, NULL, 'viewPhotoUpload'),
(147, 23.40, NULL, 'Winner Declaration', NULL, NULL, NULL, 'viewWinnerDeclaration'),
(148, 24.10, 'Time Table', NULL, NULL, NULL, NULL, NULL),
(149, 24.20, NULL, 'Class Wise Subject Allocation', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `misc_password`
--

CREATE TABLE `misc_password` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `misc_password`
--

INSERT INTO `misc_password` (`id`, `username`, `password`) VALUES
(1, 'feehead', 'feeheadsetting'),
(2, 'cancel-or-re-print-recipet', 'softsolution');

-- --------------------------------------------------------

--
-- Table structure for table `misc_table`
--

CREATE TABLE `misc_table` (
  `Class_Wise_Sub` mediumtext DEFAULT NULL,
  `Sch_Set` mediumtext DEFAULT NULL,
  `Marks_Entry_Permission` mediumtext DEFAULT NULL,
  `EXAM_TYPE` mediumtext DEFAULT NULL,
  `Aadhar_Card` mediumtext DEFAULT NULL,
  `Cross_List_IX` mediumtext DEFAULT NULL,
  `adm_no` mediumtext DEFAULT NULL,
  `studentid` mediumtext DEFAULT NULL,
  `chartno` mediumtext DEFAULT NULL,
  `bonano` mediumtext DEFAULT NULL,
  `dobno` mediumtext DEFAULT NULL,
  `tcno` mediumtext DEFAULT NULL,
  `Current_Year` mediumtext DEFAULT NULL,
  `FeeType` smallint(6) DEFAULT NULL,
  `MasterLedger` int(11) DEFAULT NULL,
  `tchead` mediumtext DEFAULT NULL,
  `Tution_fee_Head` int(11) DEFAULT NULL,
  `Caution_Money` int(11) DEFAULT NULL,
  `User_Allocation_Mode` int(11) DEFAULT NULL,
  `report_card_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `misc_table`
--

INSERT INTO `misc_table` (`Class_Wise_Sub`, `Sch_Set`, `Marks_Entry_Permission`, `EXAM_TYPE`, `Aadhar_Card`, `Cross_List_IX`, `adm_no`, `studentid`, `chartno`, `bonano`, `dobno`, `tcno`, `Current_Year`, `FeeType`, `MasterLedger`, `tchead`, `Tution_fee_Head`, `Caution_Money`, `User_Allocation_Mode`, `report_card_type`) VALUES
('10', 'ACCESS GRANTED', 'VALID USER', '2', '0', '1', '1479', 'A', '1', '1', '1', '1', '2018', 2, 1, 'ERP', 26, 27, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mledger`
--

CREATE TABLE `mledger` (
  `CCode` varchar(120) DEFAULT NULL,
  `ODate` timestamp NULL DEFAULT current_timestamp(),
  `OBal` decimal(18,2) DEFAULT NULL,
  `CBO` varchar(50) DEFAULT NULL,
  `DC` varchar(50) DEFAULT NULL,
  `SG` int(11) DEFAULT NULL,
  `ANSWER` int(11) DEFAULT NULL,
  `AcNo` int(11) NOT NULL,
  `LedgerNo` varchar(15) DEFAULT NULL,
  `BAmount` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monthly_emp_attend_gen`
--

CREATE TABLE `monthly_emp_attend_gen` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `total_working_days` int(11) DEFAULT NULL,
  `total_present` float(10,2) DEFAULT NULL,
  `total_absent` float(10,2) DEFAULT NULL,
  `1c` varchar(255) DEFAULT NULL COMMENT 'P = Present, H = Holiday, HF = Half Day, CL = Casual Leave, ML = Medical Leave, EL = Earned Leave, LWP = Leave Without Pay, AB = Absent, ELW = Early leave from work',
  `2c` varchar(255) DEFAULT NULL,
  `3c` varchar(255) DEFAULT NULL,
  `4c` varchar(255) DEFAULT NULL,
  `5c` varchar(255) DEFAULT NULL,
  `6c` varchar(255) DEFAULT NULL,
  `7c` varchar(255) DEFAULT NULL,
  `8c` varchar(255) DEFAULT NULL,
  `9c` varchar(255) DEFAULT NULL,
  `10c` varchar(255) DEFAULT NULL,
  `11c` varchar(255) DEFAULT NULL,
  `12c` varchar(255) DEFAULT NULL,
  `13c` varchar(255) DEFAULT NULL,
  `14c` varchar(255) DEFAULT NULL,
  `15c` varchar(255) DEFAULT NULL,
  `16c` varchar(255) DEFAULT NULL,
  `17c` varchar(255) DEFAULT NULL,
  `18c` varchar(255) DEFAULT NULL,
  `19c` varchar(255) DEFAULT NULL,
  `20c` varchar(255) DEFAULT NULL,
  `21c` varchar(255) DEFAULT NULL,
  `22c` varchar(255) DEFAULT NULL,
  `23c` varchar(255) DEFAULT NULL,
  `24c` varchar(255) DEFAULT NULL,
  `25c` varchar(255) DEFAULT NULL,
  `26c` varchar(255) DEFAULT NULL,
  `27c` varchar(255) DEFAULT NULL,
  `28c` varchar(255) DEFAULT NULL,
  `29c` varchar(255) DEFAULT NULL,
  `30c` varchar(255) DEFAULT NULL,
  `31c` varchar(255) DEFAULT NULL,
  `payslip_generated` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `month_master`
--

CREATE TABLE `month_master` (
  `id` int(11) NOT NULL,
  `month_name` varchar(200) NOT NULL,
  `month_code` int(11) NOT NULL,
  `active_month` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `month_master`
--

INSERT INTO `month_master` (`id`, `month_name`, `month_code`, `active_month`) VALUES
(1, 'APR', 4, 0),
(2, 'MAY', 5, 0),
(3, 'JUN', 6, 1),
(4, 'JUL', 7, 0),
(5, 'AUG', 8, 0),
(6, 'SEP', 9, 0),
(7, 'OCT', 10, 0),
(8, 'NOV', 11, 0),
(9, 'DEC', 12, 0),
(10, 'JAN', 1, 0),
(11, 'FEB', 2, 0),
(12, 'MAR', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `class` int(11) NOT NULL,
  `sec` int(11) NOT NULL,
  `notice_category` varchar(255) NOT NULL,
  `notice` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `is_allstu` int(11) NOT NULL COMMENT '1=all students,0=particular_student',
  `sent_status` varchar(2) NOT NULL DEFAULT 'S' COMMENT 'S=student,T=teachers',
  `sent_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice_adm_wise`
--

CREATE TABLE `notice_adm_wise` (
  `id` int(11) NOT NULL,
  `notice_tbl_id` int(11) NOT NULL,
  `admno` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online_transaction`
--

CREATE TABLE `online_transaction` (
  `id` int(11) NOT NULL,
  `order_id` varchar(15) NOT NULL,
  `tracking_id` varchar(200) DEFAULT NULL,
  `merchant_id` varchar(200) DEFAULT NULL,
  `pay_amount` varchar(200) DEFAULT NULL,
  `trans_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_status` varchar(200) DEFAULT 'Y',
  `bank_ref_no` varchar(200) DEFAULT NULL,
  `order_status` varchar(200) DEFAULT NULL,
  `failure_msg` varchar(200) DEFAULT NULL,
  `pay_mode` varchar(200) DEFAULT NULL,
  `card_name` varchar(200) DEFAULT NULL,
  `status_code` varchar(200) DEFAULT NULL,
  `status_msg` varchar(200) DEFAULT NULL,
  `rcv_amt` varchar(200) DEFAULT NULL,
  `RECT_NO` varchar(15) NOT NULL,
  `RECT_DATE` date DEFAULT NULL,
  `STU_NAME` varchar(255) DEFAULT NULL,
  `STUDENTID` varchar(50) DEFAULT NULL,
  `ADM_NO` varchar(50) DEFAULT NULL,
  `CLASS` varchar(25) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `PERIOD` varchar(50) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `APR_FEE` varchar(15) DEFAULT NULL,
  `MAY_FEE` varchar(15) DEFAULT NULL,
  `JUNE_FEE` varchar(8) DEFAULT NULL,
  `JULY_FEE` varchar(15) DEFAULT NULL,
  `AUG_FEE` varchar(15) DEFAULT NULL,
  `SEP_FEE` varchar(15) DEFAULT NULL,
  `OCT_FEE` varchar(15) DEFAULT NULL,
  `NOV_FEE` varchar(15) DEFAULT NULL,
  `DEC_FEE` varchar(15) DEFAULT NULL,
  `JAN_FEE` varchar(15) DEFAULT NULL,
  `FEB_FEE` varchar(15) DEFAULT NULL,
  `MAR_FEE` varchar(15) DEFAULT NULL,
  `CHQ_NO` varchar(15) DEFAULT NULL,
  `Narr` varchar(50) DEFAULT NULL,
  `TAmt` double DEFAULT NULL,
  `Fee_Book_No` varchar(255) DEFAULT NULL,
  `Collection_Mode` int(11) DEFAULT NULL,
  `User_Id` varchar(50) DEFAULT NULL,
  `Payment_Mode` mediumtext NOT NULL,
  `Bank_Name` varchar(500) NOT NULL DEFAULT 'N/A',
  `Pay_Date` date NOT NULL,
  `Session_Year` int(11) NOT NULL DEFAULT 2019,
  `FORM_NO` varchar(200) NOT NULL DEFAULT 'N/A',
  `voucher_created` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `STDID` varchar(50) DEFAULT NULL,
  `ED_QUA` varchar(255) DEFAULT NULL,
  `OCCUPATION` varchar(255) DEFAULT NULL,
  `DESIG` varchar(255) DEFAULT NULL,
  `MTH_INCOME` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `NATION` varchar(50) DEFAULT NULL,
  `PIN` varchar(50) DEFAULT NULL,
  `PHONE1` varchar(100) DEFAULT NULL,
  `PHONE2` varchar(100) DEFAULT NULL,
  `FAXNO` varchar(255) DEFAULT NULL,
  `MOBILE` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PTYPE` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`STDID`, `ED_QUA`, `OCCUPATION`, `DESIG`, `MTH_INCOME`, `ADDRESS`, `CITY`, `STATE`, `NATION`, `PIN`, `PHONE1`, `PHONE2`, `FAXNO`, `MOBILE`, `EMAIL`, `PTYPE`) VALUES
('A14254', '', 'JOB', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14254', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14255', 'GRADUATION', 'GOVT. JOB', 'SECTION OFFICER', '50000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14255', 'GRADUATION', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14256', 'B.A', 'SALES MANAGER', 'MANAGER', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14256', 'B.A', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14257', 'M.TECH', 'BUSINESS', 'DIRECTOR', '60000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14257', 'BBA. LLB', 'SERVICE', 'LAWYER', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14258', '', 'BUSINESS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14258', '', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14259', 'B.COM', 'SERVICE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14259', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14260', 'INTERMEDIATE', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14260', 'GRADUATE', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14261', 'B.SC', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14261', 'B.COM', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14262', 'B.SC', 'MERCHANT NAVY ', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14262', 'M.COM', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14263', 'I. SC', 'SERVICE ', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14263', 'B.SC', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14264', 'GRADUATION', 'GOVT. SERVICE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14264', 'POST GRADUATE', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14265', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14265', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14266', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14266', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14267', 'PGDM', 'JOB', 'MANAGER', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14267', 'GRADUATION', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14268', 'B. TECH', 'ENGINEER', 'CH. ENGINEER', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14268', 'GRADUATION ', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14269', 'GRADUATE', 'GOVT. SERVANT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14269', 'INTERMEDIATE', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14270', 'B.SC', 'BANKER', 'DEPUTY MANAGER', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14270', 'B.A ', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14271', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14271', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14272', 'B.COM', 'BUSINESS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14272', 'M.C.A', 'TEACHER', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14273', 'B.COM', 'BUSINESS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14273', 'INTERMEDIATE ', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14274', 'GRADUATE ', 'SERVICE', 'SENIOR MANAGER', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14274', 'POST GRADUATE', 'HOME-MAKER', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14275', 'GRADUATE', 'PSU EMPLOYEE', 'OFFICER', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14275', 'GRADUATE', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14276', 'B.A', 'BUSINESS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14276', 'B.SC', 'GOVT. SERVICE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14277', 'B.COM', 'BUSINESSMAN ', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14277', 'C.A . INTER ', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14278', 'MCA', 'GOVT. SERVICE', 'SCIENTIST-B', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14278', 'M.COM', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14279', '', 'RAILWAY SERVICE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14279', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14280', 'GRADUATE', 'SERVICE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14280', 'POST GRADUATE', 'SERVICE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14281', 'GRADUATION ', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14281', 'GRADUATION', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14282', '', 'GOVT. JOB', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14282', '', 'HOUSE-MAKER', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14283', 'B.COM', 'SERVICE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14283', 'B.A', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14284', 'GRADUATION', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14284', 'GRADUATION', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14285', 'GRADUATE', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14285', 'POST GRADUATE', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14286', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14286', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14287', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14287', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14288', 'MBA ', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14288', 'MBA', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14288', 'GRADUATE', 'BUSINESS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14288', 'GRADUATE', 'BUSINESS', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14289', '', 'EMPLOYMENT', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14289', '', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14290', '', 'BANKER', 'ASSOCIATE VICE PRESIDENT ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14290', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14291', 'GRADUATE', 'PRIVATE JOB', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14291', 'GRADUATE', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14292', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14292', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14293', 'MBA', 'SERVICE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14293', 'BCA', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14294', 'M.TECH', 'SERVICE ', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14294', 'B.E', 'TEACHING', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14295', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14295', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14296', '', 'ENGINEER', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14296', '', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14297', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14297', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14288', 'MBA ', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14288', 'MBA', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14288', 'MBA ', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14288', 'MBA', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14298', 'GRADUATE', 'PRIVATE JOB', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14298', 'GRADUATE', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14288', 'MBA ', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14288', 'MBA', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14288', 'MBA ', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14288', 'MBA', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14299', 'B.A(L.L.B)', 'ADVOCATE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14299', 'MATRIC', 'HOUSEMAKER', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14300', '', 'JOB', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14300', 'GRADUATE', 'HOUSEWIFE', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14301', 'M.B.A.', 'SALARIED EMPLOYEE', 'LOAN OFFICER (TEAM LEADER)', '25000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14301', 'M,COM', 'HOUEWIFE', '-', '000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14301', 'M.B.A.', 'SALARIED EMPLOYEE', 'LOAN OFFICER (TEAM LEADER)', '25000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14301', 'M,COM', 'HOUEWIFE', '-', '000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14303', 'B.TEC', 'JOB', 'JOB', '60000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14303', 'M.COM', 'HOUSEWIFE', '___-', '0000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14288', 'MBA ', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14288', 'MBA', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14288', 'MBA ', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14288', 'MBA', 'SERVICE ', 'MANAGER ', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14304', 'GRADUATE', 'SERVICE', 'SALES MANAGER', '00000', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14304', 'GRADUATE', 'HOUSE WIFE', '--', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14305', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14305', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14306', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14306', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14307', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14307', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A14308', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A14308', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M'),
('A1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F'),
('A1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `id` int(11) NOT NULL,
  `payment_mode` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_mode`
--

INSERT INTO `payment_mode` (`id`, `payment_mode`) VALUES
(1, 'CASH'),
(2, 'CARD SWAP'),
(3, 'CHEQUE'),
(4, 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `payslip_dbo`
--

CREATE TABLE `payslip_dbo` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) DEFAULT NULL,
  `total_working_days` float(10,2) DEFAULT NULL,
  `total_present` float(10,2) DEFAULT NULL,
  `payslip_year` int(11) DEFAULT NULL,
  `payslip_month` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT current_timestamp(),
  `actual_basic` double DEFAULT NULL,
  `basic_salary` double DEFAULT NULL,
  `da_percent` double DEFAULT 0,
  `da_pay` double DEFAULT 0,
  `hra_rate_percent` double DEFAULT 0,
  `hra_app` int(11) DEFAULT 0,
  `hra_pay` double DEFAULT 0,
  `ta_allowance_applied` int(11) DEFAULT 0,
  `ta_level` int(11) DEFAULT 0,
  `ta_pay` double DEFAULT 0,
  `fixed_allowance` double DEFAULT 0,
  `shift_allowance` double DEFAULT 0,
  `no_of_classes` float DEFAULT 0,
  `amt_per_class` float DEFAULT 0,
  `total_amount` float DEFAULT 0,
  `gross_salary` double DEFAULT 0,
  `pension_rate` float(10,2) NOT NULL,
  `pf_app` int(11) DEFAULT 0,
  `pf_own_rate` double DEFAULT 0,
  `pf_emp_rate` double DEFAULT 0,
  `pf_own_deduct` double DEFAULT 0,
  `fpf_deduct` double DEFAULT 0,
  `vpf_deduct` double DEFAULT 0,
  `esi_app` int(11) DEFAULT 0,
  `esi_own_rate` float DEFAULT 0,
  `esi_emp_rate` float DEFAULT 0,
  `esi_limit` double DEFAULT 0,
  `esi_deduct` double DEFAULT 0,
  `prof_tax` double DEFAULT 0,
  `lic` double DEFAULT 0,
  `hra_rent_deduct` double DEFAULT 0,
  `hra_security_deduct` double DEFAULT 0,
  `hra_garage_deduct` double DEFAULT 0,
  `hra_elect_deduct` double DEFAULT 0,
  `group_ins_app` int(11) DEFAULT 0,
  `group_insurance_amt` double DEFAULT 0,
  `staff_welfare_fund` double DEFAULT 0,
  `tds_deduct` double DEFAULT 0,
  `medical_deduct` double DEFAULT 0,
  `advance_salary_deduct` double DEFAULT 0,
  `total_deduction` double DEFAULT 0,
  `arrear_basic` double DEFAULT 0,
  `arrear_da` double DEFAULT 0,
  `arrear_hra` double DEFAULT 0,
  `arrear_ta` double DEFAULT 0,
  `arrear_fixed_allow` double DEFAULT 0,
  `arrear_shift_allow` double DEFAULT 0,
  `payable_amt` double DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_lock` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pay_control`
--

CREATE TABLE `pay_control` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `FPF` double DEFAULT 0,
  `VPF` double DEFAULT 0,
  `PROF_TAX` double DEFAULT 0,
  `LIC` double DEFAULT 0,
  `HRA_RENT` double DEFAULT 0,
  `HRA_ELECT` double DEFAULT 0,
  `HRA_SECURITY` double DEFAULT 0,
  `HRA_GARAGE` double DEFAULT 0,
  `TDS` double DEFAULT 0,
  `MEDICAL_DEDUCT` double DEFAULT 0,
  `FIXED_ALLOW` double DEFAULT 0,
  `SHIFT_ALLOW` double DEFAULT 0,
  `ARREAR_BASIC` double DEFAULT 0,
  `ARREAR_DA` double DEFAULT 0,
  `ARREAR_HRA` double DEFAULT 0,
  `ARREAR_TA` double DEFAULT 0,
  `ARREAR_FIXED_ALLOW` double DEFAULT 0,
  `ARREAR_SHIFT_ALLOW` double DEFAULT 0,
  `TOTAL_ADV_SAL_AMT` double DEFAULT 0,
  `TOTAL_DUE_AMT` double DEFAULT 0,
  `NO_OF_INSTALLMENT` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission_data`
--

CREATE TABLE `permission_data` (
  `ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  `PERMISSION_DATA` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission_data`
--

INSERT INTO `permission_data` (`ID`, `ROLE_ID`, `PERMISSION_DATA`) VALUES
(4, 3, 'a:5:{i:0;s:15:\"editDesignation\";i:1;s:17:\"editQualification\";i:2;s:13:\"editLeaveType\";i:3;s:9:\"editPfEsi\";i:4;s:14:\"editPayControl\";}'),
(3, 4, 'a:197:{i:0;s:22:\"viewPrincipalDashboard\";i:1;s:16:\"editEmpDashboard\";i:2;s:16:\"viewEmpDashboard\";i:3;s:14:\"addHouseMaster\";i:4;s:15:\"editHouseMaster\";i:5;s:15:\"viewHouseMaster\";i:6;s:17:\"addCategoryMaster\";i:7;s:18:\"editCategoryMaster\";i:8;s:18:\"viewCategoryMaster\";i:9;s:11:\"addWardType\";i:10;s:12:\"editWardType\";i:11;s:12:\"viewWardType\";i:12;s:11:\"addReligion\";i:13;s:12:\"editReligion\";i:14;s:12:\"viewReligion\";i:15;s:16:\"addStudentMaster\";i:16;s:17:\"editStudentMaster\";i:17;s:19:\"deleteStudentMaster\";i:18;s:17:\"viewStudentMaster\";i:19;s:14:\"addScholarship\";i:20;s:15:\"editScholarship\";i:21;s:17:\"deleteScholarship\";i:22;s:15:\"viewScholarship\";i:23;s:23:\"addStudentRecordKeeping\";i:24;s:24:\"editStudentRecordKeeping\";i:25;s:24:\"viewStudentRecordKeeping\";i:26;s:19:\"viewDisabledStudent\";i:27;s:26:\"viewParentsLoginCredential\";i:28;s:18:\"addDailyAttendance\";i:29;s:19:\"editDailyAttendance\";i:30;s:19:\"viewDailyAttendance\";i:31;s:20:\"viewDailyAttenReport\";i:32;s:22:\"viewMonthlyAttenReport\";i:33;s:15:\"addStuAttenType\";i:34;s:16:\"editStuAttenType\";i:35;s:16:\"viewStuAttenType\";i:36;s:10:\"addSection\";i:37;s:11:\"editSection\";i:38;s:11:\"viewSection\";i:39;s:8:\"addClass\";i:40;s:9:\"editClass\";i:41;s:9:\"viewClass\";i:42;s:21:\"addAssignClassTeacher\";i:43;s:22:\"editAssignClassTeacher\";i:44;s:22:\"viewAssignClassTeacher\";i:45;s:23:\"addAssignSubjectTeacher\";i:46;s:24:\"editAssignSubjectTeacher\";i:47;s:26:\"deleteAssignSubjectTeacher\";i:48;s:24:\"viewAssignSubjectTeacher\";i:49;s:14:\"addMainSubject\";i:50;s:15:\"editMainSubject\";i:51;s:15:\"viewMainSubject\";i:52;s:15:\"addCoScholGrade\";i:53;s:16:\"editCoScholGrade\";i:54;s:16:\"viewCoScholGrade\";i:55;s:18:\"addDisciplineGrade\";i:56;s:19:\"editDisciplineGrade\";i:57;s:19:\"viewDisciplineGrade\";i:58;s:18:\"addDisciGradeSkill\";i:59;s:19:\"editDisciGradeSkill\";i:60;s:19:\"viewDisciGradeSkill\";i:61;s:15:\"addRemarksAlloc\";i:62;s:16:\"editRemarksAlloc\";i:63;s:16:\"viewRemarksAlloc\";i:64;s:11:\"addMaxMarks\";i:65;s:12:\"editMaxMarks\";i:66;s:12:\"viewMaxMarks\";i:67;s:19:\"addStuSubAllocation\";i:68;s:20:\"editStuSubAllocation\";i:69;s:20:\"viewStuSubAllocation\";i:70;s:21:\"addClassSubAllocation\";i:71;s:22:\"editClassSubAllocation\";i:72;s:22:\"viewClassSubAllocation\";i:73;s:12:\"editLockExam\";i:74;s:11:\"addEmployee\";i:75;s:12:\"editEmployee\";i:76;s:12:\"viewEmployee\";i:77;s:16:\"addEmpAttendance\";i:78;s:17:\"editEmpAttendance\";i:79;s:17:\"viewEmpAttendance\";i:80;s:14:\"addDesignation\";i:81;s:15:\"editDesignation\";i:82;s:17:\"deleteDesignation\";i:83;s:15:\"viewDesignation\";i:84;s:7:\"addQual\";i:85;s:8:\"editQual\";i:86;s:10:\"deleteQual\";i:87;s:8:\"viewQual\";i:88;s:12:\"addLeaveType\";i:89;s:13:\"editLeaveType\";i:90;s:15:\"deleteLeaveType\";i:91;s:13:\"viewLeaveType\";i:92;s:19:\"viewDisabledEmpList\";i:93;s:8:\"addShift\";i:94;s:9:\"editShift\";i:95;s:9:\"viewShift\";i:96;s:14:\"editPayControl\";i:97;s:14:\"viewPayControl\";i:98;s:25:\"editSecondShiftAttendance\";i:99;s:25:\"viewSecondShiftAttendance\";i:100;s:18:\"addMonthlyEmpAtten\";i:101;s:19:\"editMonthlyEmpAtten\";i:102;s:19:\"viewMonthlyEmpAtten\";i:103;s:13:\"addPayslipGen\";i:104;s:14:\"editPayslipGen\";i:105;s:14:\"viewPayslipGen\";i:106;s:8:\"addPFESI\";i:107;s:9:\"editPFESI\";i:108;s:9:\"viewPFESI\";i:109;s:17:\"editDeductionBulk\";i:110;s:17:\"editAllowanceBulk\";i:111;s:26:\"editApprovalofArrearSalary\";i:112;s:17:\"editSchoolSetting\";i:113;s:17:\"viewSchoolSetting\";i:114;s:10:\"addSession\";i:115;s:11:\"editSession\";i:116;s:11:\"viewSession\";i:117;s:10:\"addHoliday\";i:118;s:11:\"editHoliday\";i:119;s:11:\"viewHoliday\";i:120;s:8:\"viewRole\";i:121;s:15:\"editActiveMonth\";i:122;s:15:\"viewActiveMonth\";i:123;s:19:\"addSchoolCollection\";i:124;s:20:\"editSchoolCollection\";i:125;s:20:\"viewSchoolCollection\";i:126;s:16:\"addFeeHeadMaster\";i:127;s:17:\"editFeeHeadMaster\";i:128;s:17:\"viewFeeHeadMaster\";i:129;s:16:\"addFeeGeneration\";i:130;s:17:\"editFeeGeneration\";i:131;s:17:\"viewFeeGeneration\";i:132;s:25:\"addCanceReprintFeeReceipt\";i:133;s:26:\"editCanceReprintFeeReceipt\";i:134;s:28:\"deleteCanceReprintFeeReceipt\";i:135;s:26:\"viewCanceReprintFeeReceipt\";i:136;s:17:\"addLateFineMaster\";i:137;s:18:\"editLateFineMaster\";i:138;s:20:\"deleteLateFineMaster\";i:139;s:18:\"viewLateFineMaster\";i:140;s:14:\"viewFeeReports\";i:141;s:19:\"viewTransportReport\";i:142;s:20:\"viewFeeDefaulterList\";i:143;s:24:\"viewFeeHeadWiseDefaulter\";i:144;s:22:\"viewTermWiseReportCard\";i:145;s:15:\"viewClassReport\";i:146;s:15:\"viewOtherReport\";i:147;s:13:\"viewAdmitCard\";i:148;s:17:\"viewStudentReport\";i:149;s:13:\"addApplyLeave\";i:150;s:14:\"editApplyLeave\";i:151;s:14:\"viewApplyLeave\";i:152;s:16:\"addLeaveApproval\";i:153;s:17:\"editLeaveApproval\";i:154;s:17:\"viewLeaveApproval\";i:155;s:20:\"viewBankSalaryLetter\";i:156;s:14:\"viewSalaryBill\";i:157;s:19:\"viewMonthlyPFReport\";i:158;s:21:\"viewMonthlySalarySlip\";i:159;s:18:\"viewEMployeeReport\";i:160;s:22:\"viewMonthlyLeaveReport\";i:161;s:23:\"viewMonthlyAttenReports\";i:162;s:19:\"viewAllowanceReport\";i:163;s:19:\"viewDeductionReport\";i:164;s:22:\"viewYearlySalaryReport\";i:165;s:23:\"viewTransferCertificate\";i:166;s:19:\"viewCancelReprintTC\";i:167;s:24:\"viewCharacterCertificate\";i:168;s:23:\"viewBonafideCertificate\";i:169;s:18:\"viewDOBCertificate\";i:170;s:24:\"viewTutionFeeCertificate\";i:171;s:22:\"viewFeePaidCertificate\";i:172;s:9:\"addNotice\";i:173;s:10:\"editNotice\";i:174;s:21:\"viewSentNoticeDetails\";i:175;s:10:\"addNoticeP\";i:176;s:11:\"editNoticeP\";i:177;s:11:\"viewNoticeP\";i:178;s:17:\"viewNoticeReportP\";i:179;s:11:\"addHomework\";i:180;s:12:\"editHomework\";i:181;s:12:\"viewHomework\";i:182;s:27:\"viewUploadedHomeworkDetails\";i:183;s:17:\"viewEmployeeLeave\";i:184;s:18:\"viewStudentDetails\";i:185;s:29:\"editClassSecWisseBulkUpdation\";i:186;s:28:\"viewClassSecWiseBulkUpdation\";i:187;s:17:\"viewVehicleMaster\";i:188;s:19:\"viewVehicleIncharge\";i:189;s:21:\"viewBusStoppageMaster\";i:190;s:14:\"viewAddBusTrip\";i:191;s:16:\"viewDriverMaster\";i:192;s:15:\"viewAddBusRoute\";i:193;s:31:\"viewActivityEventMasterCreation\";i:194;s:31:\"viewParticipationMasterCreation\";i:195;s:15:\"viewPhotoUpload\";i:196;s:21:\"viewWinnerDeclaration\";}'),
(5, 2, 'a:16:{i:0;s:16:\"viewEmpDashboard\";i:1;s:18:\"addDailyAttendance\";i:2;s:19:\"editDailyAttendance\";i:3;s:19:\"viewDailyAttendance\";i:4;s:20:\"viewDailyAttenReport\";i:5;s:22:\"viewMonthlyAttenReport\";i:6;s:15:\"addStuAttenType\";i:7;s:9:\"addNotice\";i:8;s:10:\"editNotice\";i:9;s:10:\"viewNotice\";i:10;s:21:\"viewSentNoticeDetails\";i:11;s:11:\"addHomework\";i:12;s:12:\"editHomework\";i:13;s:12:\"viewHomework\";i:14;s:27:\"viewUploadedHomeworkDetails\";i:15;s:18:\"viewStudentDetails\";}'),
(6, 6, 'a:134:{i:0;s:16:\"editEmpDashboard\";i:1;s:16:\"viewEmpDashboard\";i:2;s:16:\"addStudentMaster\";i:3;s:17:\"editStudentMaster\";i:4;s:19:\"deleteStudentMaster\";i:5;s:17:\"viewStudentMaster\";i:6;s:14:\"addScholarship\";i:7;s:15:\"editScholarship\";i:8;s:17:\"deleteScholarship\";i:9;s:15:\"viewScholarship\";i:10;s:14:\"addHouseMaster\";i:11;s:15:\"editHouseMaster\";i:12;s:15:\"viewHouseMaster\";i:13;s:17:\"addCategoryMaster\";i:14;s:18:\"editCategoryMaster\";i:15;s:18:\"viewCategoryMaster\";i:16;s:11:\"addWardType\";i:17;s:12:\"editWardType\";i:18;s:12:\"viewWardType\";i:19;s:11:\"addReligion\";i:20;s:12:\"editReligion\";i:21;s:12:\"viewReligion\";i:22;s:23:\"addStudentRecordKeeping\";i:23;s:24:\"editStudentRecordKeeping\";i:24;s:24:\"viewStudentRecordKeeping\";i:25;s:18:\"addDailyAttendance\";i:26;s:19:\"editDailyAttendance\";i:27;s:19:\"viewDailyAttendance\";i:28;s:20:\"viewDailyAttenReport\";i:29;s:22:\"viewMonthlyAttenReport\";i:30;s:15:\"addStuAttenType\";i:31;s:16:\"editStuAttenType\";i:32;s:16:\"viewStuAttenType\";i:33;s:10:\"addSection\";i:34;s:11:\"editSection\";i:35;s:11:\"viewSection\";i:36;s:8:\"addClass\";i:37;s:9:\"editClass\";i:38;s:9:\"viewClass\";i:39;s:19:\"addStuSubAllocation\";i:40;s:20:\"editStuSubAllocation\";i:41;s:20:\"viewStuSubAllocation\";i:42;s:21:\"addClassSubAllocation\";i:43;s:22:\"editClassSubAllocation\";i:44;s:22:\"viewClassSubAllocation\";i:45;s:21:\"addAssignClassTeacher\";i:46;s:22:\"editAssignClassTeacher\";i:47;s:22:\"viewAssignClassTeacher\";i:48;s:14:\"addMainSubject\";i:49;s:15:\"editMainSubject\";i:50;s:15:\"viewMainSubject\";i:51;s:15:\"addCoScholGrade\";i:52;s:16:\"editCoScholGrade\";i:53;s:16:\"viewCoScholGrade\";i:54;s:18:\"addDisciplineGrade\";i:55;s:19:\"editDisciplineGrade\";i:56;s:19:\"viewDisciplineGrade\";i:57;s:18:\"addDisciGradeSkill\";i:58;s:19:\"editDisciGradeSkill\";i:59;s:19:\"viewDisciGradeSkill\";i:60;s:15:\"addRemarksAlloc\";i:61;s:16:\"editRemarksAlloc\";i:62;s:16:\"viewRemarksAlloc\";i:63;s:11:\"addMaxMarks\";i:64;s:12:\"editMaxMarks\";i:65;s:12:\"viewMaxMarks\";i:66;s:11:\"addEmployee\";i:67;s:12:\"editEmployee\";i:68;s:12:\"viewEmployee\";i:69;s:16:\"addEmpAttendance\";i:70;s:17:\"editEmpAttendance\";i:71;s:17:\"viewEmpAttendance\";i:72;s:14:\"addDesignation\";i:73;s:15:\"editDesignation\";i:74;s:17:\"deleteDesignation\";i:75;s:15:\"viewDesignation\";i:76;s:7:\"addQual\";i:77;s:8:\"editQual\";i:78;s:10:\"deleteQual\";i:79;s:8:\"viewQual\";i:80;s:12:\"addLeaveType\";i:81;s:13:\"editLeaveType\";i:82;s:15:\"deleteLeaveType\";i:83;s:13:\"viewLeaveType\";i:84;s:19:\"viewDisabledEmpList\";i:85;s:14:\"editPayControl\";i:86;s:14:\"viewPayControl\";i:87;s:25:\"editSecondShiftAttendance\";i:88;s:25:\"viewSecondShiftAttendance\";i:89;s:18:\"addMonthlyEmpAtten\";i:90;s:19:\"editMonthlyEmpAtten\";i:91;s:19:\"viewMonthlyEmpAtten\";i:92;s:13:\"addPayslipGen\";i:93;s:14:\"editPayslipGen\";i:94;s:14:\"viewPayslipGen\";i:95;s:8:\"addPFESI\";i:96;s:9:\"editPFESI\";i:97;s:9:\"viewPFESI\";i:98;s:17:\"editSchoolSetting\";i:99;s:17:\"viewSchoolSetting\";i:100;s:10:\"addSession\";i:101;s:11:\"editSession\";i:102;s:11:\"viewSession\";i:103;s:8:\"addShift\";i:104;s:9:\"editShift\";i:105;s:9:\"viewShift\";i:106;s:10:\"addHoliday\";i:107;s:11:\"editHoliday\";i:108;s:11:\"viewHoliday\";i:109;s:8:\"viewRole\";i:110;s:15:\"editActiveMonth\";i:111;s:15:\"viewActiveMonth\";i:112;s:19:\"addSchoolCollection\";i:113;s:20:\"editSchoolCollection\";i:114;s:20:\"viewSchoolCollection\";i:115;s:16:\"addFeeHeadMaster\";i:116;s:17:\"editFeeHeadMaster\";i:117;s:17:\"viewFeeHeadMaster\";i:118;s:16:\"addFeeGeneration\";i:119;s:17:\"editFeeGeneration\";i:120;s:17:\"viewFeeGeneration\";i:121;s:14:\"viewFeeReports\";i:122;s:20:\"viewFeeDefaulterList\";i:123;s:24:\"viewFeeHeadWiseDefaulter\";i:124;s:22:\"viewTermWiseReportCard\";i:125;s:13:\"addApplyLeave\";i:126;s:14:\"editApplyLeave\";i:127;s:14:\"viewApplyLeave\";i:128;s:19:\"addApplyManualLeave\";i:129;s:20:\"editApplyManualLeave\";i:130;s:20:\"viewApplyManualLeave\";i:131;s:16:\"addLeaveApproval\";i:132;s:17:\"editLeaveApproval\";i:133;s:17:\"viewLeaveApproval\";}'),
(7, 5, 'a:135:{i:0;s:16:\"editEmpDashboard\";i:1;s:16:\"viewEmpDashboard\";i:2;s:14:\"addHouseMaster\";i:3;s:15:\"editHouseMaster\";i:4;s:15:\"viewHouseMaster\";i:5;s:17:\"addCategoryMaster\";i:6;s:18:\"editCategoryMaster\";i:7;s:18:\"viewCategoryMaster\";i:8;s:11:\"addWardType\";i:9;s:12:\"editWardType\";i:10;s:12:\"viewWardType\";i:11;s:11:\"addReligion\";i:12;s:12:\"editReligion\";i:13;s:12:\"viewReligion\";i:14;s:16:\"addStudentMaster\";i:15;s:17:\"editStudentMaster\";i:16;s:19:\"deleteStudentMaster\";i:17;s:17:\"viewStudentMaster\";i:18;s:14:\"addScholarship\";i:19;s:15:\"editScholarship\";i:20;s:17:\"deleteScholarship\";i:21;s:15:\"viewScholarship\";i:22;s:23:\"addStudentRecordKeeping\";i:23;s:24:\"editStudentRecordKeeping\";i:24;s:24:\"viewStudentRecordKeeping\";i:25;s:18:\"addDailyAttendance\";i:26;s:19:\"editDailyAttendance\";i:27;s:19:\"viewDailyAttendance\";i:28;s:20:\"viewDailyAttenReport\";i:29;s:22:\"viewMonthlyAttenReport\";i:30;s:15:\"addStuAttenType\";i:31;s:16:\"editStuAttenType\";i:32;s:16:\"viewStuAttenType\";i:33;s:10:\"addSection\";i:34;s:11:\"editSection\";i:35;s:11:\"viewSection\";i:36;s:8:\"addClass\";i:37;s:9:\"editClass\";i:38;s:9:\"viewClass\";i:39;s:21:\"addAssignClassTeacher\";i:40;s:22:\"editAssignClassTeacher\";i:41;s:22:\"viewAssignClassTeacher\";i:42;s:14:\"addMainSubject\";i:43;s:15:\"editMainSubject\";i:44;s:15:\"viewMainSubject\";i:45;s:15:\"addCoScholGrade\";i:46;s:16:\"editCoScholGrade\";i:47;s:16:\"viewCoScholGrade\";i:48;s:18:\"addDisciplineGrade\";i:49;s:19:\"editDisciplineGrade\";i:50;s:19:\"viewDisciplineGrade\";i:51;s:18:\"addDisciGradeSkill\";i:52;s:19:\"editDisciGradeSkill\";i:53;s:19:\"viewDisciGradeSkill\";i:54;s:15:\"addRemarksAlloc\";i:55;s:16:\"editRemarksAlloc\";i:56;s:16:\"viewRemarksAlloc\";i:57;s:11:\"addMaxMarks\";i:58;s:12:\"editMaxMarks\";i:59;s:12:\"viewMaxMarks\";i:60;s:19:\"addStuSubAllocation\";i:61;s:20:\"editStuSubAllocation\";i:62;s:20:\"viewStuSubAllocation\";i:63;s:21:\"addClassSubAllocation\";i:64;s:22:\"editClassSubAllocation\";i:65;s:22:\"viewClassSubAllocation\";i:66;s:11:\"addEmployee\";i:67;s:12:\"editEmployee\";i:68;s:12:\"viewEmployee\";i:69;s:16:\"addEmpAttendance\";i:70;s:17:\"editEmpAttendance\";i:71;s:17:\"viewEmpAttendance\";i:72;s:14:\"addDesignation\";i:73;s:15:\"editDesignation\";i:74;s:17:\"deleteDesignation\";i:75;s:15:\"viewDesignation\";i:76;s:7:\"addQual\";i:77;s:8:\"editQual\";i:78;s:10:\"deleteQual\";i:79;s:8:\"viewQual\";i:80;s:12:\"addLeaveType\";i:81;s:13:\"editLeaveType\";i:82;s:15:\"deleteLeaveType\";i:83;s:13:\"viewLeaveType\";i:84;s:19:\"viewDisabledEmpList\";i:85;s:8:\"addShift\";i:86;s:9:\"editShift\";i:87;s:9:\"viewShift\";i:88;s:14:\"editPayControl\";i:89;s:14:\"viewPayControl\";i:90;s:25:\"editSecondShiftAttendance\";i:91;s:25:\"viewSecondShiftAttendance\";i:92;s:18:\"addMonthlyEmpAtten\";i:93;s:19:\"editMonthlyEmpAtten\";i:94;s:19:\"viewMonthlyEmpAtten\";i:95;s:13:\"addPayslipGen\";i:96;s:14:\"editPayslipGen\";i:97;s:14:\"viewPayslipGen\";i:98;s:8:\"addPFESI\";i:99;s:9:\"editPFESI\";i:100;s:9:\"viewPFESI\";i:101;s:17:\"editSchoolSetting\";i:102;s:17:\"viewSchoolSetting\";i:103;s:10:\"addSession\";i:104;s:11:\"editSession\";i:105;s:11:\"viewSession\";i:106;s:10:\"addHoliday\";i:107;s:11:\"editHoliday\";i:108;s:11:\"viewHoliday\";i:109;s:19:\"addSchoolCollection\";i:110;s:20:\"editSchoolCollection\";i:111;s:20:\"viewSchoolCollection\";i:112;s:16:\"addFeeHeadMaster\";i:113;s:17:\"editFeeHeadMaster\";i:114;s:17:\"viewFeeHeadMaster\";i:115;s:16:\"addFeeGeneration\";i:116;s:17:\"editFeeGeneration\";i:117;s:17:\"viewFeeGeneration\";i:118;s:14:\"viewFeeReports\";i:119;s:20:\"viewFeeDefaulterList\";i:120;s:24:\"viewFeeHeadWiseDefaulter\";i:121;s:22:\"viewTermWiseReportCard\";i:122;s:13:\"addApplyLeave\";i:123;s:14:\"editApplyLeave\";i:124;s:14:\"viewApplyLeave\";i:125;s:16:\"addLeaveApproval\";i:126;s:17:\"editLeaveApproval\";i:127;s:17:\"viewLeaveApproval\";i:128;s:9:\"addNotice\";i:129;s:10:\"editNotice\";i:130;s:10:\"viewNotice\";i:131;s:11:\"addHomework\";i:132;s:12:\"editHomework\";i:133;s:12:\"viewHomework\";i:134;s:27:\"viewUploadedHomeworkDetails\";}'),
(8, 12, 'a:130:{i:0;s:16:\"viewEmpDashboard\";i:1;s:16:\"addStudentMaster\";i:2;s:17:\"editStudentMaster\";i:3;s:19:\"deleteStudentMaster\";i:4;s:17:\"viewStudentMaster\";i:5;s:14:\"addScholarship\";i:6;s:15:\"editScholarship\";i:7;s:17:\"deleteScholarship\";i:8;s:15:\"viewScholarship\";i:9;s:14:\"addHouseMaster\";i:10;s:15:\"editHouseMaster\";i:11;s:15:\"viewHouseMaster\";i:12;s:17:\"addCategoryMaster\";i:13;s:18:\"editCategoryMaster\";i:14;s:18:\"viewCategoryMaster\";i:15;s:11:\"addWardType\";i:16;s:12:\"editWardType\";i:17;s:12:\"viewWardType\";i:18;s:11:\"addReligion\";i:19;s:12:\"editReligion\";i:20;s:12:\"viewReligion\";i:21;s:23:\"addStudentRecordKeeping\";i:22;s:24:\"editStudentRecordKeeping\";i:23;s:24:\"viewStudentRecordKeeping\";i:24;s:18:\"addDailyAttendance\";i:25;s:19:\"editDailyAttendance\";i:26;s:19:\"viewDailyAttendance\";i:27;s:20:\"viewDailyAttenReport\";i:28;s:22:\"viewMonthlyAttenReport\";i:29;s:15:\"addStuAttenType\";i:30;s:16:\"editStuAttenType\";i:31;s:16:\"viewStuAttenType\";i:32;s:10:\"addSection\";i:33;s:11:\"editSection\";i:34;s:11:\"viewSection\";i:35;s:8:\"addClass\";i:36;s:9:\"editClass\";i:37;s:9:\"viewClass\";i:38;s:19:\"addStuSubAllocation\";i:39;s:20:\"editStuSubAllocation\";i:40;s:20:\"viewStuSubAllocation\";i:41;s:21:\"addClassSubAllocation\";i:42;s:22:\"editClassSubAllocation\";i:43;s:22:\"viewClassSubAllocation\";i:44;s:21:\"addAssignClassTeacher\";i:45;s:22:\"editAssignClassTeacher\";i:46;s:22:\"viewAssignClassTeacher\";i:47;s:14:\"addMainSubject\";i:48;s:15:\"editMainSubject\";i:49;s:15:\"viewMainSubject\";i:50;s:15:\"addCoScholGrade\";i:51;s:16:\"editCoScholGrade\";i:52;s:16:\"viewCoScholGrade\";i:53;s:18:\"addDisciplineGrade\";i:54;s:19:\"editDisciplineGrade\";i:55;s:19:\"viewDisciplineGrade\";i:56;s:18:\"addDisciGradeSkill\";i:57;s:19:\"editDisciGradeSkill\";i:58;s:19:\"viewDisciGradeSkill\";i:59;s:15:\"addRemarksAlloc\";i:60;s:16:\"editRemarksAlloc\";i:61;s:16:\"viewRemarksAlloc\";i:62;s:11:\"addMaxMarks\";i:63;s:12:\"editMaxMarks\";i:64;s:12:\"viewMaxMarks\";i:65;s:11:\"addEmployee\";i:66;s:12:\"editEmployee\";i:67;s:12:\"viewEmployee\";i:68;s:16:\"addEmpAttendance\";i:69;s:17:\"editEmpAttendance\";i:70;s:17:\"viewEmpAttendance\";i:71;s:14:\"addDesignation\";i:72;s:15:\"editDesignation\";i:73;s:17:\"deleteDesignation\";i:74;s:15:\"viewDesignation\";i:75;s:7:\"addQual\";i:76;s:8:\"editQual\";i:77;s:10:\"deleteQual\";i:78;s:8:\"viewQual\";i:79;s:12:\"addLeaveType\";i:80;s:13:\"editLeaveType\";i:81;s:15:\"deleteLeaveType\";i:82;s:13:\"viewLeaveType\";i:83;s:19:\"viewDisabledEmpList\";i:84;s:14:\"editPayControl\";i:85;s:14:\"viewPayControl\";i:86;s:25:\"editSecondShiftAttendance\";i:87;s:25:\"viewSecondShiftAttendance\";i:88;s:18:\"addMonthlyEmpAtten\";i:89;s:19:\"editMonthlyEmpAtten\";i:90;s:19:\"viewMonthlyEmpAtten\";i:91;s:13:\"addPayslipGen\";i:92;s:14:\"editPayslipGen\";i:93;s:14:\"viewPayslipGen\";i:94;s:8:\"addPFESI\";i:95;s:9:\"editPFESI\";i:96;s:9:\"viewPFESI\";i:97;s:17:\"editSchoolSetting\";i:98;s:17:\"viewSchoolSetting\";i:99;s:10:\"addSession\";i:100;s:11:\"editSession\";i:101;s:11:\"viewSession\";i:102;s:8:\"addShift\";i:103;s:9:\"editShift\";i:104;s:9:\"viewShift\";i:105;s:10:\"addHoliday\";i:106;s:11:\"editHoliday\";i:107;s:11:\"viewHoliday\";i:108;s:19:\"addSchoolCollection\";i:109;s:20:\"editSchoolCollection\";i:110;s:20:\"viewSchoolCollection\";i:111;s:16:\"addFeeHeadMaster\";i:112;s:17:\"editFeeHeadMaster\";i:113;s:17:\"viewFeeHeadMaster\";i:114;s:16:\"addFeeGeneration\";i:115;s:17:\"editFeeGeneration\";i:116;s:17:\"viewFeeGeneration\";i:117;s:14:\"viewFeeReports\";i:118;s:20:\"viewFeeDefaulterList\";i:119;s:24:\"viewFeeHeadWiseDefaulter\";i:120;s:22:\"viewTermWiseReportCard\";i:121;s:13:\"addApplyLeave\";i:122;s:14:\"editApplyLeave\";i:123;s:14:\"viewApplyLeave\";i:124;s:19:\"addApplyManualLeave\";i:125;s:20:\"editApplyManualLeave\";i:126;s:20:\"viewApplyManualLeave\";i:127;s:16:\"addLeaveApproval\";i:128;s:17:\"editLeaveApproval\";i:129;s:17:\"viewLeaveApproval\";}'),
(9, 8, 'a:130:{i:0;s:22:\"viewPrincipalDashboard\";i:1;s:16:\"viewEmpDashboard\";i:2;s:14:\"addHouseMaster\";i:3;s:15:\"editHouseMaster\";i:4;s:15:\"viewHouseMaster\";i:5;s:17:\"addCategoryMaster\";i:6;s:18:\"editCategoryMaster\";i:7;s:18:\"viewCategoryMaster\";i:8;s:11:\"addWardType\";i:9;s:12:\"editWardType\";i:10;s:12:\"viewWardType\";i:11;s:11:\"addReligion\";i:12;s:12:\"editReligion\";i:13;s:12:\"viewReligion\";i:14;s:16:\"addStudentMaster\";i:15;s:17:\"editStudentMaster\";i:16;s:19:\"deleteStudentMaster\";i:17;s:17:\"viewStudentMaster\";i:18;s:14:\"addScholarship\";i:19;s:15:\"editScholarship\";i:20;s:17:\"deleteScholarship\";i:21;s:15:\"viewScholarship\";i:22;s:23:\"addStudentRecordKeeping\";i:23;s:24:\"editStudentRecordKeeping\";i:24;s:24:\"viewStudentRecordKeeping\";i:25;s:18:\"addDailyAttendance\";i:26;s:19:\"editDailyAttendance\";i:27;s:19:\"viewDailyAttendance\";i:28;s:20:\"viewDailyAttenReport\";i:29;s:22:\"viewMonthlyAttenReport\";i:30;s:15:\"addStuAttenType\";i:31;s:16:\"editStuAttenType\";i:32;s:16:\"viewStuAttenType\";i:33;s:10:\"addSection\";i:34;s:11:\"editSection\";i:35;s:11:\"viewSection\";i:36;s:8:\"addClass\";i:37;s:9:\"editClass\";i:38;s:9:\"viewClass\";i:39;s:19:\"addStuSubAllocation\";i:40;s:20:\"editStuSubAllocation\";i:41;s:20:\"viewStuSubAllocation\";i:42;s:21:\"addClassSubAllocation\";i:43;s:22:\"editClassSubAllocation\";i:44;s:22:\"viewClassSubAllocation\";i:45;s:11:\"addEmployee\";i:46;s:12:\"editEmployee\";i:47;s:12:\"viewEmployee\";i:48;s:16:\"addEmpAttendance\";i:49;s:17:\"editEmpAttendance\";i:50;s:17:\"viewEmpAttendance\";i:51;s:14:\"addDesignation\";i:52;s:15:\"editDesignation\";i:53;s:17:\"deleteDesignation\";i:54;s:15:\"viewDesignation\";i:55;s:7:\"addQual\";i:56;s:8:\"editQual\";i:57;s:10:\"deleteQual\";i:58;s:8:\"viewQual\";i:59;s:12:\"addLeaveType\";i:60;s:13:\"editLeaveType\";i:61;s:15:\"deleteLeaveType\";i:62;s:13:\"viewLeaveType\";i:63;s:19:\"viewDisabledEmpList\";i:64;s:8:\"addShift\";i:65;s:9:\"editShift\";i:66;s:9:\"viewShift\";i:67;s:14:\"editPayControl\";i:68;s:14:\"viewPayControl\";i:69;s:25:\"editSecondShiftAttendance\";i:70;s:25:\"viewSecondShiftAttendance\";i:71;s:18:\"addMonthlyEmpAtten\";i:72;s:19:\"editMonthlyEmpAtten\";i:73;s:19:\"viewMonthlyEmpAtten\";i:74;s:13:\"addPayslipGen\";i:75;s:14:\"editPayslipGen\";i:76;s:14:\"viewPayslipGen\";i:77;s:8:\"addPFESI\";i:78;s:9:\"editPFESI\";i:79;s:9:\"viewPFESI\";i:80;s:17:\"editSchoolSetting\";i:81;s:17:\"viewSchoolSetting\";i:82;s:10:\"addSession\";i:83;s:11:\"editSession\";i:84;s:11:\"viewSession\";i:85;s:10:\"addHoliday\";i:86;s:11:\"editHoliday\";i:87;s:11:\"viewHoliday\";i:88;s:8:\"viewRole\";i:89;s:15:\"editActiveMonth\";i:90;s:15:\"viewActiveMonth\";i:91;s:19:\"addSchoolCollection\";i:92;s:20:\"editSchoolCollection\";i:93;s:20:\"viewSchoolCollection\";i:94;s:16:\"addFeeHeadMaster\";i:95;s:17:\"editFeeHeadMaster\";i:96;s:17:\"viewFeeHeadMaster\";i:97;s:16:\"addFeeGeneration\";i:98;s:17:\"editFeeGeneration\";i:99;s:17:\"viewFeeGeneration\";i:100;s:14:\"viewFeeReports\";i:101;s:20:\"viewFeeDefaulterList\";i:102;s:24:\"viewFeeHeadWiseDefaulter\";i:103;s:22:\"viewTermWiseReportCard\";i:104;s:15:\"viewClassReport\";i:105;s:15:\"viewOtherReport\";i:106;s:13:\"viewAdmitCard\";i:107;s:13:\"addApplyLeave\";i:108;s:14:\"editApplyLeave\";i:109;s:14:\"viewApplyLeave\";i:110;s:16:\"addLeaveApproval\";i:111;s:17:\"editLeaveApproval\";i:112;s:17:\"viewLeaveApproval\";i:113;s:18:\"viewEMployeeReport\";i:114;s:22:\"viewMonthlyLeaveReport\";i:115;s:19:\"viewAllowanceReport\";i:116;s:19:\"viewDeductionReport\";i:117;s:22:\"viewYearlySalaryReport\";i:118;s:20:\"viewBankSalaryLetter\";i:119;s:14:\"viewSalaryBill\";i:120;s:19:\"viewMonthlyPFReport\";i:121;s:18:\"viewPfEsiStatement\";i:122;s:21:\"viewMonthlySalarySlip\";i:123;s:23:\"viewTransferCertificate\";i:124;s:19:\"viewCancelReprintTC\";i:125;s:24:\"viewCharacterCertificate\";i:126;s:23:\"viewBonafideCertificate\";i:127;s:18:\"viewDOBCertificate\";i:128;s:24:\"viewTutionFeeCertificate\";i:129;s:22:\"viewFeePaidCertificate\";}'),
(10, 9, 'a:4:{i:0;s:16:\"viewEmpDashboard\";i:1;s:13:\"addApplyLeave\";i:2;s:14:\"editApplyLeave\";i:3;s:14:\"viewApplyLeave\";}'),
(11, 10, 'a:67:{i:0;s:16:\"editEmpDashboard\";i:1;s:16:\"viewEmpDashboard\";i:2;s:14:\"addHouseMaster\";i:3;s:15:\"editHouseMaster\";i:4;s:15:\"viewHouseMaster\";i:5;s:17:\"addCategoryMaster\";i:6;s:18:\"editCategoryMaster\";i:7;s:18:\"viewCategoryMaster\";i:8;s:11:\"addWardType\";i:9;s:12:\"editWardType\";i:10;s:12:\"viewWardType\";i:11;s:11:\"addReligion\";i:12;s:12:\"editReligion\";i:13;s:12:\"viewReligion\";i:14;s:16:\"addStudentMaster\";i:15;s:17:\"editStudentMaster\";i:16;s:19:\"deleteStudentMaster\";i:17;s:17:\"viewStudentMaster\";i:18;s:14:\"addScholarship\";i:19;s:15:\"editScholarship\";i:20;s:17:\"deleteScholarship\";i:21;s:15:\"viewScholarship\";i:22;s:19:\"viewDisabledStudent\";i:23;s:26:\"viewParentsLoginCredential\";i:24;s:19:\"addSchoolCollection\";i:25;s:20:\"editSchoolCollection\";i:26;s:20:\"viewSchoolCollection\";i:27;s:16:\"addFeeHeadMaster\";i:28;s:17:\"editFeeHeadMaster\";i:29;s:17:\"viewFeeHeadMaster\";i:30;s:16:\"addFeeGeneration\";i:31;s:17:\"editFeeGeneration\";i:32;s:17:\"viewFeeGeneration\";i:33;s:25:\"addCanceReprintFeeReceipt\";i:34;s:26:\"editCanceReprintFeeReceipt\";i:35;s:28:\"deleteCanceReprintFeeReceipt\";i:36;s:26:\"viewCanceReprintFeeReceipt\";i:37;s:17:\"addLateFineMaster\";i:38;s:18:\"editLateFineMaster\";i:39;s:20:\"deleteLateFineMaster\";i:40;s:18:\"viewLateFineMaster\";i:41;s:14:\"viewFeeReports\";i:42;s:19:\"viewTransportReport\";i:43;s:20:\"viewFeeDefaulterList\";i:44;s:24:\"viewFeeHeadWiseDefaulter\";i:45;s:15:\"viewClassReport\";i:46;s:15:\"viewOtherReport\";i:47;s:13:\"viewAdmitCard\";i:48;s:17:\"viewStudentReport\";i:49;s:23:\"viewTransferCertificate\";i:50;s:19:\"viewCancelReprintTC\";i:51;s:24:\"viewCharacterCertificate\";i:52;s:23:\"viewBonafideCertificate\";i:53;s:18:\"viewDOBCertificate\";i:54;s:24:\"viewTutionFeeCertificate\";i:55;s:22:\"viewFeePaidCertificate\";i:56;s:29:\"editClassSecWisseBulkUpdation\";i:57;s:17:\"viewVehicleMaster\";i:58;s:19:\"viewVehicleIncharge\";i:59;s:21:\"viewBusStoppageMaster\";i:60;s:14:\"viewAddBusTrip\";i:61;s:16:\"viewDriverMaster\";i:62;s:15:\"viewAddBusRoute\";i:63;s:31:\"viewActivityEventMasterCreation\";i:64;s:31:\"viewParticipationMasterCreation\";i:65;s:15:\"viewPhotoUpload\";i:66;s:21:\"viewWinnerDeclaration\";}');

-- --------------------------------------------------------

--
-- Table structure for table `previous_year_collection`
--

CREATE TABLE `previous_year_collection` (
  `RECT_NO` varchar(15) NOT NULL,
  `RECT_DATE` datetime DEFAULT NULL,
  `STU_NAME` varchar(255) DEFAULT NULL,
  `STUDENTID` varchar(50) DEFAULT NULL,
  `ADM_NO` varchar(255) DEFAULT NULL,
  `CLASS` varchar(25) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `PERIOD` varchar(50) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `APR_FEE` varchar(15) DEFAULT NULL,
  `MAY_FEE` varchar(15) DEFAULT NULL,
  `JUNE_FEE` varchar(8) DEFAULT NULL,
  `JULY_FEE` varchar(15) DEFAULT NULL,
  `AUG_FEE` varchar(15) DEFAULT NULL,
  `SEP_FEE` varchar(15) DEFAULT NULL,
  `OCT_FEE` varchar(15) DEFAULT NULL,
  `NOV_FEE` varchar(15) DEFAULT NULL,
  `DEC_FEE` varchar(15) DEFAULT NULL,
  `JAN_FEE` varchar(15) DEFAULT NULL,
  `FEB_FEE` varchar(15) DEFAULT NULL,
  `MAR_FEE` varchar(15) DEFAULT NULL,
  `CHQ_NO` varchar(15) DEFAULT NULL,
  `Narr` varchar(50) DEFAULT NULL,
  `TAmt` double DEFAULT NULL,
  `Fee_Book_No` varchar(255) DEFAULT NULL,
  `Collection_Mode` int(11) DEFAULT NULL,
  `User_Id` varchar(50) DEFAULT NULL,
  `Payment_Mode` varchar(200) NOT NULL,
  `Bank_Name` varchar(200) NOT NULL,
  `Pay_Date` date NOT NULL,
  `Session_Year` varchar(200) NOT NULL,
  `FORM_NO` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `previous_year_collection`
--

INSERT INTO `previous_year_collection` (`RECT_NO`, `RECT_DATE`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `PERIOD`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CHQ_NO`, `Narr`, `TAmt`, `Fee_Book_No`, `Collection_Mode`, `User_Id`, `Payment_Mode`, `Bank_Name`, `Pay_Date`, `Session_Year`, `FORM_NO`) VALUES
('A000006', '2024-04-02 00:00:00', 'SHASHI PANDEY', 'A14254', '216738', 'Pre-Nursery', 'A', 0, 'PRE.DUES-OCT-NOV-DEC-JAN-FEB-MAR', 16000, 0, NULL, 0, 0, 10800, 0, NULL, 0, 5200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A000006', 'A000006', 'A000006', 'A000006', 'A000006', 'A000006', 'N/A', 'N/A', 0, 'N/A', 1, 'bachpan', 'CASH', 'N/A', '2024-06-13', '2024', 'N/A'),
('A000007', '2024-06-13 00:00:00', 'AAYUSHI JHA ', 'A14270', '216754', 'Nursery', 'A', 0, 'PRE.DUES-MAR', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A000007', 'N/A', 'N/A', 0, 'N/A', 1, 'bachpan', 'CASH', 'N/A', '2024-06-13', '2024', 'N/A'),
('A000016', '2024-06-13 00:00:00', 'AAROHI ARYA ', 'A14288', '314810', 'Nursery', 'A', 0, 'PRE.DUES-FEB-MAR', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A000016', 'A000016', 'N/A', 'N/A', 0, 'N/A', 1, 'bachpan', 'CASH', 'N/A', '2024-06-13', '2024', 'N/A'),
('A000025', '2024-04-25 00:00:00', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'PRE.DUES-FEB-MAR', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'A000025', 'A000025', 'N/A', 'N/A', 0, 'N/A', 1, 'bachpan', 'CASH', 'N/A', '2024-06-13', '2024', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `previous_year_feegeneration`
--

CREATE TABLE `previous_year_feegeneration` (
  `Month_NM` varchar(50) DEFAULT NULL,
  `STU_NAME` varchar(75) DEFAULT NULL,
  `STUDENTID` varchar(100) DEFAULT NULL,
  `ADM_NO` varchar(15) DEFAULT NULL,
  `CLASS` varchar(15) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `Fee_details` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `punching_raw_data`
--

CREATE TABLE `punching_raw_data` (
  `ID` int(11) NOT NULL,
  `CARDNO` varchar(32) NOT NULL,
  `OFFICEPUNCH` datetime NOT NULL,
  `REASONCODE` varchar(3) NOT NULL,
  `PROCESS` varchar(1) NOT NULL,
  `PUNCHFLAG` varchar(1) NOT NULL,
  `MACHINEID` int(11) NOT NULL,
  `EDATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `MACHINENO` varchar(50) NOT NULL,
  `PUNCHTYPE` varchar(50) NOT NULL,
  `LATITUDE` varchar(20) NOT NULL,
  `LONGITUDE` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `qualification` varchar(50) DEFAULT NULL,
  `Sno` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`qualification`, `Sno`) VALUES
('BCA IT', 1),
('I.SC', 2),
('I.COM', 3),
('I.A', 4),
('B.SC', 5),
('B.COM', 6),
('B.A', 7),
('BCA', 8),
('MCA', 9),
('B.SC (IT)', 10),
('B.TECH', 11),
('M.TECH', 12),
('B.A. (MASS COM)', 13),
('PG (MASS COM)', 14),
('MA', 15),
('PGD GUIDANCE & COUNC', 16),
('BBA', 17),
('BSC (CA)', 18),
('PHD', 19),
('MA (RD)', 20),
('BTECH CIVIL', 21),
('MBA', 22),
('BTS', 23),
('INTEGRATED MCA', 24),
('M.COM', 25),
('MATRICULATION', 26),
('MSC (COMP. SCI)', 27),
('BE (ECE)', 28),
('PG-DSSD', 29),
('MPM(MASTER IN PERSON', 31),
('BACHELOR IN S.W', 33),
('BSC IN MEDIA SCIENCE', 34),
('ERT', 38),
('FIFTH', 39),
('SIXTH', 40),
('SEVENTH', 41),
('EIGHTH', 42),
('NINTH', 43),
('TENTH', 44),
('DIPLOMA', 45),
('GRADUATION', 46),
('IX', 47),
('M.SC.', 48),
('M.ED', 49),
('M.PHIL.', 50),
('P.G', 51),
('B.ED', 52),
('B.MUSIC', 53),
('B.P.E', 54),
('HMV LICENCE HOLDER', 55),
('ICWAI', 56),
('LLB', 57),
('M.F.A', 58),
('M.LIS', 59),
('M.P.ED', 60),
('NTT', 61);

-- --------------------------------------------------------

--
-- Table structure for table `record_keeping`
--

CREATE TABLE `record_keeping` (
  `ID` int(11) NOT NULL,
  `Adm_No` int(11) NOT NULL,
  `SName` varchar(255) NOT NULL,
  `FName` varchar(255) NOT NULL,
  `PhNo` varchar(20) NOT NULL,
  `Classes` varchar(100) NOT NULL,
  `Section` varchar(100) NOT NULL,
  `Record` text NOT NULL,
  `Date_of_Record` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remarks_Class_Teacher` varchar(255) NOT NULL,
  `Remarks_Principal` text NOT NULL,
  `Feedback` text NOT NULL,
  `Date_Class_Teacher` varchar(100) NOT NULL,
  `Date_Principal` varchar(100) NOT NULL,
  `Date_Feedback` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(11) NOT NULL,
  `un` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `un`, `pass`) VALUES
(1, 'admin', 'admin'),
(2, 'admin1', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `RNo` double NOT NULL,
  `Rname` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`RNo`, `Rname`) VALUES
(1, 'HINDU'),
(2, 'MUSLIM'),
(3, 'CHRISTIAN'),
(4, 'SIKH'),
(5, 'BUDDHIST'),
(6, 'JAIN'),
(7, 'OTHER'),
(8, '-');

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE `remarks` (
  `ADM_NO` mediumtext DEFAULT NULL,
  `TERM` mediumtext DEFAULT NULL,
  `REMARKS` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`ADM_NO`, `TERM`, `REMARKS`) VALUES
('4847', 'TERM-1', 'Excellent'),
('3676', 'TERM-1', '');

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `IS_SUPERADMIN` int(11) NOT NULL DEFAULT 0 COMMENT '1 = YES, 0 = NO',
  `IS_SYSTEM` int(11) NOT NULL DEFAULT 0,
  `IS_ACTIVE` int(11) NOT NULL DEFAULT 1 COMMENT '1 = YES, 0 = NO',
  `PRIORITY` int(11) NOT NULL DEFAULT 4 COMMENT '1 = HIGH, 2 = MIDDLE, 3 = LOW, 4 = LOWER'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`ID`, `NAME`, `DESCRIPTION`, `IS_SUPERADMIN`, `IS_SYSTEM`, `IS_ACTIVE`, `PRIORITY`) VALUES
(1, 'SUPER ADMIN', 'This is super admin.', 1, 1, 1, 1),
(2, 'TEACHER', 'Teacher', 0, 0, 1, 4),
(3, 'ACCOUNTANT', 'This is accountant', 0, 0, 1, 4),
(4, 'PRINCIPAL', 'This is principal', 0, 1, 1, 1),
(5, 'VICE PRINCIPAL', 'This is vice principal', 0, 1, 1, 2),
(6, 'SECTION INCHARGE', 'This is section incharge', 0, 1, 1, 3),
(8, 'SUB ADMIN', '', 0, 0, 1, 4),
(9, 'OTHER', '', 0, 0, 1, 4),
(10, 'ADMIN', 'This is Fee Admin', 0, 0, 1, 4),
(11, 'LIBRARIAN', 'THIS IS LIBRARIAN', 0, 0, 1, 4),
(12, 'TEACHER ADMIN', 'teacher admin', 0, 0, 1, 4),
(13, 'FEE', 'GENERAL FEE COLLECTOR', 0, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `STU_NAME` varchar(255) DEFAULT NULL,
  `STUDENTID` varchar(255) DEFAULT NULL,
  `ADM_NO` varchar(255) NOT NULL,
  `CLASS` varchar(255) DEFAULT NULL,
  `SEC` varchar(255) DEFAULT NULL,
  `ROLL_NO` smallint(6) DEFAULT NULL,
  `AWARDED` smallint(6) DEFAULT NULL,
  `S1` double DEFAULT NULL,
  `S2` double DEFAULT NULL,
  `S3` double DEFAULT NULL,
  `S4` double DEFAULT NULL,
  `S5` double DEFAULT NULL,
  `S6` double DEFAULT NULL,
  `S7` double DEFAULT NULL,
  `S8` double DEFAULT NULL,
  `S9` double DEFAULT NULL,
  `S10` double DEFAULT NULL,
  `S11` double DEFAULT NULL,
  `S12` double DEFAULT NULL,
  `S13` double DEFAULT NULL,
  `S14` double DEFAULT NULL,
  `S15` double DEFAULT NULL,
  `S16` double DEFAULT NULL,
  `S17` double DEFAULT NULL,
  `S18` double DEFAULT NULL,
  `S19` double DEFAULT NULL,
  `S20` double DEFAULT NULL,
  `S21` double DEFAULT NULL,
  `S22` double DEFAULT NULL,
  `S23` double DEFAULT NULL,
  `S24` double DEFAULT NULL,
  `S25` double DEFAULT NULL,
  `Apply_From` varchar(255) DEFAULT NULL,
  `Owned_By` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `school_photo`
--

CREATE TABLE `school_photo` (
  `School_Logo` varchar(255) DEFAULT NULL,
  `School_Logo_RT` varchar(255) DEFAULT NULL,
  `PPLSIGN` mediumblob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_photo`
--

INSERT INTO `school_photo` (`School_Logo`, `School_Logo_RT`, `PPLSIGN`) VALUES
('assets/school_logo/1560227769.jpg', 'assets/school_logo/1560227769.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school_setting`
--

CREATE TABLE `school_setting` (
  `S_No` varchar(10) NOT NULL,
  `School_Name` varchar(50) DEFAULT NULL,
  `School_Address` varchar(255) DEFAULT NULL,
  `School_PhoneNo` varchar(50) DEFAULT NULL,
  `School_MobileNo` varchar(50) DEFAULT NULL,
  `School_Code` varchar(50) DEFAULT NULL,
  `School_AfftNo` varchar(255) DEFAULT NULL,
  `School_Session` varchar(50) DEFAULT NULL,
  `School_Email` varchar(255) DEFAULT NULL,
  `School_Webaddress` varchar(255) DEFAULT NULL,
  `BkCode` varchar(50) DEFAULT NULL,
  `BkName` varchar(255) DEFAULT NULL,
  `BkBranch` varchar(50) DEFAULT NULL,
  `BkAddress` varchar(50) DEFAULT NULL,
  `LIC_Name` varchar(255) DEFAULT NULL,
  `LIC_Address` varchar(255) DEFAULT NULL,
  `Pen_Code` varchar(255) DEFAULT NULL,
  `Pen_Office` varchar(255) DEFAULT NULL,
  `short_nm` varchar(255) DEFAULT NULL,
  `SCHOOL_LOGO` varchar(500) NOT NULL,
  `auth_key` text NOT NULL,
  `sender_id` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_setting`
--

INSERT INTO `school_setting` (`S_No`, `School_Name`, `School_Address`, `School_PhoneNo`, `School_MobileNo`, `School_Code`, `School_AfftNo`, `School_Session`, `School_Email`, `School_Webaddress`, `BkCode`, `BkName`, `BkBranch`, `BkAddress`, `LIC_Name`, `LIC_Address`, `Pen_Code`, `Pen_Office`, `short_nm`, `SCHOOL_LOGO`, `auth_key`, `sender_id`) VALUES
('1', 'NEEV PLAY SCHOOL', 'BHUVI, Ratu Road, Sukhdev Nagar Near Central Bank', '9507500002', '9507500002', '0', '0', '2024-2025', 'neev.astrongfooundation@gmail.com', 'neevastrongfoundation.org', NULL, 'KARNATAKA BANK PVT. LTD.', 'RANCHI', 'RANCHI', NULL, NULL, NULL, NULL, 'NEEV', 'assets/school_logo/1564835888.jpg', '1179A7rQwlWo1sb5e074f96P37', 'NEEVPS');

-- --------------------------------------------------------

--
-- Table structure for table `second_shift_attendance`
--

CREATE TABLE `second_shift_attendance` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `no_of_classes` float NOT NULL,
  `amt_per_class` float NOT NULL,
  `total_amt` float NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_lock` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No, 1 = Yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_no` int(11) NOT NULL,
  `SECTION_NAME` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_no`, `SECTION_NAME`) VALUES
(1, 'A'),
(17, 'Z');

-- --------------------------------------------------------

--
-- Table structure for table `session_master`
--

CREATE TABLE `session_master` (
  `Session_ID` int(11) NOT NULL,
  `Session_Nm` mediumtext DEFAULT NULL,
  `Session_Year` int(11) DEFAULT NULL,
  `Active_Status` int(11) DEFAULT NULL,
  `database_name` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_master`
--

INSERT INTO `session_master` (`Session_ID`, `Session_Nm`, `Session_Year`, `Active_Status`, `database_name`) VALUES
(25, '2023-2024', 2023, 0, ''),
(26, '2024-2025', 2024, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `seventh_pay`
--

CREATE TABLE `seventh_pay` (
  `id` int(11) NOT NULL,
  `level_no` varchar(20) NOT NULL,
  `level_year` int(11) NOT NULL,
  `pay` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seventh_pay`
--

INSERT INTO `seventh_pay` (`id`, `level_no`, `level_year`, `pay`) VALUES
(1, '1', 1, 18000),
(2, '2', 1, 19900),
(3, '3', 1, 21700),
(4, '4', 1, 25500),
(5, '5', 1, 29200),
(6, '6', 1, 35400),
(7, '7', 1, 44900),
(8, '8', 1, 47600),
(9, '9', 1, 53100),
(10, '10', 1, 56100),
(11, '11', 1, 67700),
(12, '12', 1, 78800),
(13, '13', 1, 123100),
(14, '13A', 1, 131100),
(15, '14', 1, 144200),
(16, '15', 1, 182200),
(17, '16', 1, 205400),
(18, '17', 1, 225000),
(19, '18', 1, 250000),
(20, '1', 2, 18500),
(21, '2', 2, 20500),
(22, '3', 2, 22400),
(23, '4', 2, 26300),
(24, '5', 2, 30100),
(25, '6', 2, 36500),
(26, '7', 2, 46200),
(27, '8', 2, 49000),
(28, '9', 2, 54700),
(29, '10', 2, 57800),
(30, '11', 2, 69700),
(31, '12', 2, 81200),
(32, '13', 2, 126800),
(33, '13A', 2, 135000),
(34, '14', 2, 148500),
(35, '15', 2, 187700),
(36, '16', 2, 211600),
(37, '1', 3, 19100),
(38, '2', 3, 21100),
(39, '3', 3, 23100),
(40, '4', 3, 27100),
(41, '5', 3, 31000),
(42, '6', 3, 37600),
(43, '7', 3, 47600),
(44, '8', 3, 50500),
(45, '9', 3, 56300),
(46, '10', 3, 59500),
(47, '11', 3, 71800),
(48, '12', 3, 83600),
(49, '13', 3, 130600),
(50, '13A', 3, 139100),
(51, '14', 3, 153000),
(52, '15', 3, 193300),
(53, '16', 3, 217900),
(54, '1', 4, 19700),
(55, '2', 4, 21700),
(56, '3', 4, 23800),
(57, '4', 4, 27900),
(58, '5', 4, 31900),
(59, '6', 4, 38700),
(60, '7', 4, 49000),
(61, '8', 4, 52000),
(62, '9', 4, 58000),
(63, '10', 4, 61300),
(64, '11', 4, 74000),
(65, '12', 4, 86100),
(66, '13', 4, 134500),
(67, '13A', 4, 143300),
(68, '14', 4, 157600),
(69, '15', 4, 199100),
(70, '16', 4, 224400),
(71, '1', 5, 20300),
(72, '2', 5, 22400),
(73, '3', 5, 24500),
(74, '4', 5, 28700),
(75, '5', 5, 32900),
(76, '6', 5, 39900),
(77, '7', 5, 50500),
(78, '8', 5, 53600),
(79, '9', 5, 59700),
(80, '10', 5, 63100),
(81, '11', 5, 76200),
(82, '12', 5, 88700),
(83, '13', 5, 138500),
(84, '13A', 5, 147600),
(85, '14', 5, 162300),
(86, '15', 5, 205100),
(87, '1', 6, 20900),
(88, '2', 6, 23100),
(89, '3', 6, 25200),
(90, '4', 6, 29600),
(91, '5', 6, 33900),
(92, '6', 6, 41100),
(93, '7', 6, 52000),
(94, '8', 6, 55200),
(95, '9', 6, 61500),
(96, '10', 6, 65000),
(97, '11', 6, 78500),
(98, '12', 6, 91400),
(99, '13', 6, 142700),
(100, '13A', 6, 152000),
(101, '14', 6, 167200),
(102, '15', 6, 211300),
(103, '1', 7, 21500),
(104, '2', 7, 23800),
(105, '3', 7, 26000),
(106, '4', 7, 30500),
(107, '5', 7, 34900),
(108, '6', 7, 42300),
(109, '7', 7, 53600),
(110, '8', 7, 56900),
(111, '9', 7, 63300),
(112, '10', 7, 67000),
(113, '11', 7, 80900),
(114, '12', 7, 94100),
(115, '13', 7, 147000),
(116, '13A', 7, 156600),
(117, '14', 7, 172200),
(118, '15', 7, 217600),
(119, '1', 8, 22100),
(120, '2', 8, 24500),
(121, '3', 8, 26800),
(122, '4', 8, 31400),
(123, '5', 8, 35900),
(124, '6', 8, 43600),
(125, '7', 8, 55200),
(126, '8', 8, 58600),
(127, '9', 8, 65200),
(128, '10', 8, 69000),
(129, '11', 8, 83300),
(130, '12', 8, 96900),
(131, '13', 8, 151400),
(132, '13A', 8, 161300),
(133, '14', 8, 177400),
(134, '15', 8, 224100),
(135, '1', 9, 22800),
(136, '2', 9, 25200),
(137, '3', 9, 27600),
(138, '4', 9, 32300),
(139, '5', 9, 37000),
(140, '6', 9, 44900),
(141, '7', 9, 56900),
(142, '8', 9, 60400),
(143, '9', 9, 67200),
(144, '10', 9, 71100),
(145, '11', 9, 85800),
(146, '12', 9, 99800),
(147, '13', 9, 155900),
(148, '13A', 9, 166100),
(149, '14', 9, 182700),
(150, '1', 10, 23500),
(151, '2', 10, 26000),
(152, '3', 10, 28400),
(153, '4', 10, 33300),
(154, '5', 10, 38100),
(155, '6', 10, 46200),
(156, '7', 10, 58600),
(157, '8', 10, 62200),
(158, '9', 10, 69200),
(159, '10', 10, 73200),
(160, '11', 10, 88400),
(161, '12', 10, 102800),
(162, '13', 10, 160600),
(163, '13A', 10, 171100),
(164, '14', 10, 188200),
(165, '1', 11, 24200),
(166, '2', 11, 26800),
(167, '3', 11, 29300),
(168, '4', 11, 34300),
(169, '5', 11, 39200),
(170, '6', 11, 47600),
(171, '7', 11, 60400),
(172, '8', 11, 64100),
(173, '9', 11, 71300),
(174, '10', 11, 75400),
(175, '11', 11, 91100),
(176, '12', 11, 105900),
(177, '13', 11, 165400),
(178, '13A', 11, 176200),
(179, '14', 11, 193800),
(180, '1', 12, 24900),
(181, '2', 12, 27600),
(182, '3', 12, 30200),
(183, '4', 12, 35300),
(184, '5', 12, 40400),
(185, '6', 12, 49000),
(186, '7', 12, 62200),
(187, '8', 12, 66000),
(188, '9', 12, 73400),
(189, '10', 12, 77700),
(190, '11', 12, 93800),
(191, '12', 12, 109100),
(192, '13', 12, 170400),
(193, '13A', 12, 181500),
(194, '14', 12, 199600),
(195, '1', 13, 25600),
(196, '2', 13, 28400),
(197, '3', 13, 31100),
(198, '4', 13, 36400),
(199, '5', 13, 41600),
(200, '6', 13, 50500),
(201, '7', 13, 64100),
(202, '8', 13, 68000),
(203, '9', 13, 75600),
(204, '10', 13, 80000),
(205, '11', 13, 96600),
(206, '12', 13, 112400),
(207, '13', 13, 175500),
(208, '13A', 13, 186900),
(209, '14', 13, 205600),
(210, '1', 14, 26400),
(211, '2', 14, 29300),
(212, '3', 14, 32000),
(213, '4', 14, 37500),
(214, '5', 14, 42800),
(215, '6', 14, 52000),
(216, '7', 14, 66000),
(217, '8', 14, 70000),
(218, '9', 14, 77900),
(219, '10', 14, 82400),
(220, '11', 14, 99500),
(221, '12', 14, 115800),
(222, '13', 14, 180800),
(223, '13A', 14, 192500),
(224, '14', 14, 211800),
(225, '1', 15, 27200),
(226, '2', 15, 30200),
(227, '3', 15, 33000),
(228, '4', 15, 38600),
(229, '5', 15, 44100),
(230, '6', 15, 53600),
(231, '7', 15, 68000),
(232, '8', 15, 72100),
(233, '9', 15, 80200),
(234, '10', 15, 84900),
(235, '11', 15, 102500),
(236, '12', 15, 119300),
(237, '13', 15, 186200),
(238, '13A', 15, 198300),
(239, '14', 15, 218200),
(240, '1', 16, 28000),
(241, '2', 16, 31100),
(242, '3', 16, 34000),
(243, '4', 16, 39800),
(244, '5', 16, 45400),
(245, '6', 16, 55200),
(246, '7', 16, 70000),
(247, '8', 16, 74300),
(248, '9', 16, 82600),
(249, '10', 16, 87400),
(250, '11', 16, 105600),
(251, '12', 16, 122900),
(252, '13', 16, 191800),
(253, '13A', 16, 204200),
(254, '1', 17, 28800),
(255, '2', 17, 32000),
(256, '3', 17, 35000),
(257, '4', 17, 41000),
(258, '5', 17, 46800),
(259, '6', 17, 56900),
(260, '7', 17, 72100),
(261, '8', 17, 76500),
(262, '9', 17, 85100),
(263, '10', 17, 90000),
(264, '11', 17, 108800),
(265, '12', 17, 126600),
(266, '13', 17, 197600),
(267, '13A', 17, 210300),
(268, '1', 18, 29700),
(269, '2', 18, 33000),
(270, '3', 18, 36100),
(271, '4', 18, 42200),
(272, '5', 18, 48200),
(273, '6', 18, 58600),
(274, '7', 18, 74300),
(275, '8', 18, 78800),
(276, '9', 18, 87700),
(277, '10', 18, 92700),
(278, '11', 18, 112100),
(279, '12', 18, 130400),
(280, '13', 18, 203500),
(281, '13A', 18, 216600),
(282, '1', 19, 30600),
(283, '2', 19, 34000),
(284, '3', 19, 37200),
(285, '4', 19, 43500),
(286, '5', 19, 49600),
(287, '6', 19, 60400),
(288, '7', 19, 76500),
(289, '8', 19, 81200),
(290, '9', 19, 90300),
(291, '10', 19, 95500),
(292, '11', 19, 115500),
(293, '12', 19, 134300),
(294, '13', 19, 209600),
(295, '1', 20, 31500),
(296, '2', 20, 35000),
(297, '3', 20, 38300),
(298, '4', 20, 44800),
(299, '5', 20, 51100),
(300, '6', 20, 62200),
(301, '7', 20, 78800),
(302, '8', 20, 83600),
(303, '9', 20, 93003),
(304, '10', 20, 98400),
(305, '11', 20, 119030),
(306, '12', 20, 138300),
(307, '13', 20, 215900),
(308, '1', 21, 32400),
(309, '2', 21, 36100),
(310, '3', 21, 39400),
(311, '4', 21, 46100),
(312, '5', 21, 52600),
(313, '6', 21, 64100),
(314, '7', 21, 81200),
(315, '8', 21, 86100),
(316, '9', 21, 95800),
(317, '10', 21, 101400),
(318, '11', 21, 122600),
(319, '12', 21, 142400),
(320, '1', 22, 33400),
(321, '2', 22, 37200),
(322, '3', 22, 40600),
(323, '4', 22, 47500),
(324, '5', 22, 54200),
(325, '6', 22, 66000),
(326, '7', 22, 83600),
(327, '8', 22, 88700),
(328, '9', 22, 98700),
(329, '10', 22, 104400),
(330, '11', 22, 126300),
(331, '12', 22, 146700),
(332, '1', 23, 34400),
(333, '2', 23, 38300),
(334, '3', 23, 41800),
(335, '4', 23, 48900),
(336, '5', 23, 55800),
(337, '6', 23, 68000),
(338, '7', 23, 86100),
(339, '8', 23, 91400),
(340, '9', 23, 101700),
(341, '10', 23, 107500),
(342, '11', 23, 130100),
(343, '12', 23, 151100),
(344, '1', 24, 35400),
(345, '2', 24, 39400),
(346, '3', 24, 43100),
(347, '4', 24, 50400),
(348, '5', 24, 57500),
(349, '6', 24, 70000),
(350, '7', 24, 88700),
(351, '8', 24, 94100),
(352, '9', 24, 104800),
(353, '10', 24, 110700),
(354, '11', 24, 134000),
(355, '12', 24, 155600),
(356, '1', 25, 36500),
(357, '2', 25, 40600),
(358, '3', 25, 44400),
(359, '4', 25, 51900),
(360, '5', 25, 59200),
(361, '6', 25, 72100),
(362, '7', 25, 91400),
(363, '8', 25, 96900),
(364, '9', 25, 107900),
(365, '10', 25, 114000),
(366, '11', 25, 138000),
(367, '12', 25, 160300),
(368, '1', 26, 37600),
(369, '2', 26, 41800),
(370, '3', 26, 45700),
(371, '4', 26, 53500),
(372, '5', 26, 61000),
(373, '6', 26, 74300),
(374, '7', 26, 94100),
(375, '8', 26, 99800),
(376, '9', 26, 111100),
(377, '10', 26, 117400),
(378, '11', 26, 142100),
(379, '12', 26, 165100),
(380, '1', 27, 38700),
(381, '2', 27, 43100),
(382, '3', 27, 47100),
(383, '4', 27, 55100),
(384, '5', 27, 62800),
(385, '6', 27, 76500),
(386, '7', 27, 96900),
(387, '8', 27, 102800),
(388, '9', 27, 114400),
(389, '10', 27, 120900),
(390, '11', 27, 146400),
(391, '12', 27, 170100),
(392, '1', 28, 39900),
(393, '2', 28, 44400),
(394, '3', 28, 48500),
(395, '4', 28, 56800),
(396, '5', 28, 64700),
(397, '6', 28, 78800),
(398, '7', 28, 99800),
(399, '8', 28, 105900),
(400, '9', 28, 117800),
(401, '10', 28, 124500),
(402, '11', 28, 150800),
(403, '12', 28, 175200),
(404, '1', 29, 41100),
(405, '2', 29, 45700),
(406, '3', 29, 50000),
(407, '4', 29, 58500),
(408, '5', 29, 66600),
(409, '6', 29, 81200),
(410, '7', 29, 102800),
(411, '8', 29, 109100),
(412, '9', 29, 121300),
(413, '10', 29, 128200),
(414, '11', 29, 155300),
(415, '12', 29, 180500),
(416, '1', 30, 42300),
(417, '2', 30, 47100),
(418, '3', 30, 51500),
(419, '4', 30, 60300),
(420, '5', 30, 68600),
(421, '6', 30, 83600),
(422, '7', 30, 105900),
(423, '8', 30, 112400),
(424, '9', 30, 124900),
(425, '10', 30, 132000),
(426, '11', 30, 160000),
(427, '12', 30, 185900),
(428, '1', 31, 43600),
(429, '2', 31, 48500),
(430, '3', 31, 53000),
(431, '4', 31, 62100),
(432, '5', 31, 70700),
(433, '6', 31, 86100),
(434, '7', 31, 109100),
(435, '8', 31, 115800),
(436, '9', 31, 128600),
(437, '10', 31, 1360000),
(438, '11', 31, 164800),
(439, '12', 31, 191500),
(440, '1', 32, 44900),
(441, '2', 32, 50000),
(442, '3', 32, 54600),
(443, '4', 32, 64000),
(444, '5', 32, 72800),
(445, '6', 32, 88700),
(446, '7', 32, 112400),
(447, '8', 32, 119300),
(448, '9', 32, 132500),
(449, '10', 32, 140100),
(450, '11', 32, 169700),
(451, '12', 32, 197200),
(452, '1', 33, 46200),
(453, '2', 33, 51500),
(454, '3', 33, 56200),
(455, '4', 33, 65900),
(456, '5', 33, 75000),
(457, '6', 33, 91400),
(458, '7', 33, 115800),
(459, '8', 33, 122900),
(460, '9', 33, 136500),
(461, '10', 33, 144300),
(462, '11', 33, 174800),
(463, '12', 33, 203100),
(464, '1', 34, 47600),
(465, '2', 34, 53000),
(466, '3', 34, 57900),
(467, '4', 34, 67900),
(468, '5', 34, 77300),
(469, '6', 34, 94100),
(470, '7', 34, 119300),
(471, '8', 34, 126600),
(472, '9', 34, 140600),
(473, '10', 34, 148600),
(474, '11', 34, 180000),
(475, '12', 34, 209200),
(476, '1', 35, 49000),
(477, '2', 35, 54600),
(478, '3', 35, 59600),
(479, '4', 35, 69900),
(480, '5', 35, 79600),
(481, '6', 35, 96900),
(482, '7', 35, 122900),
(483, '8', 35, 130400),
(484, '9', 35, 144800),
(485, '10', 35, 153100),
(486, '11', 35, 185400),
(487, '1', 36, 50500),
(488, '2', 36, 56200),
(489, '3', 36, 61400),
(490, '4', 36, 72000),
(491, '5', 36, 82000),
(492, '6', 36, 99800),
(493, '7', 36, 126600),
(494, '8', 36, 134300),
(495, '9', 36, 149100),
(496, '10', 36, 157700),
(497, '11', 36, 191000),
(498, '1', 37, 52000),
(499, '2', 37, 57900),
(500, '3', 37, 63200),
(501, '4', 37, 74200),
(502, '5', 37, 84500),
(503, '6', 37, 102800),
(504, '7', 37, 130400),
(505, '8', 37, 138300),
(506, '9', 37, 153600),
(507, '10', 37, 162100),
(508, '11', 37, 196700),
(509, '1', 38, 53600),
(510, '2', 38, 59600),
(511, '3', 38, 65100),
(512, '4', 38, 76400),
(513, '5', 38, 87000),
(514, '6', 38, 105900),
(515, '7', 38, 134300),
(516, '8', 38, 142400),
(517, '9', 38, 158200),
(518, '10', 38, 167300),
(519, '11', 38, 202600),
(520, '1', 39, 55200),
(521, '2', 39, 61400),
(522, '3', 39, 67100),
(523, '4', 39, 78700),
(524, '5', 39, 89600),
(525, '6', 39, 109100),
(526, '7', 39, 138300),
(527, '8', 39, 146700),
(528, '9', 39, 162900),
(529, '10', 39, 172300),
(530, '11', 39, 208700),
(531, '1', 40, 56900),
(532, '2', 40, 63200),
(533, '3', 40, 69100),
(534, '4', 40, 81100),
(535, '5', 40, 92300),
(536, '6', 40, 112400),
(537, '7', 40, 142400),
(538, '8', 40, 151100),
(539, '9', 40, 167800),
(540, '10', 40, 177500);

-- --------------------------------------------------------

--
-- Table structure for table `shift_master`
--

CREATE TABLE `shift_master` (
  `ID` int(11) NOT NULL,
  `SHIFT_NAME` varchar(255) DEFAULT NULL,
  `SHORT_NAME` varchar(20) DEFAULT NULL,
  `START_TIME` time DEFAULT NULL,
  `STOP_TIME` time DEFAULT NULL,
  `SHIFT_DURATION` time DEFAULT NULL,
  `RECESS_DURATION` time DEFAULT NULL,
  `MIN_HRS_HALF` time DEFAULT NULL,
  `MIN_HRS_FULL` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift_master`
--

INSERT INTO `shift_master` (`ID`, `SHIFT_NAME`, `SHORT_NAME`, `START_TIME`, `STOP_TIME`, `SHIFT_DURATION`, `RECESS_DURATION`, `MIN_HRS_HALF`, `MIN_HRS_FULL`) VALUES
(1, 'DAY SHIFT', 'DSY', '09:00:00', '19:00:00', '10:00:00', '00:45:00', '04:00:00', '08:00:00'),
(2, 'Half Day Shift', 'HDS', '13:00:00', '17:00:00', '04:00:00', '00:55:00', '02:00:00', '03:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `short_recoverd_payment`
--

CREATE TABLE `short_recoverd_payment` (
  `id` int(50) NOT NULL,
  `RECT_NO` varchar(255) NOT NULL,
  `RECT_DATE` date DEFAULT NULL,
  `STU_NAME` varchar(255) DEFAULT NULL,
  `STUDENTID` varchar(50) DEFAULT NULL,
  `ADM_NO` varchar(50) DEFAULT NULL,
  `CLASS` varchar(25) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `User_Id` varchar(50) DEFAULT NULL,
  `GROSS_AMOUNT` double DEFAULT NULL,
  `PAID_AMOUNT` double DEFAULT NULL,
  `SHORT_AMOUNT` double DEFAULT NULL,
  `Recovered_Short_Amt` double DEFAULT NULL,
  `applicable` int(11) NOT NULL DEFAULT 1,
  `updated_by` varchar(100) NOT NULL,
  `updated_on` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signature`
--

CREATE TABLE `signature` (
  `SL_NO` mediumtext DEFAULT NULL,
  `SIGNATURE` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signature`
--

INSERT INTO `signature` (`SL_NO`, `SIGNATURE`) VALUES
('1', 'SIGNATURE OF PARENT'),
('2', 'SIGNATURE OF CLASS TEACHER'),
('3', 'SIGNATURE OF PRINCIPAL'),
('4', '-');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`) VALUES
(1, 'Andaman and Nicobar Islands'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli'),
(9, 'Daman and Diu'),
(10, 'Delhi'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Karnataka'),
(17, 'Kerala'),
(18, 'Lakshadweep'),
(19, 'Madhya Pradesh'),
(20, 'Maharashtra'),
(21, 'Manipur'),
(22, 'Meghalaya'),
(23, 'Mizoram'),
(24, 'Nagaland'),
(25, 'Orissa'),
(26, 'Pondicherry'),
(27, 'Punjab'),
(28, 'Rajasthan'),
(29, 'Sikkim'),
(30, 'Tamil Nadu'),
(31, 'Tripura'),
(32, 'Uttaranchal'),
(33, 'Uttar Pradesh'),
(34, 'West Bengal'),
(35, 'JHARKHAND');

-- --------------------------------------------------------

--
-- Table structure for table `stoppage`
--

CREATE TABLE `stoppage` (
  `STOPPAGE` varchar(75) DEFAULT NULL,
  `STOPNO` double NOT NULL,
  `BUS_NO` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stoppage`
--

INSERT INTO `stoppage` (`STOPPAGE`, `STOPNO`, `BUS_NO`) VALUES
('NONE', 1, '.'),
(' MAGISTRATE COLONY', 2, '-'),
(' KUSAI', 3, '-'),
('KADRU', 12, '-'),
(' KRISHNAPURI-1', 4, '-'),
(' KRISHNAPURI-2', 5, '-'),
(' KRISHNAPURI-3', 6, '-'),
(' KRISHNAPURI-4', 7, ''),
(' KRISHNAPURI-5', 8, '-'),
(' KRISHNAPURI-10', 10, ''),
(' AMRAVATI', 11, ''),
(' KRISHNAPURI-6', 9, ''),
('DORANDA', 13, '-'),
('PATEL CHOWK', 14, '-');

-- --------------------------------------------------------

--
-- Table structure for table `stop_amt`
--

CREATE TABLE `stop_amt` (
  `STOP_NO` double NOT NULL,
  `FROMDATE` timestamp NULL DEFAULT NULL,
  `AMT` double DEFAULT NULL,
  `APR_FEE` int(11) NOT NULL DEFAULT 0,
  `MAY_FEE` int(11) NOT NULL DEFAULT 0,
  `JUN_FEE` int(11) NOT NULL DEFAULT 0,
  `JUL_FEE` int(11) NOT NULL DEFAULT 0,
  `AUG_FEE` int(11) NOT NULL DEFAULT 0,
  `SEP_FEE` int(11) NOT NULL DEFAULT 0,
  `OCT_FEE` int(11) NOT NULL DEFAULT 0,
  `NOV_FEE` int(11) NOT NULL DEFAULT 0,
  `DEC_FEE` int(11) NOT NULL DEFAULT 0,
  `JAN_FEE` int(11) NOT NULL DEFAULT 0,
  `FEB_FEE` int(11) NOT NULL DEFAULT 0,
  `MAR_FEE` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stop_amt`
--

INSERT INTO `stop_amt` (`STOP_NO`, `FROMDATE`, `AMT`, `APR_FEE`, `MAY_FEE`, `JUN_FEE`, `JUL_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`) VALUES
(12, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(11, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(10, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(9, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(1, '2023-03-31 18:30:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(3, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(4, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(5, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(6, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(7, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(8, '2023-03-31 18:30:00', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(13, NULL, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500),
(14, '2024-04-01 05:12:26', 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENTID` varchar(50) DEFAULT NULL,
  `ADM_DATE` date DEFAULT NULL,
  `adm_no` varchar(10) NOT NULL,
  `BIRTH_DT` date DEFAULT NULL,
  `TITLE_NM` varchar(50) DEFAULT NULL,
  `FIRST_NM` varchar(50) DEFAULT NULL,
  `MIDDLE_NM` varchar(50) DEFAULT NULL,
  `BLOOD_GRP` varchar(25) DEFAULT NULL,
  `CATEGORY` smallint(6) DEFAULT NULL,
  `SEX` smallint(6) DEFAULT NULL,
  `NATION` varchar(25) DEFAULT NULL,
  `EMP_WARD` varchar(255) DEFAULT NULL,
  `EMPID` varchar(25) DEFAULT NULL,
  `FATHER_NM` varchar(50) DEFAULT NULL,
  `MOTHER_NM` varchar(50) DEFAULT NULL,
  `LAST_SCH` varchar(50) DEFAULT NULL,
  `LSCH_ADD` varchar(150) DEFAULT NULL,
  `ADM_CLASS` smallint(6) DEFAULT NULL,
  `ADM_SEC` smallint(6) DEFAULT NULL,
  `SIB_NO` smallint(6) DEFAULT NULL,
  `PERM_ADD` varchar(150) DEFAULT NULL,
  `P_CITY` varchar(50) DEFAULT NULL,
  `P_STATE` varchar(50) DEFAULT NULL,
  `P_NATION` varchar(50) DEFAULT NULL,
  `P_PIN` varchar(50) DEFAULT NULL,
  `P_PHONE1` varchar(50) DEFAULT NULL,
  `P_PHONE2` varchar(50) DEFAULT NULL,
  `P_FAXNO` varchar(50) DEFAULT NULL,
  `P_MOBILE` varchar(50) DEFAULT NULL,
  `P_EMAIL` varchar(50) DEFAULT NULL,
  `CORR_ADD` varchar(150) DEFAULT NULL,
  `C_CITY` varchar(50) DEFAULT NULL,
  `C_STATE` varchar(50) DEFAULT NULL,
  `C_NATION` varchar(50) DEFAULT NULL,
  `C_PIN` varchar(50) DEFAULT NULL,
  `C_PHONE1` varchar(50) DEFAULT NULL,
  `C_PHONE2` varchar(50) DEFAULT NULL,
  `C_FAXNO` varchar(50) DEFAULT NULL,
  `C_MOBILE` varchar(50) DEFAULT NULL,
  `C_EMAIL` varchar(50) DEFAULT NULL,
  `HOUSE_CODE` smallint(6) DEFAULT NULL,
  `CLASS` smallint(6) DEFAULT NULL,
  `DISP_CLASS` varchar(25) DEFAULT NULL,
  `SEC` smallint(6) DEFAULT NULL,
  `DISP_SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` smallint(6) DEFAULT NULL,
  `BUS_NO` varchar(35) DEFAULT NULL,
  `STOPNO` smallint(6) DEFAULT NULL,
  `FREESHIP` tinyint(1) DEFAULT NULL,
  `SCHOLAR` tinyint(1) DEFAULT NULL,
  `LETTERNO` varchar(50) DEFAULT NULL,
  `LIB_FLAG` varchar(50) DEFAULT NULL,
  `ACT_FLAG` varchar(50) DEFAULT NULL,
  `TC_ISSUED` tinyint(1) DEFAULT NULL,
  `COMPUTER` tinyint(1) DEFAULT NULL,
  `HOSTEL` tinyint(1) DEFAULT NULL,
  `TC_NUMBER` varchar(50) DEFAULT NULL,
  `PAID_UPTO` smallint(6) DEFAULT NULL,
  `SESSIONID` varchar(50) DEFAULT NULL,
  `APR_FEE` varchar(50) DEFAULT NULL,
  `MAY_FEE` varchar(50) DEFAULT NULL,
  `JUNE_FEE` varchar(50) DEFAULT NULL,
  `JULY_FEE` varchar(50) DEFAULT NULL,
  `AUG_FEE` varchar(50) DEFAULT NULL,
  `SEP_FEE` varchar(50) DEFAULT NULL,
  `OCT_FEE` varchar(50) DEFAULT NULL,
  `NOV_FEE` varchar(50) DEFAULT NULL,
  `DEC_FEE` varchar(50) DEFAULT NULL,
  `JAN_FEE` varchar(50) DEFAULT NULL,
  `FEB_FEE` varchar(50) DEFAULT NULL,
  `MAR_FEE` varchar(50) DEFAULT NULL,
  `CBSE_REG` varchar(50) DEFAULT NULL,
  `CBSE_ROLL` varchar(50) DEFAULT NULL,
  `SUBJECT1` varchar(50) DEFAULT NULL,
  `SUBJECT2` varchar(50) DEFAULT NULL,
  `SUBJECT3` varchar(50) DEFAULT NULL,
  `SUBJECT4` varchar(50) DEFAULT NULL,
  `SUBJECT5` varchar(50) DEFAULT NULL,
  `SUBJECT6` varchar(50) DEFAULT NULL,
  `WORK_DAYS` smallint(6) DEFAULT NULL,
  `APR_ATT` smallint(6) DEFAULT NULL,
  `MAY_ATT` smallint(6) DEFAULT NULL,
  `JUNE_ATT` smallint(6) DEFAULT NULL,
  `JULY_ATT` smallint(6) DEFAULT NULL,
  `AUG_ATT` smallint(6) DEFAULT NULL,
  `SEP_ATT` smallint(6) DEFAULT NULL,
  `OCT_ATT` smallint(6) DEFAULT NULL,
  `NOV_ATT` smallint(6) DEFAULT NULL,
  `DEC_ATT` smallint(6) DEFAULT NULL,
  `JAN_ATT` smallint(6) DEFAULT NULL,
  `FEB_ATT` smallint(6) DEFAULT NULL,
  `MAR_ATT` smallint(6) DEFAULT NULL,
  `UPD_DATE` datetime DEFAULT NULL,
  `oldadmno` varchar(50) DEFAULT NULL,
  `religion` smallint(6) DEFAULT NULL,
  `math_lab` tinyint(1) DEFAULT NULL,
  `busno1` smallint(6) DEFAULT NULL,
  `BFEE` varchar(50) DEFAULT NULL,
  `BFEEType` tinyint(1) DEFAULT NULL,
  `HFEE` varchar(50) DEFAULT NULL,
  `Mag` tinyint(1) DEFAULT NULL,
  `Fee_Book_No` int(11) DEFAULT 0,
  `Bus_Book_No` varchar(100) DEFAULT NULL,
  `Student_Status` varchar(50) DEFAULT NULL,
  `RemID` int(11) NOT NULL DEFAULT 0,
  `VL` varchar(50) NOT NULL DEFAULT 'N/A',
  `VR` varchar(50) NOT NULL DEFAULT 'N/A',
  `DEN` varchar(50) NOT NULL DEFAULT 'N/A',
  `Height` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `Password` varchar(255) NOT NULL DEFAULT 'bachpan@2019',
  `student_image` varchar(500) NOT NULL,
  `Parent_password` varchar(500) NOT NULL DEFAULT 'bachpan@2019',
  `route_id` int(11) NOT NULL DEFAULT 0,
  `student_transport_facility_id` int(11) NOT NULL DEFAULT 0,
  `mid_session_admisson_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '	0=ADMISSION IN APR,1=ADMISSION IN MID SESSION',
  `Admission_month` varchar(50) NOT NULL DEFAULT '1',
  `mid_session_payment_status` varchar(50) NOT NULL DEFAULT 'N/A',
  `Counter_payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `Login_Id` varchar(255) NOT NULL DEFAULT 'N/A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENTID`, `ADM_DATE`, `adm_no`, `BIRTH_DT`, `TITLE_NM`, `FIRST_NM`, `MIDDLE_NM`, `BLOOD_GRP`, `CATEGORY`, `SEX`, `NATION`, `EMP_WARD`, `EMPID`, `FATHER_NM`, `MOTHER_NM`, `LAST_SCH`, `LSCH_ADD`, `ADM_CLASS`, `ADM_SEC`, `SIB_NO`, `PERM_ADD`, `P_CITY`, `P_STATE`, `P_NATION`, `P_PIN`, `P_PHONE1`, `P_PHONE2`, `P_FAXNO`, `P_MOBILE`, `P_EMAIL`, `CORR_ADD`, `C_CITY`, `C_STATE`, `C_NATION`, `C_PIN`, `C_PHONE1`, `C_PHONE2`, `C_FAXNO`, `C_MOBILE`, `C_EMAIL`, `HOUSE_CODE`, `CLASS`, `DISP_CLASS`, `SEC`, `DISP_SEC`, `ROLL_NO`, `BUS_NO`, `STOPNO`, `FREESHIP`, `SCHOLAR`, `LETTERNO`, `LIB_FLAG`, `ACT_FLAG`, `TC_ISSUED`, `COMPUTER`, `HOSTEL`, `TC_NUMBER`, `PAID_UPTO`, `SESSIONID`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CBSE_REG`, `CBSE_ROLL`, `SUBJECT1`, `SUBJECT2`, `SUBJECT3`, `SUBJECT4`, `SUBJECT5`, `SUBJECT6`, `WORK_DAYS`, `APR_ATT`, `MAY_ATT`, `JUNE_ATT`, `JULY_ATT`, `AUG_ATT`, `SEP_ATT`, `OCT_ATT`, `NOV_ATT`, `DEC_ATT`, `JAN_ATT`, `FEB_ATT`, `MAR_ATT`, `UPD_DATE`, `oldadmno`, `religion`, `math_lab`, `busno1`, `BFEE`, `BFEEType`, `HFEE`, `Mag`, `Fee_Book_No`, `Bus_Book_No`, `Student_Status`, `RemID`, `VL`, `VR`, `DEN`, `Height`, `Weight`, `Password`, `student_image`, `Parent_password`, `route_id`, `student_transport_facility_id`, `mid_session_admisson_status`, `Admission_month`, `mid_session_payment_status`, `Counter_payment_status`, `Login_Id`) VALUES
('A14254', '2023-01-16', '216738', '2020-08-25', NULL, 'SHASHI PANDEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'NIRAJ KUMAR PANDEY', 'PRACHI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '8789192091', '', 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7004253628', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'A000067', 'A000067', 'A000067', 'A000113', 'A000141', 'A000142', 'A000142', 'A000143', 'A000144', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216738', 0, 0, 0, '1', 'N/A', 0, 'N/A'),
('A14255', '2023-02-27', '216757', '2020-10-01', NULL, 'ANAY RAJ', NULL, 'O+', 4, 1, 'INDIA', '1', NULL, 'SHAMBHU KUMAR', 'ARADHANA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8434010794', '', 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9546519667', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216757', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14256', '2023-04-20', '314802', '2021-01-17', NULL, 'AYANSH DUBEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ADITYA RAJ DUBEY', 'GITA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'H. NO- 188 AMRAVATI CHUTIA RAILWAY COLONY KALI MANDIR RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6299732886', '', 'H. NO- 188 AMRAVATI CHUTIA RAILWAY COLONY KALI MANDIR RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8271363734', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314802', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14257', '2022-10-10', '206276', '2021-05-16', NULL, 'RIDDHI ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SNEH NAMAN', 'APURVA GAUTAM', 'N/A', 'N/A', 1, 1, NULL, '', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8294779497', '', 'ANANTPUR, OM SAI APARTMENT ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6203572802', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206276', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14258', '2023-04-20', '314809', '2020-10-21', NULL, 'AASHWI MISHRA', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SIDDHARTH MISHRA', 'PRERITA VARDHAN', 'N/A', 'N/A', 1, 1, NULL, '43 , VIKAS NAGAR , ROAD NO. 1 , SINGH MORE ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9431749396', '', '43 , VIKAS NAGAR , ROAD NO. 1 , SINGH MORE ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7549088080', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314809', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14259', '2023-02-03', '216740', '2020-08-01', NULL, 'BHAVYANSH PODDAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ASHISH PODDAR', 'JAGRITI PODDAR', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 404 ,SHEETAL COMPLEX NIVARANPUR ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903142939', '', 'FLAT NO - 404 ,SHEETAL COMPLEX NIVARANPUR ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7033018557', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216740', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14260', '2022-08-05', '206271', '2020-07-27', NULL, 'JAYDEN MIGUEL', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'JESSE ARPAN HANS', 'MARIAM HANNA HEMROM', 'N/A', 'N/A', 1, 1, NULL, 'NEW GARDEN SIROMTOLI CLUB ROAD RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7631113465', '', 'NEW GARDEN SIROMTOLI CLUB ROAD RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7549101012', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206271', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14261', '2023-03-27', '216759', '2020-02-06', NULL, 'HREYAANSH RAJYAVARDHAN', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RISHI ROSHAN', 'MAHARANI KUNWAR', 'N/A', 'N/A', 1, 1, NULL, 'BAJRANG BHAVAN ,TRIPATHY COLONY , 48 DIVERSION ROAD , NEAR YUVRAJ PLACE ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7277001616', '', 'BAJRANG BHAVAN ,TRIPATHY COLONY , 48 DIVERSION ROAD , NEAR YUVRAJ PLACE ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9470978077', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000003,A000064', 'A000064', 'A000065', 'A000066', 'A000096', 'A000116', 'A000126,A000145', 'A000145', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', 'assets/student_photo/A14261.jpg', '216759', 0, 0, 0, '4', 'N/A', 0, 'N/A'),
('A14262', '2023-02-27', '216758', '2020-02-22', NULL, 'SHAURYA KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ANITOSH KUMAR', 'SIKHA SINHA ', 'N/A', 'N/A', 1, 1, NULL, 'ROAD NO - 3 CHUTIA RANCHI KRISHNAPURI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '903176602', '', 'ROAD NO - 3 CHUTIA RANCHI KRISHNAPURI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004320860', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216758', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14263', '2022-09-08', '216734', '2020-09-27', NULL, 'RIYANSH RAJ', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'RAVI SHANKAR KUMAR ', 'ANISHA BHARTI', 'N/A', 'N/A', 1, 1, NULL, 'QUATER NO - 95 KUSHAI COLONY DORANDA', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9835680277', '', 'QUATER NO - 95 KUSHAI COLONY DORANDA', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '6204040567', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 3, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000005,A000022', 'A000040', 'A000041', 'A000071', 'A000090', 'A000109', 'A000135', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216734', 0, 0, 0, '9', 'N/A', 0, 'N/A'),
('A14264', '2022-07-18', '206274', '2019-01-18', NULL, 'ETHAN SHALEEN', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'PAWAN HEMROM', 'VENUS BHENGRA', 'N/A', 'N/A', 1, 1, NULL, 'SOUTH RAILWAY COLONY RANCHI QTR NO. - TY/8A , P.O - CHUTIA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9955612990', '', 'SOUTH RAILWAY COLONY RANCHI QTR NO. - TY/8A , P.O - CHUTIA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9955612990', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206274', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14265', '2022-11-16', '216733', '2020-11-24', NULL, 'DEVESHI SHARMA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'RAHUL KUMAR', 'JYOTI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'FLAT A, BLOCK B ,SATYABHAMA GRAND KUSAI ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9471353191', '', 'FLAT A, BLOCK B ,SATYABHAMA GRAND KUSAI ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7250822801', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216733', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14266', '2022-07-06', '206279', '2020-10-26', NULL, 'AYAAN SHARMA', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'ARVIND KUMAR', 'SWATI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'RAM NAGAR COLONY CHUTIA POWER HOUSE RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835685082', '', 'RAM NAGAR COLONY CHUTIA POWER HOUSE RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7979767607', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000019', 'A000019', 'A000019', 'A000019', 'A000019', 'A000019', 'A000127', 'A000127', 'A000127', 'A000128', 'A000128', 'A000128', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206279', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14267', '2023-02-22', '216755', '2020-12-03', NULL, 'IRA BHARDWAJ', NULL, 'B+', 4, 2, 'INDIA', '1', NULL, 'SONU KUMAR PRASAD ', 'KHUSHBU', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 4 NEAR POST OFFICE CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6203554583', '', 'KRISHNAPURI ROAD NO. 4 NEAR POST OFFICE CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7979017634', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216755', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14268', '2023-03-10', '121676010', '2023-03-06', NULL, 'AADITRI JHA', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'ROSHAN KUMAR ', 'SHWETA KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'ROAD NO - 3 KRISHNAPURI , CHUTIA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7295962198', '', 'ROAD NO - 3 KRISHNAPURI , CHUTIA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '8521412442', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 8, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000004,A000013', 'A000028', 'A000044', 'A000068', 'A000088', 'A000112', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '121676010', 0, 0, 0, '3', 'N/A', 0, 'N/A'),
('A14269', '2023-01-16', '216751', '2019-10-09', NULL, 'GUNGUN KUMARI TURI', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'BABLOO TURI', 'KHUSHBU KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'AT - HARIJAN DADA , GAUSHALA ROAD DUDHANI , NAG MANDIR PO- DUMKA ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9798816485', '', 'AT - HARIJAN DADA , GAUSHALA ROAD DUDHANI , NAG MANDIR PO- DUMKA ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '8757748264', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000018,A000055', 'A000055', 'A000055', 'A000055', 'A000099', 'A000117', 'A000129', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216751', 0, 0, 0, '1', 'N/A', 0, 'N/A'),
('A14270', '2023-02-03', '216754', '2019-10-15', NULL, 'AAYUSHI JHA ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ASHISH KUMAR ', 'RAKHI ', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI , CHUTIA ROAD NO- 1 ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '6299965295', '', 'KRISHNAPURI , CHUTIA ROAD NO- 1 ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9386624585', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000059', 'A000059', 'A000084', 'A000084', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216754', 0, 0, 0, '2', 'N/A', 0, 'N/A'),
('A14271', '2022-07-05', '183890', '2019-03-03', NULL, 'ARHAM SIDDIQUE', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'MOHAMMAD ZAUQUE SIDDIQUE ', 'AMRIN KHANAM', 'N/A', 'N/A', 1, 1, NULL, 'CENTRAL STREET SAMRAT COMPLEX MAIN ROAD', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9570208238', '', 'CENTRAL STREET SAMRAT COMPLEX MAIN ROAD', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7631794370', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183890', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14272', '2022-08-11', '216731', '2019-12-10', NULL, 'AAVYA MAHESWARI', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SURESH SABOO', 'NAJUK SABOO', 'N/A', 'N/A', 1, 1, NULL, 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7903634316', '', 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9334424621', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216731', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14273', '2022-07-04', '183884', '2019-06-19', NULL, 'ADARSH KUMAR SINGH', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SHASHI RANJAN KUMAR SINGH', 'DIPTI SINGH', 'N/A', 'N/A', 1, 1, NULL, 'H.NO - 252 RUPA SADAN A.N SINGH ROAD KUSIA COLONY DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9955773951', '', 'H.NO - 252 RUPA SADAN A.N SINGH ROAD KUSIA COLONY DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9110939277', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 3, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183884', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14274', '2023-03-20', '314801', '2019-08-07', NULL, 'ANVIE ', NULL, 'O+', 4, 1, 'INDIA', '1', NULL, 'AJIT KUMAR JHA ', 'SWETA SHARMA', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 1B , A BLOCK , OAK RESIDENCY ,CLUB ROAD RNCHI ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9850270116', '', 'FLAT NO - 1B , A BLOCK , OAK RESIDENCY ,CLUB ROAD RNCHI ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '8789500686', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314801', 0, 0, 0, '4', 'N/A', 0, 'N/A'),
('A14275', '2022-07-04', '183888', '2019-05-11', NULL, 'MELWIN EVAAN LAKRA', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'ROBIN LAKRA ', 'VICTORIA EKKA', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 5 CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6260366891', '', 'KRISHNAPURI ROAD NO. 5 CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8224001002', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 10, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183888', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14276', '2022-07-04', '183886', '2019-05-25', NULL, 'ADHRAV RANJAN', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'NAVIN RANJAN', 'PRIYA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'PANCHWATI ,NIVARANPUR RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8340241552', '', 'PANCHWATI ,NIVARANPUR RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835900581', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183886', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14277', '2022-07-06', '206278', '2019-09-30', NULL, 'RUDRANSHU GOHEL', NULL, 'NONE', 4, 1, 'INDIA', '3', NULL, 'HERIK RAJNIKANI GOHEL', 'MADHU KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 203 SHEETAL APARTMENT NIWARANPUR , RANCHI NEAR RAVI STORE', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7004660546', '', 'FLAT NO - 203 SHEETAL APARTMENT NIWARANPUR , RANCHI NEAR RAVI STORE', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9664988743', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000009,A000031', 'A000031', 'A000043', 'A000062', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206278', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14278', '2022-06-04', '206277', '2019-10-15', NULL, 'AYANSH RAJ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SAROJ RAJAN', 'VARSHA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'RD NO - 10 , KRISHNAPURI CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8050681719', '', 'RD NO - 10 , KRISHNAPURI CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835707415', '', 1, 4, 'Prep', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206277', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14279', '2022-11-19', '216732', '2018-12-20', NULL, 'SHIVANSH RAJ', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'SP RANJAN', 'SP RANJAN', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 7 NEAR COLD STORAGE CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '', '', 'KRISHNAPURI ROAD NO. 7 NEAR COLD STORAGE CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7488886236', '', 1, 4, 'Prep', 1, 'A', 0, '0', 10, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000026', 'A000058', 'A000058', 'A000072', 'A000072', 'A000072', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216732', 0, 0, 0, '11', 'N/A', 0, 'N/A'),
('A14280', '2022-06-12', '183882', '2019-10-05', NULL, 'ALWIN LAKRA', NULL, 'NONE', 1, 2, 'INDIA', '1', NULL, 'SUBHASHISH LAKRA', 'SWETA KULLU', 'N/A', 'N/A', 1, 1, NULL, 'KADRU SRNA TOLI , RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903336486', '', 'KADRU SRNA TOLI , RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903692051', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183882', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14281', '2022-07-04', '183889', '2019-09-27', NULL, 'RIYANSHI TOPPO', NULL, 'NONE', 1, 2, 'INDIA', '1', NULL, 'RAMU ORAON ', 'NEELAM KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'FOREST COLONY QTR-NO - C- 45 DORANDA RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '', '', 'FOREST COLONY QTR-NO - C- 45 DORANDA RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7541825398', '', 1, 4, 'Prep', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 7, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183889', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14282', '2023-04-04', '314805', '2019-08-06', NULL, 'HARSHIT CHAUDHARY', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'SANJAY KUMAR CHAUDHARY', 'ANJALI DEVI', 'N/A', 'N/A', 4, 1, NULL, 'Q.NO - P 35 , FORSET COLONY DORANDA RANCHI ', 'RANCHI', 'Jharkhand', '', '', '', '', '', '8294349102', '', 'Q.NO - P 35 , FORSET COLONY DORANDA RANCHI ', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9471388002', '', 1, 4, 'Prep', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314805', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14283', '2022-05-02', '183887', '2018-07-15', NULL, 'ADITYA VISHWAKARMA', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'VIVEK VISHWAKARMA ', 'NISHA VISHWAKARMA', 'N/A', 'N/A', 1, 1, NULL, 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8319104601', '', 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8709612447', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183887', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14284', '2022-11-16', '216737', '2019-03-09', NULL, 'SHOURYA ABHINANDAN PANDEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAJ KUMAR PANDEY', 'PRIYANKA PANDEY', 'N/A', 'N/A', 1, 1, NULL, 'C/O C.S DUBEY PANCHWATI CHOWK , RAILWAY COLONY ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7903944075', '', 'C/O C.S DUBEY PANCHWATI CHOWK , RAILWAY COLONY ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7319660035', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216737', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14285', '2023-06-21', '314807', '2020-06-29', NULL, 'SHREYANSH RANJAN', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAVI RANJAN DUBEY', 'NAMARATA DUBEY', 'N/A', 'N/A', 1, 1, NULL, '9/C ASHOK NAGAR ,ROAD NO -1 ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', '', '', '', '', '', '8709559009', '', '9/C ASHOK NAGAR ,ROAD NO -1 ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', '', '', '', '', '', '9608557337', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000001,A000024', 'A000030', 'A000042', 'A000076', 'A000103', 'A000105', 'A000132', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314807', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14254', '2023-01-16', '216738D', '2020-08-25', NULL, 'DUMMY', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'NIRAJ KUMAR PANDEY', 'PRACHI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789192091', '', 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004253628', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216738', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14287', '2023-07-18', '314810', '2019-04-29', NULL, 'AAROHI ARYA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SUBODH KUMAR TIWARI', 'RITU KUMARI', 'N/A', 'N/A', 3, 1, NULL, 'OLD AG COLONY, BEHIND HYUNDAI SHOWROOM,KADRU RANCHI ', 'RANCHI ', 'Jharkhand', 'India', '834002', '', '', '', '9905793990', '', 'OLD AG COLONY, BEHIND HYUNDAI SHOWROOM,KADRU RANCHI ', 'RANCHI ', 'Jharkhand', 'India', '834002', '', '', '', '7755911622', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 12, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314810', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14288', '2023-07-24', '319012', '2020-12-12', NULL, 'REEVA VIJAY', NULL, 'B+', 3, 0, 'INDIA', '3', NULL, 'VIVEK VIJAY', 'SONAM VIJAY ', 'N/A', 'N/A', 1, 1, NULL, 'MISTRI MOHALLA , DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7903541900', '', 'MISTRI MOHALLA , DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7903519203', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000014,A000033', 'A000033', 'A000047', 'A000075', 'A000091', 'A000146', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319012', 0, 0, 0, '8', 'N/A', 0, 'N/A'),
('A14289', '2023-07-04', '314806', '2019-07-25', NULL, 'AARUSH KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '3', NULL, 'CHANDAN KUMAR', 'MANITA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'NEW AMRAWATI COLONY, RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7667734768', '', 'NEW AMRAWATI COLONY, RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7757808230', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000023,A000036', 'A000036', 'A000054', 'A000083', 'A000098', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314806', 0, 0, 0, '7', 'N/A', 0, 'N/A'),
('A14290', '2023-08-01', '319020', '2020-10-18', NULL, 'RIYANSH BOSE', NULL, 'B+', 4, 1, 'INDIA', '3', NULL, 'MALAY BOSE ', 'ANIMA KUMARI ', 'N/A', 'N/A', 1, 1, NULL, '19, NIWARANPUR ,DORANDA RANCHI -834002', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7870537081', '', '19, NIWARANPUR ,DORANDA RANCHI -834002', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7209228266', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000010,A000039', 'A000039', 'A000057', 'A000074', 'A000085', 'A000110', 'A000134', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319020', 0, 0, 0, '9', 'N/A', 0, 'N/A'),
('A14301', '2024-06-18', '14301', '2022-01-23', NULL, 'UTKARSH KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'MANOJEET DAS', 'RAJSHREE PALIT', 'N/A', 'N/A', 1, 1, NULL, 'S/10 MANIKCHANDRA DAS, 86,AMRAWATI COLONY NEAR SOUTH RAILWAY COLONY RANCHI', 'RANCHI', 'Jharkhand', 'India', '834002', '950403931', '', '', '7209403931', '', 'S/10 MANIKCHANDRA DAS, 86,AMRAWATI COLONY NEAR SOUTH RAILWAY COLONY RANCHI', 'RANCHI', 'Jharkhand', 'India', '834002', '7631006125', '', '', '7766905993', 'manojeetrnc@gmail.com', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2024', 'NOT ADMITTED', 'NOT ADMITTED', 'A000056', 'A000063', 'A000095', 'A000115', 'A000123', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 7, 0, NULL, NULL, NULL, NULL, NULL, 1, '363394580259', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14301', 0, 0, 1, '6', 'N/A', 0, 'N/A'),
('A14291', '2023-08-29', '319019', '2021-01-03', NULL, 'ANSH RAJ', NULL, 'NONE', 4, 1, 'INDIA', '3', NULL, 'RAHUL KUMAR GUPTA ', 'SIMA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'BEHIND HIGH COURT ,BAZAAR MOHALLA ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '6205016267', '', 'BEHIND HIGH COURT ,BAZAAR MOHALLA ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '8210265219', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000020,A000037', 'A000037', 'A000045', 'A000079', 'A000097', 'A000118', 'A000130', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319019', 0, 0, 0, '8', 'N/A', 0, 'N/A'),
('A14292', '2023-04-01', '314804', '2019-09-19', NULL, 'KESHAV KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SHANKAR KUMAR PANDIT', 'MANITA DEVI', 'N/A', 'N/A', 3, 1, NULL, 'KRISHNAPURI CHUTIA ,RD NO. 10 KANCHAN MENTION FLAT NO. 401 NEAR SHIV MANDIR RD-B', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7050219411', '', 'KRISHNAPURI CHUTIA ,RD NO. 10 KANCHAN MENTION FLAT NO. 401 NEAR SHIV MANDIR RD-B', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '8210229961', '', 1, 4, 'Prep', 1, 'A', 0, '0', 4, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000012', 'A000081', 'A000081', 'A000082', 'A000089', 'A000121', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314804', 0, 0, 0, '0', 'N/A', 0, 'N/A'),
('A14293', '2023-08-30', '319018', '2020-09-19', NULL, 'MUHAMMAD TALHA RAZA', NULL, 'B+', 4, 1, 'INDIA', '3', NULL, 'MOHAMMAD AASIF', 'HEENA HAQUE', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO. 1/D SABRI ENCLAVE , MASJID ROAD, RAHMAT COLONY , DORANDA ', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '6205322699', '', 'FLAT NO. 1/D SABRI ENCLAVE , MASJID ROAD, RAHMAT COLONY , DORANDA ', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '8984949220', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 13, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000015,A000038', 'A000038', 'A000051', 'A000069', 'A000101', 'A000111', 'A000136', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319018', 0, 0, 0, '8', 'N/A', 0, 'N/A'),
('A14304', '2024-07-18', '14304', '2021-06-11', NULL, 'KRITARTH JHA', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'PANKAJ KUMAR JHA', 'ALPANA JHA', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO 204, BLOCK C, BANSAL PLAZA, PATEL CHOWK ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '9939491715', '', '', '8294630891', 'jha01pankaj@gmail.com', 'FLAT NO 204, BLOCK C, BANSAL PLAZA, PATEL CHOWK ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '9939491715', '', '', '8294630891', 'jha01pankaj@gmail.com', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 14, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2024', 'NOT ADMITTED', 'NOT ADMITTED', 'NOT ADMITTED', 'NOT ADMITTED', 'A000104', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14304', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14303', '2024-06-18', '14303', '2021-04-09', NULL, 'EVANSHIKA', NULL, 'NONE', 4, 1, 'INDIA', '3', NULL, 'SANJEEV', 'PUJA', 'N/A', 'N/A', 1, 1, NULL, 'AMRAWATI COLONY', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '000', '', '', '9625161460', 'puja84946@gmail.com', 'AMRAWATI COLONY', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '000', '', '', '9310131705', 'SKsanjeevkumar09@gmail.com', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2024', 'NOT ADMITTED', 'NOT ADMITTED', 'A000077', 'A000078', 'A000100', 'A000122', 'A000125', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14303', 0, 0, 1, '6', 'N/A', 0, 'N/A'),
('A14294', '2023-11-22', '319017', '2018-10-27', NULL, 'SYED MUHAMMAD HASSAAN ', NULL, 'NONE', 4, 1, 'INDIA', '3', NULL, 'SYED MOHAMMED SAJID ', 'NISHATH FATIMA', 'N/A', 'N/A', 2, 1, NULL, 'RAHMAT COLONY , NEAR SANSKRITI APARTMENT ,DORANDA RANCHI -2', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7294823367', '', 'RAHMAT COLONY , NEAR SANSKRITI APARTMENT ,DORANDA RANCHI -2', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '8873575625', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 13, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000017,A000034', 'A000034', 'A000049', 'A000050', 'A000094', 'A000114', 'A000138', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '954249211445', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319017', 0, 0, 0, '12', 'N/A', 0, 'N/A'),
('A14295', '2023-11-30', '319016', '2020-08-13', NULL, 'AYANSH MANAN LAKRA', NULL, 'NONE', 1, 1, 'INDIA', '3', NULL, 'AMAN SAMIR LAKRA ', 'PREMIKA XALXO', 'N/A', 'N/A', 2, 1, NULL, 'GOSSNER COMPOUND , PRINCIPAL LANE RANCHI ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '6202804194', '', 'GOSSNER COMPOUND , PRINCIPAL LANE RANCHI ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7250918550', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000011,A000032', 'A000032', 'A000052', 'A000073', 'A000092', 'A000107', 'A000133', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319016', 0, 0, 0, '12', 'N/A', 0, 'N/A'),
('A14296', '2024-02-15', '14296', '2022-03-16', NULL, 'FATIMA HUSSAIN', NULL, 'NONE', 3, 1, 'INDIA', '3', NULL, 'SADDAM HUSSAIN ', 'SUMAIYA KHANAM', 'N/A', 'N/A', 1, 1, NULL, 'E-203 , PATEL CHOWK, BANSAL PLAZA ', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '9119347360', '', 'E-203 , PATEL CHOWK, BANSAL PLAZA ', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '9992486887', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 12, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000008,A000061', 'A000061', 'A000061', 'A000061', 'A000102', 'A000120', 'A000137', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14296', 0, 0, 0, '1', 'N/A', 0, 'N/A'),
('A14298', '2024-03-30', '14298', '2021-04-02', NULL, 'ABHIRUP KOLEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SUBHADIP KOLEY', 'MOUMITA KOLEY', 'N/A', 'N/A', 1, 1, NULL, 'NEW ANANTPUR , NEW OVER BRIDGE ,RANCHI ,834002', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '7478739073', '', 'NEW ANANTPUR , NEW OVER BRIDGE ,RANCHI ,834002', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '7366921413', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000002,A000029', 'A000029', 'A000046', 'A000060', 'A000086', 'A000106', 'A000124', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14298', 0, 0, 0, '0', 'N/A', 0, 'N/A'),
('A14299', '2024-04-29', '14299', '2021-01-12', NULL, 'ZOBIA MUSARRAT', NULL, 'NONE', 3, 2, 'INDIA', '1', NULL, 'MOHAMMAD ASGHAR', 'MUSARRAT BANO', 'N/A', 'N/A', 3, 1, NULL, 'FLAT NO - E/2 , ATIULLAH ENCLAVE , RANCHI COLONY DORANDA', 'RANCHI', 'Jharkhand', 'India', '834001', '', '', '', '6203257752', '', 'FLAT NO - E/2 , ATIULLAH ENCLAVE , RANCHI COLONY DORANDA', 'RANCHI', 'Jharkhand', 'India', '834001', '', '', '', '9835577848', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 13, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2024', 'NOT ADMITTED', 'A000027', 'A000053', 'A000080', 'A000093', 'A000108', 'A000131', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14299', 0, 0, 1, '5', 'N/A', 0, 'N/A'),
('A14297', '2024-02-15', '14297', '2021-06-19', NULL, 'PURVI VISHNU ADPA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'A.PAWAN.KUMAR', 'PERABATHULA SRAWANI ', 'N/A', 'N/A', 1, 1, NULL, '', '', '', '', '', '', '', '', '', '', 'Q. NO. - D S/17B, NEAR KALI MANDIR, SOUTH RAILWAY COLONY ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9153644678', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000021,A000035', 'A000035', 'A000048', 'A000070', 'A000087', 'A000119', 'A000139', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14297', 0, 0, 0, '1', 'N/A', 0, 'N/A'),
('A14305', '2024-10-15', '14305', '2000-03-30', NULL, 'RISHABH JAIN', NULL, 'O+', 4, 1, 'INDIA', '1', NULL, 'SKJ', 'MJ', 'N/A', 'N/A', 1, 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2024', 'A000140', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'TC_ISSUE', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14305', 0, 0, 0, '1', 'N/A', 0, 'N/A'),
('A14308', '2024-10-10', '2425001', '2024-10-11', NULL, 'RAHUL JACKER', NULL, 'B+', 1, 1, 'INDIA', '2', NULL, 'ADSD', 'ASDAS', 'N/A', 'N/A', 1, 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 'Baby Pre-Nursery', 17, 'Z', 0, '0', 8, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2024', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '2425001', 0, 0, 0, '1', 'N/A', 0, 'N/A'),
('A1', '2024-10-25', '2425002', '2024-10-18', NULL, 'ROSHAN JACKER', NULL, 'O-', 2, 1, 'INDIA', '2', NULL, 'SDFGSAFD', 'FDASDFSD', 'N/A', 'N/A', 2, 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2024', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 5, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '2425002', 0, 0, 0, '1', 'N/A', 0, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubject`
--

CREATE TABLE `studentsubject` (
  `ID` int(11) NOT NULL,
  `Adm_no` mediumtext DEFAULT NULL,
  `Class` mediumtext DEFAULT NULL,
  `SEC` mediumtext DEFAULT NULL,
  `SUBCODE` mediumtext DEFAULT NULL,
  `OPTCODE` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_2324`
--

CREATE TABLE `student_2324` (
  `STUDENTID` varchar(50) DEFAULT NULL,
  `ADM_DATE` date DEFAULT NULL,
  `ADM_NO` varchar(50) NOT NULL,
  `BIRTH_DT` date DEFAULT NULL,
  `TITLE_NM` varchar(50) DEFAULT NULL,
  `FIRST_NM` varchar(50) DEFAULT NULL,
  `MIDDLE_NM` varchar(50) DEFAULT NULL,
  `BLOOD_GRP` varchar(25) DEFAULT NULL,
  `CATEGORY` smallint(6) DEFAULT NULL,
  `SEX` smallint(6) DEFAULT NULL,
  `NATION` varchar(25) DEFAULT NULL,
  `EMP_WARD` varchar(255) DEFAULT NULL,
  `EMPID` varchar(25) DEFAULT NULL,
  `FATHER_NM` varchar(50) DEFAULT NULL,
  `MOTHER_NM` varchar(50) DEFAULT NULL,
  `LAST_SCH` varchar(50) DEFAULT NULL,
  `LSCH_ADD` varchar(150) DEFAULT NULL,
  `ADM_CLASS` smallint(6) DEFAULT NULL,
  `ADM_SEC` smallint(6) DEFAULT NULL,
  `SIB_NO` smallint(6) DEFAULT NULL,
  `PERM_ADD` varchar(150) DEFAULT NULL,
  `P_CITY` varchar(50) DEFAULT NULL,
  `P_STATE` varchar(50) DEFAULT NULL,
  `P_NATION` varchar(50) DEFAULT NULL,
  `P_PIN` varchar(50) DEFAULT NULL,
  `P_PHONE1` varchar(50) DEFAULT NULL,
  `P_PHONE2` varchar(50) DEFAULT NULL,
  `P_FAXNO` varchar(50) DEFAULT NULL,
  `P_MOBILE` varchar(50) DEFAULT NULL,
  `P_EMAIL` varchar(50) DEFAULT NULL,
  `CORR_ADD` varchar(150) DEFAULT NULL,
  `C_CITY` varchar(50) DEFAULT NULL,
  `C_STATE` varchar(50) DEFAULT NULL,
  `C_NATION` varchar(50) DEFAULT NULL,
  `C_PIN` varchar(50) DEFAULT NULL,
  `C_PHONE1` varchar(50) DEFAULT NULL,
  `C_PHONE2` varchar(50) DEFAULT NULL,
  `C_FAXNO` varchar(50) DEFAULT NULL,
  `C_MOBILE` varchar(50) DEFAULT NULL,
  `C_EMAIL` varchar(50) DEFAULT NULL,
  `HOUSE_CODE` smallint(6) DEFAULT NULL,
  `CLASS` smallint(6) DEFAULT NULL,
  `DISP_CLASS` varchar(25) DEFAULT NULL,
  `SEC` smallint(6) DEFAULT NULL,
  `DISP_SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` smallint(6) DEFAULT NULL,
  `BUS_NO` varchar(35) DEFAULT NULL,
  `STOPNO` smallint(6) DEFAULT NULL,
  `FREESHIP` tinyint(1) DEFAULT NULL,
  `SCHOLAR` tinyint(1) DEFAULT NULL,
  `LETTERNO` varchar(50) DEFAULT NULL,
  `LIB_FLAG` varchar(50) DEFAULT NULL,
  `ACT_FLAG` varchar(50) DEFAULT NULL,
  `TC_ISSUED` tinyint(1) DEFAULT NULL,
  `COMPUTER` tinyint(1) DEFAULT NULL,
  `HOSTEL` tinyint(1) DEFAULT NULL,
  `TC_NUMBER` varchar(50) DEFAULT NULL,
  `PAID_UPTO` smallint(6) DEFAULT NULL,
  `SESSIONID` varchar(50) DEFAULT NULL,
  `APR_FEE` varchar(50) DEFAULT NULL,
  `MAY_FEE` varchar(50) DEFAULT NULL,
  `JUNE_FEE` varchar(50) DEFAULT NULL,
  `JULY_FEE` varchar(50) DEFAULT NULL,
  `AUG_FEE` varchar(50) DEFAULT NULL,
  `SEP_FEE` varchar(50) DEFAULT NULL,
  `OCT_FEE` varchar(50) DEFAULT NULL,
  `NOV_FEE` varchar(50) DEFAULT NULL,
  `DEC_FEE` varchar(50) DEFAULT NULL,
  `JAN_FEE` varchar(50) DEFAULT NULL,
  `FEB_FEE` varchar(50) DEFAULT NULL,
  `MAR_FEE` varchar(50) DEFAULT NULL,
  `CBSE_REG` varchar(50) DEFAULT NULL,
  `CBSE_ROLL` varchar(50) DEFAULT NULL,
  `SUBJECT1` varchar(50) DEFAULT NULL,
  `SUBJECT2` varchar(50) DEFAULT NULL,
  `SUBJECT3` varchar(50) DEFAULT NULL,
  `SUBJECT4` varchar(50) DEFAULT NULL,
  `SUBJECT5` varchar(50) DEFAULT NULL,
  `SUBJECT6` varchar(50) DEFAULT NULL,
  `WORK_DAYS` smallint(6) DEFAULT NULL,
  `APR_ATT` smallint(6) DEFAULT NULL,
  `MAY_ATT` smallint(6) DEFAULT NULL,
  `JUNE_ATT` smallint(6) DEFAULT NULL,
  `JULY_ATT` smallint(6) DEFAULT NULL,
  `AUG_ATT` smallint(6) DEFAULT NULL,
  `SEP_ATT` smallint(6) DEFAULT NULL,
  `OCT_ATT` smallint(6) DEFAULT NULL,
  `NOV_ATT` smallint(6) DEFAULT NULL,
  `DEC_ATT` smallint(6) DEFAULT NULL,
  `JAN_ATT` smallint(6) DEFAULT NULL,
  `FEB_ATT` smallint(6) DEFAULT NULL,
  `MAR_ATT` smallint(6) DEFAULT NULL,
  `UPD_DATE` datetime DEFAULT NULL,
  `oldadmno` varchar(50) DEFAULT NULL,
  `religion` smallint(6) DEFAULT NULL,
  `math_lab` tinyint(1) DEFAULT NULL,
  `busno1` smallint(6) DEFAULT NULL,
  `BFEE` varchar(50) DEFAULT NULL,
  `BFEEType` tinyint(1) DEFAULT NULL,
  `HFEE` varchar(50) DEFAULT NULL,
  `Mag` tinyint(1) DEFAULT NULL,
  `Fee_Book_No` int(11) DEFAULT 0,
  `Bus_Book_No` varchar(100) DEFAULT NULL,
  `Student_Status` varchar(50) DEFAULT NULL,
  `RemID` int(11) NOT NULL DEFAULT 0,
  `VL` varchar(50) NOT NULL DEFAULT 'N/A',
  `VR` varchar(50) NOT NULL DEFAULT 'N/A',
  `DEN` varchar(50) NOT NULL DEFAULT 'N/A',
  `Height` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `Password` varchar(255) NOT NULL DEFAULT 'bachpan@2019',
  `student_image` varchar(500) NOT NULL,
  `Parent_password` varchar(500) NOT NULL DEFAULT 'bachpan@2019',
  `route_id` int(11) NOT NULL DEFAULT 0,
  `student_transport_facility_id` int(11) NOT NULL DEFAULT 0,
  `mid_session_admisson_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '	0=ADMISSION IN APR,1=ADMISSION IN MID SESSION',
  `Admission_month` varchar(50) NOT NULL DEFAULT '1',
  `mid_session_payment_status` varchar(50) NOT NULL DEFAULT 'N/A',
  `Counter_payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `Login_Id` varchar(255) NOT NULL DEFAULT 'N/A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_2324`
--

INSERT INTO `student_2324` (`STUDENTID`, `ADM_DATE`, `ADM_NO`, `BIRTH_DT`, `TITLE_NM`, `FIRST_NM`, `MIDDLE_NM`, `BLOOD_GRP`, `CATEGORY`, `SEX`, `NATION`, `EMP_WARD`, `EMPID`, `FATHER_NM`, `MOTHER_NM`, `LAST_SCH`, `LSCH_ADD`, `ADM_CLASS`, `ADM_SEC`, `SIB_NO`, `PERM_ADD`, `P_CITY`, `P_STATE`, `P_NATION`, `P_PIN`, `P_PHONE1`, `P_PHONE2`, `P_FAXNO`, `P_MOBILE`, `P_EMAIL`, `CORR_ADD`, `C_CITY`, `C_STATE`, `C_NATION`, `C_PIN`, `C_PHONE1`, `C_PHONE2`, `C_FAXNO`, `C_MOBILE`, `C_EMAIL`, `HOUSE_CODE`, `CLASS`, `DISP_CLASS`, `SEC`, `DISP_SEC`, `ROLL_NO`, `BUS_NO`, `STOPNO`, `FREESHIP`, `SCHOLAR`, `LETTERNO`, `LIB_FLAG`, `ACT_FLAG`, `TC_ISSUED`, `COMPUTER`, `HOSTEL`, `TC_NUMBER`, `PAID_UPTO`, `SESSIONID`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CBSE_REG`, `CBSE_ROLL`, `SUBJECT1`, `SUBJECT2`, `SUBJECT3`, `SUBJECT4`, `SUBJECT5`, `SUBJECT6`, `WORK_DAYS`, `APR_ATT`, `MAY_ATT`, `JUNE_ATT`, `JULY_ATT`, `AUG_ATT`, `SEP_ATT`, `OCT_ATT`, `NOV_ATT`, `DEC_ATT`, `JAN_ATT`, `FEB_ATT`, `MAR_ATT`, `UPD_DATE`, `oldadmno`, `religion`, `math_lab`, `busno1`, `BFEE`, `BFEEType`, `HFEE`, `Mag`, `Fee_Book_No`, `Bus_Book_No`, `Student_Status`, `RemID`, `VL`, `VR`, `DEN`, `Height`, `Weight`, `Password`, `student_image`, `Parent_password`, `route_id`, `student_transport_facility_id`, `mid_session_admisson_status`, `Admission_month`, `mid_session_payment_status`, `Counter_payment_status`, `Login_Id`) VALUES
('A14254', '2023-01-16', '216738', '2020-08-25', NULL, 'SHASHI PANDEY', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'NIRAJ KUMAR PANDEY', 'PRACHI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789192091', '', 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004253628', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000027', 'A000070', 'A000071', 'A000072', 'A000249', 'A000249', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216738', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14255', '2023-02-27', '216757', '2020-10-01', NULL, 'ANAY RAJ', NULL, 'O+', 4, 1, 'INDIA', '1', NULL, 'SHAMBHU KUMAR', 'ARADHANA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8434010794', '', 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9546519667', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', '', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216757', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14256', '2023-04-20', '314802', '2021-01-17', NULL, 'AYANSH DUBEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ADITYA RAJ DUBEY', 'GITA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'H. NO- 188 AMRAVATI CHUTIA RAILWAY COLONY KALI MANDIR RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6299732886', '', 'H. NO- 188 AMRAVATI CHUTIA RAILWAY COLONY KALI MANDIR RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8271363734', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000011', 'A000011', 'A000054', 'A000105', 'A000136', 'A000137', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314802', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14257', '2022-10-10', '206276', '2021-05-16', NULL, 'RIDDHI ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SNEH NAMAN', 'APURVA GAUTAM', 'N/A', 'N/A', 1, 1, NULL, '', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8294779497', '', 'ANANTPUR, OM SAI APARTMENT ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6203572802', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000050', 'A000050', 'A000050', 'A000050', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206276', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14258', '2023-04-20', '314809', '2020-10-21', NULL, 'AASHWI MISHRA', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SIDDHARTH MISHRA', 'PRERITA VARDHAN', 'N/A', 'N/A', 1, 1, NULL, '43 , VIKAS NAGAR , ROAD NO. 1 , SINGH MORE ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9431749396', '', '43 , VIKAS NAGAR , ROAD NO. 1 , SINGH MORE ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7549088080', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000029', 'A000029', 'A000052', 'A000087', 'A000088', 'A000089', 'A000154', 'A000155', 'A000223', 'A000261', 'A000281', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314809', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14259', '2023-02-03', '216740', '2020-08-01', NULL, 'BHAVYANSH PODDAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ASHISH PODDAR', 'JAGRITI PODDAR', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 404 ,SHEETAL COMPLEX NIVARANPUR ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903142939', '', 'FLAT NO - 404 ,SHEETAL COMPLEX NIVARANPUR ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7033018557', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000041', 'A000041', 'A000041', 'A000067', 'A000115', 'A000156', 'A000157', 'A000185', 'A000220', 'A000243', 'A000274', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216740', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14260', '2022-08-05', '206271', '2020-07-27', NULL, 'JAYDEN MIGUEL', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'JESSE ARPAN HANS', 'MARIAM HANNA HEMROM', 'N/A', 'N/A', 1, 1, NULL, 'NEW GARDEN SIROMTOLI CLUB ROAD RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7631113465', '', 'NEW GARDEN SIROMTOLI CLUB ROAD RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7549101012', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000020', 'A000020', 'A000020', 'A000053', 'A000084', 'A000119', 'A000147', 'A000189', 'A000211', 'A000241', 'A000263', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206271', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14261', '2023-03-27', '216759', '2020-02-06', NULL, 'HREYAANSH RAJYAVARDHAN', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RISHI ROSHAN', 'MAHARANI KUNWAR', 'N/A', 'N/A', 1, 1, NULL, 'BAJRANG BHAVAN ,TRIPATHY COLONY , 48 DIVERSION ROAD , NEAR YUVRAJ PLACE ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7277001616', '', 'BAJRANG BHAVAN ,TRIPATHY COLONY , 48 DIVERSION ROAD , NEAR YUVRAJ PLACE ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9470978077', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000005', 'A000005', 'A000005', 'A000069', 'A000086', 'A000125', 'A000178', 'A000182', 'A000215', 'A000260', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216759', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14262', '2023-02-27', '216758', '2020-02-22', NULL, 'SHAURYA KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ANITOSH KUMAR', 'SIKHA SINHA ', 'N/A', 'N/A', 1, 1, NULL, 'ROAD NO - 3 CHUTIA RANCHI KRISHNAPURI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '903176602', '', 'ROAD NO - 3 CHUTIA RANCHI KRISHNAPURI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004320860', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000006', 'A000006', 'A000006', 'A000080', 'A000095', 'A000135', 'A000146', 'A000197', 'A000203', 'A000237', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216758', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14263', '2022-09-08', '216734', '2020-09-27', NULL, 'RIYANSH RAJ', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'RAVI SHANKAR KUMAR ', 'ANISHA BHARTI', 'N/A', 'N/A', 1, 1, NULL, 'QUATER NO - 95 KUSHAI COLONY DORANDA', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835680277', '', 'QUATER NO - 95 KUSHAI COLONY DORANDA', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6204040567', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 3, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000036', 'A000057', 'A000057', 'A000099', 'A000100', 'A000129', 'A000165', 'A000199', 'A000225', 'A000246', 'A000273', 'A000285', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216734', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14264', '2022-07-18', '206274', '2019-01-18', NULL, 'ETHAN SHALEEN', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'PAWAN HEMROM', 'VENUS BHENGRA', 'N/A', 'N/A', 1, 1, NULL, 'SOUTH RAILWAY COLONY RANCHI QTR NO. - TY/8A , P.O - CHUTIA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9955612990', '', 'SOUTH RAILWAY COLONY RANCHI QTR NO. - TY/8A , P.O - CHUTIA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9955612990', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000022', 'A000035', 'A000046', 'A000061', 'A000085', 'A000128', 'A000175', 'A000219', 'A000219', 'A000233', 'A000264', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206274', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14265', '2022-11-16', '216733', '2020-11-24', NULL, 'DEVESHI SHARMA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'RAHUL KUMAR', 'JYOTI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'FLAT A, BLOCK B ,SATYABHAMA GRAND KUSAI ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9471353191', '', 'FLAT A, BLOCK B ,SATYABHAMA GRAND KUSAI ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7250822801', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000014', 'A000031', 'A000055', 'A000055', 'A000091', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216733', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14266', '2022-07-06', '206279', '2020-10-26', NULL, 'AYAAN SHARMA', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'ARVIND KUMAR', 'SWATI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'RAM NAGAR COLONY CHUTIA POWER HOUSE RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835685082', '', 'RAM NAGAR COLONY CHUTIA POWER HOUSE RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7979767607', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000042', 'A000042', 'A000076', 'A000139', 'A000141', 'A000142', 'A000143', 'A000143', 'A000143', 'A000267', 'A000267', 'A000267', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206279', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14267', '2023-02-22', '216755', '2020-12-03', NULL, 'IRA BHARDWAJ', NULL, 'B+', 4, 2, 'INDIA', '1', NULL, 'SONU KUMAR PRASAD ', 'KHUSHBU', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 4 NEAR POST OFFICE CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6203554583', '', 'KRISHNAPURI ROAD NO. 4 NEAR POST OFFICE CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7979017634', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000018', 'A000032', 'A000047', 'A000108', 'A000109', 'A000149', 'A000149', 'A000180', 'A000208', 'A000240', 'A000262', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216755', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14268', '2023-03-10', '121676010', '2023-03-06', NULL, 'AADITRI JHA', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'ROSHAN KUMAR ', 'SHWETA KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'ROAD NO - 3 KRISHNAPURI , CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7295962198', '', 'ROAD NO - 3 KRISHNAPURI , CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8521412442', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 8, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000017', 'A000040', 'A000051', 'A000107', 'A000113', 'A000133', 'A000166', 'A000194', 'A000217', 'A000250', 'A000268', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '121676010', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14269', '2023-01-16', '216751', '2019-10-09', NULL, 'GUNGUN KUMARI TURI', NULL, 'NONE', 2, 2, 'INDIA', '1', NULL, 'BABLOO TURI', 'KHUSHBU KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'AT - HARIJAN DADA , GAUSHALA ROAD DUDHANI , NAG MANDIR PO- DUMKA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9798816485', '', 'AT - HARIJAN DADA , GAUSHALA ROAD DUDHANI , NAG MANDIR PO- DUMKA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8757748264', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000026', 'A000048', 'A000048', 'A000111', 'A000112', 'A000258', 'A000258', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216751', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14270', '2023-02-03', '216754', '2019-10-15', NULL, 'AAYUSHI JHA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'ASHISH KUMAR ', 'RAKHI ', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI , CHUTIA ROAD NO- 1 ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6299965295', '', 'KRISHNAPURI , CHUTIA ROAD NO- 1 ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9386624585', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000019', 'A000059', 'A000059', 'A000082', 'A000127', 'A000176', 'A000183', 'A000210', 'A000257', 'A000276', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216754', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14271', '2022-07-05', '183890', '2019-03-03', NULL, 'ARHAM SIDDIQUE', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'MOHAMMAD ZAUQUE SIDDIQUE ', 'AMRIN KHANAM', 'N/A', 'N/A', 1, 1, NULL, 'CENTRAL STREET SAMRAT COMPLEX MAIN ROAD', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9570208238', '', 'CENTRAL STREET SAMRAT COMPLEX MAIN ROAD', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7631794370', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000030', 'A000078', 'A000078', 'A000078', 'A000103', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183890', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14272', '2022-08-11', '216731', '2019-12-10', NULL, 'AAVYA MAHESWARI', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SURESH SABOO', 'NAJUK SABOO', 'N/A', 'N/A', 1, 1, NULL, 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7903634316', '', 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9334424621', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'A000016', 'A000033', 'A000033', 'A000077', 'A000094', 'A000123', 'A000167', 'A000195', 'A000213', 'A000235', 'A000270', 'TC_ISSUE', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216731', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14273', '2022-07-04', '183884', '2019-06-19', NULL, 'ADARSH KUMAR SINGH', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SHASHI RANJAN KUMAR SINGH', 'DIPTI SINGH', 'N/A', 'N/A', 1, 1, NULL, 'H.NO - 252 RUPA SADAN A.N SINGH ROAD KUSIA COLONY DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9955773951', '', 'H.NO - 252 RUPA SADAN A.N SINGH ROAD KUSIA COLONY DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9110939277', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 3, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000028', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183884', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14274', '2023-03-20', '314801', '2019-08-07', NULL, 'ANVIE ', NULL, 'O+', 4, 2, 'INDIA', '1', NULL, 'AJIT KUMAR JHA ', 'SWETA SHARMA', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 1B , A BLOCK , OAK RESIDENCY ,CLUB ROAD RNCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9850270116', '', 'FLAT NO - 1B , A BLOCK , OAK RESIDENCY ,CLUB ROAD RNCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789500686', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000024', 'A000038', 'A000044', 'A000066', 'A000066', 'A000066', 'A000152', 'A000152', 'A000152', 'A000255', 'A000255', 'A000255', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314801', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14275', '2022-07-04', '183888', '2019-05-11', NULL, 'MELWIN EVAAN LAKRA', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'ROBIN LAKRA ', 'VICTORIA EKKA', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 5 CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6260366891', '', 'KRISHNAPURI ROAD NO. 5 CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8224001002', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 10, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000010', 'A000010', 'A000010', 'A000079', 'A000106', 'A000122', 'A000168', 'A000177', 'A000272', 'A000272', 'A000272', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183888', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14276', '2022-07-04', '183886', '2019-05-25', NULL, 'ADHRAV RANJAN', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'NAVIN RANJAN', 'PRIYA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'PANCHWATI ,NIVARANPUR RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8340241552', '', 'PANCHWATI ,NIVARANPUR RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835900581', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', '', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183886', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14277', '2022-07-06', '206278', '2019-09-30', NULL, 'RUDRANSHU GOHEL', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'HERIK RAJNIKANI GOHEL', 'MADHU KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 203 SHEETAL APARTMENT NIWARANPUR , RANCHI NEAR RAVI STORE', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004660546', '', 'FLAT NO - 203 SHEETAL APARTMENT NIWARANPUR , RANCHI NEAR RAVI STORE', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9664988743', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000009', 'A000009', 'A000009', 'A000073', 'A000096', 'A000126', 'A000161', 'A000181', 'A000214', 'A000251', 'A000269', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206278', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14278', '2022-06-04', '206277', '2019-10-15', NULL, 'AYANSH RAJ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SAROJ RAJAN', 'VARSHA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'RD NO - 10 , KRISHNAPURI CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8050681719', '', 'RD NO - 10 , KRISHNAPURI CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835707415', '', 1, 4, 'Prep', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000039', 'A000060', 'A000060', 'A000101', 'A000102', 'A000134', 'A000173', 'A000188', 'A000247', 'A000248', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206277', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14279', '2022-11-19', '216732', '2018-12-20', NULL, 'SHIVANSH RAJ', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'SP RANJAN', 'SP RANJAN', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 7 NEAR COLD STORAGE CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '', '', 'KRISHNAPURI ROAD NO. 7 NEAR COLD STORAGE CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7488886236', '', 1, 4, 'Prep', 1, 'A', 0, '0', 10, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000037', 'A000037', 'A000058', 'A000058', 'A000093', 'A000179', 'A000179', 'A000179', 'A000259', 'A000259', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216732', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14280', '2022-06-12', '183882', '2019-10-05', NULL, 'ALWIN LAKRA', NULL, 'NONE', 1, 2, 'INDIA', '1', NULL, 'SUBHASHISH LAKRA', 'SWETA KULLU', 'N/A', 'N/A', 1, 1, NULL, 'KADRU SRNA TOLI , RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903336486', '', 'KADRU SRNA TOLI , RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903692051', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000021', 'A000021', 'A000021', 'A000075', 'A000097', 'A000162', 'A000163', 'A000186', 'A000227', 'A000279', 'A000279', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183882', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14281', '2022-07-04', '183889', '2019-09-27', NULL, 'RIYANSHI TOPPO', NULL, 'NONE', 1, 2, 'INDIA', '1', NULL, 'RAMU ORAON ', 'NEELAM KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'FOREST COLONY QTR-NO - C- 45 DORANDA RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '', '', 'FOREST COLONY QTR-NO - C- 45 DORANDA RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7541825398', '', 1, 4, 'Prep', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000008', 'A000008', 'A000008', 'A000065', 'A000104', 'A000121', 'A000164', 'A000207', 'A000207', 'A000236', 'A000275', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 7, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183889', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14282', '2023-04-04', '314805', '2019-08-06', NULL, 'HARSHIT CHAUDHARY', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'SANJAY KUMAR CHAUDHARY', 'ANJALI DEVI', 'N/A', 'N/A', 4, 1, NULL, 'Q.NO - P 35 , FORSET COLONY DORANDA RANCHI ', 'RANCHI', 'Jharkhand', '', '', '', '', '', '8294349102', '', 'Q.NO - P 35 , FORSET COLONY DORANDA RANCHI ', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9471388002', '', 1, 4, 'Prep', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000015', 'A000063', 'A000083', 'A000120', 'A000160', 'A000160', 'A000200', 'A000204', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314805', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14283', '2022-05-02', '183887', '2018-07-15', NULL, 'ADITYA VISHWAKARMA', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'VIVEK VISHWAKARMA ', 'NISHA VISHWAKARMA', 'N/A', 'N/A', 1, 1, NULL, 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8319104601', '', 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8709612447', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'A000013', 'A000043', 'A000043', 'A000062', 'A000114', 'A000138', 'A000174', 'A000190', 'A000230', 'A000252', 'A000283', 'TC_ISSUE', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183887', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14284', '2022-11-16', '216737', '2019-03-09', NULL, 'SHOURYA ABHINANDAN PANDEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAJ KUMAR PANDEY', 'PRIYANKA PANDEY', 'N/A', 'N/A', 1, 1, NULL, 'C/O C.S DUBEY PANCHWATI CHOWK , RAILWAY COLONY ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7903944075', '', 'C/O C.S DUBEY PANCHWATI CHOWK , RAILWAY COLONY ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7319660035', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000007', 'A000007', 'A000007', 'A000080', 'A000116', 'A000144', 'A000202', 'A000202', 'A000232', 'A000256', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216737', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14285', '2023-06-21', '314807', '2020-06-29', NULL, 'SHREYANSH RANJAN', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAVI RANJAN DUBEY', 'NAMARATA DUBEY', 'N/A', 'N/A', 1, 1, NULL, '9/C ASHOK NAGAR ,ROAD NO -1 ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '8709559009', '', '9/C ASHOK NAGAR ,ROAD NO -1 ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9608557337', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'NOT ADMITTED', 'NOT ADMITTED', 'NOT ADMITTED', 'A000012', 'A000098', 'A000131', 'A000151', 'A000184', 'A000216', 'A000244', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314807', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14254', '2023-01-16', '216738D', '2020-08-25', NULL, 'DUMMY', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'NIRAJ KUMAR PANDEY', 'PRACHI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789192091', '', 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004253628', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216738', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14288', '2023-07-18', '314810', '2019-04-29', NULL, 'AAROHI ARYA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SUBODH KUMAR TIWARI', 'RITU KUMARI', 'N/A', 'N/A', 3, 1, NULL, 'OLD AG COLONY, BEHIND HYUNDAI SHOWROOM,KADRU RANCHI ', 'RANCHI ', 'Jharkhand', 'India', '834002', '', '', '', '9905793990', '', 'OLD AG COLONY, BEHIND HYUNDAI SHOWROOM,KADRU RANCHI ', 'RANCHI ', 'Jharkhand', 'India', '834002', '', '', '', '7755911622', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 12, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', '', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314810', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14288', '2023-07-24', '319012', '2020-12-12', NULL, 'REEVA VIJAY', NULL, 'B+', 3, 0, 'INDIA', '1', NULL, 'VIVEK VIJAY', 'SONAM VIJAY ', 'N/A', 'N/A', 1, 1, NULL, 'MISTRI MOHALLA , DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7903541900', '', 'MISTRI MOHALLA , DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7903519203', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000081', 'A000081', 'A000081', 'A000081', 'A000110', 'A000130', 'A000148', 'A000187', 'A000209', 'A000238', 'A000278', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319012', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14289', '2023-07-04', '314806', '2019-07-25', NULL, 'AARUSH KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'CHANDAN KUMAR', 'MANITA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'NEW AMRAWATI COLONY, RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7667734768', '', 'NEW AMRAWATI COLONY, RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7757808230', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'FREESHIP', 'FREESHIP', 'FREESHIP', 'A000170', 'A000171', 'A000171', 'A000172', 'A000228', 'A000228', 'A000282', 'A000282', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314806', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14290', '2023-08-01', '319020', '2020-10-18', NULL, 'RIYANSH BOSE', NULL, 'B+', 4, 1, 'INDIA', '1', NULL, 'MALAY BOSE ', 'ANIMA KUMARI ', 'N/A', 'N/A', 1, 1, NULL, '19, NIWARANPUR ,DORANDA RANCHI -834002', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7870537081', '', '19, NIWARANPUR ,DORANDA RANCHI -834002', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7209228266', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000117', 'A000196', 'A000196', 'A000196', 'A000218', 'A000265', 'A000266', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319020', 0, 0, 1, '9', 'N/A', 0, 'N/A'),
('A14291', '2023-08-29', '319019', '2021-01-03', NULL, 'ANSH RAJ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAHUL KUMAR GUPTA ', 'SIMA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'BEHIND HIGH COURT ,BAZAAR MOHALLA ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '6205016267', '', 'BEHIND HIGH COURT ,BAZAAR MOHALLA ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '8210265219', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000118', 'A000169', 'A000169', 'A000198', 'A000222', 'A000280', 'A000280', 'A000284', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319019', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14292', '2023-04-01', '314804', '2019-09-19', NULL, 'KESHAV KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SHANKAR KUMAR PANDIT', 'MANITA DEVI', 'N/A', 'N/A', 3, 1, NULL, 'KRISHNAPURI CHUTIA ,RD NO. 10 KANCHAN MENTION FLAT NO. 401 NEAR SHIV MANDIR RD-B', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7050219411', '', 'KRISHNAPURI CHUTIA ,RD NO. 10 KANCHAN MENTION FLAT NO. 401 NEAR SHIV MANDIR RD-B', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8210229961', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 4, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000224', 'A000224', 'A000224', 'A000224', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314804', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14293', '2023-08-30', '319018', '2020-09-19', NULL, 'MUHAMMAD TALHA RAZA', NULL, 'B+', 4, 1, 'INDIA', '1', NULL, 'MOHAMMAD AASIF', 'HEENA HAQUE', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO. 1/D SABRI ENCLAVE , MASJID ROAD, RAHMAT COLONY , DORANDA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '6205322699', '', 'FLAT NO. 1/D SABRI ENCLAVE , MASJID ROAD, RAHMAT COLONY , DORANDA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '8984949220', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 13, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000124', 'A000159', 'A000193', 'A000221', 'A000231', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319018', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14294', '2023-11-22', '319017', '2018-10-27', NULL, 'SYED MUHAMMAD HASSAAN ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SYED MOHAMMED SAJID ', 'NISHATH FATIMA', 'N/A', 'N/A', 2, 1, NULL, 'RAHMAT COLONY , NEAR SANSKRITI APARTMENT ,DORANDA RANCHI -2', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7294823367', '', 'RAHMAT COLONY , NEAR SANSKRITI APARTMENT ,DORANDA RANCHI -2', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8873575625', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000206', 'A000253', 'A000253', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '954249211445', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319017', 0, 0, 1, '12', 'N/A', 0, 'N/A'),
('A14295', '2023-11-30', '319016', '2020-08-13', NULL, 'AYANSH MANAN LAKRA', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'AMAN SAMIR LAKRA ', 'PREMIKA XALXO', 'N/A', 'N/A', 2, 1, NULL, 'GOSSNER COMPOUND , PRINCIPAL LANE RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6202804194', '', 'GOSSNER COMPOUND , PRINCIPAL LANE RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7250918550', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000205', 'A000242', 'A000277', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319016', 0, 0, 1, '12', 'N/A', 0, 'N/A'),
('A14296', '2024-02-15', '14296', '2022-03-16', NULL, 'FATIMA HUSSAIN', NULL, 'NONE', 3, 2, 'INDIA', '1', NULL, 'SADDAM HUSSAIN ', 'SUMAIYA KHANAM', 'N/A', 'N/A', 1, 1, NULL, 'E-203 , PATEL CHOWK, BANSAL PLAZA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '9119347360', '', 'E-203 , PATEL CHOWK, BANSAL PLAZA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '9992486887', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 12, 0, NULL, '', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14296', 0, 0, 1, '1', 'N/A', 0, 'N/A'),
('A14298', '2024-03-30', '14298', '2021-04-02', NULL, 'ABHIRUP KOLEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SUBHADIP KOLEY', 'MOUMITA KOLEY', 'N/A', 'N/A', 1, 1, NULL, 'NEW ANANTPUR , NEW OVER BRIDGE ,RANCHI ,834002', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '7478739073', '', 'NEW ANANTPUR , NEW OVER BRIDGE ,RANCHI ,834002', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '7366921413', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'NOT ADMITTED', 'NOT ADMITTED', 'NOT ADMITTED', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14298', 0, 0, 1, '4', 'N/A', 0, 'N/A'),
('A14297', '2024-02-15', '14297', '2021-06-19', NULL, 'PURVI VISHNU ADPA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'A.PAWAN.KUMAR', 'PERABATHULA SRAWANI ', 'N/A', 'N/A', 1, 1, NULL, '', '', '', '', '', '', '', '', '', '', 'Q. NO. - D S/17B, NEAR KALI MANDIR, SOUTH RAILWAY COLONY ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9153644678', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14297', 0, 0, 1, '1', 'N/A', 0, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `student_20012024`
--

CREATE TABLE `student_20012024` (
  `STUDENTID` varchar(50) DEFAULT NULL,
  `ADM_DATE` date DEFAULT NULL,
  `ADM_NO` varchar(50) NOT NULL,
  `BIRTH_DT` date DEFAULT NULL,
  `TITLE_NM` varchar(50) DEFAULT NULL,
  `FIRST_NM` varchar(50) DEFAULT NULL,
  `MIDDLE_NM` varchar(50) DEFAULT NULL,
  `BLOOD_GRP` varchar(25) DEFAULT NULL,
  `CATEGORY` smallint(6) DEFAULT NULL,
  `SEX` smallint(6) DEFAULT NULL,
  `NATION` varchar(25) DEFAULT NULL,
  `EMP_WARD` varchar(255) DEFAULT NULL,
  `EMPID` varchar(25) DEFAULT NULL,
  `FATHER_NM` varchar(50) DEFAULT NULL,
  `MOTHER_NM` varchar(50) DEFAULT NULL,
  `LAST_SCH` varchar(50) DEFAULT NULL,
  `LSCH_ADD` varchar(150) DEFAULT NULL,
  `ADM_CLASS` smallint(6) DEFAULT NULL,
  `ADM_SEC` smallint(6) DEFAULT NULL,
  `SIB_NO` smallint(6) DEFAULT NULL,
  `PERM_ADD` varchar(150) DEFAULT NULL,
  `P_CITY` varchar(50) DEFAULT NULL,
  `P_STATE` varchar(50) DEFAULT NULL,
  `P_NATION` varchar(50) DEFAULT NULL,
  `P_PIN` varchar(50) DEFAULT NULL,
  `P_PHONE1` varchar(50) DEFAULT NULL,
  `P_PHONE2` varchar(50) DEFAULT NULL,
  `P_FAXNO` varchar(50) DEFAULT NULL,
  `P_MOBILE` varchar(50) DEFAULT NULL,
  `P_EMAIL` varchar(50) DEFAULT NULL,
  `CORR_ADD` varchar(150) DEFAULT NULL,
  `C_CITY` varchar(50) DEFAULT NULL,
  `C_STATE` varchar(50) DEFAULT NULL,
  `C_NATION` varchar(50) DEFAULT NULL,
  `C_PIN` varchar(50) DEFAULT NULL,
  `C_PHONE1` varchar(50) DEFAULT NULL,
  `C_PHONE2` varchar(50) DEFAULT NULL,
  `C_FAXNO` varchar(50) DEFAULT NULL,
  `C_MOBILE` varchar(50) DEFAULT NULL,
  `C_EMAIL` varchar(50) DEFAULT NULL,
  `HOUSE_CODE` smallint(6) DEFAULT NULL,
  `CLASS` smallint(6) DEFAULT NULL,
  `DISP_CLASS` varchar(25) DEFAULT NULL,
  `SEC` smallint(6) DEFAULT NULL,
  `DISP_SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` smallint(6) DEFAULT NULL,
  `BUS_NO` varchar(35) DEFAULT NULL,
  `STOPNO` smallint(6) DEFAULT NULL,
  `FREESHIP` tinyint(1) DEFAULT NULL,
  `SCHOLAR` tinyint(1) DEFAULT NULL,
  `LETTERNO` varchar(50) DEFAULT NULL,
  `LIB_FLAG` varchar(50) DEFAULT NULL,
  `ACT_FLAG` varchar(50) DEFAULT NULL,
  `TC_ISSUED` tinyint(1) DEFAULT NULL,
  `COMPUTER` tinyint(1) DEFAULT NULL,
  `HOSTEL` tinyint(1) DEFAULT NULL,
  `TC_NUMBER` varchar(50) DEFAULT NULL,
  `PAID_UPTO` smallint(6) DEFAULT NULL,
  `SESSIONID` varchar(50) DEFAULT NULL,
  `APR_FEE` varchar(50) DEFAULT NULL,
  `MAY_FEE` varchar(50) DEFAULT NULL,
  `JUNE_FEE` varchar(50) DEFAULT NULL,
  `JULY_FEE` varchar(50) DEFAULT NULL,
  `AUG_FEE` varchar(50) DEFAULT NULL,
  `SEP_FEE` varchar(50) DEFAULT NULL,
  `OCT_FEE` varchar(50) DEFAULT NULL,
  `NOV_FEE` varchar(50) DEFAULT NULL,
  `DEC_FEE` varchar(50) DEFAULT NULL,
  `JAN_FEE` varchar(50) DEFAULT NULL,
  `FEB_FEE` varchar(50) DEFAULT NULL,
  `MAR_FEE` varchar(50) DEFAULT NULL,
  `CBSE_REG` varchar(50) DEFAULT NULL,
  `CBSE_ROLL` varchar(50) DEFAULT NULL,
  `SUBJECT1` varchar(50) DEFAULT NULL,
  `SUBJECT2` varchar(50) DEFAULT NULL,
  `SUBJECT3` varchar(50) DEFAULT NULL,
  `SUBJECT4` varchar(50) DEFAULT NULL,
  `SUBJECT5` varchar(50) DEFAULT NULL,
  `SUBJECT6` varchar(50) DEFAULT NULL,
  `WORK_DAYS` smallint(6) DEFAULT NULL,
  `APR_ATT` smallint(6) DEFAULT NULL,
  `MAY_ATT` smallint(6) DEFAULT NULL,
  `JUNE_ATT` smallint(6) DEFAULT NULL,
  `JULY_ATT` smallint(6) DEFAULT NULL,
  `AUG_ATT` smallint(6) DEFAULT NULL,
  `SEP_ATT` smallint(6) DEFAULT NULL,
  `OCT_ATT` smallint(6) DEFAULT NULL,
  `NOV_ATT` smallint(6) DEFAULT NULL,
  `DEC_ATT` smallint(6) DEFAULT NULL,
  `JAN_ATT` smallint(6) DEFAULT NULL,
  `FEB_ATT` smallint(6) DEFAULT NULL,
  `MAR_ATT` smallint(6) DEFAULT NULL,
  `UPD_DATE` datetime DEFAULT NULL,
  `oldadmno` varchar(50) DEFAULT NULL,
  `religion` smallint(6) DEFAULT NULL,
  `math_lab` tinyint(1) DEFAULT NULL,
  `busno1` smallint(6) DEFAULT NULL,
  `BFEE` varchar(50) DEFAULT NULL,
  `BFEEType` tinyint(1) DEFAULT NULL,
  `HFEE` varchar(50) DEFAULT NULL,
  `Mag` tinyint(1) DEFAULT NULL,
  `Fee_Book_No` int(11) DEFAULT 0,
  `Bus_Book_No` varchar(100) DEFAULT NULL,
  `Student_Status` varchar(50) DEFAULT NULL,
  `RemID` int(11) NOT NULL DEFAULT 0,
  `VL` varchar(50) NOT NULL DEFAULT 'N/A',
  `VR` varchar(50) NOT NULL DEFAULT 'N/A',
  `DEN` varchar(50) NOT NULL DEFAULT 'N/A',
  `Height` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `Password` varchar(255) NOT NULL DEFAULT 'bachpan@2019',
  `student_image` varchar(500) NOT NULL,
  `Parent_password` varchar(500) NOT NULL DEFAULT 'bachpan@2019',
  `route_id` int(11) NOT NULL DEFAULT 0,
  `student_transport_facility_id` int(11) NOT NULL DEFAULT 0,
  `mid_session_admisson_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '	0=ADMISSION IN APR,1=ADMISSION IN MID SESSION',
  `Admission_month` varchar(50) NOT NULL DEFAULT '1',
  `mid_session_payment_status` varchar(50) NOT NULL DEFAULT 'N/A',
  `Counter_payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `Login_Id` varchar(255) NOT NULL DEFAULT 'N/A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_20012024`
--

INSERT INTO `student_20012024` (`STUDENTID`, `ADM_DATE`, `ADM_NO`, `BIRTH_DT`, `TITLE_NM`, `FIRST_NM`, `MIDDLE_NM`, `BLOOD_GRP`, `CATEGORY`, `SEX`, `NATION`, `EMP_WARD`, `EMPID`, `FATHER_NM`, `MOTHER_NM`, `LAST_SCH`, `LSCH_ADD`, `ADM_CLASS`, `ADM_SEC`, `SIB_NO`, `PERM_ADD`, `P_CITY`, `P_STATE`, `P_NATION`, `P_PIN`, `P_PHONE1`, `P_PHONE2`, `P_FAXNO`, `P_MOBILE`, `P_EMAIL`, `CORR_ADD`, `C_CITY`, `C_STATE`, `C_NATION`, `C_PIN`, `C_PHONE1`, `C_PHONE2`, `C_FAXNO`, `C_MOBILE`, `C_EMAIL`, `HOUSE_CODE`, `CLASS`, `DISP_CLASS`, `SEC`, `DISP_SEC`, `ROLL_NO`, `BUS_NO`, `STOPNO`, `FREESHIP`, `SCHOLAR`, `LETTERNO`, `LIB_FLAG`, `ACT_FLAG`, `TC_ISSUED`, `COMPUTER`, `HOSTEL`, `TC_NUMBER`, `PAID_UPTO`, `SESSIONID`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CBSE_REG`, `CBSE_ROLL`, `SUBJECT1`, `SUBJECT2`, `SUBJECT3`, `SUBJECT4`, `SUBJECT5`, `SUBJECT6`, `WORK_DAYS`, `APR_ATT`, `MAY_ATT`, `JUNE_ATT`, `JULY_ATT`, `AUG_ATT`, `SEP_ATT`, `OCT_ATT`, `NOV_ATT`, `DEC_ATT`, `JAN_ATT`, `FEB_ATT`, `MAR_ATT`, `UPD_DATE`, `oldadmno`, `religion`, `math_lab`, `busno1`, `BFEE`, `BFEEType`, `HFEE`, `Mag`, `Fee_Book_No`, `Bus_Book_No`, `Student_Status`, `RemID`, `VL`, `VR`, `DEN`, `Height`, `Weight`, `Password`, `student_image`, `Parent_password`, `route_id`, `student_transport_facility_id`, `mid_session_admisson_status`, `Admission_month`, `mid_session_payment_status`, `Counter_payment_status`, `Login_Id`) VALUES
('A14254', '2023-01-16', '216738', '2020-08-25', NULL, 'SHASHI PANDEY', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'NIRAJ KUMAR PANDEY', 'PRACHI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789192091', '', 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004253628', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000027', 'A000070', 'A000071', 'A000072', 'A000249', 'A000249', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216738', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14255', '2023-02-27', '216757', '2020-10-01', NULL, 'ANAY RAJ', NULL, 'O+', 4, 1, 'INDIA', '1', NULL, 'SHAMBHU KUMAR', 'ARADHANA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8434010794', '', 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9546519667', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000025', 'A000034', 'A000045', 'A000074', 'A000092', 'A000132', 'A000158', 'A000192', 'A000212', 'A000239', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216757', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14256', '2023-04-20', '314802', '2021-01-17', NULL, 'AYANSH DUBEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ADITYA RAJ DUBEY', 'GITA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'H. NO- 188 AMRAVATI CHUTIA RAILWAY COLONY KALI MANDIR RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6299732886', '', 'H. NO- 188 AMRAVATI CHUTIA RAILWAY COLONY KALI MANDIR RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8271363734', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000011', 'A000011', 'A000054', 'A000105', 'A000136', 'A000137', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314802', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14257', '2022-10-10', '206276', '2021-05-16', NULL, 'RIDDHI ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SNEH NAMAN', 'APURVA GAUTAM', 'N/A', 'N/A', 1, 1, NULL, '', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8294779497', '', 'ANANTPUR, OM SAI APARTMENT ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6203572802', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000050', 'A000050', 'A000050', 'A000050', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206276', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14258', '2023-04-20', '314809', '2020-10-21', NULL, 'AASHWI MISHRA', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SIDDHARTH MISHRA', 'PRERITA VARDHAN', 'N/A', 'N/A', 1, 1, NULL, '43 , VIKAS NAGAR , ROAD NO. 1 , SINGH MORE ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9431749396', '', '43 , VIKAS NAGAR , ROAD NO. 1 , SINGH MORE ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7549088080', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000029', 'A000029', 'A000052', 'A000087', 'A000088', 'A000089', 'A000154', 'A000155', 'A000223', 'A000261', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314809', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14259', '2023-02-03', '216740', '2020-08-01', NULL, 'BHAVYANSH PODDAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ASHISH PODDAR', 'JAGRITI PODDAR', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 404 ,SHEETAL COMPLEX NIVARANPUR ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903142939', '', 'FLAT NO - 404 ,SHEETAL COMPLEX NIVARANPUR ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7033018557', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000041', 'A000041', 'A000041', 'A000067', 'A000115', 'A000156', 'A000157', 'A000185', 'A000220', 'A000243', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216740', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14260', '2022-08-05', '206271', '2020-07-27', NULL, 'JAYDEN MIGUEL', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'JESSE ARPAN HANS', 'MARIAM HANNA HEMROM', 'N/A', 'N/A', 1, 1, NULL, 'NEW GARDEN SIROMTOLI CLUB ROAD RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7631113465', '', 'NEW GARDEN SIROMTOLI CLUB ROAD RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7549101012', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000020', 'A000020', 'A000020', 'A000053', 'A000084', 'A000119', 'A000147', 'A000189', 'A000211', 'A000241', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206271', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14261', '2023-03-27', '216759', '2020-02-06', NULL, 'HREYAANSH RAJYAVARDHAN', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RISHI ROSHAN', 'MAHARANI KUNWAR', 'N/A', 'N/A', 1, 1, NULL, 'BAJRANG BHAVAN ,TRIPATHY COLONY , 48 DIVERSION ROAD , NEAR YUVRAJ PLACE ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7277001616', '', 'BAJRANG BHAVAN ,TRIPATHY COLONY , 48 DIVERSION ROAD , NEAR YUVRAJ PLACE ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9470978077', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000005', 'A000005', 'A000005', 'A000069', 'A000086', 'A000125', 'A000178', 'A000182', 'A000215', 'A000260', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216759', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14262', '2023-02-27', '216758', '2020-02-22', NULL, 'SHAURYA KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ANITOSH KUMAR', 'SIKHA SINHA ', 'N/A', 'N/A', 1, 1, NULL, 'ROAD NO - 3 CHUTIA RANCHI KRISHNAPURI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '903176602', '', 'ROAD NO - 3 CHUTIA RANCHI KRISHNAPURI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004320860', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000006', 'A000006', 'A000006', 'A000080', 'A000095', 'A000135', 'A000146', 'A000197', 'A000203', 'A000237', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216758', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14263', '2022-09-08', '216734', '2020-09-27', NULL, 'RIYANSH RAJ', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'RAVI SHANKAR KUMAR ', 'ANISHA BHARTI', 'N/A', 'N/A', 1, 1, NULL, 'QUATER NO - 95 KUSHAI COLONY DORANDA', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835680277', '', 'QUATER NO - 95 KUSHAI COLONY DORANDA', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6204040567', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 3, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000036', 'A000057', 'A000057', 'A000099', 'A000100', 'A000129', 'A000165', 'A000199', 'A000225', 'A000246', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216734', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14264', '2022-07-18', '206274', '2019-01-18', NULL, 'ETHAN SHALEEN', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'PAWAN HEMROM', 'VENUS BHENGRA', 'N/A', 'N/A', 1, 1, NULL, 'SOUTH RAILWAY COLONY RANCHI QTR NO. - TY/8A , P.O - CHUTIA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9955612990', '', 'SOUTH RAILWAY COLONY RANCHI QTR NO. - TY/8A , P.O - CHUTIA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9955612990', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000022', 'A000035', 'A000046', 'A000061', 'A000085', 'A000128', 'A000175', 'A000219', 'A000219', 'A000233', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206274', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14265', '2022-11-16', '216733', '2020-11-24', NULL, 'DEVESHI SHARMA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'RAHUL KUMAR', 'JYOTI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'FLAT A, BLOCK B ,SATYABHAMA GRAND KUSAI ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9471353191', '', 'FLAT A, BLOCK B ,SATYABHAMA GRAND KUSAI ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7250822801', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000014', 'A000031', 'A000055', 'A000055', 'A000091', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216733', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14266', '2022-07-06', '206279', '2020-10-26', NULL, 'AYAAN SHARMA', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'ARVIND KUMAR', 'SWATI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'RAM NAGAR COLONY CHUTIA POWER HOUSE RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835685082', '', 'RAM NAGAR COLONY CHUTIA POWER HOUSE RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7979767607', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000042', 'A000042', 'A000076', 'A000139', 'A000141', 'A000142', 'A000143', 'A000143', 'A000143', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206279', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14267', '2023-02-22', '216755', '2020-12-03', NULL, 'IRA BHARDWAJ', NULL, 'B+', 4, 2, 'INDIA', '1', NULL, 'SONU KUMAR PRASAD ', 'KHUSHBU', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 4 NEAR POST OFFICE CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6203554583', '', 'KRISHNAPURI ROAD NO. 4 NEAR POST OFFICE CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7979017634', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000018', 'A000032', 'A000047', 'A000108', 'A000109', 'A000149', 'A000149', 'A000180', 'A000208', 'A000240', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216755', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14268', '2023-03-10', '121676010', '2023-03-06', NULL, 'AADITRI JHA', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'ROSHAN KUMAR ', 'SHWETA KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'ROAD NO - 3 KRISHNAPURI , CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7295962198', '', 'ROAD NO - 3 KRISHNAPURI , CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8521412442', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 8, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000017', 'A000040', 'A000051', 'A000107', 'A000113', 'A000133', 'A000166', 'A000194', 'A000217', 'A000250', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '121676010', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14269', '2023-01-16', '216751', '2019-10-09', NULL, 'GUNGUN KUMARI TURI', NULL, 'NONE', 2, 2, 'INDIA', '1', NULL, 'BABLOO TURI', 'KHUSHBU KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'AT - HARIJAN DADA , GAUSHALA ROAD DUDHANI , NAG MANDIR PO- DUMKA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9798816485', '', 'AT - HARIJAN DADA , GAUSHALA ROAD DUDHANI , NAG MANDIR PO- DUMKA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8757748264', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000026', 'A000048', 'A000048', 'A000111', 'A000112', 'A000258', 'A000258', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216751', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14270', '2023-02-03', '216754', '2019-10-15', NULL, 'AAYUSHI JHA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'ASHISH KUMAR ', 'RAKHI ', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI , CHUTIA ROAD NO- 1 ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6299965295', '', 'KRISHNAPURI , CHUTIA ROAD NO- 1 ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9386624585', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000019', 'A000059', 'A000059', 'A000082', 'A000127', 'A000176', 'A000183', 'A000210', 'A000257', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216754', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14271', '2022-07-05', '183890', '2019-03-03', NULL, 'ARHAM SIDDIQUE', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'MOHAMMAD ZAUQUE SIDDIQUE ', 'AMRIN KHANAM', 'N/A', 'N/A', 1, 1, NULL, 'CENTRAL STREET SAMRAT COMPLEX MAIN ROAD', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9570208238', '', 'CENTRAL STREET SAMRAT COMPLEX MAIN ROAD', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7631794370', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000030', 'A000078', 'A000078', 'A000078', 'A000103', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183890', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14272', '2022-08-11', '216731', '2019-12-10', NULL, 'AAVYA MAHESWARI', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SURESH SABOO', 'NAJUK SABOO', 'N/A', 'N/A', 1, 1, NULL, 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7903634316', '', 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9334424621', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000016', 'A000033', 'A000033', 'A000077', 'A000094', 'A000123', 'A000167', 'A000195', 'A000213', 'A000235', 'N/A', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216731', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14273', '2022-07-04', '183884', '2019-06-19', NULL, 'ADARSH KUMAR SINGH', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SHASHI RANJAN KUMAR SINGH', 'DIPTI SINGH', 'N/A', 'N/A', 1, 1, NULL, 'H.NO - 252 RUPA SADAN A.N SINGH ROAD KUSIA COLONY DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9955773951', '', 'H.NO - 252 RUPA SADAN A.N SINGH ROAD KUSIA COLONY DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9110939277', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 3, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000028', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183884', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14274', '2023-03-20', '314801', '2019-08-07', NULL, 'ANVIE ', NULL, 'O+', 4, 2, 'INDIA', '1', NULL, 'AJIT KUMAR JHA ', 'SWETA SHARMA', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 1B , A BLOCK , OAK RESIDENCY ,CLUB ROAD RNCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9850270116', '', 'FLAT NO - 1B , A BLOCK , OAK RESIDENCY ,CLUB ROAD RNCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789500686', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000024', 'A000038', 'A000044', 'A000066', 'A000066', 'A000066', 'A000152', 'A000152', 'A000152', 'A000255', 'A000255', 'A000255', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314801', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14275', '2022-07-04', '183888', '2019-05-11', NULL, 'MELWIN EVAAN LAKRA', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'ROBIN LAKRA ', 'VICTORIA EKKA', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 5 CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6260366891', '', 'KRISHNAPURI ROAD NO. 5 CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8224001002', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 10, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000010', 'A000010', 'A000010', 'A000079', 'A000106', 'A000122', 'A000168', 'A000177', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183888', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14276', '2022-07-04', '183886', '2019-05-25', NULL, 'ADHRAV RANJAN', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'NAVIN RANJAN', 'PRIYA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'PANCHWATI ,NIVARANPUR RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8340241552', '', 'PANCHWATI ,NIVARANPUR RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835900581', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000023', 'A000056', 'A000056', 'A000056', 'A000090', 'A000150', 'A000150', 'A000191', 'A000226', 'A000254', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183886', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14277', '2022-07-06', '206278', '2019-09-30', NULL, 'RUDRANSHU GOHEL', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'HERIK RAJNIKANI GOHEL', 'MADHU KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 203 SHEETAL APARTMENT NIWARANPUR , RANCHI NEAR RAVI STORE', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004660546', '', 'FLAT NO - 203 SHEETAL APARTMENT NIWARANPUR , RANCHI NEAR RAVI STORE', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9664988743', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000009', 'A000009', 'A000009', 'A000073', 'A000096', 'A000126', 'A000161', 'A000181', 'A000214', 'A000251', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206278', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14278', '2022-06-04', '206277', '2019-10-15', NULL, 'AYANSH RAJ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SAROJ RAJAN', 'VARSHA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'RD NO - 10 , KRISHNAPURI CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8050681719', '', 'RD NO - 10 , KRISHNAPURI CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835707415', '', 1, 4, 'Prep', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000039', 'A000060', 'A000060', 'A000101', 'A000102', 'A000134', 'A000173', 'A000188', 'A000247', 'A000248', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206277', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14279', '2022-11-19', '216732', '2018-12-20', NULL, 'SHIVANSH RAJ', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'SP RANJAN', 'SP RANJAN', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 7 NEAR COLD STORAGE CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '', '', 'KRISHNAPURI ROAD NO. 7 NEAR COLD STORAGE CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7488886236', '', 1, 4, 'Prep', 1, 'A', 0, '0', 10, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000037', 'A000037', 'A000058', 'A000058', 'A000093', 'A000179', 'A000179', 'A000179', 'A000259', 'A000259', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216732', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14280', '2022-06-12', '183882', '2019-10-05', NULL, 'ALWIN LAKRA', NULL, 'NONE', 1, 2, 'INDIA', '1', NULL, 'SUBHASHISH LAKRA', 'SWETA KULLU', 'N/A', 'N/A', 1, 1, NULL, 'KADRU SRNA TOLI , RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903336486', '', 'KADRU SRNA TOLI , RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903692051', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000021', 'A000021', 'A000021', 'A000075', 'A000097', 'A000162', 'A000163', 'A000186', 'A000227', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183882', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14281', '2022-07-04', '183889', '2019-09-27', NULL, 'RIYANSHI TOPPO', NULL, 'NONE', 1, 2, 'INDIA', '1', NULL, 'RAMU ORAON ', 'NEELAM KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'FOREST COLONY QTR-NO - C- 45 DORANDA RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '', '', 'FOREST COLONY QTR-NO - C- 45 DORANDA RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7541825398', '', 1, 4, 'Prep', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000008', 'A000008', 'A000008', 'A000065', 'A000104', 'A000121', 'A000164', 'A000207', 'A000207', 'A000236', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 7, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183889', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14282', '2023-04-04', '314805', '2019-08-06', NULL, 'HARSHIT CHAUDHARY', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'SANJAY KUMAR CHAUDHARY', 'ANJALI DEVI', 'N/A', 'N/A', 4, 1, NULL, 'Q.NO - P 35 , FORSET COLONY DORANDA RANCHI ', 'RANCHI', 'Jharkhand', '', '', '', '', '', '8294349102', '', 'Q.NO - P 35 , FORSET COLONY DORANDA RANCHI ', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9471388002', '', 1, 4, 'Prep', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000015', 'A000063', 'A000083', 'A000120', 'A000160', 'A000160', 'A000200', 'A000204', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314805', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14283', '2022-05-02', '183887', '2018-07-15', NULL, 'ADITYA VISHWAKARMA', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'VIVEK VISHWAKARMA ', 'NISHA VISHWAKARMA', 'N/A', 'N/A', 1, 1, NULL, 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8319104601', '', 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8709612447', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000013', 'A000043', 'A000043', 'A000062', 'A000114', 'A000138', 'A000174', 'A000190', 'A000230', 'A000252', 'N/A', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183887', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14284', '2022-11-16', '216737', '2019-03-09', NULL, 'SHOURYA ABHINANDAN PANDEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAJ KUMAR PANDEY', 'PRIYANKA PANDEY', 'N/A', 'N/A', 1, 1, NULL, 'C/O C.S DUBEY PANCHWATI CHOWK , RAILWAY COLONY ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7903944075', '', 'C/O C.S DUBEY PANCHWATI CHOWK , RAILWAY COLONY ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7319660035', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000007', 'A000007', 'A000007', 'A000080', 'A000116', 'A000144', 'A000202', 'A000202', 'A000232', 'A000256', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216737', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14285', '2023-06-21', '314807', '2020-06-29', NULL, 'SHREYANSH RANJAN', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAVI RANJAN DUBEY', 'NAMARATA DUBEY', 'N/A', 'N/A', 1, 1, NULL, '9/C ASHOK NAGAR ,ROAD NO -1 ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '8709559009', '', '9/C ASHOK NAGAR ,ROAD NO -1 ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9608557337', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'NOT ADMITTED', 'NOT ADMITTED', 'NOT ADMITTED', 'A000012', 'A000098', 'A000131', 'A000151', 'A000184', 'A000216', 'A000244', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314807', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14254', '2023-01-16', '216738D', '2020-08-25', NULL, 'DUMMY', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'NIRAJ KUMAR PANDEY', 'PRACHI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789192091', '', 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004253628', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216738', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14288', '2023-07-18', '314810', '2019-04-29', NULL, 'AAROHI ARYA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SUBODH KUMAR TIWARI', 'RITU KUMARI', 'N/A', 'N/A', 3, 1, NULL, 'OLD AG COLONY, BEHIND HYUNDAI SHOWROOM,KADRU RANCHI ', 'RANCHI ', 'Jharkhand', 'India', '834002', '', '', '', '9905793990', '', 'OLD AG COLONY, BEHIND HYUNDAI SHOWROOM,KADRU RANCHI ', 'RANCHI ', 'Jharkhand', 'India', '834002', '', '', '', '7755911622', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 12, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', '', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314810', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14288', '2023-07-24', '319012', '2020-06-12', NULL, 'REEVA VIJAY', NULL, 'B+', 3, 2, 'INDIA', '1', NULL, 'VIVEK VIJAY', 'SONAM VIJAY ', 'N/A', 'N/A', 1, 1, NULL, 'MISTRI MOHALLA , DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '7903541900', '', 'MISTRI MOHALLA , DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '7903519203', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000081', 'A000081', 'A000081', 'A000081', 'A000110', 'A000130', 'A000148', 'A000187', 'A000209', 'A000238', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319012', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14289', '2023-07-04', '314806', '2019-07-25', NULL, 'AARUSH KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'CHANDAN KUMAR', 'MANITA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'NEW AMRAWATI COLONY, RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7667734768', '', 'NEW AMRAWATI COLONY, RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7757808230', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'FREESHIP', 'FREESHIP', 'FREESHIP', 'A000170', 'A000171', 'A000171', 'A000172', 'A000228', 'A000228', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314806', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14290', '2023-08-01', '319020', '2020-10-18', NULL, 'RIYANSH BOSE', NULL, 'B+', 4, 1, 'INDIA', '1', NULL, 'MALAY BOSE ', 'ANIMA KUMARI ', 'N/A', 'N/A', 1, 1, NULL, '19, NIWARANPUR ,DORANDA RANCHI -834002', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7870537081', '', '19, NIWARANPUR ,DORANDA RANCHI -834002', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7209228266', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000117', 'A000196', 'A000196', 'A000196', 'A000218', 'N/A', 'ADMITTED', 'ADMITTED', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319020', 0, 0, 1, '9', 'N/A', 0, 'N/A'),
('A14291', '2023-08-29', '319019', '2021-01-03', NULL, 'ANSH RAJ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAHUL KUMAR GUPTA ', 'SIMA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'BEHIND HIGH COURT ,BAZAAR MOHALLA ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '6205016267', '', 'BEHIND HIGH COURT ,BAZAAR MOHALLA ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '8210265219', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000118', 'A000169', 'A000169', 'A000198', 'A000222', 'ADMITTED', 'ADMITTED', 'ADMITTED', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319019', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14292', '2023-04-01', '314804', '2019-09-19', NULL, 'KESHAV KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SHANKAR KUMAR PANDIT', 'MANITA DEVI', 'N/A', 'N/A', 3, 1, NULL, 'KRISHNAPURI CHUTIA ,RD NO. 10 KANCHAN MENTION FLAT NO. 401 NEAR SHIV MANDIR RD-B', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7050219411', '', 'KRISHNAPURI CHUTIA ,RD NO. 10 KANCHAN MENTION FLAT NO. 401 NEAR SHIV MANDIR RD-B', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8210229961', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 4, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000224', 'A000224', 'A000224', 'A000224', 'N/A', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314804', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14293', '2023-08-30', '319018', '2020-09-19', NULL, 'MUHAMMAD TALHA RAZA', NULL, 'B+', 4, 1, 'INDIA', '1', NULL, 'MOHAMMAD AASIF', 'HEENA HAQUE', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO. 1/D SABRI ENCLAVE , MASJID ROAD, RAHMAT COLONY , DORANDA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '6205322699', '', 'FLAT NO. 1/D SABRI ENCLAVE , MASJID ROAD, RAHMAT COLONY , DORANDA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '8984949220', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 13, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000124', 'A000159', 'A000193', 'A000221', 'A000231', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319018', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14294', '2023-11-22', '319017', '2018-10-27', NULL, 'SYED MUHAMMAD HASSAAN ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SYED MOHAMMED SAJID ', 'NISHATH FATIMA', 'N/A', 'N/A', 2, 1, NULL, 'RAHMAT COLONY , NEAR SANSKRITI APARTMENT ,DORANDA RANCHI -2', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7294823367', '', 'RAHMAT COLONY , NEAR SANSKRITI APARTMENT ,DORANDA RANCHI -2', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8873575625', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000206', 'A000253', 'A000253', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '954249211445', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319017', 0, 0, 1, '12', 'N/A', 0, 'N/A'),
('A14295', '2023-11-30', '319016', '2020-08-13', NULL, 'AYANSH MANAN LAKRA', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'AMAN SAMIR LAKRA ', 'PREMIKA XALXO', 'N/A', 'N/A', 2, 1, NULL, 'GOSSNER COMPOUND , PRINCIPAL LANE RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6202804194', '', 'GOSSNER COMPOUND , PRINCIPAL LANE RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7250918550', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000205', 'A000242', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319016', 0, 0, 1, '12', 'N/A', 0, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance_type`
--

CREATE TABLE `student_attendance_type` (
  `id` int(11) NOT NULL,
  `class_code` int(11) NOT NULL,
  `class_nm` varchar(200) NOT NULL,
  `attendance_type` int(11) NOT NULL DEFAULT 1 COMMENT '1=day_wise,2=period_wise'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance_type`
--

INSERT INTO `student_attendance_type` (`id`, `class_code`, `class_nm`, `attendance_type`) VALUES
(1, 1, 'Baby Pre-Nursery', 1),
(2, 2, 'Pre-Nursery', 1),
(3, 3, 'Nursery', 1),
(4, 4, 'Prep', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_bus_facility_details`
--

CREATE TABLE `student_bus_facility_details` (
  `S_ID` int(11) DEFAULT NULL,
  `ADM_NO` mediumtext DEFAULT NULL,
  `STOPNO` int(11) DEFAULT NULL,
  `Old_STOPNO` int(11) DEFAULT NULL,
  `Applicable_Month` mediumtext DEFAULT NULL,
  `Change_Date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_ledger_opening_bal`
--

CREATE TABLE `student_ledger_opening_bal` (
  `admno` varchar(25) DEFAULT NULL,
  `monthnm` varchar(150) DEFAULT NULL,
  `total_amount` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_remarks`
--

CREATE TABLE `student_remarks` (
  `Remarks_Id` int(11) DEFAULT NULL,
  `Remarks` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_remarks`
--

INSERT INTO `student_remarks` (`Remarks_Id`, `Remarks`) VALUES
(1, 'is assertive, helpful, obedient and focused. His academic performance is praiseworthy. He is also enthusiastic about school activities and possesses good oratory skills.'),
(2, 'has a scientific temperament with the potential of being a top academic performer. He exhibits excellent leadership qualities and a positive attitude that will help him to scale great heights.'),
(3, 'is an all-rounder with exceptionally good academic record; equally noteworthy are the sporting and cultural achievements. He is well mannered and respectful towards teachers.'),
(4, 'is an impressive orator with innovative & creative mind. He is empathetic, cordial, intelligent and capable of very good academic performance. A little more regularity and tenacity will bring forth better performance in academics.'),
(5, 'is extremely helpful, responsible and well mannered. His proficiency in all disciplines can lead him to the top most position with a little more confidence and determination to compete & excel.'),
(6, 'displays good experimental skills and practical knowledge. He is intelligent, sympathetic towards peers and is an enthusiastic participant in school activities. Performs reasonably well in academics.'),
(7, 'is a good quizzer and an organised worker. He shows decency and courtesy; demonstrates positive attitude towards learning as well as sporting events.'),
(8, 'takes initiative to plan, create and direct various activities in class. Shows a high level of general awareness, is regular to school and holds the potential for a bright academic future.'),
(9, 'Excellent'),
(10, 'exhibits good listening skills, is polite and courteous with peers and teachers. He is respectful towards school authority & property and possesess the intelligence to excel in academics.'),
(11, 'is intelligent and academically sound. He displays aesthetic sensibilities but needs to be more expressive and involved in school activities for an overall personality improvement.'),
(12, 'displays good analytical skills and has an average academic record but needs to actively contribute and participate in co-curricular activities. He is well behaved and cordial.'),
(13, 'can do better.keep trying'),
(14, 'Good, is assertive, helpful, obedient and focused. Good, is assertive, helpful, obedient and focused. His academic performance is praiseworthy. He is also enthusiastic about school activities and possesses good oratory skills..'),
(15, 'is respectful, obedient & sound in academics. He needs to recognize the latent talent and gear up for active participation in sports and cultural events.'),
(16, 'very poor.work hard.'),
(17, 'displays an in-depth understanding of subjects but needs to be more expressive. He is respectful & courteous. Adopting a more confident approach can fetch him better results. Good at co-curricular activities but can do better in Academics.'),
(18, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make him an alrounder.'),
(19, 'reflects creativity & innovativeness, is sympathetic to others understanding and respects school rules. A little more concentration in studies will yield better result.'),
(20, 'exhibits pleasing etiquettes and contributes to school functions. Is obedient & regular and with a little more sincere effort in academics, he can show better result.'),
(21, 'is imaginative, an eloquent speaker generates new ideas and participates actively in group discussions. Focus on academic excellence will make him an outstanding student.'),
(24, 'is academically good, raises questions, can make and implement well thought out decisions. He can communicate appropriately as well as listens patiently. He has the ability to lead a group/team.'),
(25, 'is original, flexible, imaginative, fluent and builds on new ideas. He takes responsibilities and can get along well with others. A little more focus on academics is desired from him.'),
(22, 'has keen interest in sports but needs to identify his academic potentials and work for an overall improvement in the results. He is optimistic with good leadership qualities and is also sensitive towards environment.'),
(23, 'is extremely interactive, enthusiatic about school functions and helpful towards friends & teachers. A sincere effort towards academic improvement can help him to achieve great heights of success.'),
(26, 'is good at academics, has scientific temperament and innovative ideas. He can identify his own strengths and weaknesses and has a positive self-concept and also demonstrates good sportsmanship.'),
(27, 'is academically extra-ordinary, imaginative, fluent and creative. He takes initiative to plan and organize various creative events like seminars, quizzes, model-making etc.'),
(28, 'performs reasonably in academics, is intelligent, attentive in the class, has an inquisitive mind with scientific temperament, is empathetic towards peers and participates in most of the co-curricular activities.'),
(29, 'is intelligent, well-mannered, dynamic with excellent leadership qualities and can do better in academics by improving concentration and by being more attentive in the class. He needs to develop the ability to listen actively and carefully.'),
(30, 'is very responsible, understanding, obedient, empathetic and cordial towards others but needs to put a little more effort in academics. He is very enthusiastic about school activities and has a positive attitude.'),
(31, 'is good  at academics, well-mannered, imaginative and empathetic but is introvert and needs to communicate more effectively with peers and teachers.'),
(32, 'is good at academics, an eloquent speaker, can identify a problem as well as generate new ideas and participate in most of the co-curricular activities. He only needs to take criticism in a more positive and constructive way.'),
(33, 'is reasonably good at studies, can identify his own strengths and weaknesses and can overcome his weaknesses. He responds to criticism positively and can handle his emotions effectively.'),
(34, 'is imaginative, responsible, obedient and well-mannered. He has innovative ideas but needs to express them better and work on his academic performance.'),
(35, 'performs reasonably in academics, is intelligent, attentive in the class and is very dynamic. He only needs to improve his social skill a little by being more empathetic and tolerant towards others.'),
(36, 'is good at studies and has an inquisitive mind, can identify a problem as well as generate new and unique ideas but needs to increase his participation in co-curricular and sports activities.'),
(37, 'is dynamic with excellent leadership qualities, proficient in creative work and performing arts and has an enquiring mind with multifaceted talents. Some lessons in Yoga/Meditation will help him to control his restlessness and short temper.'),
(38, 'is extremely good at academics, imaginative, sincere, responsible and very attentive in the class. He just needs to interact a bit more with peers and be happy.'),
(39, 'is very dynamic with excellent leadership skills; actively and enthusiastically participates in co-curricular and sports activities. He just needs to be more attentive in the class and careful about studies.'),
(40, 'is assertive, helpful, obedient and focused. Her academic performance is praiseworthy. She is also enthusiastic about school activities and possesses good oratory skills.'),
(41, 'has a scientific temperament with the potential of being a top academic performer. She exhibits excellent leadership qualities and a positive attitude that will help her to scale great heights.'),
(42, 'is an all-rounder with exceptionally good academic record; equally noteworthy are the sporting and cultural achievements. She is well mannered and respectful towards teachers.'),
(43, 'is an impressive orator with innovative & creative mind. She is empathetic, cordial, intelligent and capable of very good academic performance. A little more regularity and tenacity will bring forth better performance in academics.'),
(44, 'is extremely helpful, responsible and well mannered. Her proficiency in all disciplines can lead her to the top most position with a little more confidence and determination to compete & excel.'),
(45, 'displays good experimental skills and practical knowledge. She is intelligent, sympathetic towards peers and is an enthusiastic participant in school activities. Performs reasonably well in academics.'),
(46, 'is a good quizzer and an organised worker. She shows decency and courtesy; demonstrates positive attitude towards learning as well as sporting events.'),
(47, 'takes initiative to plan, create and direct various activities in class. Shows a high level of general awareness, is regular to school and holds the potential for a bright academic future.'),
(48, 'is composed and collected and has the right approach to deal with complex situations. She is intelligent and displays good managerial skills in organizing co-curricular activities in school.'),
(49, 'exhibits good listening skills, is polite and courteous with peers and teachers. She is respectful towards school authority & property and possesess the intelligence to excel in academics.'),
(50, 'is intelligent and academically sound. She displays aesthetic sensibilities but needs to be more expressive and involved in school activities for an overall personality improvement.'),
(51, 'displays good analytical skills and has an average academic record but needs to actively contribute and participate in co-curricular activities. She is well behaved and cordial.'),
(52, 'is academically promising and shows scientific temperament. She has a flair for creative writing and can be an eloquent speaker.'),
(53, 'works with precision, neatness and accuracy, has depth of knowledge and is respectful. A little more regularity and punctuality will work wonders to enhance overall performance.'),
(54, 'is respectful, obedient & sound in academics. She needs to recognize the latent talent and gear up for active participation in sports and cultural events.'),
(55, 'possesses impressive communication skills with a good command over language. She is academically promising, can work with confidence and dedication. An active participation in co-curricular activities will make her an alrounder.'),
(56, 'displays an in-depth understanding of subjects but needs to be more expressive. She is respectful & courteous. Adopting a more confident approach can fetch her better results. Good at co-curricular activities but can do better in Academics.'),
(57, '  Good, \r\n'),
(58, 'reflects creativity & innovativeness, is sympathetic to others understanding and respects school rules. A little more concentration in studies will yield better result.'),
(59, 'exhibits pleasing etiquettes and contributes to school functions. Is obedient & regular and with a little more sincere effort in academics, she can show better result.'),
(60, 'is imaginative, an eloquent speaker generates new ideas and participates actively in group discussions. Focus on academic excellence will make her an outstanding student.'),
(64, 'is original, flexible, imaginative, fluent and builds on new ideas. She takes responsibilities and can get along well with others. A little more focus on academics is desired from her.'),
(65, 'is good at academics, has scientific temperament and innovative ideas. She can identify her own strengths and weaknesses and has a positive self-concept and also demonstrates good sportsmanship.'),
(66, 'is academically extra-ordinary, imaginative, fluent and creative. She takes initiative to plan and organize various creative events like seminars, quizzes, model-making etc.'),
(61, 'has keen interest in sports but needs to identify her academic potentials and work for an overall improvement in the results. She is optimistic with good leadership qualities and is also sensitive towards environment.'),
(62, 'is extremely interactive, enthusiatic about school functions and helpful towards friends & teachers. A sincere effort towards academic improvement can help her to achieve great heights of success.'),
(63, 'is academically good, raises questions, can make and implement well thought out decisions. She can communicate appropriately as well as listens patiently. She has the ability to lead a group/team.'),
(67, 'performs reasonably in academics, is intelligent, attentive in the class, has an inquisitive mind with scientific temperament, is empathetic towards peers and participates in most of the co-curricular activities.'),
(68, 'is intelligent, well-mannered, dynamic with excellent leadership qualities and can do better in academics by improving concentration and by being more attentive in the class. She needs to develop the ability to listen actively and carefully.'),
(69, 'is very responsible, understanding, obedient, empathetic and cordial towards others but needs to put a little more effort in academics. She is very enthusiastic about school activities and has a positive attitude.'),
(70, 'is good  at academics, well-mannered, imaginative and empathetic but is introvert and needs to communicate more effectively with peers and teachers.'),
(71, 'is good at academics, an eloquent speaker, can identify a problem as well as generate new ideas and participate in most of the co-curricular activities. She only needs to take criticism in a more positive and constructive way.'),
(72, 'is reasonably good at studies, can identify her own strengths and weaknesses and can overcome her weaknesses. She responds to criticism positively and can handle her emotions effectively.'),
(73, 'is imaginative, responsible, obedient and well-mannered. She has innovative ideas but needs to express them better and work on her academic performance.'),
(74, 'performs reasonably in academics, is intelligent, attentive in the class and is very dynamic. She only needs to improve her social skill a little by being more empathetic and tolerant towards others.'),
(75, 'is good at studies and has an inquisitive mind, can identify a problem as well as generate new and unique ideas but needs to increase her participation in co-curricular and sports activities.'),
(76, 'is dynamic with excellent leadership qualities, proficient in creative work and performing arts and has an enquiring mind with multifaceted talents. Some lessons in Yoga/Meditation will help her to control her restlessness and short temper.'),
(77, 'is extremely good at academics, imaginative, sincere, responsible and very attentive in the class. She just needs to interact a bit more with peers and be happy.'),
(78, 'is very dynamic with excellent leadership skills; actively and enthusiastically participates in co-curricular and sports activities. She just needs to be more attentive in the class and careful about studies.'),
(79, 'Satisfactory.'),
(80, 'Good.'),
(81, 'TRY HARDER,success is just a few steps ahead'),
(82, 'very poor.work hard.'),
(83, 'Good.'),
(84, 'can do better.keep trying'),
(85, 'very poor.work hard.'),
(86, 'can do better.keep trying'),
(87, 'very poor.work hard.'),
(88, 'can do better.keep trying'),
(89, 'Be Regular'),
(90, 'can do better.keep trying'),
(91, 'is assertive, helpful, obedient and focused. Her academic performance is praiseworthy. She is also enthusiastic about school activities and possesses good oratory skills.'),
(92, 'can do better.keep trying'),
(93, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make her an alrounder.'),
(94, 'very poor.work hard.'),
(95, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make her an alrounder.'),
(96, 'can do better.keep trying'),
(97, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make him an alrounder.'),
(98, 'is dynamic with excellent leadership qualities, proficient in creative work and performing arts and has an enquiring mind with multifaceted talents. Some lessons in Yoga/Meditation will help him to control his restlessness and short temper.'),
(99, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make him an alrounder.'),
(100, 'can do better.keep trying'),
(101, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make him an alrounder.'),
(102, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make her an alrounder.'),
(103, 'is academically good, raises questions, can make and implement well thought out decisions. She can communicate appropriately as well as listens patiently. She has the ability to lead a group/team.'),
(104, 'very poor.work hard.'),
(105, 'TRY HARDER,success is just a few steps ahead'),
(106, 'Good.'),
(107, 'well done'),
(108, 'is reasonably good at studies, can identify her own strengths and weaknesses and can overcome her weaknesses. She responds to criticism positively and can handle her emotions effectively.'),
(109, 'well done'),
(110, 'Good.'),
(111, 'is intelligent, well-mannered, dynamic with excellent leadership qualities and can do better in academics by improving concentration and by being more attentive in the class. He needs to develop the ability to listen actively and carefully.'),
(112, 'well done'),
(113, 'Good.'),
(114, 'well done'),
(115, 'TRY HARDER,success is just a few steps ahead'),
(116, 'Be Regular'),
(117, 'can do better.keep trying'),
(118, 'Excellent'),
(119, 'very poor.work hard.'),
(120, 'Excellent'),
(121, 'performs reasonably in academics, is intelligent, attentive in the class and is very dynamic. He only needs to improve his social skill a little by being more empathetic and tolerant towards others.'),
(122, 'can do better.keep trying'),
(123, 'Excellent'),
(124, 'well done'),
(125, 'TRY HARDER,success is just a few steps ahead'),
(126, 'can do better.keep trying'),
(127, 'well done'),
(128, 'Excellent'),
(129, 'Be Regular'),
(130, 'Excellent'),
(131, 'can do better.keep trying'),
(132, 'Excellent'),
(133, 'well done'),
(134, 'Good.'),
(135, 'Excellent'),
(136, 'well done'),
(137, 'Excellent'),
(138, 'Good. You can do better'),
(139, 'TRY HARDER,success is just a few steps ahead'),
(140, 'Be Regular'),
(141, 'TRY HARDER,success is just a few steps ahead'),
(142, 'can do better.keep trying'),
(143, 'Excellent'),
(144, 'is respectful, obedient & sound in academics. She needs to recognize the latent talent and gear up for active participation in sports and cultural events.'),
(145, 'well done'),
(146, 'Excellent'),
(147, 'well done'),
(148, 'Good.'),
(149, 'Excellent'),
(150, 'exhibits good listening skills, is polite and courteous with peers and teachers. She is respectful towards school authority & property and possesess the intelligence to excel in academics.'),
(151, 'Be Regular'),
(152, 'Excellent'),
(153, 'Good.'),
(154, 'displays good analytical skills and has an average academic record but needs to actively contribute and participate in co-curricular activities. She is well behaved and cordial.'),
(155, 'well done'),
(156, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make her an alrounder.'),
(157, 'very poor.work hard.'),
(158, 'Good.'),
(159, 'can do better.keep trying'),
(161, 'can do better.keep trying'),
(162, 'very poor.work hard.'),
(163, 'Good.'),
(160, 'displays an in-depth understanding of subjects but needs to be more expressive. She is respectful & courteous. Adopting a more confident approach can fetch her better results. Good at co-curricular activities but can do better in Academics.'),
(164, 'TRY HARDER,success is just a few steps ahead'),
(165, 'Good.'),
(166, 'Satisfactory.'),
(167, 'can do better.keep trying'),
(168, 'Good.'),
(169, 'can do better.keep trying'),
(170, 'works with precision, neatness and accuracy, has depth of knowledge and is respectful. A little more regularity and punctuality will work wonders to enhance overall performance.'),
(171, 'TRY HARDER,success is just a few steps ahead'),
(172, 'well done'),
(173, 'can do better.keep trying'),
(174, 'reflects creativity & innovativeness, is sympathetic to others understanding and respects school rules. A little more concentration in studies will yield better result.'),
(175, 'Excellent'),
(176, 'can do better.keep trying'),
(177, 'Be Regular'),
(178, 'is intelligent and academically sound. She displays aesthetic sensibilities but needs to be more expressive and involved in school activities for an overall personality improvement.'),
(179, 'Ecellent'),
(180, 'Excellent'),
(181, 'Well done.'),
(182, 'Excellent'),
(183, 'Outstanding'),
(184, 'Excellent'),
(185, 'Outstanding'),
(186, 'Well done.'),
(187, 'Excellent'),
(188, 'Outstanding'),
(189, 'Excellent'),
(190, 'Hard work is needed.'),
(191, 'Excellent'),
(192, 'Good.You can do better'),
(193, 'Well done.'),
(194, 'Good.You can do better.'),
(195, 'Well  done.'),
(196, 'Excellent'),
(197, 'Well  done.'),
(198, 'Good. You can do better.'),
(199, 'Well  done.'),
(200, 'Excellent'),
(201, 'Well done'),
(202, 'Well  done'),
(203, 'Well done'),
(204, 'Excellent'),
(205, 'GOOD'),
(206, 'Good. You can do better'),
(207, 'Well  done.'),
(208, 'Outstanding.'),
(209, 'Hard work is needed.'),
(210, 'Good. You can do better.'),
(211, 'GOOD, '),
(212, 'Good. You can do better.'),
(213, 'Outstanding.'),
(214, 'Excellent.'),
(215, 'Excellent'),
(216, 'Excellent.'),
(217, 'Outstanding.'),
(218, 'Well  done.'),
(219, 'Excellent.'),
(220, 'Outstanding.'),
(221, 'Hard work is needed.'),
(222, 'Excellent.'),
(223, 'Well done.'),
(224, 'Well  done.'),
(225, 'Outstanding.'),
(226, 'Well  done.'),
(227, 'Well done.'),
(228, 'Well  done.'),
(229, 'Excellent'),
(230, 'Excellent.'),
(231, 'Well  done.'),
(232, 'Excellent.'),
(233, 'Well done.'),
(234, 'Excellent.'),
(235, 'Well  done.'),
(236, 'Excellent.'),
(237, 'Excellent'),
(238, 'Good.You can do better.'),
(239, 'Well  done.'),
(240, 'Outstanding'),
(241, 'Outstanding.'),
(242, 'Well  done.'),
(243, 'Outstanding'),
(244, 'Well  done'),
(245, 'Excellent'),
(246, 'Outstanding'),
(247, 'Well  done.'),
(248, 'Excellent.'),
(249, 'Hard work is needed.'),
(250, 'Need hard work'),
(251, 'needs hard work .'),
(252, 'needs hard work and pay attention in class.'),
(253, 'Excellent'),
(254, 'Takes initiative to plan, create and direct various activities in class. Shows a high level of general awareness and holds the potential for a bright academic future.'),
(255, 'Needs hard work and pay attention in class.'),
(256, 'Hard work is needed.'),
(257, 'Good.You can do better.'),
(258, 'can do better.keep trying'),
(259, 'Good. You can do better'),
(260, 'Can do better.keep trying'),
(261, 'Takes initiative to plan, create and direct various activities in class. Shows a high level of general awareness and holds the potential for a bright academic future.'),
(262, 'Can do better.keep trying'),
(263, 'Exhibits pleasing etiquettes and contributes to school functions. Is obedient & regular and with a little more sincere effort in academics, he can show better result.'),
(264, 'Hard work is needed.'),
(265, 'can do better.keep trying'),
(266, 'Can do better.keep trying'),
(267, 'Good.You can do better.'),
(268, 'Hard work is needed.'),
(269, 'needs more attention towards science, maths and computer.'),
(270, 'needs more practice in maths and computer.'),
(271, 'needs more practice in maths, science and computer.'),
(272, 'needs hard work.'),
(273, 'needs more practice in maths.'),
(274, 'needs hard work in english.'),
(275, 'needs improvement in maths, science and computer.'),
(276, 'needs hard work.'),
(277, 'needs hard work and attention towards learning in class.'),
(278, 'needs improvement in maths, science and computer.'),
(279, 'needs seriousness towards board exam.'),
(280, 'needs siriousness towards board exam.'),
(281, 'needs seriousness for the board exam.'),
(282, 'needs serious preparation for board exam.'),
(283, 'needs hard work.'),
(284, 'needs more practice in maths ,science and computer.'),
(285, 'needs hard work .'),
(286, 'needs seriousness for board exam.'),
(287, 'needs improvement in english, science and computer.'),
(288, 'needs hard work.'),
(289, 'requires more practice in maths.'),
(290, 'needs more practice in maths.'),
(291, 'needs hard work.'),
(292, 'needs improvement in all the subjects.'),
(293, 'needs hard work in english.'),
(294, 'needs hard work.'),
(295, 'Excellent'),
(296, 'needs more attention towards maths, science and computer.'),
(297, 'needs more practice in maths.'),
(298, 'needs hard work.'),
(299, 'Excellent'),
(300, 'needs improvement in english.'),
(301, 'Outstanding'),
(302, 'Well  done.'),
(303, 'Good. You can do better'),
(304, 'Good. You can do better.'),
(305, 'Excellent'),
(306, 'Outstanding'),
(307, 'Excellent'),
(308, 'Outstanding'),
(309, 'Good. You can do better'),
(310, 'Good.You can do better.'),
(311, 'Outstanding.'),
(312, 'Excellent'),
(313, 'Be regular in the exam.'),
(314, 'Excellent'),
(315, 'Hard work is needed.'),
(316, 'Outstanding'),
(317, 'Outstanding.'),
(318, 'Excellent.'),
(319, 'Outstanding'),
(320, 'Hard work is needed.Be regular in the class.'),
(321, 'Good. You can do better.'),
(322, 'Good.You can do better.'),
(323, 'Hard work is needed.'),
(324, 'Good.You can do better.'),
(325, 'Excellent'),
(326, 'Outstanding'),
(327, 'Excellent'),
(328, 'Be regular in the exam.'),
(329, 'Outstanding'),
(330, 'Hard work is needed.You can do better.Be regular in the class.'),
(331, 'Outstanding.'),
(332, 'Outstanding'),
(333, 'Outstanding.'),
(334, 'Outstanding'),
(335, 'Excellent.'),
(336, 'Good.You can do better.'),
(337, 'Outstanding'),
(338, 'Hard work is needed.Be regular in the class.'),
(339, 'Good.You can do better.'),
(340, 'Excellent.'),
(341, 'Good.You can do better.'),
(342, 'Outstanding'),
(343, 'Outstanding.'),
(344, 'Excellent.'),
(345, 'Excellent'),
(346, 'Hard work is needed.Be regular in the class.'),
(347, 'She is very responsible, understanding, obedient, empathetic and cordial towards others but needs to put a little more effort in academics. '),
(348, 'Needs hard work and attention towards learning in class.'),
(349, 'Needs hard work and attention towards learning in class.'),
(350, 'Can do better.keep trying'),
(351, 'Needs hard work and pay attention in class.'),
(352, 'Hard work is needed.You can do better.'),
(353, 'Needs hard work and attention towards learning in class.'),
(354, 'Needs improvement in all the subjects.'),
(355, 'Can do better. Keep trying.'),
(356, 'Needs hard work and pay attention in class.'),
(357, 'Can do better.keep trying.'),
(358, 'Needs improvement in all the subjects.'),
(359, 'Needs hard work and pay attention in class.'),
(360, 'Good. You can do better'),
(361, 'takes initiative to plan, create and direct various activities in class. Shows a high level of general awareness, holds the potential for a bright academic future.'),
(362, 'hard work is needed.Be regular in the class.'),
(363, 'hard work is needed.'),
(364, 'needs hard work and pay attention in class.'),
(365, 'needs hard work and attention towards learning in class.'),
(366, 'needs hard work and attention towards learning in class.'),
(367, 'hard work is needed.You can do better.'),
(368, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make her an alrounder.'),
(369, 'Can do better.keep trying'),
(370, 'he is very responsible, understanding, obedient, empathetic and cordial towards others but needs to put a little more effort in academics. '),
(371, 'needs hard work and attention towards learning in class.'),
(372, 'Can do better. Keep trying.'),
(373, 'is good at academics. You can do better'),
(374, 'needs hard work and pay attention in class.'),
(375, 'instead of your good performance you can do better.'),
(376, 'hard work is needed.You can do better.'),
(377, 'needs hard work and pay attention in class.'),
(378, 'can do better.keep trying'),
(379, 'needs hard work and attention towards learning in class.'),
(380, 'can do better.keep trying'),
(381, 'needs improvement in all the subjects.'),
(382, 'needs hard work and attention towards learning in class.'),
(383, 'needs improvement in all the subjects.'),
(384, 'needs hard work and attention towards learning in class.'),
(385, 'can do better.keep trying'),
(386, 'needs hard work and pay attention in class.'),
(387, 'needs hard work and attention towards learning in class.'),
(388, 'hard work is needed.You can do better.'),
(389, 'Good.You can do better.'),
(390, 'hard work is needed.You can do better.'),
(391, 'is very responsible, understanding, obedient, empathetic and cordial towards others but needs to put a little more effort in academics. She is very enthusiastic about school activities and has a positive attitude.'),
(392, 'hard work is needed.Be regular in the class.'),
(393, 'needs hard work and attention towards learning in class.'),
(394, 'Excellent'),
(395, 'GOOD'),
(396, 'can do better.keep trying'),
(397, 'GOOD'),
(398, 'can do better.keep trying'),
(399, 'Hard work is needed.Be regular in the class.'),
(400, 'very poor.work hard.'),
(401, 'Excellent.'),
(402, 'can do better.keep trying'),
(403, 'Good. You can do better.'),
(404, 'Good.You can do better.'),
(405, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make her an alrounder.'),
(406, 'Good.You can do better'),
(407, 'Outstanding'),
(408, 'Can do better. Keep trying.'),
(409, 'Be Regular'),
(410, 'Outstanding.'),
(411, 'can do better.keep trying'),
(412, 'Can do better. Keep trying.'),
(413, 'Good.You can do better.'),
(414, 'Ecellent'),
(415, 'can do better.keep trying'),
(416, 'Ecellent'),
(417, 'Hard work is needed.'),
(418, 'be regular and work hard'),
(419, 'Be regular during exam'),
(420, 'Ecellent'),
(421, 'Excellent'),
(422, 'Outstanding'),
(423, 'Good.You can do better.'),
(424, 'Excellent'),
(425, 'Outstanding.'),
(426, 'Be regular during exams.'),
(427, 'can do better.keep trying'),
(428, 'Outstanding'),
(429, 'OUTSTANDING'),
(430, 'Excellent ! keep it up.'),
(431, 'needs hard work and pay attention in class.'),
(432, 'Hard work is needed.'),
(433, 'can do better.keep trying'),
(434, 'Outstanding'),
(435, 'Ecellent'),
(436, 'Hard work is needed.'),
(437, 'Ecellent'),
(438, 'GOOD, '),
(439, 'needs hard work.'),
(440, 'Good.'),
(441, 'Hard work is needed.'),
(442, 'GOOD'),
(443, 'Hard work is needed.'),
(444, 'Can do better. Keep trying.'),
(445, 'very poor.work hard.'),
(446, 'Can do better. Keep trying.'),
(447, 'GOOD'),
(448, 'very poor.work hard.'),
(449, 'GOOD'),
(450, 'Can do better.keep trying.'),
(451, 'Hard work is needed.Be regular in the class.'),
(452, 'can do better.keep trying'),
(453, 'Can do better. Keep trying.'),
(454, 'Hard work is needed.'),
(455, 'Can do better. Keep trying.'),
(456, 'Hard work is needed.'),
(457, 'Hard work is needed.Be regular in the class.'),
(458, 'very poor.work hard.'),
(459, 'Good.'),
(460, 'Can do better.keep trying.'),
(461, 'Good.You can do better.'),
(462, 'Ecellent'),
(463, 'Good. You can do better'),
(464, 'Ecellent'),
(465, 'Good.You can do better.'),
(466, 'Can do better. Keep trying.'),
(467, 'Ecellent'),
(468, 'Good. You can do better.'),
(469, 'hard work is needed.You can do better.'),
(470, 'Good. You can do better'),
(471, 'Can do better. Keep trying.'),
(472, 'Outstanding'),
(473, 'Good. You can do better'),
(474, 'Excellent'),
(475, 'Good. You can do better'),
(476, 'excellent'),
(477, 'GOOD'),
(478, 'excellent'),
(479, 'Very good.'),
(480, 'can do better.keep trying'),
(481, 'hard work is needed . can do better.'),
(482, 'Good. You can do better'),
(483, 'Good.You can do better'),
(484, 'needs hard work and pay attention in class.'),
(485, 'Good. You can do better.'),
(486, 'Hard work is needed.You can do better.Be regular in the class.'),
(487, 'needs  more  practice  in  literature  and  science'),
(488, 'needs  hardwork  in  hindi  and  literature'),
(489, 'Good.You can do better.'),
(490, 'Be regular during exam'),
(491, 'Be regular during exams.'),
(492, 'Be regular during exams'),
(493, 'TRY HARDER,success is just a few steps ahead'),
(494, 'GOOD'),
(495, 'Can do better. Keep trying.'),
(496, 'be regular and work hard'),
(497, 'GOOD'),
(498, 'can do better.keep trying'),
(499, 'YOU PERFOPM WELL IF YOU TRY.'),
(500, 'TRY HARDER,success is just a few steps ahead'),
(501, 'NEEDS MORE HARD WORK.'),
(502, 'needs hard work and pay attention in class.'),
(503, 'NEEDS A LOT OF HARD WORK IN THE MAJORITY SUBJECTS.'),
(504, 'very poor.work hard.'),
(505, 'START FROM THE BASICS. A LOT OF LABOUR IS NEEDED.'),
(506, 'Well done.'),
(507, 'very poor.work hard.'),
(508, 'NEEDS VERY HARD WORK IN ALL THE SUBJECTS.'),
(509, 'Good.You can do better.'),
(510, 'Good.'),
(511, 'Can do better. Keep trying.'),
(512, 'YOUR ACADEMIC PERFORMANCE IS VERY GOOD.YOU NEED TO WORK MORE ON YOUR BEHAVIOURAL AND HYPERACTIVE SIDE.'),
(513, 'be regular and work hard'),
(514, 'Can do better. Keep trying.'),
(515, 'YOUR PERFORMANCE IS GOOD. IMPROVE YOUR CONCENTRATION AND MOOD.'),
(516, 'can do better.keep trying'),
(517, 'Needs hard work and pay attention in class.'),
(518, 'NEEDS HARD WORK IN MAJORITY SUBJECTS.'),
(519, 'Good.You can do better.'),
(520, 'needs more practice in maths, science and computer.'),
(521, 'NEEDS A LOT OF HARD WORK.'),
(522, 'be regular and work hard'),
(523, 'Can do better. Keep trying.'),
(524, 'Good. You can do better'),
(525, 'needs more practice in english.'),
(526, 'be regular and work hard'),
(527, 'needs improvement in english.'),
(528, 'NEEDS VERY HARD WORK IN ALL THE SUBJECTS.'),
(529, 'be regular and work hard'),
(530, 'Can do better. Keep trying.'),
(531, 'WORK HARD. YOU WILL GET THE FRUIT.'),
(532, 'Excellent ! keep it up.'),
(533, 'Can do better. Keep trying.'),
(534, 'YOU CAN DO BETTER.'),
(535, 'Hard work is needed.'),
(536, 'needs careness in health.'),
(537, 'Can do better. Keep trying.'),
(538, 'NEEDS SINCERITY AND A LOT OF HARD WORK.'),
(539, 'BE SERIOUS IN STUDY.'),
(540, 'HARDWORKING,OBEDIENT.KEEP IT UP.'),
(541, 'very good'),
(542, 'Excellent'),
(543, 'very good'),
(544, 'NEED HARDWORKING.'),
(545, 'VERY POOR.WORK HARD.'),
(546, 'very good'),
(547, 'GOOD.'),
(548, 'OUTSTANDING.'),
(549, 'Good. You can do better'),
(550, 'TALENTED.'),
(551, 'Ecellent'),
(552, 'outstanding'),
(553, 'CAN DO BETTER. KEEP TRYING.'),
(554, 'Hard work is needed.'),
(555, 'GOOD.'),
(556, 'excellent'),
(557, 'NEED HARDWORKING.'),
(558, 'Excellent'),
(559, 'NEED HARDWORKING.'),
(560, 'Good. You can do better'),
(561, 'GOOD.'),
(562, 'Good. You can do better'),
(563, 'VERY POOR .WORK HARD.'),
(564, 'NEED HARDWORKING.'),
(565, 'very good'),
(566, 'NEED HARDWORKING.'),
(567, 'Hard work is needed.'),
(568, 'CAN DO BETTER.KEEP IT TRYING.'),
(569, 'Excellent'),
(570, 'GOOD.'),
(571, 'Good. You can do better'),
(572, 'VERY POOR IN STUDY.'),
(573, 'Excellent'),
(574, 'VERY GOOD.'),
(575, 'WORK HARD.'),
(576, 'Hard work is needed.'),
(577, 'WORK HARD.'),
(578, 'very good'),
(579, 'WORK HARD.'),
(580, 'Excellent'),
(581, 'WORK HARD.'),
(582, 'GOOD.'),
(583, 'Excellent'),
(584, 'CAN DO BETTER.WORK HARD.'),
(585, 'Excellent'),
(586, 'Good.You can do better.'),
(587, 'CAN DO BETTER.KEEP TRYING.'),
(588, 'Outstanding'),
(589, 'WORK HARD.'),
(590, 'Hard work is needed.'),
(591, 'Good.You can do better.'),
(592, 'VERY POOR.WORK HARD.'),
(593, 'Excellent'),
(594, 'VERY POOR.WORK HARD.'),
(595, 'VERY GOOD.'),
(596, 'Hard work is needed.'),
(597, 'Good. you can d better'),
(598, 'VERY POOR.WORK HARD.'),
(599, 'Outstanding'),
(600, 'G00D.'),
(601, 'Can do better. Keep trying.'),
(602, 'Excellent ! keep it up.'),
(603, 'VERY POOR.WORK HARD.'),
(604, 'Excellent'),
(605, 'OUTSTANDING.'),
(606, 'CAN DO BETTER.KEEP TRYING.'),
(607, 'Good. You can do better'),
(608, 'GOOD.'),
(609, 'Very good'),
(610, 'NEED HARDWORKING.'),
(611, 'Outstanding'),
(612, 'Good.Yu can do better.'),
(613, 'Very good'),
(614, 'Outstanding'),
(615, 'Excellent'),
(616, 'Excellent ! Keep it up.'),
(617, 'Outstanding'),
(618, 'Outstanding'),
(619, 'Excellent'),
(620, 'Excellent !Keep it up.'),
(621, 'Good. You can do better'),
(622, 'Excellent !Keep it up.'),
(623, 'Outstanding'),
(624, 'Excellent'),
(625, 'Very good'),
(626, 'Hard work is needed.'),
(627, 'Excellent ! Keep it up.'),
(628, 'outstanding'),
(629, 'Excellent ! Keep it up.'),
(630, 'be regular and work hard'),
(631, 'Can do better. Keep trying.'),
(632, 'Excellent ! Keep it up.'),
(633, 'Excellent'),
(634, 'Excellent !Keep it up.'),
(635, 'Hard work is needed.'),
(636, 'Excellent'),
(637, 'Excellent ! Keep it up.'),
(638, 'Outstanding'),
(639, 'Can do better. Keep trying.'),
(640, 'Good. You can do better'),
(641, 'Can do better.keep trying.'),
(642, 'Excellent'),
(643, 'Good.You can do beeter.'),
(644, 'Well Done'),
(645, 'be regular and work hard'),
(646, 'Hard work is needed.'),
(647, 'be regular and work hard'),
(648, 'Good.You can do better.'),
(649, 'Good. You can do better.'),
(650, 'Well  done.'),
(651, 'Hard work is needed.You can do better.Be regular in the class.'),
(652, 'Excellent ! Keep it up.'),
(653, 'Outstanding'),
(654, 'Excellent ! Keep it up.'),
(655, 'Excellent'),
(656, 'Good.You can do better.'),
(657, 'Excellent.'),
(658, 'Good.You can do better.'),
(659, 'well done .you can do better'),
(660, 'Excellent'),
(661, 'can do better.keep trying'),
(662, 'Excellent ! Keep it up.'),
(663, 'Excellent ! Keep it up.'),
(664, 'Can do better. Keep trying.'),
(665, 'Excellent ! Keep it up.'),
(666, 'Can do better.keep trying'),
(667, 'Can do better. Keep trying.'),
(668, 'Excellent ! Keep it up.'),
(669, 'well done. you can do better'),
(670, 'Outstanding'),
(671, 'Excellent ! Keep it up.'),
(672, 'Can do better. Keep trying.'),
(673, 'hard work is needed . can do better.'),
(674, 'Excellent ! Keep it up.'),
(675, 'Good. You can do better.'),
(676, 'Good. You can do better.'),
(677, 'Good.You can do better.'),
(678, 'Excellent ! Keep it up.'),
(679, 'Hard work is needed.'),
(680, 'Good.You can do better.'),
(681, 'Good.You can do better.'),
(682, 'Excellent ! Keep it up.'),
(683, 'Good.You can d better.'),
(684, 'Hard work is needed.'),
(685, 'Excellent ! Keep it up.'),
(686, 'Excellent ! Keep it up.'),
(687, 'can do better.keep trying'),
(688, 'GOOD'),
(689, 'Can do better. Keep trying.'),
(690, 'Hard work is needed.'),
(691, 'Can do better. Keep trying.'),
(692, 'Can do better. Keep trying.'),
(693, 'Good.'),
(694, 'Can do better. Keep trying.'),
(695, 'be regular and work hard'),
(696, 'Can do better. Keep trying.'),
(697, 'Outstanding'),
(698, 'Can do better. Keep trying.'),
(699, 'Can do better. Keep trying.'),
(700, 'Hard work is needed.'),
(701, 'GOOD'),
(702, 'GOOD'),
(703, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make him an alrounder.'),
(704, 'Can do better. Keep trying.'),
(705, 'has keen interest in sports but needs to identify his academic potentials and work for an overall improvement in the results.'),
(706, 'exhibits good listening skills, is polite and courteous with peers and teachers. She is respectful towards school authority & property and possesess the intelligence to excel in academics.'),
(707, 'Can do better.keep trying.'),
(708, 'displays good experimental skills and practical knowledge. He is intelligent, sympathetic towards peers and is an enthusiastic participant in school activities. Performs reasonably well in academics.'),
(709, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make her an alrounder.'),
(711, 'Hard work is needed.'),
(712, 'be regular and work hard'),
(713, 'Can do better. Keep trying.'),
(714, 'Outstanding'),
(715, 'exhibits pleasing etiquettes and contributes to school functions. Is obedient & regular and with a little more sincere effort in academics, she can show better result.'),
(710, 'displays good experimental skills and practical knowledge. She is intelligent, sympathetic towards peers and is an enthusiastic participant in school activities. Performs reasonably well in academics.'),
(716, 'Can do better. Keep trying.'),
(717, 'be regular and work hard'),
(718, 'Can do better. Keep trying.'),
(719, 'CAN DO BETTER.KEEP TRYING.'),
(720, 'Can do better. Keep trying.'),
(721, 'Can do better.keep trying and work hard'),
(722, 'Hard work is needed.'),
(723, 'Try  harder  success is just a few steps ahead.'),
(724, 'can do better .keep trying.'),
(725, 'Hard work is needed.'),
(726, 'hard work is needed.'),
(727, 'can do better.keep trying.'),
(728, 'can do better .keep trying.'),
(729, 'Excellent'),
(730, 'Try to get better grade.'),
(731, 'Excellent.'),
(732, 'Good, try to do better.'),
(733, 'Hard work is needed.'),
(734, 'BE SERIOUS IN STUDY.'),
(735, 'Good. You can do better'),
(736, 'Good. Can do better. Keep trying.'),
(737, 'Good, try to do better.'),
(738, 'Excellent ! Keep it up.'),
(739, 'Good. You can do better'),
(740, 'CAN DO BETTER.WORK HARD.\r\n\r\n\r\n\r\n'),
(741, 'BE REGULAR.'),
(742, ' Very good, can do better '),
(743, 'Good.You can do better.'),
(744, 'VERY GOOD'),
(745, 'WORK HARD. YOU WILL GET THE FRUIT.'),
(746, 'Very good'),
(747, 'WORK HARD. YOU WILL GET THE FRUIT.'),
(748, 'hard work is needed.You can do better.'),
(749, 'WORK HARD. YOU WILL GET THE FRUIT.'),
(750, 'very good'),
(751, 'YOUR ACADEMIC PERFORMANCE IS VERY GOOD.YOU NEED TO WORK MORE ON YOUR BEHAVIOURAL AND STUDIES'),
(752, ' Work hard in chemistry and math. '),
(753, 'needs hard  work  in  hindi and  science'),
(754, 'WORK HARD. YOU WILL GET THE FRUIT.'),
(755, ' WORK HARD IN STUDIES AS WELL AS YOU NEED TO WORK MORE ON YOUR BEHAVIOURAL AND HYPERACTIVE SIDE.'),
(756, 'needs  a  lot  of hardwork and  attention  in the  class'),
(757, 'WORK HARD. YOU WILL GET THE FRUIT.'),
(758, 'well done'),
(759, ' WORK HARD IN ALL THE SUBJECT. YOU CAN D BETTER.'),
(760, ' Very good, can do better '),
(761, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(762, 'Needs hard work and pay attention in class.'),
(763, ' Very good, can do better '),
(764, 'VERY GOOD'),
(765, 'Can do better. Keep trying.'),
(766, 'Good. You can do better'),
(767, 'Can do better. Keep trying.'),
(768, 'Good.You can do better'),
(769, 'VERY GOOD'),
(770, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(771, 'Good. You can do better'),
(772, 'works with precision, neatness and accuracy. A little more regularity and punctuality will work wonders to enhance overall performance.'),
(773, 'Be regular during exam '),
(774, 'Hard work is needed.'),
(775, 'WORK HARD IN PHYSICS. ALSO IMPROVE YOUR CONCENTRATION AND MOOD.'),
(776, 'Can do better. Keep trying.'),
(777, 'Excellent ! Keep it up.'),
(778, 'Hard work is needed.'),
(779, 'can do better.keep trying'),
(780, 'Hard work is needed.Be regular in the class.'),
(781, 'Hard work is needed.'),
(782, ' WORK HARD IN ALL THE SUBJECT. YOU CAN D BETTER.'),
(783, ' WORK HARD IN STUDIES AS WELL AS YOU NEED TO WORK MORE ON YOUR BEHAVIOURAL.'),
(784, 'Good. Can do better. Keep trying.'),
(785, ' Very good, can do better '),
(786, 'Good.You can do better.'),
(787, 'TRY HARDER,success is just a few steps ahead'),
(788, 'TRY HARDER,success is just a few steps ahead'),
(789, 'can do better.keep trying'),
(790, 'NEEDS A LOT OF HARD WORK IN THE MAJORITY OF  SUBJECTS.'),
(791, ' WORK HARD IN ALL THE SUBJECT. YOU CAN D BETTER.'),
(792, ' WORK HARD IN M. SCIENCE SUBJECT. YOU CAN DO BETTER.'),
(793, 'can do better .keep trying.'),
(794, ' WORK HARD IN ENGLISH LITERATURE AND  HINDI  SUBJECT. YOU CAN DO BETTER.'),
(795, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(796, '  good, can do better '),
(797, 'Excellent'),
(798, 'Excellent'),
(799, ' Very good, can do better '),
(800, 'is hardworking and obedient.'),
(801, 'needs hardworking.'),
(802, 'is very poor. Work hard.'),
(803, 'is very good.'),
(804, 'is outstanding.'),
(805, 'is very active. Keep it up.'),
(806, 'can do better .keep trying.'),
(807, 'is very good.\r\n'),
(808, 'Excellent ! Keep it up.'),
(809, 'needs hardworking.'),
(810, ' Very good, can do better '),
(811, 'be regular and work hard'),
(812, 'needs hardwork.'),
(813, 'is very good.'),
(814, 'is very poor. Work hard.'),
(815, '  Good, can do better '),
(816, 'needs hardwork.'),
(817, '  Good, can do better '),
(818, 'needs hardwork.'),
(819, 'is very good.'),
(820, 'is very poor. Work hard.'),
(821, 'Be regular and work hard'),
(822, 'is very good.'),
(823, 'works hard.'),
(824, 'needs hard work.'),
(825, 'needs work hard.'),
(826, 'can do better. Keep try.'),
(827, 'can do better. Keep trying.'),
(828, 'is very good.'),
(829, 'can do better. Keep trying.'),
(830, 'needs hardworking.'),
(831, 'is very poor. Work hard.'),
(832, 'is very poor. Work hard.'),
(833, 'is very good.'),
(834, 'is very poor. Work hard.'),
(835, 'is very good.'),
(836, 'is very poor. Work hard.'),
(837, 'is outstanding.'),
(838, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(839, 'is very good.'),
(840, 'needs hardworking.'),
(841, 'is very poor. Work hard and be regular.'),
(842, '  Good, can do better '),
(843, '  Good, can do better '),
(844, 'Very good.'),
(845, 'Excellent ! Keep it up.'),
(846, 'Good, try to do better.'),
(847, ' Very good, can do better '),
(848, ' WORK HARD IN ALL THE SUBJECT. YOU CAN D BETTER.'),
(849, 'is very poor. Work hard and be regular.'),
(850, ' Very good, can do better '),
(851, ' Very good, can do better '),
(852, 'needs hardworking.'),
(853, 'Be regular during exam'),
(854, '  Good, can do better '),
(855, 'needs hardwork. Pay attention in the class.'),
(856, '  Good, can do better '),
(857, 'can do better. Keep trying.'),
(858, 'Be regular during exam'),
(859, ' Very good, can do better '),
(860, ' Very good, can do better '),
(861, 'is obedient, active and hardworking. Keep it up.'),
(862, ' Very good, can do better '),
(863, 'pays attention in your study.'),
(864, 'Excelent. Keep it up.'),
(865, 'can do better. Work hard.'),
(866, ' Very good, can do better '),
(867, ' WORK HARD IN ALL THE SUBJECT. YOU CAN D BETTER.'),
(868, 'needs  hardwork. Pay attention in your study.'),
(869, 'is poor in study. Work hard and be regular in the class.'),
(870, 'Excelent. Keep it up.'),
(871, 'is very good. Keep it up.'),
(872, 'He is excellent at academics,well mannered,imaginative and empethetic but is introvert and needs to communicate more effectively with peers and teachers.'),
(873, 'Excellent ! keep it up.Exhibits good listening skill is polite and courteous with peers and teachers.He is respectful towards school authority $ property and possessess the intelligence to excel in academics.'),
(874, 'can do better .keep trying.'),
(875, 'works with precision, neatness and accuracy, has depth of knowledge and is respectful. A little more regularity and punctuality will work wonders to enhance overall performance.'),
(876, 'Excellent ! keep it up.Exhibits good listening skill is polite and courteous with peers and teachers.He is respectful towards school authority $ property and possessess the intelligence to excel in academics.'),
(877, 'Hard work is needed.'),
(878, 'Hard work is needed.'),
(879, ' Very good, can do better '),
(880, 'Excellent ! keep it up.Exhibits good listening skill is polite and courteous with peers and teachers.He is respectful towards school authority $ property and possessess the intelligence to excel in academics.'),
(881, 'can do better .keep trying.'),
(882, 'Hard work is needed.'),
(883, 'Hard work is needed.'),
(884, 'Good, try to do better.'),
(885, 'needs  a  lot  of hardwork and  attention  in the  class'),
(886, '  Good, can do better '),
(887, ' Very good, can do better '),
(888, 'Can do better.keep trying and work hard'),
(889, '  Good, can do better '),
(890, 'Can do better. Keep trying.'),
(891, 'Can do better. Keep trying.'),
(892, 'Hard work is needed.'),
(893, 'Can do better.keep trying'),
(894, 'Excellent ! Keep it up.'),
(895, ' Very good, can do better '),
(896, 'Hard work is needed.Be regular in the class.'),
(897, 'Excellent ! Keep it up.'),
(898, 'Hard work is needed.'),
(899, ' Very good, can do better '),
(900, 'Hard work is needed.Be regular in the class.'),
(901, 'Be regular during exam and do hard work.'),
(902, 'Be regular during exam and do hard work.'),
(903, 'Excellent ! Keep it up.'),
(904, ' Very good, can do better '),
(905, 'Excellent ! keep it up.'),
(906, 'can do better. Keep trying.'),
(907, '  Good, can do better '),
(908, 'Excellent ! Keep it up.'),
(909, 'Can do better. Keep trying.'),
(910, 'Can do better. Keep trying.'),
(911, 'Can do better. Keep trying.'),
(912, '  Good, can do better '),
(913, 'Hard work is needed.'),
(914, 'Hard work is needed.'),
(915, 'Hard work is needed.'),
(916, 'Hard work is needed.'),
(917, 'Be regular during exams'),
(918, ' WORK HARD IN SCIENCE SUBJECT. YOU CAN D BETTER.'),
(919, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(920, '  Good, can do better '),
(921, 'HARD WORK IS NEEDED.'),
(922, 'Can do better. Keep trying.'),
(923, 'HARD WORK IS NEEDED.'),
(924, 'WORK HARD .YOU CAN DO BETTER'),
(925, 'HARD WORK IS NEEDED.'),
(926, 'Be regular and work hard'),
(927, 'VERY GOOD.'),
(928, 'WORK HARD .YOU CAN DO BETTER'),
(929, 'can do better.keep trying'),
(930, 'WORK HARD .YOU CAN DO BETTER'),
(931, ' WORK HARD IN M. SCIENCE SUBJECT. YOU CAN DO BETTER.'),
(932, 'BE SERIOUS IN STUDY.'),
(933, 'HARD WORK IS NEEDED'),
(934, 'EXCELLENT'),
(935, 'EXCELLENT'),
(936, 'VERY GOOD'),
(937, 'HARD WORK IS NEEDED'),
(938, 'GOOD .YOU CAN DO BETTER'),
(939, '  Good, can do better '),
(940, 'VERY GOOD'),
(941, 'WORK HARD YOU CAN DO BETTER'),
(942, 'Outstanding ! Keep it up.'),
(943, 'Good .You can do better.'),
(944, 'Excellent ! Keep it up.'),
(945, 'YOU NEED A LOT OF HARD WORK AND CONCENTRATION.'),
(946, 'Very good.'),
(947, 'Outstanding ! Keep it up.'),
(948, 'YOU CAN DO BETTER.'),
(949, ' WORK HARD IN ALL THE SUBJECT. YOU CAN D BETTER.'),
(950, 'Excelent. Keep it up.'),
(951, 'Outstanding ! keep it up.'),
(952, ' Very good, can do better '),
(953, 'Excellent'),
(954, 'YOU START FROM THE BEGINNING.YOU HAVE TO LABOUR HARD.'),
(955, 'Outstanding ! Keep it up.'),
(956, '  Good, can do better '),
(957, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(958, '  Good, can do better '),
(959, '  Good, can do better '),
(960, ' Very good, can do better '),
(961, 'Outstanding ! Keep it up.'),
(962, '  Good, can do better '),
(963, 'Excellent'),
(964, 'Good. Keep it up.'),
(965, 'Be Regular'),
(966, 'TRY HARD IN ALL THE SUBJECTS.'),
(967, 'Outstanding ! Keep it up.'),
(968, 'WORK HARD'),
(969, 'Outstanding ! Keep it up.'),
(970, 'YOU BEGIN FROM THE BASICS.'),
(971, 'Outstandin ! Keep it up.'),
(972, 'Outstanding ! Keep it up.'),
(973, 'YOU NEEDS TO BE A LOT OF HARD WORK.'),
(974, '  Good, can do better '),
(975, 'YOU NEED HARD WORK.'),
(976, 'Outstanding ! Keep it up.'),
(977, 'YOU NEED MORE CONCENTRATION.'),
(978, '  Good, can do better '),
(979, 'excellent'),
(980, 'Very good. Keep it up.'),
(981, 'Very good.Keep it up.'),
(982, 'Outstanding ! Keep it up.'),
(983, 'Outstanding ! Keep it up.'),
(984, 'Outstanding ! Keep it up.'),
(985, 'Outstanding ! Keep it up.'),
(986, 'needs improvement in maths.'),
(987, '  Good, can do better '),
(988, 'Work hard in maths and science'),
(989, ' Very good, can do better '),
(990, '  Good, can do better '),
(991, '  Good, can do better '),
(992, '  Good, can do better ');
INSERT INTO `student_remarks` (`Remarks_Id`, `Remarks`) VALUES
(993, '  Good, can do better '),
(994, ' Very good, can do better '),
(995, 'Excelent. Keep it up.'),
(996, 'very good,can do  better .keep trying'),
(997, '  Good, can do better '),
(998, ' Very good, can do better '),
(999, 'GOOD .YOU CAN DO BETTER'),
(1000, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1001, ' WORK HARD IN  G.K SUBJECT. YOU CAN DO BETTER.'),
(1002, '  Good, can do better '),
(1003, 'Be regular during exam'),
(1004, 'very good and nice .success is a few steps ahead'),
(1005, ' WORK HARD IN G.K  SUBJECT. YOU CAN DO  BETTER.'),
(1006, 'you can do better .keep trying'),
(1007, '  Good, can do better '),
(1008, 'very good.success is just a few steps ahead'),
(1009, '  good, can do better .'),
(1010, 'be regular in exams  and study hard all subjects'),
(1011, ' Very good, can do better '),
(1012, '  Good, can do better '),
(1013, 'you can do better, try it'),
(1014, ' Very good, can do better '),
(1015, 'Be regular during exam'),
(1016, 'Excellent ! keep it up.'),
(1017, '  Good, can do better '),
(1018, '  Good, can do better '),
(1019, '  Good, can do better '),
(1020, '  Good, can do better '),
(1021, 'Can do better. Keep trying.'),
(1022, 'NEEDS VERY HARD WORK IN ALL THE SUBJECTS.'),
(1023, 'Be regular during exam and do hard work.'),
(1024, 'Outstanding'),
(1025, 'Outstanding'),
(1026, 'Outstanding'),
(1027, 'Outstanding'),
(1028, 'TRY HARDER,success is \r\n       just a few steps ahead'),
(1029, 'exhibits good listening skills, is polite \r\nand courteous with peers and teachers.\r\n He is respectful towards\r\n school authority \r\n& property and possesess \r\nthe intelligence\r\n to excel in academics.'),
(1030, 'exhibits good listening skills, is polite \r\nand courteous with peers \r\nand teachers.\r\n He is respectful towards\r\n school authority \r\n& property and possesess \r\nthe intelligence\r\n to excel in academics.'),
(1031, '  Good, can do better '),
(1032, 'is obedient, active and hardworking.\r\n Keep it up.'),
(1033, 'is very good. \r\nKeep it up.'),
(1034, 'very good,can do better.\r\nkeep trying'),
(1035, 'is very good. \r\nKeep it up.'),
(1036, 'TRY HARDER,\r\nsuccess is just a \r\nfew steps ahead'),
(1037, 'Good.\r\nYou can do better.'),
(1038, '  Good, \r\ncan do better '),
(1039, 'CAN DO BETTER. \r\nKEEP TRYING.'),
(1040, '  Good,\r\n can do better '),
(1041, ' WORK HARD IN ALL \r\nTHE SUBJECT. \r\nYOU CAN DO BETTER.'),
(1042, 'GOOD YOU CAN DO  BETTER'),
(1043, 'GOOD YOU CAN DO BETTER'),
(1044, '  Good, \r\ncan do better '),
(1045, 'TRY HARDER .SUCCESS IS JUST FEW STEPS AHEAD'),
(1046, 'HARD WORK IS NEEDED'),
(1047, '  Good, \r\ncan do better '),
(1048, 'HARD WORK IS NEEDED'),
(1049, 'VERY GOOD'),
(1050, 'EXCELLENT'),
(1051, 'HARD WORK IS NEEDED'),
(1052, '  Good, \r\ncan do better '),
(1053, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1054, 'TRY HARDER.SUCCESS IS JUST FEW STEPS AHEAD'),
(1055, ' WORK HARD YOU CAN DO BETTER '),
(1056, 'HARD WORK IS NEEDED'),
(1057, 'TRY HARDER SUCCESS IS JUST FEW STEPS AHEAD'),
(1058, '  Good, \r\ncan do better '),
(1059, ' WORK HARD IN G.K  SUBJECT. YOU CAN DO BETTER.'),
(1060, 'can do better .keep trying.'),
(1061, 'Excellent ! Keep it up.'),
(1062, 'Be regular during exams'),
(1063, 'Outstanding.'),
(1064, ' WORK HARD IN G.K AND M. SCI SUBJECT. YOU CAN DO BETTER.'),
(1065, 'can do better .keep trying.'),
(1066, 'Excellent ! keep it up.'),
(1067, 'WORK HARD. \r\nYOU WILL GET THE FRUIT.'),
(1068, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1069, 'WORK HARD. \r\nYOU WILL GET THE FRUIT.'),
(1070, 'YOUR ACADEMIC \r\nPERFORMANCE IS VERY GOOD.\r\nYOU NEED TO WORK MORE \r\nON YOUR BEHAVIOURAL AND\r\nSTUDIES'),
(1071, '  Work hard in chemistry\r\n  and math. '),
(1072, ' WORK HARD. \r\nYOU WILL GET THE FRUIT.'),
(1073, 'needs hard  work  in  english literature and  english language'),
(1074, 'WORK HARD IN STUDIES \r\nAS WELL AS YOU NEED \r\nTO WORK MORE ON YOUR BEHAVIOURAL AND \r\nHYPERACTIVE SIDE.'),
(1075, 'WORK HARD. \r\nYOU WILL GET THE FRUIT.'),
(1076, 'WORK HARD IN ALL \r\nTHE SUBJECT. \r\nYOU CAN DO BETTER.'),
(1077, '  WORK HARD IN ALL \r\n  THE SUBJECT. \r\n  YOU CAN DO BETTER.'),
(1078, 'WORK HARD IN ALL \r\nTHE SUBJECT. \r\nYOU CAN DO BETTER.'),
(1079, 'works with precision, \r\nneatness and accuracy. \r\nA little more regularity and\r\n punctuality will work wonders\r\nto enhance overall performance.'),
(1080, 'WORK HARD IN PHYSICS. \r\nALSO IMPROVE YOUR \r\nCONCENTRATION AND MOOD.'),
(1081, ' WORK HARD IN  M. SCI,ENGLISH LANGUAGE & LITERATURE SUBJECT. YOU CAN DO BETTER.'),
(1082, 'Hard work is needed.\r\nBe regular in the class.'),
(1083, 'WORK HARD IN STUDIES \r\nAS WELL AS YOU NEED \r\nTO WORK MORE ON YOUR BEHAVIOURAL.'),
(1084, 'Good. \r\nCan do better.\r\n Keep trying'),
(1085, '  Good, \r\ncan do better '),
(1086, 'TRY HARDER,\r\nsuccess is just a\r\n few steps ahead.'),
(1087, '  Good, \r\ncan do better '),
(1088, 'TRY HARDER,\r\nsuccess is just a\r\n few steps ahead.'),
(1089, '  Good, \r\ncan do better '),
(1090, ' WORK HARD IN G.K & M. SCI  SUBJECT. YOU CAN DO BETTER.'),
(1091, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1092, 'Can do better. Keep trying.'),
(1093, 'Good. \r\nTry to be regular in the class.'),
(1094, '  Good, \r\ncan do better '),
(1095, '  Good, can do better '),
(1096, 'Good. \r\nTry to be regular in the class.'),
(1097, 'Good. Be regular in the class.'),
(1098, ' Very good, can do better '),
(1099, 'good. you can do better  and be regular  during exams.'),
(1100, 'good.  you can do better.'),
(1101, 'good .you can do better.'),
(1102, 'Can do better. Keep trying.'),
(1103, '  Good, \r\ncan do better. '),
(1104, 'Can do better. Keep trying.'),
(1105, 'Very  good . you can do better,keep  trying.'),
(1106, 'HARD WORK IS NEEDED'),
(1107, 'Hard work is needeed.You can do it.'),
(1108, 'work  hard ,  you can do better.'),
(1109, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1110, 'Good,  you can do better.'),
(1111, 'try hard in maths.you can do better.'),
(1112, 'hard work needed in all subjects.try to do beeter.'),
(1113, 'CAN DO BETTER. \r\nKEEP TRYING.'),
(1114, '  Good,\r\n can do better '),
(1115, 'Hard work is needed. Can d better.'),
(1116, ' Very good, can do better '),
(1117, 'Hard work is needed.Be regular during exam.'),
(1118, 'Can do better.Keep trying and be regular during exam.'),
(1119, 'WORK HARD. YOU WILL GET THE \r\nFRUIT.\r\n'),
(1120, '  WORK HARD'),
(1121, 'WORK HARD \r\nYOU CAN DO BETTER '),
(1122, 'WORK HARD. \r\nYOU WILL GET \r\nTHE FRUIT.'),
(1123, 'WORK HARD. \r\n'),
(1124, 'YOUR ACADEMIC \r\n\r\nPERFORMANCE IS VERY GOOD.\r\n\r\nYOU NEED TO WORK MORE \r\n\r\nON YOUR BEHAVIOURAL AND\r\n\r\nSTUDIES.'),
(1125, 'is an all-rounder with\r\n\r\n exceptionally good academic\r\n\r\n record; equally noteworthy are the sporting and cultural achievements. She is well mannered and respectful towards teachers.'),
(1126, 'WORK HARD'),
(1127, '  Good, \r\n'),
(1128, 'WORK HARD'),
(1129, '  Good, \r\n\r\n\r\n'),
(1130, 'WORK HARD'),
(1131, 'needs hard work.'),
(1132, 'WORK HARD'),
(1133, '  Good, \r\ncan do better '),
(1134, 'TRY HARD IN ALL\r\n THE SUBJECTS.'),
(1135, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1136, '   WORK HARD .\r\n  YOU CAN DO BETTER '),
(1137, '   WORK HARD. \r\n  YOU CAN DO BETTER '),
(1138, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1139, ' EXCELLENT, \r\ncan do better '),
(1140, '  Good,\r\n can do better '),
(1141, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1142, ' Very good, \r\ncan do better '),
(1143, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1144, 'Excellent ! \r\nkeep it up.'),
(1145, ' Very good, \r\ncan do better '),
(1146, '  Good,\r\n can do better '),
(1147, 'Be regular during exam\r\n and do hard work.'),
(1148, 'Excellent ! \r\nKeep it up.'),
(1149, ' Very good, \r\ncan do better '),
(1150, '  Good, \r\ncan do better '),
(1151, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1152, 'Excellent ! keep it up.'),
(1153, 'Excellent ! \r\nKeep it up.'),
(1154, ' Very good,\r\n can do better '),
(1155, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1156, '  Good, \r\ncan do better '),
(1157, 'Excellent ! \r\nKeep it up.'),
(1158, '  Good, \r\ncan do better '),
(1159, ' Very good, \r\ncan do better '),
(1160, 'Excellent !\r\n Keep it up.'),
(1161, 'Hard work is needed.'),
(1162, 'YOUR PERFORMANCE IS GOOD. IMPROVE YOUR CONCENTRATION AND MOOD.'),
(1163, 'YOUR PERFORMANCE\r\n IS GOOD. IMPROVE \r\nYOUR CONCENTRATION\r\n AND MOOD.'),
(1164, 'WORK HARD. \r\n\r\nYOU WILL GET THE FRUIT.'),
(1165, 'Hard work is needed.'),
(1166, 'needs more practice in maths.'),
(1167, 'needs more practice in \r\n              maths.'),
(1168, 'WORK HARD. \r\nYOU WILL GET \r\nTHE FRUIT.'),
(1169, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1170, 'Hard work is needed.'),
(1171, ' Very good,\r\n can do better '),
(1172, '       Very good,\r\ncan do better '),
(1173, 'Very good. Keep it up.'),
(1174, 'very good'),
(1175, 'Very good,can do better. '),
(1176, 'Hard work is needed.'),
(1177, 'Good.You can do \r\nbetter.'),
(1178, 'hard work is needed.'),
(1179, 'be regular and work hard'),
(1180, 'hard word and concentration\r\nis needed.\r\n'),
(1181, 'Be regular during exam and \r\ndo hard work.'),
(1182, 'Be regular during exam \r\nand do hard work.'),
(1183, 'be regular and work hard'),
(1184, 'be regular and work \r\nhard'),
(1185, 'hard word and \r\nconcentrationis needed.\r\n'),
(1186, 'hard word and \r\nconcentration is needed.\r\n'),
(1187, 'hard work is needed.'),
(1188, 'Good. \r\nCan do better.\r\n'),
(1189, 'Very good,can do better '),
(1190, 'Very good.\r\ncan do better. '),
(1191, 'Good.\r\nYou can do better.'),
(1192, 'can do better.\r\nkeep trying.'),
(1193, 'can do better.'),
(1194, 'hard work is needed.'),
(1195, 'needs hard work and attention \r\n towards learning in class.'),
(1196, 'Good.\r\nYou can do better'),
(1197, 'Good.\r\n'),
(1198, 'wok hard'),
(1199, 'work hard'),
(1200, '   WORK HARD. \r\n  YOU CAN DO BETTER '),
(1201, 'work hard'),
(1202, '   WORK HARD \r\n'),
(1203, 'WORK HARD'),
(1204, 'GOOD'),
(1205, 'CAN DO BETTER'),
(1206, '  Good, \r\n\r\n\r\ncan do better '),
(1207, 'GOOD'),
(1208, '   WORK HARD \r\n'),
(1209, '   WORK HARD \r\n\r\n\r\n\r\n  YOU CAN DO BETTER '),
(1210, '  Good, \r\n'),
(1211, 'GOOD'),
(1212, '  Good, \r\n\r\n\r\ncan do better '),
(1213, '   WORK HARD \r\n'),
(1214, '  Good, \r\n\r\n\r\ncan do better '),
(1215, '       Very good,\r\n\r\n\r\n     can do better '),
(1216, '   WORK HARD \r\n'),
(1217, '   WORK HARD \r\n\r\n\r\n  YOU CAN DO BETTER '),
(1218, '   WORK HARD \r\n'),
(1219, '  Good, \r\n\r\n\r\ncan do better '),
(1220, '   WORK HARD \r\n'),
(1221, '   WORK HARD \r\n\r\n\r\n  YOU CAN DO BETTER '),
(1222, '   WORK HARD \r\n'),
(1223, '       Very good,\r\n\r\n\r\n     can do better '),
(1224, 'WORK HARD'),
(1225, '       Very good,\r\n\r\n\r\n     can do better '),
(1226, '  Good, \r\n\r\n\r\ncan do better '),
(1227, '       Very good,\r\n\r\n\r\n     can do better '),
(1228, 'hard work is needed.\r\nYou can do better.'),
(1229, 'hard work is needed.\r\n'),
(1230, 'Can do better. '),
(1231, 'Hard work is needed.'),
(1232, 'Good. \r\nCan do better.\r\n'),
(1233, 'Can do better.'),
(1234, 'Good. You can do better.'),
(1235, 'Good. \r\nCan do better.\r\n'),
(1236, 'Good. You can do better'),
(1237, 'Hard work is needed.'),
(1238, '   WORK HARD \r\n'),
(1239, 'NEEDS A LOT OF HARD WORK.'),
(1240, '  WORK HARD'),
(1241, 'GOOD.'),
(1242, 'Can do better. '),
(1243, '  Good, can do better '),
(1244, 'Can do better. Keep trying.'),
(1245, 'GOOD'),
(1246, 'Hard work is needed..'),
(1247, '   WORK HARD \r\n'),
(1248, 'Hard work is needed.'),
(1249, 'can do better .keep trying.'),
(1250, 'can do better .'),
(1251, '  Good, \r\n'),
(1252, '   WORK HARD \r\n'),
(1253, '  Good, \r\n\r\n\r\ncan do better '),
(1254, '  Good, \r\n\r\n\r\n'),
(1255, ' WORK HARD IN  G.K SUBJECT. \r\nYOU CAN DO BETTER.'),
(1256, 'needs hard work. You can do better.'),
(1257, '  Good, \r\n'),
(1258, 'Outstanding'),
(1259, ' Very good, \r\ncan do better '),
(1260, '      is very good.She can do better.\r\n\r\n     '),
(1261, 'is capable of achieving more.\r\nwork hard.'),
(1262, 'is capable of achieving\r\nmore.Work hard.'),
(1263, ' \r\n       good job,  \r\ncan do better. '),
(1264, 'pay more attention\r\nin studies,to attain\r\na better grade.'),
(1265, '       Very good,\r\n\r\n\r\n     can do better '),
(1266, 'NEEDS HARD WORK IN \r\nLITERATURE  AND HINDI'),
(1267, 'Be regular during exams'),
(1268, 'YOU ARE THE  BEST.\r\nA LITTLE MORE PRACTICE IN \r\nSPEAKING SKILLS CAN MAKE \r\nYOU PERFECT.\r\n'),
(1269, 'needs hard work.'),
(1270, 'needs more attention \r\ntowards math, science and comuter. '),
(1271, 'needs hard work.'),
(1272, 'needs more practice\r\nin maths, science and computer.'),
(1273, 'needs more practice in\r\nmaths.'),
(1274, 'needs more practice in \r\nmaths.'),
(1275, 'needs more practice\r\nin maths.'),
(1276, 'work harder in \r\nmathematics, computer, \r\nsanakrit to gain a\r\nbetter position.\r\n'),
(1277, '   WORK HARD \r\n'),
(1278, ' WORK HARD IN \r\nALL THE SUBJECT.\r\n YOU CAN D BETTER.'),
(1279, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1280, 'needs hard work.'),
(1281, 'is average in overall.'),
(1282, 'is good in overall.'),
(1283, 'needs hard work.'),
(1284, '  Good,can do better.'),
(1285, 'needs more attention in study.'),
(1286, 'needs more practice.'),
(1287, 'needs seriousness.'),
(1288, 'needs hardwork.'),
(1289, 'needs hard work.'),
(1290, 'is good in overall.'),
(1291, 'needs hard work.'),
(1292, 'is good in overall.'),
(1293, 'needs hard work.'),
(1294, 'needs improvement.'),
(1295, 'Good. \r\nYou can \r\ndo better'),
(1296, 'needs hard work. You can do better.'),
(1297, 'work hard\r\nin Maths,Sanskrit,\r\ncomputer.A little more\r\nconcentration will help\r\n you fetch good marks.'),
(1298, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1299, ' WORK HARD\r\n IN ALL THE\r\n SUBJECTS.\r\n\r\n. YOU CAN\r\n DO BETTER.'),
(1300, 'Paying more\r\n attention in studies\r\n will help you attain\r\n good marks.'),
(1301, 'Work hard  in Computer\r\n\r\n and Mathematics.'),
(1302, 'she is good. She can do better.'),
(1303, 'Excelent. Keep it up.'),
(1304, 'is capable of\r\n attaining a better\r\n position in the class\r\n. A little more \r\nconcentration in studies \r\nand improvement in\r\n handwriting will\r\n lift up your\r\n grade.'),
(1305, 'He is good.He can do better.'),
(1306, 'Excelent. Keep it up.'),
(1307, 'has performed good.She can do better.'),
(1308, '  WORK HARD\r\n IN ALL  THE\r\n  SUBJECTS.\r\n \r\n  YOU CAN DO BETTER.'),
(1309, 'has performed good. She can do better'),
(1310, 'work hard.you can do better'),
(1311, 'Very good.can do better'),
(1312, 'is very good. Can do better'),
(1313, 'is very good.Can do better'),
(1314, 'work hard.you can do better'),
(1315, 'very good. can do better'),
(1316, 'is very poor.                                                         work hard.'),
(1317, 'is hard working.\r\nPay more attention\r\n in Mathematics\r\n,Computer \r\nandlight subjects.'),
(1318, 'works hard.'),
(1319, 'very good.she can do better'),
(1320, 'good.can do better.'),
(1321, 'is very active.'),
(1322, 'can do better.'),
(1323, 'good'),
(1324, 'good.can do better'),
(1325, 'works hard.'),
(1326, 'can do better.'),
(1327, 'work hard in all subjects'),
(1328, 'good'),
(1329, 'works hard.'),
(1330, 'can do better.'),
(1331, '\r\nhas not perfomed\r\n well.Paying more\r\n attention\r\nin studies\r\n and boldness\r\n in attitude can\r\n improve your\r\n academics.'),
(1332, 'can do better.'),
(1333, 'work hard.'),
(1334, 'can do better.'),
(1335, 'work hard.'),
(1336, 'displays good experimental skills and practical knowledge. He is intelligent, sympathetic towards peers. Concentration in mathematics and Hindi can lift his academics.'),
(1337, 'NEEDS TO WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1338, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1339, '   WORK HARD \r\n'),
(1340, '   WORK HARD .\r\n  YOU CAN\r\n DO BETTER. '),
(1341, 'BE SERIOUS IN STUDY.'),
(1342, 'BE SERIOUS IN STUDIES.'),
(1343, '   WORK HARD \r\n\r\n\r\n  YOU CAN DO BETTER '),
(1344, 'adheres to timelines, is motivated and involved in co-curricular activities. A little more concentration in academics can make her an alrounder.'),
(1345, 'adheres to\r\n timelines, is motivated\r\nand involved in \r\nco-curricular activities.\r\n A little more\r\n concentration\r\n in academics can\r\n make her an\r\n alrounder.'),
(1346, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1347, '   WORK HARD \r\n  YOU CAN DO\r\n BETTER '),
(1348, '   WORK HARD \r\n  YOU CAN\r\n DO BETTER '),
(1349, 'You are capable\r\n of doing\r\n much better.\r\n A little more \r\nconcentration is \r\nneeded to upgrade\r\n your performance.'),
(1350, 'your introvertness\r\n hinders your\r\n perfimance. \r\nBe bold in the\r\n class to clear\r\n all your doubts.'),
(1351, 'adheres to timelines\r\n, is motivated and\r\n involved in co-curricular\r\n activities. A little\r\n more concentration\r\n in academics can\r\n make her\r\n an alrounder.Excellent !'),
(1352, ' WORK HARD\r\n IN ALL THE \r\nSUBJECTS. \r\nYOU CAN DO\r\n BETTER.'),
(1353, ' WORK HARD\r\n IN ALL THE  SUBJECT.\r\n YOU CAN DO BETTER.'),
(1354, '  WORK HARD\r\n IN ALL \r\n  THE SUBJECT. \r\n  YOU CAN\r\n DO BETTER.'),
(1355, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1356, 'Hard work is needed.'),
(1357, '  WORK HARD\r\n IN ALL \r\n  THE SUBJECT. \r\n  YOU CAN\r\n DO BETTER.'),
(1358, ' WORK HARD \r\nIN \r\nALL THE\r\n SUBJECT.\r\n YOU CAN\r\nDO BETTER.'),
(1359, 'Hard work is needed.'),
(1360, 'can do better.keep trying'),
(1361, 'do more of \r\nthe physical activities\r\n to avoid absentism.\r\nYou have good\r\n cocentration power, \r\nwork harder.'),
(1362, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1363, 'work hard in \r\n\r\nwork hard in M. science. \r\nyou can do better.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(1364, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1365, 'work hard in English Literature\r\nand Hindi subjects.\r\nYou can do better. '),
(1366, 'talkative behaviour and less attentiveness hinders your performance.Work hard.'),
(1367, 'Hard work in M. science subject.\r\nCan do better.'),
(1368, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1369, '   WORK HARD .\r\n  YOU CAN \r\nDO BETTER '),
(1370, '      is very good\r\n.She can \r\ndo better.\r\n\r\n     '),
(1371, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1372, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1373, 'work hard in all the subjects. \r\nYou can do better.'),
(1374, 'work hard in science subject.\r\ncan do better. '),
(1375, 'work hard in science subject. \r\nyou can do better.'),
(1376, 'Work hard in M. science subject. \r\nYou can do better.'),
(1377, '  WORK HARD\r\n IN ALL \r\n  THE SUBJECTS. \r\n  YOU CAN\r\n DO BETTER.'),
(1378, 'adheres to\r\ntimelines, \r\nis motivated\r\nand involved in \r\nco-curricular\r\n activities. A little\r\nmore\r\n concentration \r\nin academics can \r\nmake her\r\n an alrounder.'),
(1379, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1380, '  WORK\r\n HARD IN\r\n ALL \r\n  THE \r\nSUBJECT. \r\n  YOU CAN \r\nDO BETTER.'),
(1381, '   WORK HARD \r\n'),
(1382, 'adheres to\r\n timelines\r\n, is motivated\r\nand involved \r\nin \r\nco-curricular\r\n activities.\r\n A little more\r\n concentration\r\n in academic \r\nis needed.\r\n\r\ns can\r\n make her an\r\n alrounder.'),
(1383, ' Good, can do\r\nbetter.'),
(1384, 'work hard in\r\n M. science subject.\r\nYou can do better.\r\n\r\n'),
(1385, 'Work hard \r\nin E. Literature and\r\nHindi subjects.'),
(1386, 'work hard\r\nin all the subjects.\r\nyou can do better.'),
(1387, 'Be regular \r\nduring exam.'),
(1388, 'work hard \r\nin M. Science subject.\r\nyou can do better.'),
(1389, 'Very good,\r\ncan do better.\r\n\r\n\r\n\r\n  '),
(1390, 'work hard\r\nin all the \r\nsubjects.\r\nyou can do \r\nberrer.'),
(1391, 'work hard \r\nin all the \r\nsubjects.\r\nyou can do \r\nbetter.'),
(1392, 'Be regular\r\n during exam '),
(1393, 'work hard\r\nin science subject.\r\nyou can do \r\nbetter.'),
(1394, 'work hard\r\nin all the subjects.\r\n'),
(1395, 'can do better .\r\nkeep trying.'),
(1396, 'be regular \r\nand work hard'),
(1397, 'can do better .\r\nkeep trying.'),
(1398, 'work hard\r\nin M. Science \r\nsubject.\r\nyou can do \r\nbetter.'),
(1399, '  Good, \r\ncan do better\r\n\r\n'),
(1400, 'work hard\r\nin G.K \r\nyou can do \r\nbetter.'),
(1401, 'work hard \r\nin all the subjects.\r\nyou can do better'),
(1402, 'Be regular\r\n in the exam.'),
(1403, 'work hard \r\nin all the subject'),
(1404, 'work hard \r\nin G.K subject.\r\nyou can do better'),
(1405, 'work hard\r\nin G.K subject\r\nyou can do better'),
(1406, 'can do better.\r\nkeep trying'),
(1407, 'work hard\r\nin M.sci & G.K subject \r\nyou can do better'),
(1408, 'work hard\r\nin M. Sci & Eng \r\nLiterature\r\nyou can do better'),
(1409, ' Good,\r\ncan do better \r\n\r\n\r\n'),
(1410, 'work hard,\r\nyou can do \r\nbetter'),
(1411, 'can do better.\r\nkeep trying'),
(1412, 'work hard \r\nin G.K & M. Sci\r\nsubject.\r\nyou can do better'),
(1413, 'GOOD  ,\r\n\r\n CAN DO BETTER'),
(1414, 'GOOD  , \r\n\r\n\r\nCAN DO BETTER'),
(1415, 'GOOD \r\n\r\nCAN DO BETTER'),
(1416, 'GOOD\r\n\r\nCAN DO BETTER'),
(1417, 'GOOD\r\n\r\n CAN DO BETTER'),
(1418, 'GOOD\r\n\r\nCAN DO BETTER'),
(1419, 'WORK HARD'),
(1420, '   WORK HARD \r\n'),
(1421, 'GOOD\r\n\r\nCAN DO BETTER'),
(1422, 'GOOD \r\n\r\nCAN DO BETTER'),
(1423, '   WORK HARD \r\n'),
(1424, 'GOOD \r\n\r\nCAN DO BETTER'),
(1425, '   WORK HARD \r\n'),
(1426, '  Good, \r\ncan do better '),
(1427, '       Very good,\r\n\r\n\r\n     can do better '),
(1428, '  Good, \r\n\r\n\r\ncan do better '),
(1429, 'Excelent. Keep it up.'),
(1430, 'TRY HARDER,success is just a few steps ahead'),
(1431, 'can do better .keep trying.'),
(1432, 'GOOD , CAN DO BETTER'),
(1433, 'WORK HARD'),
(1434, 'GOOD, CAN DO BETTER'),
(1435, 'GOOD'),
(1436, 'GOOD, CAN DO BETTER'),
(1437, 'GOOD, '),
(1438, 'GOOD, CAN DO BETTER'),
(1439, 'GOOD'),
(1440, 'WORK HARD'),
(1441, '  Good, \r\n\r\n\r\ncan do better '),
(1442, 'Good. Can do better and be regular.'),
(1443, 'Hard work is needeed.You can do it.'),
(1444, 'needs improvement in all the subjects.'),
(1445, 'Hard work is needed.Be regular in the class and exam.'),
(1446, 'Hard work is needed. '),
(1447, 'Needs hard work.'),
(1448, 'Needs hard work .'),
(1449, 'Needs hard work.'),
(1450, '       Very good,\r\n\r\n\r\n     can do better '),
(1451, 'Needs hard work.'),
(1452, '       Very good,\r\ncan do better '),
(1453, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1454, '  Good, \r\n\r\n\r\ncan do better '),
(1455, 'Needs imrovement in english, maths \r\nand science.'),
(1456, 'Needs hard work.'),
(1457, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1458, 'Average in overall.'),
(1459, '  Good, \r\n\r\n\r\ncan do better '),
(1460, 'Needs careness in health.'),
(1461, ' Very good, \r\ncan do better '),
(1462, 'Good in overall.'),
(1463, 'Needs hard work.'),
(1464, '   WORK HARD \r\n'),
(1465, 'Good. \r\nYou can \r\ndo better'),
(1466, '       Very good,\r\n\r\n\r\n     can do better '),
(1467, '  Good, \r\n\r\n\r\ncan do better '),
(1468, 'Work hard in all the subjects.'),
(1469, 'Needs hardworking.'),
(1470, '   WORK HARD \r\n'),
(1471, 'Needs serious preparation.'),
(1472, 'Needs hardwork. Pay attention in the class.'),
(1473, 'Needs hardwork. You can do better.'),
(1474, 'You can do better.'),
(1475, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1476, 'Needs hard work and attention towards learning in class.'),
(1477, 'Can do better. Keep trying.'),
(1478, 'Can do better.keep trying'),
(1479, '       Very good,\r\n\r\n\r\n     can do better '),
(1480, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1481, 'He is obedient, active and hardworking. Keep it up.'),
(1482, 'Needs hard work and attention towards learning in class.'),
(1483, '       Very good,\r\n\r\n\r\n     can do better '),
(1484, 'Good. You can do better.'),
(1485, 'You can do better. Keep trying.'),
(1486, 'Needs serious preparation.'),
(1487, '       Very good,\r\n\r\n\r\n     can do better '),
(1488, 'Needs serious preparation.'),
(1489, '       Very good,\r\n\r\n\r\n     can do better '),
(1490, 'You can do better.'),
(1491, 'Needs hard work.'),
(1492, 'You can do better. Keep trying.'),
(1493, 'HARD WORK IS NEEDED'),
(1494, 'Needs more attention in maths, science and computer.'),
(1495, 'Good. You can do better.'),
(1496, 'Needs hard work.'),
(1497, 'Needs hard work and pay attention in class.'),
(1498, 'Needs hard work.'),
(1499, 'Pays attention in your study.'),
(1500, 'Good in overall.'),
(1501, 'You can do better. Work hard.'),
(1502, 'Needs hard work and pay attention in class.'),
(1503, 'Needs hard work.'),
(1504, 'Needs more practice in maths.'),
(1505, 'You can do better.keep trying'),
(1506, 'Needs more practice in maths.'),
(1507, 'Needs hard work and attention towards learning in class.'),
(1508, 'Needs hard  work .'),
(1509, 'You can do better.keep trying'),
(1510, 'Needs hard work .'),
(1511, 'Needs improvement in all the subjects.'),
(1512, 'Average in overall.'),
(1513, ' Needs hard work.'),
(1514, 'Needs hard work and attention towards learning in class.'),
(1515, 'Work hard and be regular in the class.'),
(1516, 'Very good. Keep it up.'),
(1517, 'Needs hard work and attention towards learning in class.'),
(1518, 'Needs  hardwork. Pay attention in your study.'),
(1519, 'You can do better. Keep trying.'),
(1520, 'Hard work is needed.'),
(1521, 'Needs imrovement in english, maths and science.\r\n'),
(1522, 'Needs improvement in english.'),
(1523, 'Needs hard work .'),
(1524, 'Needs more practice in maths.'),
(1525, 'Can do better.'),
(1526, 'You can do better.'),
(1527, 'Needs hardwork.'),
(1528, 'Needs improvement in all the subjects.'),
(1529, 'Needs hardwork. You can do better.'),
(1530, 'Very good'),
(1531, 'Good , can do better'),
(1532, 'Needs more practice in maths as well as pay attention in class.\r\n              '),
(1533, 'Good , can do better'),
(1534, 'WORK HARD. \r\nYOU WILL GET THE FRUIT.\r\n'),
(1535, 'Very good. Can do better.'),
(1536, 'Good.You can do better.\r\n'),
(1537, 'Needs hard work and pay attention in\r\nclass.'),
(1538, 'Hard work is needed.'),
(1539, 'Be regular and work hard'),
(1540, 'Needs hard work and pay attention in\r\nclass.'),
(1541, 'Hard word and concentration is needed.\r\n'),
(1542, 'Good'),
(1543, 'Hard work and concentration is needed.'),
(1544, 'Can do better.Keep trying.'),
(1545, 'Hard work is needed.'),
(1546, 'Very good. Can do better.\r\n '),
(1547, 'Can do better.'),
(1548, 'Hard work is needed.'),
(1549, 'Be regular and work hard'),
(1550, 'Is hardworking and obedient.'),
(1551, 'Needs hardworking.'),
(1553, 'Work hard.Success is just a few steps ahead'),
(1554, ' Very poor. Work hard.'),
(1555, 'Very good.'),
(1556, 'Outstanding.'),
(1557, 'Very active.'),
(1552, 'is assertive, helpful, obedient and focused. His academic performance is praiseworthy.is assertive, helpful, obedient and focused. His academic performance is praiseworthy.is assertive, helpful, obedient and focused. His academic performance is'),
(1558, 'needs hard work.'),
(1559, 'Do better.'),
(1560, 'Can do better.keep trying'),
(1561, 'Can do better.keep trying'),
(1562, 'Very good.'),
(1563, 'needs hard work.'),
(1564, 'Need hardworking.'),
(1565, 'Work hard. Success is just a few steps ahead'),
(1566, 'Need hardwork.'),
(1567, 'Very good.'),
(1568, 'Work hard. Can do Better'),
(1569, 'work hard.'),
(1570, 'Needs hard work and pay attention in class.'),
(1571, 'needs hard work.'),
(1572, 'Very poor.work hard.'),
(1573, 'Need Hardwork.'),
(1574, 'Be regular and work hard'),
(1575, 'Need hardwork.'),
(1576, 'Need hardwork.'),
(1577, 'Good you can do better.'),
(1578, 'Do better.'),
(1579, 'Work hard.You can do better.'),
(1580, 'Very good.'),
(1581, 'Work hard.'),
(1582, 'Can do better.keep trying'),
(1583, 'Very good.'),
(1584, 'Be regular and work hard'),
(1585, 'work hard'),
(1586, 'Be regular and work hard'),
(1587, 'Need hard work.'),
(1588, 'Need hardwork.'),
(1589, 'Can do better.'),
(1590, 'Very good.'),
(1591, 'Need very hard work in all the subjects.'),
(1592, 'Can do better.'),
(1593, 'Work hard.'),
(1594, 'Very poor. Work hard.'),
(1595, 'Work hard. You can do better.'),
(1596, 'Very poor. Work hard.'),
(1597, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1598, 'Very good.'),
(1599, 'Very poor. Work hard.'),
(1600, 'Hard work is needed in all the subjects.'),
(1601, 'Very good.'),
(1602, 'Very poor. Work hard.'),
(1603, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1604, 'Outstanding.'),
(1605, 'Can do better.'),
(1606, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1607, 'Very good.'),
(1608, 'Need hardworking.'),
(1609, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1610, 'Work hard.'),
(1611, 'Be regular and work hard.'),
(1612, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1613, 'Need hardworking.'),
(1614, '   WORK HARD .\r\n  YOU CAN \r\nDO BETTER '),
(1615, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1616, 'Need hardworking.'),
(1617, 'Hard work is needed in all the           subjects.'),
(1618, 'Work hard.'),
(1619, 'Work hard'),
(1620, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1621, '   WORK HARD \r\n'),
(1622, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1623, '   WORK HARD \r\n'),
(1624, '  Good, \r\n\r\n\r\ncan do better '),
(1625, '  Very good, can do better '),
(1626, 'Very good, can do better '),
(1627, ' Good, can do better '),
(1628, ' Very good, can do better '),
(1629, 'Very good,can do better '),
(1630, 'Excellent.keep it up.'),
(1631, 'Excellent. keep it up.'),
(1632, '   WORK HARD \r\n'),
(1633, 'HARD WORK IS NEEDED'),
(1634, '  WORK HARD'),
(1635, '   WORK HARD \r\n'),
(1636, 'needs hard work'),
(1637, 'needs  hardwork'),
(1638, 'needs hard work'),
(1639, 'hard  work  is  needed'),
(1640, 'needs more  hard work'),
(1641, 'needs hard work'),
(1642, 'needs  hard work and\r\nbe regular during  exams'),
(1643, 'needs hard work'),
(1644, 'you are the best\r\nneeds some perfection in\r\nspeaking skills.'),
(1645, '   WORK HARD \r\n'),
(1646, 'Excellent,keep it up.'),
(1647, 'needs hard work'),
(1648, '   WORK HARD \r\n'),
(1649, 'work hard'),
(1650, '   WORK HARD \r\n'),
(1651, 'work hard'),
(1652, 'She has performed well.She can do better.'),
(1653, '       Very good,\r\n\r\n\r\n     can do better '),
(1654, 'She has performed good. She can do better.'),
(1655, '  Good, \r\ncan do better '),
(1656, 'She is very good.She can do better.'),
(1657, ' Needs hard work.'),
(1658, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1659, 'Excelent. Keep it up.'),
(1660, '       Very good,\r\n\r\n\r\n     can do better '),
(1661, '  Good, \r\n\r\n\r\ncan do better '),
(1662, '   WORK HARD \r\n'),
(1663, '  Good, \r\n'),
(1664, '       Very good,\r\n\r\n\r\n     can do better '),
(1665, '  WORK HARD\r\n IN ALL  THE\r\n  SUBJECTS.\r\n \r\n  YOU CAN DO BETTER.'),
(1666, '  WORK HARD\r\n IN ALL \r\n  THE SUBJECTS. \r\n  YOU CAN\r\n DO BETTER.'),
(1667, '   WORK HARD \r\n'),
(1668, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1669, '   WORK HARD \r\n'),
(1670, 'Work hard in all subjects.'),
(1671, 'Work hard. You can do better.'),
(1672, 'You can do better.'),
(1673, 'She has performed good.She can do better.'),
(1674, ' Good, can do better '),
(1675, ' Needs hard work.'),
(1676, 'Needs hard work.'),
(1677, 'Can do better.keep trying'),
(1678, 'Hard work is needed.'),
(1679, 'Can do better. keep trying.'),
(1680, 'Needs a lot of hardwork and attention in the class.'),
(1681, 'Hard work is needed.'),
(1682, 'Can do better.Keep trying and work hard.'),
(1683, 'Hard work is needed in all the subject.'),
(1684, 'Can do better.Keep trying..'),
(1685, '  Good,\r\n can do better '),
(1686, '  Good, can do better '),
(1687, 'Can do better.Keep trying..'),
(1688, 'can do better.Keep trying..'),
(1689, '       Very good,\r\ncan do better '),
(1690, 'Excellent !Keep it up.'),
(1691, 'good.  you can do better.'),
(1692, 'Excellent ! Keep it up.'),
(1693, '       Very good,\r\ncan do better '),
(1694, 'Excellent ! Keep it up.'),
(1695, 'Can do better.keep trying'),
(1696, 'Excellent ! Keep it up.'),
(1697, '       Very good,\r\ncan do better '),
(1698, ' WORK HARD YOU CAN DO BETTER '),
(1699, 'WORK HARD IN ALL \r\nTHE SUBJECT. \r\nYOU CAN DO BETTER.'),
(1700, '      is very good.She can do better.\r\n\r\n     '),
(1701, ' Very good, \r\ncan do better '),
(1702, 'Excellent ! keep it up.'),
(1703, 'Needs hard labour.'),
(1704, 'A lot of hard work needed.'),
(1705, 'Balance hyperactive side of the mind.'),
(1706, 'Be regular and balanced.'),
(1707, 'Needs sincerity.'),
(1708, 'Be balanced.'),
(1709, 'Needs hard work.'),
(1710, 'Work hard.'),
(1711, 'Start from the basics.'),
(1712, 'Work hard.'),
(1713, 'Needs hard work.'),
(1714, '  Good, can do better '),
(1715, '  Good, can do better '),
(1716, ' Very good,can do better '),
(1717, 'Very good, can do better '),
(1718, '   WORK HARD, YOU CAN DO BETTER '),
(1719, ' Very good,can do better '),
(1720, '  Good, can do better '),
(1721, '  Good, can do better '),
(1722, '  Good, can do better '),
(1723, 'TRY HARDER,success is just a few steps ahead'),
(1724, ' WORK HARD IN ALL \r\nTHE SUBJECT. \r\nYOU CAN DO BETTER.'),
(1725, 'Be regular during exam \r\nand do hard work.'),
(1726, 'YOUR PERFORMANCE IS GOOD. IMPROVE YOUR CONCENTRATION AND MOOD.'),
(1727, '   WORK HARD \r\n'),
(1728, 'Hard work is needed in all the subject.'),
(1729, 'Be regular and work hard'),
(1730, 'work hard in Mathematics'),
(1731, 'YOU CAN DO BETTER. '),
(1732, 'WORK HARD IN COMPUTER.'),
(1733, 'WORK HARD IN ALL THE SUBJECTS AND\r\n\r\n\r\nBE ATTENTIVE IN THE CLASS .'),
(1734, 'YOU CAN DO EVEN BETTER.\r\n'),
(1735, 'NEEDS TO WORK HARD IN ALL THE \r\n\r\n\r\nSUBJECTS.'),
(1736, 'WORK HARD.'),
(1737, '   WORK HARD \r\n'),
(1738, 'GOOD ,YOU CAN DO EVEN BETTER.'),
(1739, '   WORK HARD AND PLEASE IMPROVE \r\n\r\n\r\n\r\n\r\nYOUR WRITING. \r\n'),
(1740, '   WORK HARD \r\n'),
(1741, 'WORK HARD IN ALL THE SUBJECTS.'),
(1742, 'WORK HARD IN COMPUTER.'),
(1743, 'WORK HARD IN ALL THE \r\n\r\n\r\nSUBJECTS.'),
(1744, 'WORK HARD. YOU CAN DO BETTER.'),
(1745, 'YOUR INTROVERTNESS HINDERS YOUR \r\n\r\n\r\n\r\nPERFORMANCE. YOU CAN DO BETTER.'),
(1746, 'WELL DONE ! '),
(1747, '   WORK HARD \r\n'),
(1748, 'WORK HARD IN ALL THE SUBJECTS.'),
(1749, 'WORK HARD AND BE \r\n\r\n\r\n\r\nATTENTIVE IN THE CLASS.'),
(1750, 'YOU CAN DO BETTER.'),
(1751, 'WORK HARD.'),
(1752, 'WORK HARD'),
(1753, 'GOOD ! YOU CAN DO EVEN BETTER.'),
(1754, '   WORK HARD \r\n'),
(1755, 'WORK HARD .'),
(1756, 'AVOID ABSENTISM AND \r\n\r\n\r\n\r\nWORK HARD .'),
(1757, 'GOOD TRY!  YOU CAN DO EVEN BETTER.'),
(1758, 'WORK HARD'),
(1759, 'WORKHARD'),
(1760, 'GOOD !YOU CAN DO EVEN BETTER .'),
(1761, 'GOOD .! YOU CAN DO BETTER.'),
(1762, 'WORK HARD'),
(1763, 'WORK HARD .YOU CAN DO IT.'),
(1764, 'WORK HARD'),
(1765, 'NEEDS TO WORK HARD IN ALL THE \r\nSUBJECTS.'),
(1766, 'Needs work hard in all the subjects.\r\n'),
(1767, 'Very good. Can do better.'),
(1768, 'Good,can do better.'),
(1769, 'Good, work hard.'),
(1770, 'Good,she can do better.'),
(1771, 'Work hard, you can do better.'),
(1772, 'Be regular in the exam.\r\n '),
(1773, 'Very good,you can do better.'),
(1774, 'Good, work hard you can do better.'),
(1775, 'Good, can do better \r\n\r\n\r\n'),
(1776, 'Can do better.Keep trying..'),
(1777, 'Excellent ! Keep it up.'),
(1778, 'Hard work.Be regular during exam.'),
(1779, 'Be regular during exam '),
(1780, 'Be regular during exam.Hard work.'),
(1781, 'Be regular during exams'),
(1782, 'Can do better.Be regular during exam.'),
(1783, 'Excellent'),
(1784, 'Excellent ! Keep it up.'),
(1785, 'Excellent'),
(1786, 'Ecellent'),
(1787, 'Excellent'),
(1788, 'Excellent\r\n'),
(1789, 'WORK HARD'),
(1790, 'NEEDS HARD WORK IN\r\n\r\n\r\n\r\nALL THE SUBJECTS.'),
(1791, 'WORK HARD'),
(1792, '   WORK HARD \r\n'),
(1793, 'WORK HARD'),
(1794, 'Can do better.'),
(1795, 'Can do better .'),
(1796, 'Try to do better.'),
(1797, 'Try to do better .'),
(1798, 'Need hard work.'),
(1799, 'Can do better.'),
(1800, 'Need hard work.'),
(1801, 'Keep it constant.'),
(1802, 'Need hard work.'),
(1803, 'Can do better.'),
(1804, 'Try to do better.'),
(1805, 'Can do better.'),
(1806, 'Try to do better.'),
(1807, 'Can do better.'),
(1808, 'Need seriousness.'),
(1809, 'Very good. Can do better'),
(1810, '  Good, can do better\r\n\r\n\r\n'),
(1811, 'Very good. Can do better'),
(1812, 'Very good. Can do better.'),
(1813, 'Hard work is needed.'),
(1814, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1815, 'Needs hard work and attention towards learning in class.'),
(1816, 'TRY HARDER.SUCCESS IS JUST FEW STEPS AHEAD'),
(1817, '   WORK HARD \r\n  YOU CAN DO BETTER '),
(1818, 'Needs hard work and attention towards learning in class.'),
(1819, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1820, 'Hard work is needed.Be regular in the class.'),
(1821, 'WORK HARD. \r\nYOU WILL GET THE FRUIT.'),
(1822, 'Excellent ! Keep it up.'),
(1823, 'Very good. Can do better'),
(1824, ' Needs hard work.Spend more time with books.'),
(1825, ' Needs hard work.'),
(1826, 'Work hard. You can do better.'),
(1827, 'Hard wowk is needed.'),
(1828, ' Needs hard work.'),
(1829, '  Work hard in all the subjects. You  can do better.'),
(1830, 'Work hard in computer. You can do better.'),
(1831, 'Good . You can do better.'),
(1832, '  Work hard in all the subjects. You  can do better.'),
(1833, 'Work hard. You can do better.'),
(1834, 'Good . You can do better.'),
(1835, 'Needs more improvement in all the subjects.'),
(1836, 'You can do better.Keep trying.'),
(1837, 'A lot of hard work needed.'),
(1838, 'Good, can do better.'),
(1839, 'Good, you can do better.'),
(1840, 'Work hard you can do better.\r\n'),
(1841, 'Good, She can do better.'),
(1842, 'Needs to work hard.'),
(1843, 'Good, She can do better.'),
(1844, 'Work hard you can do better.'),
(1845, 'Very good can do better.'),
(1846, 'Work hard you can do better.'),
(1847, 'Good she can do better.'),
(1848, 'Needs to work hard in all subjects.'),
(1849, 'Very good she can do better.'),
(1850, 'Good work hard'),
(1851, 'Very good. He can do much better'),
(1852, 'Good can do better.'),
(1853, 'Work hard you can do better.'),
(1854, 'Very Good.'),
(1855, 'Good work hard you can do better.'),
(1856, 'Very good she can do better.'),
(1857, 'Very good you can do better.'),
(1858, 'Work hard you can do better.'),
(1859, 'Good can do better.'),
(1860, 'Good, you can do better.'),
(1861, 'Very good can do better.'),
(1862, 'Good you can do better.'),
(1863, 'Very good can do better.'),
(1864, 'Very good. you can do better.'),
(1865, 'well done'),
(1866, 'Good can do better.'),
(1867, 'Very good you can do better.'),
(1868, 'Work hard.'),
(1869, 'Work hard in all the subjects.'),
(1870, 'Good. Needs little hard work.'),
(1871, 'Very good can do better.'),
(1872, 'Needs to work hard in all subjects'),
(1873, 'Very good you can do better.'),
(1874, 'Well done.'),
(1875, 'Need to work har in all subjects.'),
(1876, 'Good you can do better.'),
(1877, 'BE SERIOUS IN STUDY.'),
(1878, 'Excellent !Keep it up.'),
(1879, 'Good. \r\nYou can \r\ndo better'),
(1880, ' WORK HARD IN ALL THE SUBJECTS. YOU CAN DO BETTER.'),
(1881, '       Very good,\r\n\r\n\r\n     Can do better '),
(1882, ' Good,\r\nCan do better \r\n\r\n\r\n'),
(1883, '   WORK HARD \r\n'),
(1884, '       Very good,\r\n\r\n\r\n     Can do better '),
(1885, '   WORK HARD \r\n'),
(1886, 'Ecellent'),
(1887, '  Work hard in all the subjects. You  can do better.'),
(1888, '       Very good,\r\n\r\n\r\n     Can do better '),
(1889, 'Can do better.'),
(1890, '   WORK HARD \r\n'),
(1891, ' Needs hard work.Spend more time with books.'),
(1892, 'BE SERIOUS IN STUDIES.'),
(1893, '   WORK HARD \r\n'),
(1894, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1895, '  Good, \r\n\r\n\r\nCan do better '),
(1896, 'PERFORMED VERY POOR, YOU CAN DO.'),
(1897, '  Very good, can do better '),
(1898, 'PERFORED VERY POOR, WORK HARD.'),
(1899, ' Very good, can do better '),
(1900, ' WORK HARD\r\n IN ALL THE\r\n SUBJECTS.\r\n\r\n. YOU CAN\r\n DO BETTER.'),
(1901, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1902, 'POOR IN STUDY, YOU CAN DO BETTER IF YOU WORK HARD.'),
(1903, 'Excellent !Keep it up.'),
(1904, '       Very good,\r\ncan do better '),
(1905, 'Excellent ! keep it up.'),
(1906, '       Very good,\r\ncan do better '),
(1907, 'Excelent. Keep it up.'),
(1908, '       Very good,\r\ncan do better '),
(1909, ' WORK HARD\r\n IN ALL THE\r\n SUBJECTS.\r\n\r\n. YOU CAN\r\n DO BETTER.'),
(1910, '       Very good,\r\ncan do better '),
(1911, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1912, 'CAN DO BETTER.WORK HARD.'),
(1913, '       Very good,\r\ncan do better '),
(1914, 'Hard work is needed.'),
(1915, ' Very good, can do better '),
(1916, ' WORK HARD\r\n IN ALL THE \r\nSUBJECTS. \r\nYOU CAN DO\r\n BETTER.'),
(1917, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(1918, 'Excellent ! Keep it up.'),
(1919, 'Good you can do better.'),
(1920, 'Needs improvement in all the subjects.'),
(1921, '  Good, \r\ncan do better '),
(1922, 'Excellent !Keep it up.'),
(1923, '       Very good,\r\ncan do better '),
(1924, 'can do better .\r\nkeep trying.'),
(1925, '       Very good,\r\ncan do better '),
(1926, 'Hard work is needed.'),
(1927, 'Excellent !Keep it up.'),
(1928, '       Very good,\r\ncan do better '),
(1929, '  Good, \r\ncan do better '),
(1930, '   WORK HARD \r\n'),
(1931, '       Very good,\r\n\r\n\r\n     Can do better '),
(1932, '  Good, \r\ncan do better '),
(1933, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1934, 'GOOD .YOU CAN DO BETTER'),
(1935, '       Very good,\r\n\r\n\r\n     can do better '),
(1936, '   WORK HARD \r\n'),
(1937, 'BE SERIOUS IN STUDIES.'),
(1938, '  Good, \r\n\r\n\r\ncan do better '),
(1939, 'Can do better. Keep trying.'),
(1940, '   WORK HARD \r\n'),
(1941, '       Very good,\r\ncan do better '),
(1942, 'can do better'),
(1943, '   WORK HARD \r\n'),
(1944, 'Excellent ! Keep it up.'),
(1945, 'can do better'),
(1946, 'Hard work is needed.You can do better.'),
(1947, '   WORK HARD \r\n'),
(1948, 'can do better'),
(1949, 'Excellent ! Keep it up.'),
(1950, '       Very good,\r\n\r\n\r\n     can do better '),
(1951, ' Very good, can do better '),
(1952, 'can do better'),
(1953, 'Excellent ! \r\nKeep it up.'),
(1954, ' WORK HARD IN ALL \r\nTHE SUBJECT. \r\nYOU CAN DO BETTER.'),
(1955, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(1956, '       Very good,\r\n\r\n\r\n     can do better '),
(1957, 'can do better'),
(1958, '   WORK HARD \r\n'),
(1959, '     excellent'),
(1960, '       Very good,\r\n\r\n\r\n     Can do better '),
(1961, '       Very good,\r\n\r\n\r\n     can do better '),
(1962, 'can do better'),
(1963, '   WORK HARD \r\n'),
(1964, 'A lot of hard work needed.'),
(1965, 'work hard'),
(1966, 'NEEDS A LOT OF HARD WORK.'),
(1967, ' EXCELLENT, \r\ncan do better '),
(1968, 'Good. You can do better.'),
(1969, '  Good, \r\n\r\n\r\ncan do better '),
(1970, '       Very good,\r\ncan do better '),
(1971, 'work hard'),
(1972, 'Good. You can do better.'),
(1973, 'Good, can do better'),
(1974, ' Very good,can do better '),
(1975, 'work hard'),
(1976, 'Good. You can do better.'),
(1977, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(1978, ' Needs hard work.'),
(1979, 'good can do better'),
(1980, '       Very good,\r\ncan do better '),
(1981, 'Good'),
(1982, 'Hard work is needed.'),
(1983, 'Good'),
(1984, 'Good can do better'),
(1985, 'Work hard'),
(1986, 'Work Hard'),
(1987, '   WORK HARD \r\n'),
(1988, 'can do better'),
(1989, '   WORK HARD \r\n'),
(1990, 'can do better'),
(1991, 'You can do better.'),
(1992, 'Try with sincerity.'),
(1993, 'is very good.'),
(1994, 'Work hard.'),
(1995, 'works hard.'),
(1996, 'Needs hard labour.'),
(1997, 'Needs hard work.'),
(1998, 'is very poor.'),
(1999, 'Needs mental stability.'),
(2000, 'Work hard.'),
(2001, 'needs hardworking.'),
(2002, 'Needs a lot of hard work.'),
(2003, 'Work hard.'),
(2004, 'is excellent.'),
(2005, 'Needs  good company.'),
(2006, 'is very good.'),
(2007, 'Work hard.'),
(2008, 'needs hardworking.'),
(2009, 'Good.'),
(2010, 'Work hard.'),
(2011, 'needs hard work.'),
(2012, 'Needs hard work.'),
(2013, 'needs hard work.'),
(2014, 'work hard.'),
(2015, 'needs hard work.'),
(2016, 'Work hard.'),
(2017, 'is good.'),
(2018, 'is very poor.'),
(2019, 'Work hard.'),
(2020, 'can do better.'),
(2021, 'needs hard work.'),
(2022, 'Clear the foundation.'),
(2023, 'can do better.'),
(2024, 'Needs more understanding.'),
(2025, 'can do better.'),
(2026, 'Work hard.'),
(2027, 'is very poor.'),
(2028, 'can do better.'),
(2029, 'Needs hard labour.'),
(2030, 'needs hard work.'),
(2031, 'Begin from the basics.'),
(2032, 'needs hard work.'),
(2033, 'Work hard.'),
(2034, 'needs hard work.'),
(2035, 'can do better.'),
(2036, 'improves in your study.'),
(2037, 'reads more.'),
(2038, 'is good.'),
(2039, 'works hard.'),
(2040, ',works hard.'),
(2041, 'is very poor.'),
(2042, ',works hard.'),
(2043, 'is very good.'),
(2044, 'needs hard work.'),
(2045, 'is active.'),
(2046, 'is very poor.'),
(2047, 'excellent.'),
(2048, 'is excellent.'),
(2049, 'needs hard work.'),
(2050, 'can do better.'),
(2051, 'is very lazy.'),
(2052, 'can improve.'),
(2053, 'is irregular.'),
(2054, 'is excellent.'),
(2055, '  Good, \r\n\r\n\r\nCan do better '),
(2056, '   WORK HARD \r\n'),
(2057, '       Very good,\r\n\r\n\r\n     Can do better '),
(2058, 'Excellent, Keep it up.'),
(2059, 'Very Good, Can do better.\r\n'),
(2060, 'Performed very poor, Work hard.'),
(2061, '  Work hard in all the subjects. You  can do better.'),
(2062, ' Needs hard work.Spend more time with books.'),
(2063, '  Good. You can do better. '),
(2064, 'A lot of hard work is needed.'),
(2065, '  Good. You can do better. '),
(2066, 'A lot of hard work is needed in all the subjects.'),
(2067, 'work hard in literature,you can do better'),
(2068, '       Very good,\r\n\r\n\r\n     can do better '),
(2069, 'A lot of hard work is needed in all the subjects.'),
(2070, '  Good. You can do better. '),
(2071, '       Very good,\r\n\r\n\r\n     can do better '),
(2072, 'Work hard. You can do better.'),
(2073, 'very good . try to do better'),
(2074, 'A lot of hard work is needed in all the subjects.'),
(2075, '  Good. You can do better. '),
(2076, 'You can do better. Keep trying. '),
(2077, 'A lot of hard work is needed in all the subjects.'),
(2078, 'A lot of hard work is needed in all the subjects and be regular in the class.'),
(2079, 'A lot of hard work is needed in all the subjects.'),
(2080, 'Hard work is needed.'),
(2081, 'A lot of hard work is needed in all \r\nthe subjects.'),
(2082, 'A lot of hard work is needed in all \r\nthe subjects and be regular in \r\nthe class.'),
(2083, 'A lot of hard work is needed in all \r\nthe subjects. You can do better.'),
(2084, 'Work hard in computer. You \r\ncan do better.'),
(2085, 'Work hard in all the subjects. You \r\ncan do better.'),
(2086, 'Needs more improvement in \r\nall the subjects.'),
(2087, '       Very good,\r\n\r\n\r\n     can do better '),
(2088, 'Excellent.keep it up.'),
(2089, 'Excellent.keep it up'),
(2090, 'Very good,can do better.'),
(2091, 'Work hard.'),
(2092, 'WORK HARD.'),
(2093, 'Work hard.'),
(2094, 'Good ,you can do better.'),
(2095, 'Good , can do better.'),
(2096, 'Work hard.'),
(2097, '       Very good,\r\n\r\n\r\n     can do better '),
(2098, 'Good,can do better.'),
(2099, '       Very good,\r\n\r\n\r\n     Can do better '),
(2100, 'Very good,keep it up.'),
(2101, 'be regular and work \r\nhard'),
(2102, '       Very good,\r\n\r\n\r\n     can do better '),
(2103, '       Very good,\r\n\r\n\r\n     can do better '),
(2104, 'Try  harder.'),
(2105, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(2106, 'WORK HARD.'),
(2107, '     excellent'),
(2108, 'Try harder.'),
(2109, '   WORK HARD \r\n'),
(2110, 'Work hard in maths.'),
(2111, '       Very good,\r\ncan do better '),
(2112, 'Very good, keep it up.'),
(2113, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(2114, 'Good, you can do better.'),
(2115, '  Good, \r\n\r\n\r\ncan do better '),
(2116, '   WORK HARD \r\n'),
(2117, '   WORK HARD \r\n'),
(2118, 'Good ,you can do better.'),
(2119, '       Very good,\r\n\r\n\r\n     Can do better '),
(2120, 'Good, you can do better.'),
(2121, '  Good, \r\n\r\n\r\ncan do better '),
(2122, 'Tey harder and be regular.'),
(2123, '  Good,\r\n can do better '),
(2124, 'Try harder.'),
(2125, '     excellent'),
(2126, 'Very good, work hard in maths.'),
(2127, '       Very good,\r\n\r\n\r\n     Can do better '),
(2128, '       Very good,\r\n\r\n\r\n     can do better '),
(2129, '       Very good,\r\n\r\n\r\n     can do better '),
(2130, 'Work  hard.'),
(2131, 'Work   hard.'),
(2132, 'Good you can do better.'),
(2133, 'Work hard'),
(2134, ' Work hard.'),
(2135, 'Very good you can do beter.'),
(2136, ' Work hard.'),
(2137, 'Good you can do better.'),
(2138, 'Good you  can do better.'),
(2139, '  Work hard.'),
(2140, 'Work  hard.'),
(2141, 'excellent , keep it up'),
(2142, 'very good.  you ca do better'),
(2143, 'hard work needed in\r\nlanguage. you can\r\ndo better'),
(2144, 'Good.  you can do better'),
(2145, 'Good  you can do better.'),
(2146, 'Try to do better in al subjects.'),
(2147, 'hard work needed \r\nin all subjects'),
(2148, 'Very good.\r\nyou can do better.'),
(2149, 'hard work needed in all \r\nsubjects.'),
(2150, 'you can do better, try it.'),
(2151, 'Good.  you can\r\ndo better'),
(2152, 'You can do better\r\n,try it.'),
(2153, 'needed more hard\r\nwork in all subjects.'),
(2154, 'you can do better \r\nTry it.'),
(2155, 'Good. You can do better.'),
(2156, 'Needs more hard work.'),
(2157, 'Needs more hard work \r\nin all subjects.'),
(2158, 'Do hard work,\r\nyou can do better.'),
(2159, 'Needs more hard work.'),
(2160, 'Needs hard work\r\nin all subjects.'),
(2161, 'Needs hard work \r\n in language'),
(2162, 'Work hard you can\r\ndo better, and be \r\nregular in exams.'),
(2163, 'Good. you can do better.'),
(2164, 'Needs hard work in \r\nliterature and language.'),
(2165, 'Work hard in all subjects,\r\nyou can do better.'),
(2166, 'Excellent.  keep it up.'),
(2167, 'Good. you can do beeter.\r\n'),
(2168, 'Excellent  !\r\nKeep it up.'),
(2169, 'A lot of hard work is needed in all the subjects.'),
(2170, 'Very good. Can do better.'),
(2171, 'Very good. Can do better.'),
(2172, 'Good. Can do better.'),
(2173, 'Very good. Can do better.'),
(2174, '   WORK HARD, YOU CAN DO BETTER '),
(2175, 'Good. Can do better.'),
(2176, 'Need seriousness .'),
(2177, 'Try to do better.'),
(2178, 'Need seriousness.'),
(2179, 'Hard worK and concentration is needed.\r\n\r\n'),
(2180, 'Try to do better.'),
(2181, '       Very good,\r\ncan do better '),
(2182, 'Hard work and concentration is needed.\r\n\r\n'),
(2183, 'Need seriousness.'),
(2184, 'Good. Can do better.'),
(2185, 'Need hard work.'),
(2186, 'Very good. Can do better.'),
(2187, 'Good. Can do better.'),
(2188, 'Keep your confidence during exam.'),
(2189, 'Try to do better.'),
(2190, 'Hard work and concentration is needed.'),
(2191, 'Need seriousness.'),
(2192, 'Try to do better.'),
(2193, 'Need seriousness.'),
(2194, 'Need hard work.'),
(2195, 'Try to do better.'),
(2196, 'A lot of hard work is needed in all the subjects.'),
(2197, 'Need seriousness.'),
(2198, 'Need hard work.'),
(2199, 'Good. Can do better.'),
(2200, 'Excellent ! Keep it up.'),
(2201, 'Good. Can do better.'),
(2202, 'A lot of hard work is needed in all the subjects.'),
(2203, 'A lot of hard work is needed in all the subjects.'),
(2204, '       Very good,can do better\r\n\r\n\r\n    '),
(2205, '  Good. You can do better. '),
(2206, '     excellent'),
(2207, '     excellent'),
(2208, '   WORK HARD, YOU CAN DO BETTER '),
(2209, '       Very good,\r\ncan do better '),
(2210, '       Very good,\r\ncan do better '),
(2211, 'Performed good,can do better'),
(2212, '   WORK HARD \r\n'),
(2213, '     excellent'),
(2214, '       Very good,\r\ncan do better ');
INSERT INTO `student_remarks` (`Remarks_Id`, `Remarks`) VALUES
(2215, '       Very good,\r\ncan do better '),
(2216, '       Very good,\r\ncan do better '),
(2217, 'Work hard'),
(2218, '       Very good,\r\ncan do better '),
(2219, '       Very good,\r\ncan do better '),
(2220, 'Out standing\r\n'),
(2221, ' Good, can do better '),
(2222, '     excellent'),
(2223, ' Good,\r\ncan do better \r\n\r\n\r\n'),
(2224, ' Needs hard work.'),
(2225, '   WORK HARD \r\n'),
(2226, '       Very good,\r\n\r\n\r\n     can do better '),
(2227, 'Can do better.keep trying'),
(2228, 'Can do better. Keep trying.'),
(2229, 'GOOD, CAN DO BETTER'),
(2230, 'Outstanding'),
(2231, '  Good. You can do better. '),
(2232, '  Good, \r\ncan do better '),
(2233, 'improvement is there,try more.'),
(2234, '       Very good,\r\n\r\n\r\n     can do better '),
(2235, 'Declined, take care'),
(2236, '       Very good,\r\n\r\n\r\n     can do better '),
(2237, '       Very good,\r\n\r\n\r\n     Can do better '),
(2238, '       Very good,\r\n\r\n\r\n     can do better '),
(2239, 'Declining take care'),
(2240, ' WORK HARD \r\nIN \r\nALL THE\r\n SUBJECT.\r\n YOU CAN\r\nDO BETTER.'),
(2241, 'Ecellent'),
(2242, '       Very good,\r\n\r\n\r\n     can do better '),
(2243, 'Declined, take care.'),
(2244, ' WORK HARD \r\nIN \r\nALL THE\r\n SUBJECT.\r\n YOU CAN\r\nDO BETTER.'),
(2245, 'A lot of hard work is needed in all \r\nthe subjects and be regular in \r\nthe class.'),
(2246, 'Hard work is needed.'),
(2247, '       Very good,\r\n\r\n\r\n     Can do better '),
(2248, '  Good, can do better '),
(2249, 'Declined, take care.'),
(2250, 'Outstanding'),
(2251, '       Very good,\r\n\r\n\r\n     can do better '),
(2252, 'Declined, take care'),
(2253, 'can do better'),
(2254, 'work hard , can do better'),
(2255, '       Very good,\r\n     can do better '),
(2256, '     excellent ! keep it up'),
(2257, '       Very good,\r\n     can do better '),
(2258, '       Very good,\r\n     Can do better '),
(2259, '  Good, can do better '),
(2260, '  Good, can do better '),
(2261, 'Very good, can do better'),
(2262, '  Good, \r\n\r\n\r\ncan do better '),
(2263, '  Good, \r\n\r\n\r\ncan do better '),
(2264, '       Very good,\r\n     can do better '),
(2265, 'Well done '),
(2266, 'Very good , can do better'),
(2267, 'Well done !'),
(2268, 'Excellent ! Keep it up.'),
(2269, ' Needs hard work.'),
(2270, '       Very good,\r\n     Can do better '),
(2271, 'Excellent ! Keep it up.'),
(2272, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(2273, '  Good, \r\n\r\n\r\ncan do better '),
(2274, 'Good ,keep trying'),
(2275, 'Good , keep trying'),
(2276, '  Good, \r\n\r\n\r\ncan do better '),
(2277, '       Very good,\r\n     Can do better '),
(2278, '     excellent !'),
(2279, 'A lot of hard work is needed in all the subjects.'),
(2280, 'Well done !'),
(2281, 'Well done !'),
(2282, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(2283, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(2284, 'Well done !'),
(2285, 'Well done !'),
(2286, 'Good . You can do better.'),
(2287, 'Excellent.  keep it up.'),
(2288, 'Excellent ! Keep it up.'),
(2289, 'is very good.\r\n'),
(2290, 'Excellent ! Keep it up.'),
(2291, 'Excellent'),
(2292, 'Good , keep trying'),
(2293, 'be regular and work \r\nhard'),
(2294, '       Very good,\r\n     Can do better '),
(2295, '   WORK HARD AND PLEASE IMPROVE \r\n\r\n\r\n\r\n\r\nYOUR WRITING. \r\n'),
(2296, '       Very good,\r\n     can do better '),
(2297, '  Good, \r\n\r\n\r\ncan do better '),
(2298, 'Very good , can do better'),
(2299, 'Very good , can do better'),
(2300, 'Be regular during exam.Hard work.'),
(2301, 'Very good , can do better'),
(2302, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(2303, '  Good, \r\n\r\n\r\ncan do better '),
(2304, 'Very good, can do better'),
(2305, 'Very good, can do better'),
(2306, 'Can do better.keep trying'),
(2307, '     excellent ! keep it up'),
(2308, '       Very good,\r\n     Can do better '),
(2309, '     excellent ! keep it up'),
(2310, '     excellent ! keep it up'),
(2311, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(2312, ' WORK HARD IN SCIENCE SUBJECT. YOU CAN D BETTER.'),
(2313, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(2314, '     excellent ! keep it up'),
(2315, '       Very good,\r\n     Can do better '),
(2316, '  Good, \r\n\r\n\r\ncan do better '),
(2317, '     excellent ! keep it up'),
(2318, '       Very good,\r\n     Can do better '),
(2319, '       Very good,\r\n     Can do better '),
(2320, '  Good, \r\n\r\n\r\ncan do better '),
(2321, '     has perfomed good,\r\n\r\n\r\n     can do better. '),
(2322, '       Very good,\r\n     Can do better '),
(2323, '     excellent ! keep it up'),
(2324, 'EXCELLENT'),
(2325, 'WELL DONE'),
(2326, 'WELL DONE'),
(2327, 'WELL DONE YOU CAN DO BETTER '),
(2328, 'EXCELLENT'),
(2329, 'EXCELLENT'),
(2330, 'VERY GOOD'),
(2331, 'VERY GOOD'),
(2332, 'EXCELLENT'),
(2333, 'EEEEEXCELLENT'),
(2334, 'EXCELLENT'),
(2335, 'TRY HARD FOR THE PROGRESS'),
(2336, 'VERY GOOD'),
(2337, 'VERY GOOD'),
(2338, 'GOOD YOU CAN DO BETTER'),
(2339, 'WELL DONE'),
(2340, 'WELL DONE'),
(2341, 'WELL DONE'),
(2342, 'HARD WORK IS NEEDED'),
(2343, 'VERY GOOD'),
(2344, 'EXCELLENT'),
(2345, 'VERY GOOD'),
(2346, 'VERY GOOD'),
(2347, 'WELL DONE'),
(2348, 'EXCELLENT'),
(2349, 'GOOD HARD WORK IS NEEDED'),
(2350, 'WELL DONE'),
(2351, 'OUTSTANDING'),
(2352, 'VERY GOOD'),
(2353, 'Good,You can do better.'),
(2354, 'Outstanding ! Keep it up.'),
(2355, 'WELL DONE'),
(2356, 'Good. You can do better.'),
(2357, 'GOOD YOU CAN DO BETTER'),
(2358, 'Be regular during  examination.'),
(2359, 'Outstanding ! Keep it up.'),
(2360, 'EXCELLENT'),
(2361, 'Good you can do better.'),
(2362, 'Good you can do better.'),
(2363, 'Good.You can d better.'),
(2364, 'OUTSTANDING'),
(2365, 'Outstanding ! Keep it up.'),
(2366, 'WELL DONE'),
(2367, 'Outstanding ! Keep it up.'),
(2368, 'Excellent  !\r\nKeep it up.'),
(2369, '     excellent ! keep it up'),
(2370, 'Outstanding ! Keep it up.'),
(2371, 'WELL DONE'),
(2372, '       Very good,\r\n     Can do better '),
(2373, 'Excellent ! Keep it up.'),
(2374, 'EXCELLENT'),
(2375, '     excellent ! keep it up'),
(2376, 'Outstanding ! Keep it up.'),
(2377, 'Hard work is needed.'),
(2378, 'Outstanding ! Keep it up.'),
(2379, 'WELL DONE'),
(2380, 'Outstanding ! Keep it up.'),
(2381, '       Very good,\r\n     Can do better '),
(2382, 'Outstanding ! Keep it up.'),
(2383, '     excellent ! keep it up'),
(2384, 'hard work is needed.You can do better.'),
(2385, ' Has performed good,can do better. '),
(2386, 'EXCELLENT'),
(2387, 'OUTSTANDING'),
(2388, 'Hard work you can do better.'),
(2389, 'GOOD TRY HARD FOR BETTER MARKS'),
(2390, 'EXCELLENT'),
(2391, 'Work hard you can do better.'),
(2392, 'WELL DONE'),
(2393, 'Outstanding! keep it up.'),
(2394, 'WELL DONE'),
(2395, 'Good ! you can do better.'),
(2396, 'GOOD BUT HARD WORK IS NEEDED'),
(2397, 'Good ! you can do better.'),
(2398, 'Excellent ! keep it up.'),
(2399, 'Good, can do better'),
(2400, 'Excellent ! keep it up.'),
(2401, 'Outstanding ! Keep it up.'),
(2402, 'Try to better marks in all subject.'),
(2403, 'EXCELLENT'),
(2404, 'Needs hard work and pay attention in class.'),
(2405, 'Good .You can do better.'),
(2406, 'Outstanding ! Keep it up.'),
(2407, 'WELL DONE'),
(2408, 'Outstanding ! Keep it up.'),
(2409, 'Excellent ! Keep it up.'),
(2410, 'VERY GOOD'),
(2411, 'Excellent ! Keep it up.'),
(2412, 'Very good,can do better .'),
(2413, 'EXCELLENT'),
(2414, 'Good you can do better.'),
(2415, 'EXCELLENT'),
(2416, 'Good , can do better.'),
(2417, 'Outstanding ! Keep it up.'),
(2418, 'EXCELLENT'),
(2419, 'WELL DONE'),
(2420, 'Be regular and work hard'),
(2421, 'Hard work is needed in all subject.'),
(2422, 'EXCELLENT'),
(2423, 'Good, can do better .\r\n\r\n\r\n'),
(2424, 'Good. You can do better.'),
(2425, 'Outstanding ! Keep it up.'),
(2426, 'EXCELLENT'),
(2427, 'WELL DONE'),
(2428, '       Very good, You\r\n     Can do better '),
(2429, '       Very good,\r\n     Can do better '),
(2430, 'GOOD YOU CAN DO BETTER'),
(2431, 'Be regular during exam.'),
(2432, 'Outstanding ! Keep it up.'),
(2433, 'Excellent ! Keep it up.'),
(2434, 'VERY GOOD  BUT YOU CAN DO BETTER'),
(2435, 'Outstanding ! Keep it up.'),
(2436, 'BE REGULAR TRY  AND TRY FOR BETTER PERFORMANCE'),
(2437, 'GOOD BE ATTENTIVE'),
(2438, 'Outstanding ! Keep it up.'),
(2439, 'EXCELLENT'),
(2440, 'Outstanding ! Keep it up.'),
(2441, 'Excellent !Keep it up.'),
(2442, 'Very good, you can do better .'),
(2443, '  Good, can do better '),
(2444, 'A lot of hard work is needed in all \r\nthe subjects.'),
(2445, '       Very good,\r\n     Can do better '),
(2446, 'Be regular during exam . Hard work is needed'),
(2447, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(2448, 'Hard work is needed.'),
(2449, 'Work hard in hindi '),
(2450, ' Good, can do better '),
(2451, 'work hard.'),
(2452, 'Good.'),
(2453, 'Be regular.'),
(2454, 'Good'),
(2455, 'You can do better.'),
(2456, '  Good, can do better '),
(2457, 'work  hard ,  you can do better.'),
(2458, 'Good.You can do better.'),
(2459, 'Hard work is needed.'),
(2460, 'very good . try to do better'),
(2461, 'Excellent ! Keep it up.'),
(2462, 'Excellent'),
(2463, 'Excellent.  keep it up.'),
(2464, '       Very good,\r\n     Can do better '),
(2465, 'Excellent'),
(2466, '       Very good,\r\ncan do better '),
(2467, 'Excellent ! Keep it up.'),
(2468, '       Very good,\r\ncan do better '),
(2469, 'Hard wowk is needed.'),
(2470, '       Very good,can do better\r\n\r\n\r\n    '),
(2471, 'Outstanding,keep it up'),
(2472, 'Good , keep trying'),
(2473, 'Can do better. Keep trying.'),
(2474, '  Good. You can do better. '),
(2475, 'Excellent ! Keep it up.'),
(2476, ' WORK HARD. \r\nYOU WILL GET THE FRUIT.'),
(2477, '  Good. You can do better. '),
(2478, 'Very good'),
(2479, 'Good, you can do better'),
(2480, 'Outstanding'),
(2481, 'NEEDS VERY HARD WORK IN ALL THE SUBJECTS.'),
(2482, '     excellent !'),
(2483, '       Very good,\r\n     Can do better '),
(2484, ' Needs hard work.'),
(2485, 'Hard work is needed in all the subject.'),
(2486, 'Work hard in all the subjects .Pay attention the class.\r\n'),
(2487, '       Very good,\r\ncan do better '),
(2488, 'Outstanding! keep it up.'),
(2489, 'Outstanding ! Keep it up.'),
(2490, 'A lot of hard work is needed in all the subjects.'),
(2491, '  Good, \r\ncan do better '),
(2492, '       Very good,\r\n     Can do better '),
(2493, '       Very good,\r\ncan do better '),
(2494, 'Needs hard work .Pay attention in class.'),
(2495, '  Good, can do better '),
(2496, '       Very good,\r\n     Can do better '),
(2497, ' Very good, You can do better.'),
(2498, 'is very poor. Work hard.'),
(2499, '     excellent !'),
(2500, 'Very good,can do better keep trying.'),
(2501, '  Good, can do better '),
(2502, 'can do better'),
(2503, ' WORK HARD YOU CAN DO BETTER '),
(2504, '  Good, can do better '),
(2505, ' Needs hard work.'),
(2506, 'Work hard in Eng literature.You can do better.'),
(2507, '       Very good,\r\ncan do better '),
(2508, 'Good.keep it up.'),
(2509, '  Good, \r\ncan do better '),
(2510, ' Very good, can do better '),
(2511, '       Very good,\r\ncan do better '),
(2512, 'Hard work needed\r\n in all subjects'),
(2513, '       Very good, You\r\n     Can do better '),
(2514, 'Work hard in all the subjects.\r\n'),
(2515, 'More hard work needed in hindi.'),
(2516, 'Excellent ! Keep it up.'),
(2517, 'Out standing.\r\nkeep it up'),
(2518, ' Good,can do better.'),
(2519, 'HARD WORK IS NEEDED'),
(2520, 'Out standing \r\nkeep it up.'),
(2521, '  Good, \r\ncan do better '),
(2522, '  Good, you can do better .'),
(2523, 'Good. You can\r\ndo better.'),
(2524, 'GOOD, '),
(2525, 'can do better'),
(2526, 'Good. \r\n you can do better.'),
(2527, '       Very good,\r\ncan do better '),
(2528, ' Work hard in Hindi subject.'),
(2529, 'GOOD, '),
(2530, 'Good  \r\nYou can do better.\r\n'),
(2531, '  Good, can do better '),
(2532, '     excellent !'),
(2533, 'Very good.\r\n you can do better'),
(2534, '     excellent !'),
(2535, ' WORK HARD IN ALL \r\nTHE SUBJECT. \r\nYOU CAN DO BETTER.'),
(2536, 'EXCELLENT'),
(2537, 'Outstanding,keep it up'),
(2538, 'can do beetter'),
(2539, 'is very good. \r\nKeep it up.'),
(2540, '       Very good,\r\n\r\n\r\n     can do better '),
(2541, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(2542, '  Good. You can do better. '),
(2543, ' Needs hard work.'),
(2544, 'Outstanding'),
(2545, '     excellent !'),
(2546, '  Good, can do better '),
(2547, 'Hard work is needed.'),
(2548, 'Excellent.\r\nSuccess is a few steps ahead\r\n'),
(2549, '  Good, \r\n'),
(2550, ' Needs hard work.'),
(2551, 'Needs hard work\r\n in all subjects'),
(2552, 'Be regular and work hard'),
(2553, 'Needs more hard work\r\nin all subjects.'),
(2554, 'Be regular during exam. Work hard in Eng language  subject.'),
(2555, 'Needs hard work in all subjects.'),
(2556, 'Needs more hard work.'),
(2557, 'Outstanding ! Keep it up.'),
(2558, 'Good . you can do better.\r\n'),
(2559, 'Work hard in English Language and Hindi .\r\nBe regular during exam.'),
(2560, '   WORK HARD \r\n'),
(2561, 'can do better .'),
(2562, 'GOOD'),
(2563, ' Very good, You can do better .'),
(2564, 'WORK HARD'),
(2565, '  Good, \r\ncan do better '),
(2566, 'Good , can do better'),
(2567, 'Good .you can do better.'),
(2568, 'Good, You can do better '),
(2569, 'Be regular \r\nduring exam.'),
(2570, 'Can do better.\r\n'),
(2571, 'You can do better.'),
(2572, '  Good, \r\n'),
(2573, 'Excellent.Keep it up.'),
(2574, ' Very good, You can do better '),
(2575, '       Very good,\r\ncan do better '),
(2576, ' WORK HARD IN ALL THE SUBJECTS. YOU CAN DO BETTER.'),
(2577, 'You can do better.\r\n'),
(2578, 'Can do beeter\r\n'),
(2579, 'Excellent.\r\nKeep it up\r\n'),
(2580, 'Very good.'),
(2581, 'Try to do better.\r\n'),
(2582, 'Outstanding ! Keep it up.'),
(2583, '       Very good,\r\ncan do better '),
(2584, 'Try to do better.'),
(2585, ' Good, can do better '),
(2586, '     excellent ! keep it up'),
(2587, '       Very good, You\r\n     Can do better '),
(2588, '       Very good,\r\ncan do better '),
(2589, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(2590, ' Work hard in Eng Language and Literature  subjects .'),
(2591, 'Excellent.'),
(2592, 'Outstanding,keep it up'),
(2593, 'WORK HARD YOU CAN DO BETTER'),
(2594, 'Good can do better.'),
(2595, 'Outstanding,keep it up'),
(2596, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(2597, 'Very good, Can do better'),
(2598, 'Can do better.keep trying'),
(2599, 'can do better .\r\nkeep trying.'),
(2600, 'Good , can do better '),
(2601, 'GOOD, '),
(2602, 'Excellent ! Keep it up.'),
(2603, '  Good, can do better '),
(2604, '   WORK HARD \r\n'),
(2605, '       Very good,\r\ncan do better '),
(2606, '   WORK HARD \r\n  YOU CAN \r\nDO BETTER '),
(2607, 'Good, You can do better'),
(2608, 'Can do better. Keep trying.'),
(2609, '  Good, can do better '),
(2610, '     excellent !'),
(2611, '  Good,\r\n can do better '),
(2612, 'be regular and work hard'),
(2613, '  Good,\r\n can do better '),
(2614, ' Hard work needed in Mathematics.'),
(2615, 'Can do better. '),
(2616, ' WORK HARD IN ALL THE SUBJECT. YOU CAN DO BETTER.'),
(2617, 'Very good, keep trying'),
(2618, 'Excellent !Keep it up.'),
(2619, 'Hard work is needed.'),
(2620, 'GOOD YOU CAN DO  BETTER'),
(2621, 'Hard work is needed.'),
(2622, 'Good, Can do better'),
(2623, 'Very good , keep trying'),
(2624, 'Excellent ! Keep it up.'),
(2625, ' Very good, You can do better '),
(2626, 'Good , you can do better'),
(2627, 'Work hard in all the subjects'),
(2628, 'work hard in computer science subject.\r\ncan do better. '),
(2629, 'Hard work is needed in computer subject.'),
(2630, 'Can do better. Keep trying'),
(2631, 'Work hard in English Literature and Hindi subjects.'),
(2632, 'Work hard in E.Literature and Hindi .'),
(2633, 'Be regular during exam.'),
(2634, 'Excellent ! Keep it up.'),
(2635, 'Good.You can do better'),
(2636, ' Work hard in Hindi subject.'),
(2637, 'Work hard in G.K and hindi.You can do better'),
(2638, 'Very good, keep trying'),
(2639, 'Good, can do better'),
(2640, 'Good ,can do better'),
(2641, 'Very good, keep trying'),
(2642, 'Good , can do better'),
(2643, 'work hard in all the subjects'),
(2644, 'Work hard in all the subjects.'),
(2645, ' Work hard.'),
(2646, 'Work hard in all the subjects.'),
(2647, 'Good ,can do better.'),
(2648, 'Can do better.keep trying.'),
(2649, 'You can do better .keep trying.'),
(2650, 'Very good, you can do better.'),
(2651, ' Needs hard work.'),
(2652, 'Work hard in all the subjects. You\r\n  can do better.'),
(2653, 'Needs hard work.Spend more\r\n time with books.'),
(2654, 'Work hard.'),
(2655, 'Hard work is needed.'),
(2656, 'Good,you can do better.'),
(2657, 'Hard work is needed.'),
(2658, 'Good, you can do better.'),
(2659, 'Good ,you can do better.'),
(2660, 'Good you can do better.'),
(2661, 'Hard work is needed.'),
(2662, 'Very good.'),
(2663, 'Very  good.'),
(2664, 'Hard work is needed.'),
(2665, 'Work hard,can do better.'),
(2666, 'GOOD ! TRY OUT FOR\r\n A BETTER\r\n PERCENTAGE\r\n NEXT TERM'),
(2667, '    \r\n      GOOD!\r\n\r\n  \r\n\r\n   can do better. '),
(2668, 'YOU CAN ACHIEVE \r\n\r\n\r\n\r\n\r\nEVEN GOOD!'),
(2669, ' WORK HARD  IN ALL \r\n   \r\n\r\n\r\nTHE SUBJECTS !\r\n\r\n\r\n\r\n\r\n\r\n \r\n YOU CAN\r\nDO BETTER.'),
(2670, '  WELL DONE ! TRY & \r\n \r\n\r\n\r\n SCORE BETTER!'),
(2671, 'Good, can do better'),
(2672, 'work hard'),
(2673, '   WORK HARD \r\n'),
(2674, 'work hard'),
(2675, 'can do better'),
(2676, 'A lot of hard work is needed in all \r\nthe subjects and be regular in \r\nthe class.'),
(2677, 'A lot of hard work is needed in all \r\nthe subjects & be regular in the \r\nclass.'),
(2678, 'A lot of hard work is needed in all \r\nthe subjects.'),
(2679, 'Work hard in computer & maths.\r\n You can do better.'),
(2680, 'Work hard in computer & maths.'),
(2681, 'Work hard in all the subjects.'),
(2682, '     Needs hard work. Pay attention in class.'),
(2683, 'Needs more improvement in \r\nall the subjects.'),
(2684, 'Needs more improvement.'),
(2685, 'Needs hard work.'),
(2686, 'Work hard'),
(2687, 'A lot of hard work is needed in all\r\n the subjects.'),
(2688, 'A lot of hard work is needed in all\r\nthe subjects.'),
(2689, 'Needs improvement in English Literature and Hindi . Be regular during exam.'),
(2690, 'Work hard in all the subjects.'),
(2691, 'Needs hard work in English Language and Literature.'),
(2692, 'A lot of hard work is needed in all\r\nthe subjects.'),
(2693, 'Needs improvement in \r\nall the subjects.'),
(2694, 'Hard work is needed in computer.'),
(2695, 'Work hard. You can do better.\r\n'),
(2696, 'A lot of hard work is needed in\r\nall the subjects.'),
(2697, '      Work hard  inEnglish Literature\r\n      and Hindi'),
(2698, 'A lot of hard work is needed .'),
(2699, 'A lot of hard work is needed.'),
(2700, '   WORK HARD \r\n'),
(2701, 'A lot of hard work is needed .'),
(2702, 'Needs hard work in English Literature and Hindi'),
(2703, 'Very good.can do better.'),
(2704, 'Can do better keep trying.'),
(2705, 'Hard work is needed.'),
(2706, 'Very good can do better.'),
(2707, 'Hard work is needed.'),
(2708, 'Needed a lot of hard work.'),
(2709, 'Good can do better.'),
(2710, 'Very good can do better.'),
(2711, 'Can do better keep trying.'),
(2712, 'Very good can do better.'),
(2713, 'Can do better keep trying.'),
(2714, 'Hard work is needed.'),
(2715, 'Can do better keep trying.'),
(2716, 'Excellent ! keep it up.'),
(2717, 'Very good can do better.'),
(2718, 'Hard work is needed.'),
(2719, 'Good can do better.'),
(2720, 'Excellent ! keep it up.'),
(2721, 'Can do better keep trying.'),
(2722, 'Hard work is needed.'),
(2723, 'Excellent ! keep it up.'),
(2724, 'Very good can do better.'),
(2725, 'Hard work is needed.'),
(2726, 'Absent.'),
(2727, 'Be regular during exam and do hard work.'),
(2728, 'Excellent ! keep it up.'),
(2729, 'Very good can do better.'),
(2730, 'Excellent ! keep it up.'),
(2731, 'Good can do better.'),
(2732, '  Work hard.'),
(2733, 'He was absent in second term exam.'),
(2734, 'Can do better. \r\n\r\n\r\n\r\n\r\nKeep trying.'),
(2735, 'Excellent ! keep it up.'),
(2736, 'Good can do better.'),
(2737, 'Ca do better keep trying.'),
(2738, 'Good can do better.'),
(2739, 'Hard    work\r\n  \r\n\r\n\r\n  is     needed.'),
(2740, 'Good can do better.'),
(2741, 'Can do better keep trying.'),
(2742, 'Hard work is needed.'),
(2743, 'Very good can do better.'),
(2744, 'Can do better keep trying.'),
(2745, '  YOU   NEED  \r\n\r\n\r\n TO PAY ATTENTION\r\n \r\n\r\n IN THE CLASS\r\n\r\n\r\n\r\n AND CONCENTRATE '),
(2746, 'Excellent ! keep it up.'),
(2747, 'HARD WORK\r\n\r\n\r\n\r\n IS NEEDED.'),
(2748, 'Hard work is needed.'),
(2749, 'EXCELLENT ! YOU CAN \r\n\r\n\r\nDO EVEN BETTER!'),
(2750, 'Good can do better.'),
(2751, '  WELL DONE ! TRY & \r\n \r\n\r\n\r\n SCORE BETTER!'),
(2752, '  Good, \r\n\r\n\r\ncan do better '),
(2753, 'NEEDS    A      LOT  \r\n  \r\n\r\nOF  HARD   WORK\r\n\r\n\r\n\r\n IN  THE  MAJORITY\r\n\r\n\r\n SUBJECTS.'),
(2754, 'HARD   WORK  \r\n\r\n\r\n\r\n IS   NEEDED.'),
(2755, 'Excellent ! keep it up.'),
(2756, 'Needs   hard \r\n\r\n\r\n\r\nwork  in \r\n\r\n\r\n   the  all subjects.'),
(2757, 'Excellent ! keep it up.'),
(2758, 'Excellent ! keep it up.'),
(2759, 'Good can do better.'),
(2760, '  WELL DONE ! YOU \r\n\r\n\r\n\r\nHAVE THAT CALIBER \r\n\r\n\r\nTO ACHIEVE !'),
(2761, 'Excellent ! keep it up.'),
(2762, 'Excellent ! keep it up.'),
(2763, 'Hard   work \r\n\r\n\r\n\r\n is needed.'),
(2764, 'Can do better keep trying.'),
(2765, '  Good, \r\ncan do better '),
(2766, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2767, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2768, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2769, '   WORK HARD \r\n'),
(2770, '   WORK HARD \r\n'),
(2771, ' Needs      hard     work.'),
(2772, '   WORK HARD \r\n'),
(2773, 'hard    work\r\n\r\n\r\n is    needed.\r\n'),
(2774, 'Can do better      \r\n\r\n\r\n\r\n\r\nKeep trying..'),
(2775, '   WORK   HARD  TO \r\n\r\n\r\nPASS OUT \r\n\r\n\r\n\r\nSUBJECTLY'),
(2776, 'CONCENTRATE MORE \r\n\r\n\r\n\r\nON STUDIES!\r\n'),
(2777, 'HARD   WORK  \r\n\r\n\r\n\r\n\r\n IS   NEEDED.'),
(2778, 'WORK HARDER   \r\n\r\n\r\n\r\nTO ATTAIN BETTER \r\n\r\n\r\n\r\n\r\nGRADES'),
(2779, 'A    lot    of   \r\n\r\n\r\n\r\n hard    work   \r\n\r\n\r\n  is       needed.'),
(2780, '     Excellent !'),
(2781, 'YOU NEED TO \r\n\r\n\r\n\r\nGIVE PROPER\r\n\r\n\r\n\r\n ATTENTION TO STUDIES\r\n\r\n\r\n TO PASS OUT '),
(2782, 'Hard     work\r\n\r\n\r\n\r\n\r\n is needed\r\n\r\nBe regular  in \r\n\r\n\r\nstudies\r\n\r\n.\r\n\r\n\r\n\r\n\r\nBe regular in the class.'),
(2783, '   WORK HARD \r\n'),
(2784, 'Hard    work\r\n\r\n\r\n\r\n is    needed.'),
(2785, 'HARD WORK\r\n\r\n\r\n\r\n IS NEEDED.'),
(2786, 'A lot of hard\r\n\r\n\r\n\r\n\r\n\r\n work needed.'),
(2787, '    \r\n      GOOD!\r\n\r\n  \r\n\r\n   can do better. '),
(2788, 'can improve.'),
(2789, 'Hard work\r\n\r\n\r\n\r\n\r\n is needeed.\r\n\r\n\r\n\r\nYou can do it.'),
(2790, '   WORK HARD \r\n'),
(2791, ' Work hard.'),
(2792, '   WORK HARD \r\n'),
(2793, '   WORK HARD \r\n\r\n\r\n  YOU CAN \r\n\r\n\r\n\r\nDO BETTER '),
(2794, '  Work hard.'),
(2795, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2796, '  Good, \r\n\r\n\r\ncan do better '),
(2797, 'WORK HARD .'),
(2798, 'WELL DONE'),
(2799, 'WELL DONE'),
(2800, 'NEEDS MORE \r\n\r\n\r\n HARD WORK.'),
(2801, 'Hard work \r\n\r\n\r\n\r\n is needed.'),
(2802, 'HARD WORK \r\n\r\n\r\n\r\n IS NEEDED'),
(2803, '  Good, can do \r\n\r\n\r\n\r\n better '),
(2804, 'Can do better.\r\n'),
(2805, '  Good, \r\n'),
(2806, '   GOOD!'),
(2807, 'Hard work  \r\n\r\n\r\n\r\n is needed.'),
(2808, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2809, 'Outstanding   performance!'),
(2810, 'Work   hard.'),
(2811, 'Good ,can do better.'),
(2812, 'EXCELLENT'),
(2813, '     Excellent !'),
(2814, '     Excellent !'),
(2815, '   GOOD!'),
(2816, 'WORK HARD'),
(2817, 'WORK HARD'),
(2818, 'WORK HARD .'),
(2819, 'WORK HARD.'),
(2820, 'Very good,you can do better. '),
(2821, 'Very good,can do better '),
(2822, '       Very good, You\r\n     Can do better '),
(2823, '  Good, you can do better.Be regular .'),
(2824, 'Good, Be regular during exam.'),
(2825, 'Excellent ! keep it up.'),
(2826, '       Very good, You  can do better.\r\n   '),
(2827, '     excellent'),
(2828, '       Very good,   can do better.\r\n    \r\n\r\n\r\n\r\n '),
(2829, 'Excellent'),
(2830, '       Very good, You  can do better.\r\n   '),
(2831, 'Excellent'),
(2832, 'Excellent'),
(2833, 'Excellent'),
(2834, 'Excellent'),
(2835, '       Very good, You  can do better.\r\n   '),
(2836, ' Good, can do better '),
(2837, 'Hard work is needed.'),
(2838, 'Be regular during exam.'),
(2839, 'Excellent ! Keep it up.'),
(2840, 'Excellent ! Keep it up.'),
(2841, 'Hard work is needed.'),
(2842, 'Can do better.Keep trying.'),
(2843, 'Hard work is needed.'),
(2844, 'Very good.you can do better.   \r\n    \r\n\r\n'),
(2845, 'Good . You can do better.'),
(2846, 'Good .Be regular during exam.'),
(2847, 'Very good,be regular during exam.'),
(2848, 'Excellent ! Keep it up.'),
(2849, 'Excellent ! keep it up.'),
(2850, 'Very good,you can do much better.Be regular in the class.'),
(2851, 'Excellent ! Keep it up.'),
(2852, 'Excellent ! Keep it up.'),
(2853, 'Excellent ! Keep it up.'),
(2854, 'Excellent  !\r\nKeep it up.'),
(2855, 'Excellent ! keep it up.'),
(2856, ' Very good.you can do better.\r\n    \r\n\r\n\r\n\r\n'),
(2857, 'Good.can do better.'),
(2858, 'Outstanding ! Keep it up.'),
(2859, 'Very good,you can do better.\r\n    \r\n\r\n\r\n\r\n'),
(2860, 'Excellent  ! keep it up.\r\n'),
(2861, 'Very good.you can do better.'),
(2862, 'Outstanding ! Keep it up.'),
(2863, 'Excellent ! Keep it up.'),
(2864, 'Outstanding ! Keep it up.'),
(2865, 'Outstanding ! Keep it up.'),
(2866, 'Very good , you can do better.'),
(2867, 'Excellent ! Keep it up.'),
(2868, 'Excellent !Keep it up.'),
(2869, '       Very good,   you can do much better.\r\n    \r\n\r\n\r\n'),
(2870, '       Very good,   you can do much better.\r\n    \r\n\r\n\r\n'),
(2871, '       Very good,   can do better.\r\n    \r\n\r\n\r\n\r\n '),
(2872, ' Very good, can do better '),
(2873, '       Very good,   you can do much better.\r\n    \r\n\r\n\r\n'),
(2874, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2875, '   WORK HARD \r\n'),
(2876, '   WORK HARD \r\n'),
(2877, '       Very good,   can do better.\r\n    \r\n\r\n\r\n\r\n '),
(2878, 'WORK HARD'),
(2879, '     excellent'),
(2880, 'PLEASE TAKE CARE AND TRY TO PRESENT ON EXAM TIME'),
(2881, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2882, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2883, 'OUTSTANDING'),
(2884, 'WORKHARD'),
(2885, 'WORKHARD'),
(2886, 'WORKHARD'),
(2887, 'EXCELLENT'),
(2888, 'GOOD .TRY TO DO BETTER'),
(2889, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2890, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2891, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2892, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2893, 'OUTSTANDING'),
(2894, 'OUTSTANDING'),
(2895, 'GOOD. TRY TO DO BETTER'),
(2896, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2897, 'OUTSTANDING'),
(2898, 'GOOD . YOU CAN DO BETTER'),
(2899, 'WORKHARD AND BE REGULAR'),
(2900, 'WORKHARD'),
(2901, 'HARDWORK IS NEEDED'),
(2902, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2903, 'WORKHARD'),
(2904, 'EXCELLENT'),
(2905, 'GOOD . YOU CAN DO BETTER'),
(2906, 'GOOD .TRY TO DO BETTER'),
(2907, 'TRY TO PRESENT ON EXAM DAY'),
(2908, 'OUTSTANDING'),
(2909, 'OUTSTANDING'),
(2910, '       Very good,   \r\n    \r\n\r\n\r\n\r\n Can do better '),
(2911, 'TRY TO DO BETTER'),
(2912, 'GOOD'),
(2913, 'HARD WORK IS NEEDED'),
(2914, 'GOOD ,TRY TO DO BETTER'),
(2915, 'GOOD'),
(2916, 'EXCELLENT'),
(2917, 'GOOD '),
(2918, 'GOOD .TRY TO DO BETTER'),
(2919, 'OUTSTANDING'),
(2920, 'HARD WORK IS NEEDED'),
(2921, '     excellent'),
(2922, 'Very Good . you can do better'),
(2923, 'very good . you can do better'),
(2924, 'very good . you can do better'),
(2925, 'very good . you can do better'),
(2926, 'very good . you can do better'),
(2927, 'very good . you can do better'),
(2928, 'very good . you can do better'),
(2929, 'very good . you can do better'),
(2930, 'very good you can do better'),
(2931, 'Very good. Can do better.'),
(2932, 'Work hard.'),
(2933, 'Hard work is needed.'),
(2934, 'Work hard'),
(2935, 'Very good.Can do better.'),
(2936, 'You can do better.'),
(2937, 'Try to achieve more.'),
(2938, 'Needs a lot of hard work.'),
(2939, 'Put stress on arts subjects.'),
(2940, 'Needs a lot of hard work.');

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_facility`
--

CREATE TABLE `student_transport_facility` (
  `ID` int(11) NOT NULL,
  `ADM_NO` varchar(50) NOT NULL,
  `OLD_STOPNO` int(11) NOT NULL,
  `NEW_STOPNO` int(11) NOT NULL,
  `FROM_APPLICABLE_MONTH` varchar(50) NOT NULL,
  `TO_APPLICABLE_MONTH` varchar(50) NOT NULL,
  `FROM_APPLICABLE_MONTH_CODE` int(11) NOT NULL,
  `TO_APPLICABLE_MONTH_CODE` int(11) NOT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `USER_ID` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_transport_facility`
--

INSERT INTO `student_transport_facility` (`ID`, `ADM_NO`, `OLD_STOPNO`, `NEW_STOPNO`, `FROM_APPLICABLE_MONTH`, `TO_APPLICABLE_MONTH`, `FROM_APPLICABLE_MONTH_CODE`, `TO_APPLICABLE_MONTH_CODE`, `CREATED_DATE`, `USER_ID`) VALUES
(1, '216738', 1, 9, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(2, '216757', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(3, '314802', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(4, '206276', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(5, '314809', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(6, '216740', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(7, '206271', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(8, '216759', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(9, '216758', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(10, '216734', 1, 3, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(11, '206274', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(12, '216733', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(13, '206279', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(14, '216755', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(15, '121676010', 1, 8, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(16, '216751', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(17, '216754', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(18, '183890', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(19, '216731', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(20, '183884', 1, 3, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(21, '314801', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(22, '183888', 1, 10, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(23, '183886', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(24, '206278', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(25, '206277', 1, 9, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(26, '216732', 1, 10, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(27, '183882', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(28, '183889', 1, 2, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(29, '314805', 1, 2, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(30, '183887', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(31, '216737', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(32, '314807', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(33, '216738D', 1, 9, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(34, '314810', 1, 12, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(35, '319012', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(36, '314806', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(37, '319020', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(38, '319019', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(39, '314804', 1, 4, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(40, '319018', 1, 13, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(41, '319017', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(42, '319016', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(43, '14296', 1, 12, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(44, '14298', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(45, '14299', 1, 13, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(46, '14297', 1, 1, 'APR', 'MAR', 1, 12, '2024-03-31 18:30:00', 'Fees'),
(47, '14304', 1, 14, 'AUG', 'MAR', 5, 12, '2024-08-27 06:23:18', 'Fees');

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_facility_dec`
--

CREATE TABLE `student_transport_facility_dec` (
  `ID` int(11) DEFAULT NULL,
  `ADM_NO` varchar(50) DEFAULT NULL,
  `OLD_STOPNO` int(11) DEFAULT NULL,
  `NEW_STOPNO` int(11) DEFAULT NULL,
  `FROM_APPLICABLE_MONTH` varchar(50) DEFAULT NULL,
  `TO_APPLICABLE_MONTH` varchar(50) DEFAULT NULL,
  `FROM_APPLICABLE_MONTH_CODE` int(11) DEFAULT NULL,
  `TO_APPLICABLE_MONTH_CODE` int(11) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `USER_ID` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stu_attendance_entry`
--

CREATE TABLE `stu_attendance_entry` (
  `id` int(11) NOT NULL,
  `class_code` int(11) NOT NULL,
  `sec_code` int(11) NOT NULL,
  `admno` varchar(255) NOT NULL,
  `att_status` varchar(255) NOT NULL COMMENT 'P=present,A=absent,HD=half_day',
  `remarks` text NOT NULL,
  `att_date` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stu_attendance_entry_periodwise`
--

CREATE TABLE `stu_attendance_entry_periodwise` (
  `id` int(11) NOT NULL,
  `class_code` int(11) NOT NULL,
  `sec_code` int(11) NOT NULL,
  `admno` varchar(255) NOT NULL,
  `att_status` varchar(255) NOT NULL COMMENT 'P=present,A=absent',
  `period` int(11) NOT NULL,
  `att_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubCode` int(11) DEFAULT NULL,
  `SubName` varchar(50) DEFAULT NULL,
  `SubSName` varchar(10) DEFAULT NULL,
  `Bundle_Count` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubCode`, `SubName`, `SubSName`, `Bundle_Count`) VALUES
(1, 'ACTIVITY', 'ACT', 0),
(2, 'ART', 'ART', 0),
(3, 'NA', 'NA', 0),
(4, 'BIOLOGY', 'BIO', 1),
(5, 'CHE(PRAC.)', 'CHE(LAB)', 0),
(6, 'CHEMISTRY', 'CHE', 1),
(7, 'COMPUTER', 'COMP', 1),
(8, 'DRAWING', 'DRA', 0),
(9, 'ECONOMICS', 'ECO', 1),
(10, 'ENGLISH', 'ENG', 1),
(11, 'ENGLISH-1', 'ENG-1', 1),
(12, 'ENGLISH-2', 'ENG-2', 1),
(13, 'ER.', 'ER.', 0),
(14, 'EVS', 'EVS', 1),
(15, 'G.K', 'G.K', 1),
(16, 'GAMES', 'GAMES', 0),
(17, 'GEOGRAPHY', 'GEO', 1),
(18, 'HINDI', 'HIN', 1),
(19, 'HISTORY', 'HIS', 1),
(20, 'LIBRARY', 'LIB', 0),
(21, 'M.SC', 'M.SC', 1),
(22, 'MATHS', 'MATHS', 1),
(23, 'P.T', 'P.T', 0),
(24, 'PHYSICS', 'PHY', 1),
(25, 'PHY(PRAC.)', 'PHY(LAB)', 0),
(26, 'S.S.T', 'S.S.T', 1),
(27, 'SANSKRIT', 'SNKT', 1),
(28, 'SCIENCE', 'SCI', 1),
(29, 'SPE.', 'SPE', 0),
(30, 'SPE+ER', 'SPE+ER', 0),
(31, 'YK', 'YK', 0),
(32, 'YK+ACT', 'YK+ACT', 0),
(33, 'RISHABH', 'RJ', NULL),
(34, 'BENGALI', 'BEN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE `t1` (
  `RECT_NO` varchar(50) DEFAULT NULL,
  `RECT_DATE` datetime DEFAULT NULL,
  `STU_NAME` varchar(255) DEFAULT NULL,
  `STUDENTID` varchar(50) DEFAULT NULL,
  `ADM_NO` varchar(50) DEFAULT NULL,
  `CLASS` varchar(50) DEFAULT NULL,
  `SEC` varchar(50) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `PERIOD` varchar(255) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `APR_FEE` varchar(50) DEFAULT NULL,
  `MAY_FEE` varchar(50) DEFAULT NULL,
  `JUNE_FEE` varchar(50) DEFAULT NULL,
  `JULY_FEE` varchar(50) DEFAULT NULL,
  `AUG_FEE` varchar(50) DEFAULT NULL,
  `SEP_FEE` varchar(50) DEFAULT NULL,
  `OCT_FEE` varchar(50) DEFAULT NULL,
  `NOV_FEE` varchar(50) DEFAULT NULL,
  `DEC_FEE` varchar(50) DEFAULT NULL,
  `JAN_FEE` varchar(50) DEFAULT NULL,
  `FEB_FEE` varchar(50) DEFAULT NULL,
  `MAR_FEE` varchar(50) DEFAULT NULL,
  `CHQ_NO` varchar(255) DEFAULT NULL,
  `Narr` varchar(50) DEFAULT NULL,
  `TAmt` double DEFAULT NULL,
  `Fee_Book_No` varchar(255) DEFAULT NULL,
  `Collection_Mode` int(11) DEFAULT NULL,
  `User_Id` varchar(50) DEFAULT NULL,
  `Payment_Mode` varchar(255) DEFAULT NULL,
  `Bank_Name` varchar(255) DEFAULT NULL,
  `Pay_Date` datetime DEFAULT NULL,
  `Session_Year` int(11) DEFAULT NULL,
  `FORM_NO` varchar(255) DEFAULT NULL,
  `voucher_created` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tc`
--

CREATE TABLE `tc` (
  `TCNO` mediumtext DEFAULT NULL,
  `adm_no` mediumtext DEFAULT NULL,
  `RegistrationNo` mediumtext DEFAULT NULL,
  `BoardRollNo` mediumtext DEFAULT NULL,
  `Name` mediumtext DEFAULT NULL,
  `Mother_NM` mediumtext DEFAULT NULL,
  `Father_NM` mediumtext DEFAULT NULL,
  `Nation` mediumtext DEFAULT NULL,
  `Category` mediumtext DEFAULT NULL,
  `ADM_DATE` date DEFAULT NULL,
  `ADM_CLASS` mediumtext DEFAULT NULL,
  `BIRTH_DT` date DEFAULT NULL,
  `current_Class` mediumtext DEFAULT NULL,
  `TEXT08a` mediumtext DEFAULT NULL,
  `text08b` mediumtext DEFAULT NULL,
  `combo09` mediumtext DEFAULT NULL,
  `textsub1` mediumtext DEFAULT NULL,
  `textsub2` mediumtext DEFAULT NULL,
  `textsub3` mediumtext DEFAULT NULL,
  `textsub4` mediumtext DEFAULT NULL,
  `textsub5` mediumtext DEFAULT NULL,
  `textsub6` mediumtext DEFAULT NULL,
  `textsub7` mediumtext DEFAULT NULL,
  `combo011` mediumtext DEFAULT NULL,
  `datacombo011` mediumtext DEFAULT NULL,
  `txtClsW` mediumtext DEFAULT NULL,
  `combo12a` mediumtext DEFAULT NULL,
  `combo012b` mediumtext DEFAULT NULL,
  `combo013` mediumtext DEFAULT NULL,
  `text014` mediumtext DEFAULT NULL,
  `text015` mediumtext DEFAULT NULL,
  `combo016` mediumtext DEFAULT NULL,
  `text017` mediumtext DEFAULT NULL,
  `combo018` mediumtext DEFAULT NULL,
  `text019` date DEFAULT NULL,
  `text020` date DEFAULT NULL,
  `text021` mediumtext DEFAULT NULL,
  `text022` mediumtext DEFAULT NULL,
  `dob_inwords` mediumtext DEFAULT NULL,
  `Tc_Status` mediumtext DEFAULT NULL,
  `duplicate_issue` smallint(6) DEFAULT NULL,
  `session_year` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc`
--

INSERT INTO `tc` (`TCNO`, `adm_no`, `RegistrationNo`, `BoardRollNo`, `Name`, `Mother_NM`, `Father_NM`, `Nation`, `Category`, `ADM_DATE`, `ADM_CLASS`, `BIRTH_DT`, `current_Class`, `TEXT08a`, `text08b`, `combo09`, `textsub1`, `textsub2`, `textsub3`, `textsub4`, `textsub5`, `textsub6`, `textsub7`, `combo011`, `datacombo011`, `txtClsW`, `combo12a`, `combo012b`, `combo013`, `text014`, `text015`, `combo016`, `text017`, `combo018`, `text019`, `text020`, `text021`, `text022`, `dob_inwords`, `Tc_Status`, `duplicate_issue`, `session_year`) VALUES
('BCH/23-24/1', '216731', NULL, NULL, 'AAVYA MAHESWARI', NULL, 'SURESH SABOO', NULL, NULL, '2022-08-11', NULL, '2019-12-10', 'Nursery', 'PASSED', '', NULL, 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Yes', NULL, 'GOOD', '2024-03-21', '2024-03-21', 'HIGHER EDUCATION', 'ACTIVE', 'Ten  December Two Thousand Nineteen  ', 'TC_ISSUE', 2, '2023-2024'),
('BCH/23-24/2', '183887', NULL, NULL, 'ADITYA VISHWAKARMA', NULL, 'VIVEK VISHWAKARMA ', NULL, NULL, '2022-05-02', NULL, '2018-07-15', 'Prep', 'PASSED', '', NULL, 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Yes', NULL, 'GOOD', '2024-03-21', '2024-03-21', 'HIGHER EDUCATION', 'ACTIVE', 'Fifteen  July Two Thousand Eighteen  ', 'TC_ISSUE', 2, '2023-2024'),
('BCH/24-25/3', '14305', NULL, NULL, 'RISHABH JAIN', NULL, 'SKJ', NULL, NULL, '2024-10-15', NULL, '2000-03-30', 'Baby Pre-Nursery', 'PASSED', '', NULL, 'OVER BRIDGE', 'RANCHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Yes', NULL, 'GOOD', '2024-10-15', '2024-10-30', 'HIGHER EDUCATION', 'ACTIVE', 'Thirty   March Two Thousand ', 'TC_ISSUE', 1, '2024-2025'),
('BCH/24-25/4', '216738', NULL, NULL, 'SHASHI PANDEY', NULL, 'NIRAJ KUMAR PANDEY', NULL, NULL, '2023-01-16', NULL, '2020-08-25', 'Pre-Nursery', 'PASSED', '', NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Yes', NULL, 'GOOD', '2024-10-31', '2024-10-31', 'HIGHER EDUCATION', 'ACTIVE', 'Twenty Five  August Two Thousand Twenty  ', 'TC_ISSUE', 0, '2024-2025'),
('BCH/24-25/5', '216757', NULL, NULL, 'ANAY RAJ', NULL, 'SHAMBHU KUMAR', NULL, NULL, '2023-02-27', NULL, '2020-10-01', 'Baby Pre-Nursery', 'PASSED', '', NULL, 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Yes', NULL, 'BRIGHT STUDENT', '2024-10-31', '2024-10-31', 'HIGHER EDUCATION', 'ACTIVE', 'One  October Two Thousand Twenty  ', 'TC_ISSUE', 0, '2024-2025'),
('BCH/24-25/6', '216738D', NULL, NULL, 'DUMMY', NULL, 'NIRAJ KUMAR PANDEY', NULL, NULL, '2023-01-16', NULL, '2020-08-25', 'Baby Pre-Nursery', 'PASSED', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Yes', NULL, 'GOOD', '2024-10-11', '2024-10-26', 'HIGHER EDUCATION', 'ACTIVE', 'Twenty Five  August Two Thousand Twenty  ', 'TC_ISSUE', 0, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `tcash`
--

CREATE TABLE `tcash` (
  `VNo` varchar(50) DEFAULT NULL,
  `TDate` datetime DEFAULT NULL,
  `CCode` int(11) DEFAULT NULL,
  `PR` varchar(50) DEFAULT NULL,
  `Amt` double DEFAULT NULL,
  `Nar` mediumtext DEFAULT NULL,
  `SNo` int(11) NOT NULL,
  `SG` int(11) DEFAULT NULL,
  `ANSWER` int(11) DEFAULT 1,
  `AG` varchar(50) DEFAULT NULL,
  `ENo` double DEFAULT NULL,
  `AcT` int(11) DEFAULT 0,
  `MLCODE` varchar(20) DEFAULT NULL,
  `ECode` tinyint(4) DEFAULT NULL,
  `VType` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tc_remarks`
--

CREATE TABLE `tc_remarks` (
  `REMARKS` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tc_remarks`
--

INSERT INTO `tc_remarks` (`REMARKS`) VALUES
('PARENT\'S WISH'),
('HIGHER EDUCATION'),
('PARENT\'S REQUEST');

-- --------------------------------------------------------

--
-- Table structure for table `temp_daycoll`
--

CREATE TABLE `temp_daycoll` (
  `RECT_NO` varchar(255) NOT NULL,
  `RECT_DATE` date DEFAULT NULL,
  `STU_NAME` varchar(255) DEFAULT NULL,
  `STUDENTID` varchar(255) DEFAULT NULL,
  `ADM_NO` varchar(250) DEFAULT NULL,
  `CLASS` varchar(25) DEFAULT NULL,
  `SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` double DEFAULT NULL,
  `PERIOD` varchar(255) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `Fee1` double DEFAULT NULL,
  `Fee2` double DEFAULT NULL,
  `Fee3` double DEFAULT NULL,
  `Fee4` double DEFAULT NULL,
  `Fee5` double DEFAULT NULL,
  `Fee6` double DEFAULT NULL,
  `Fee7` double DEFAULT NULL,
  `Fee8` double DEFAULT NULL,
  `Fee9` double DEFAULT NULL,
  `Fee10` double DEFAULT NULL,
  `Fee11` double DEFAULT NULL,
  `Fee12` double DEFAULT NULL,
  `Fee13` double DEFAULT NULL,
  `Fee14` double DEFAULT NULL,
  `Fee15` double DEFAULT NULL,
  `Fee16` double DEFAULT NULL,
  `Fee17` double DEFAULT NULL,
  `Fee18` double DEFAULT NULL,
  `Fee19` double DEFAULT NULL,
  `Fee20` double DEFAULT NULL,
  `Fee21` double DEFAULT NULL,
  `Fee22` double DEFAULT NULL,
  `Fee23` double DEFAULT NULL,
  `Fee24` double DEFAULT NULL,
  `Fee25` double DEFAULT NULL,
  `APR_FEE` varchar(255) DEFAULT NULL,
  `MAY_FEE` varchar(255) DEFAULT NULL,
  `JUNE_FEE` varchar(255) DEFAULT NULL,
  `JULY_FEE` varchar(255) DEFAULT NULL,
  `AUG_FEE` varchar(255) DEFAULT NULL,
  `SEP_FEE` varchar(255) DEFAULT NULL,
  `OCT_FEE` varchar(255) DEFAULT NULL,
  `NOV_FEE` varchar(255) DEFAULT NULL,
  `DEC_FEE` varchar(255) DEFAULT NULL,
  `JAN_FEE` varchar(255) DEFAULT NULL,
  `FEB_FEE` varchar(255) DEFAULT NULL,
  `MAR_FEE` varchar(255) DEFAULT NULL,
  `CHQ_NO` varchar(255) DEFAULT NULL,
  `Narr` varchar(255) DEFAULT NULL,
  `TAmt` double DEFAULT NULL,
  `Fee_Book_No` varchar(255) DEFAULT NULL,
  `Collection_Mode` int(11) DEFAULT NULL,
  `User_Id` varchar(255) DEFAULT NULL,
  `Payment_Mode` mediumtext NOT NULL,
  `Bank_Name` varchar(500) NOT NULL DEFAULT 'N/A',
  `Pay_Date` date NOT NULL,
  `Session_Year` int(11) NOT NULL DEFAULT 2019,
  `FORM_NO` varchar(200) NOT NULL DEFAULT 'N/A',
  `voucher_created` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_daycoll`
--

INSERT INTO `temp_daycoll` (`RECT_NO`, `RECT_DATE`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `PERIOD`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CHQ_NO`, `Narr`, `TAmt`, `Fee_Book_No`, `Collection_Mode`, `User_Id`, `Payment_Mode`, `Bank_Name`, `Pay_Date`, `Session_Year`, `FORM_NO`, `voucher_created`) VALUES
('A000001', '2023-06-19', 'CANCELLED', 'CANCELLED', '216738', 'Baby Pre-Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-06-17', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000002', '2023-06-19', 'CANCELLED', 'CANCELLED', '216759', 'Baby Pre-Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-06-17', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000003', '2023-06-19', 'CANCELLED', 'CANCELLED', '216759', 'Baby Pre-Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-06-19', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000004', '2019-06-23', 'CANCELLED', 'CANCELLED', '216758', 'Baby Pre-Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-06-19', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000005', '2023-06-19', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY-JUN', 19300, 4000, 0, 5500, 4000, 5400, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000005', 'A000005', 'A000005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000006', '2023-06-19', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY-JUN', 19300, 4000, NULL, 5500, 4000, 5400, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000006', 'A000006', 'A000006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000007', '2023-06-19', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 'APR-MAY-JUN', 19300, 4000, NULL, 5500, 4000, 5400, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000007', 'A000007', 'A000007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000008', '2023-06-19', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 'APR-MAY-JUN', 22600, 4000, NULL, 5500, 4000, 5400, 0, NULL, 400, 3300, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000008', 'A000008', 'A000008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000009', '2023-06-19', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'APR-MAY-JUN', 19300, 4000, NULL, 5500, 4000, 5400, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000009', 'A000009', 'A000009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000010', '2023-06-21', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 'APR-MAY-JUN', 22900, 4000, NULL, 5500, 4000, 5400, 0, NULL, 400, 3600, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000010', 'A000010', 'A000010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000011', '2023-06-21', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY', 17500, 4000, NULL, 5500, 4000, 3600, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000011', 'A000011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000012', '2021-06-23', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'JUL', 15700, 4000, NULL, 5500, 4000, 1800, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000013', '2023-06-22', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'APR', 10800, 0, NULL, 5000, 4000, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000014', '2023-06-22', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 'APR', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000015', '2023-06-22', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 'APR', 13800, 0, NULL, 5000, 7000, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000016', '2023-06-22', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'APR', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000017', '2023-06-22', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'APR', 15900, 4000, NULL, 5000, 4000, 1800, 0, NULL, 0, 1100, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000018', '2023-06-22', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'APR', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000019', '2023-06-22', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'APR', 15900, 4000, NULL, 5000, 4000, 1800, 0, NULL, 0, 1100, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000020', '2023-06-22', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY-JUN', 5400, 0, NULL, 0, 0, 5400, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000020', 'A000020', 'A000020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000021', '2022-06-23', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 'APR-MAY-JUN', 14400, 0, NULL, 5000, 4000, 5400, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000021', 'A000021', 'A000021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000022', '2023-06-22', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'APR', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000023', '2023-06-22', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 'APR', 5800, 0, NULL, 4000, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000024', '2023-06-22', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 'APR', 13000, 4000, NULL, 5000, 4000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000025', '2023-06-22', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'APR', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000026', '2022-06-23', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 'APR', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000027', '2022-06-23', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nursery', 'A', 0, 'APR', 13400, 4000, NULL, 5000, 4000, 0, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 3000, NULL, NULL, 'A000027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000028', '2023-06-22', 'ADARSH KUMAR SINGH', 'A14273', '183884', 'Nursery', 'A', 0, 'APR', 11900, 0, NULL, 5000, 4000, 1800, 0, NULL, 0, 1100, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000029', '2023-06-22', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY', 14800, 4000, NULL, 5000, 4000, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000029', 'A000029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000030', '2023-06-22', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 'APR', 8000, 0, NULL, 5000, 3000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000031', '2023-06-22', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 'MAY', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000032', '2023-06-22', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'MAY', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000033', '2022-06-23', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'MAY-JUN', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000033', 'A000033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000034', '2023-06-22', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'MAY', 9800, 0, NULL, 4000, 4000, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000035', '2022-06-23', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'MAY', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000036', '2022-06-23', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'APR', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000037', '2023-06-22', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'APR-MAY', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000037', 'A000037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000038', '2023-06-22', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 'MAY', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000039', '2022-06-23', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'APR', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000040', '2022-06-23', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'MAY', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000041', '2022-06-23', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY-JUN', 5400, 0, NULL, 0, 0, 5400, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000041', 'A000041', 'A000041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000042', '2023-06-22', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'APR-MAY', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000042', 'A000042', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000043', '2023-06-23', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'MAY-JUN', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000043', 'A000043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000044', '2023-06-24', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 'JUN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000044', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000045', '2023-06-26', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'JUN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000046', '2023-06-26', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'JUN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000046', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000047', '2023-06-26', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'JUN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000048', '2023-06-30', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 'MAY-JUN', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 'A000048', 'A000048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000049', '2023-06-30', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nursery', 'A', 0, 'MISL.-PREV. DUES-MAR', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2030-06-23', 2023, 'N/A', 0),
('A000050', '2023-06-30', 'RIDDHI ', 'A14257', '206276', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY-JUN-JUL', 7200, 0, NULL, 0, 0, 7200, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000050', 'A000050', 'A000050', 'A000050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2030-06-23', 2023, 'N/A', 0),
('A000051', '2023-07-01', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'JUN', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000051', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-01', 2023, 'N/A', 0),
('A000052', '2023-07-01', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'JUN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000052', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-01', 2023, 'N/A', 0),
('A000053', '2023-07-03', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000053', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-03', 2023, 'N/A', 0),
('A000054', '2023-07-03', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nursery', 'A', 0, 'JUN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000054', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-03', 2023, 'N/A', 0),
('A000055', '2023-07-03', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 'JUN-JUL', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000055', 'A000055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-03', 2023, 'N/A', 0),
('A000056', '2023-07-04', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 'MAY-JUN-JUL', 5400, 0, NULL, 0, 0, 5400, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000056', 'A000056', 'A000056', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-04', 2023, 'N/A', 0),
('A000057', '2023-07-05', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'MAY-JUN', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000057', 'A000057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-05', 2023, 'N/A', 0),
('A000058', '2023-07-05', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'JUN-JUL', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000058', 'A000058', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-05', 2023, 'N/A', 0),
('A000059', '2023-07-05', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'MAY-JUN', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000059', 'A000059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-05', 2023, 'N/A', 0),
('A000060', '2023-07-05', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'MAY-JUN', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000060', 'A000060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-05', 2023, 'N/A', 0),
('A000061', '2023-07-05', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 1, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-05', 2023, 'N/A', 0),
('A000062', '2023-07-05', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-05', 2023, 'N/A', 0),
('A000063', '2023-07-06', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 'MAY', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-06', 2023, 'N/A', 0),
('A000064', '2023-07-06', 'CANCELLED', 'CANCELLED', '216734', 'Baby Pre-Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-07-06', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-06', 2023, 'N/A', 0),
('A000065', '2023-07-06', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 'JUL', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-06', 2023, 'N/A', 0),
('A000066', '2023-07-06', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 'JUL-AUG-SEP', 5400, 0, NULL, 0, 0, 5400, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000066', 'A000066', 'A000066', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-06', 2023, 'N/A', 0),
('A000067', '2023-07-07', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-07', 2023, 'N/A', 0),
('D1', '2023-07-07', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000068', '2023-07-10', 'CANCELLED', 'CANCELLED', '206278', 'Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-07-10', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-10', 2023, 'N/A', 0),
('A000069', '2023-07-10', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'JUL', 1815, 0, NULL, 0, 0, 1800, 15, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-10', 2023, 'N/A', 0),
('A000070', '2023-07-10', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nursery', 'A', 0, 'MAY', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-10', 2023, 'N/A', 0),
('A000071', '2023-07-10', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nursery', 'A', 0, 'JUN', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-10', 2023, 'N/A', 0),
('A000072', '2023-07-10', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nursery', 'A', 0, 'JUL', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000072', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-10', 2023, 'N/A', 0),
('A000073', '2023-07-10', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'JUL', 1815, 0, NULL, 0, 0, 1800, 15, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-10', 2023, 'N/A', 0),
('A000074', '2023-07-10', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'JUL', 1815, 0, NULL, 0, 0, 1800, 15, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-10', 2023, 'N/A', 0),
('A000075', '2023-07-11', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 'JUL', 1820, 0, NULL, 0, 0, 1800, 20, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 1, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-11', 2023, 'N/A', 0),
('A000076', '2023-07-11', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'JUN', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 3, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-11', 2023, 'N/A', 0),
('A000077', '2023-07-12', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'JUL', 1825, 0, NULL, 0, 0, 1800, 25, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 1, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-12', 2023, 'N/A', 0),
('D2', '2023-07-11', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1582694A', 'N/A', 2, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-07-11', 2023, 'N/A', 0),
('D3', '2023-07-14', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-07-14', 2023, 'N/A', 0),
('D4', '2023-07-14', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-07-14', 2023, 'N/A', 0),
('D5', '2023-07-14', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-07-14', 2023, 'N/A', 0),
('D6', '2023-07-14', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '319560411848', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-07-14', 2023, 'N/A', 0),
('A000078', '2023-07-12', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 'MAY-JUN-JUL', 6420, 0, NULL, 0, 1000, 5400, 20, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'A000078', 'A000078', 'A000078', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-07-12', 2023, 'N/A', 0),
('A000079', '2023-07-17', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 'JUL', 3050, 0, NULL, 0, 0, 1800, 50, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-07-17', 2023, 'N/A', 0),
('D7', '2023-07-18', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-07-18', 2023, 'N/A', 0),
('A000080', '2023-07-20', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 'JUL', 3050, 0, NULL, 0, 0, 1800, 50, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2307171132172639197659', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-07-20', 2023, 'N/A', 0),
('D8', '2023-07-19', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 1, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-07-19', 2023, 'N/A', 0),
('D9', '2023-07-24', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '357116597255', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-07-24', 2023, 'N/A', 0),
('A000081', '2023-07-24', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'APR-MAY-JUN-JUL', 13900, 4000, NULL, 5500, 4000, 0, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'A000081', 'A000081', 'A000081', 'A000081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-07-24', 2023, 'N/A', 0),
('A000082', '2023-07-31', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'JUL', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000082', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321260091339', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-07-31', 2023, 'N/A', 0),
('D10', '2023-07-31', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-07-31', 2023, 'N/A', 0),
('A000083', '2023-08-01', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 'JUN', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'A000083', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2308010855134022792800', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-01', 2023, 'N/A', 0),
('A000084', '2023-08-01', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-01', 2023, 'N/A', 0),
('A000085', '2023-08-01', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321337808902', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-01', 2023, 'N/A', 0),
('A000086', '2023-08-02', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000086', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321312954526', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-02', 2023, 'N/A', 0),
('A000087', '2023-08-02', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2308020944039680358984', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-02', 2023, 'N/A', 0),
('A000088', '2023-08-02', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2308020942440364012762', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-02', 2023, 'N/A', 0),
('A000089', '2023-08-02', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000089', NULL, NULL, NULL, NULL, NULL, NULL, 'T2308020943273411882947', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-02', 2023, 'N/A', 0),
('A000090', '2023-08-02', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-02', 2023, 'N/A', 0),
('D11', '2023-08-02', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-08-02', 2023, 'N/A', 0),
('A000091', '2023-08-03', 'DEVESHI SHARMA ', 'A14265', '216733', 'Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000091', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-03', 2023, 'N/A', 0),
('A000092', '2023-08-03', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0795632a0075803', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-03', 2023, 'N/A', 0),
('A000093', '2023-08-03', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'AUG', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321587568879', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-03', 2023, 'N/A', 0),
('D12', '2023-08-04', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '321666045754', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-08-04', 2023, 'N/A', 0),
('A000094', '2023-08-04', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2308041201547668060042', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-04', 2023, 'N/A', 0),
('A000095', '2023-08-04', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-04', 2023, 'N/A', 0),
('D13', '2023-08-07', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '321957513521', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000096', '2023-08-07', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000096', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321957513521', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000097', '2023-08-07', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000097', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000098', '2023-08-07', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321962689173', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000099', '2023-08-07', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'JUL', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000100', '2023-08-07', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'AUG', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321912654244', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000101', '2023-08-07', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'JUL', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '318641733012', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000102', '2023-08-07', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'AUG', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321963583726', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000103', '2023-08-07', 'ARHAM SIDDIQUE', 'A14271', '183890', 'Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2308071229205325813598', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-07', 2023, 'N/A', 0),
('A000104', '2023-08-08', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 'AUG', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321934543214', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-08', 2023, 'N/A', 0),
('A000105', '2023-08-08', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nursery', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321914584518', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-08', 2023, 'N/A', 0),
('A000106', '2023-08-08', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 'AUG', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '358526556890', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-08', 2023, 'N/A', 0),
('A000107', '2023-08-08', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'JUL', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '322093594089', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-08', 2023, 'N/A', 0),
('A000108', '2023-08-08', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-08', 2023, 'N/A', 0),
('A000109', '2023-08-08', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-08', 2023, 'N/A', 0),
('A000110', '2023-08-08', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2308081206262118270088', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-08', 2023, 'N/A', 0),
('A000111', '2023-08-09', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-09', 2023, 'N/A', 0),
('A000112', '2023-08-09', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 'AUG', 1810, 0, NULL, 0, 0, 1800, 10, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-09', 2023, 'N/A', 0),
('A000113', '2023-08-09', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'AUG', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '322012471265', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-08-09', 2023, 'N/A', 0),
('A000114', '2023-08-09', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-09', 2023, 'N/A', 0),
('A000115', '2023-08-10', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1815, 0, NULL, 0, 0, 1800, 15, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-10', 2023, 'N/A', 0),
('A000116', '2023-08-14', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 'AUG', 3035, 0, NULL, 0, 0, 1800, 35, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-08-14', 2023, 'N/A', 0),
('D14', '2023-08-18', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '323098153179', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-08-18', 2023, 'N/A', 0),
('A000117', '2023-09-01', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'AUG', 15700, 4000, NULL, 5500, 4000, 1800, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321200118151', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-01', 2023, 'N/A', 0),
('A000118', '2023-09-02', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 'AUG', 13900, 4000, NULL, 5500, 4000, 0, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2308261156569960952418', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-02', 2023, 'N/A', 0),
('D15', '2023-09-02', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 2600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 600, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'T2308261156569960952418', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-09-02', 2023, 'N/A', 0),
('A000119', '2023-09-04', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000119', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-09-04', 2023, 'N/A', 0);
INSERT INTO `temp_daycoll` (`RECT_NO`, `RECT_DATE`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `PERIOD`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CHQ_NO`, `Narr`, `TAmt`, `Fee_Book_No`, `Collection_Mode`, `User_Id`, `Payment_Mode`, `Bank_Name`, `Pay_Date`, `Session_Year`, `FORM_NO`, `voucher_created`) VALUES
('A000120', '2023-09-04', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 'JUL', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T2309030922355172800762', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-04', 2023, 'N/A', 0),
('A000121', '2023-09-04', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 'SEP', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000121', NULL, NULL, NULL, NULL, NULL, NULL, '324533935065', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-04', 2023, 'N/A', 0),
('A000122', '2023-09-04', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 'SEP', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000122', NULL, NULL, NULL, NULL, NULL, NULL, '361103545437', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-04', 2023, 'N/A', 0),
('A000123', '2023-09-04', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000123', NULL, NULL, NULL, NULL, NULL, NULL, 'T2309041003111967446754', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-04', 2023, 'N/A', 0),
('A000124', '2023-09-04', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'SEP', 16900, 4000, NULL, 5500, 4000, 1800, 0, NULL, 400, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000124', NULL, NULL, NULL, NULL, NULL, NULL, '324272949341', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-04', 2023, 'N/A', 0),
('D16', '2023-09-04', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 2600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 600, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '324272949341', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-09-04', 2023, 'N/A', 0),
('A000125', '2023-09-04', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'SEP', 3100, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1300, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000125', NULL, NULL, NULL, NULL, NULL, NULL, '324769995151', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-04', 2023, 'N/A', 0),
('A000126', '2023-09-04', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000126', NULL, NULL, NULL, NULL, NULL, NULL, 'S50687864', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-04', 2023, 'N/A', 0),
('A000127', '2023-09-05', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'AUG', 3120, 0, NULL, 0, 0, 1800, 120, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '324865340712', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-05', 2023, 'N/A', 0),
('A000128', '2023-09-06', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000128', NULL, NULL, NULL, NULL, NULL, NULL, '324955609010', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-06', 2023, 'N/A', 0),
('A000129', '2023-09-06', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'SEP', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000129', NULL, NULL, NULL, NULL, NULL, NULL, '324910472410', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-06', 2023, 'N/A', 0),
('A000130', '2023-09-06', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000130', NULL, NULL, NULL, NULL, NULL, NULL, 'T2309061152360457244639', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-06', 2023, 'N/A', 0),
('A000131', '2023-09-06', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000131', NULL, NULL, NULL, NULL, NULL, NULL, '324960898986', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-06', 2023, 'N/A', 0),
('A000132', '2023-09-06', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000132', NULL, NULL, NULL, NULL, NULL, NULL, '361513215628', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-06', 2023, 'N/A', 0),
('A000133', '2023-09-08', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'SEP', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000133', NULL, NULL, NULL, NULL, NULL, NULL, '324969027765', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-08', 2023, 'N/A', 0),
('A000134', '2023-09-08', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'SEP', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000134', NULL, NULL, NULL, NULL, NULL, NULL, '324979824920', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-08', 2023, 'N/A', 0),
('A000135', '2023-09-08', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1805, 0, NULL, 0, 0, 1800, 5, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000135', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-09-08', 2023, 'N/A', 0),
('A000136', '2023-09-11', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nursery', 'A', 0, 'AUG', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '324807589202', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-11', 2023, 'N/A', 0),
('A000137', '2023-09-11', 'AYANSH DUBEY', 'A14256', '314802', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000137', NULL, NULL, NULL, NULL, NULL, NULL, 'T2309102014042574253037', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-11', 2023, 'N/A', 0),
('A000138', '2023-09-13', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'SEP', 1830, 0, NULL, 0, 0, 1800, 30, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000138', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-09-13', 2023, 'N/A', 0),
('A000139', '2023-09-13', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'JUL', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-09-13', 2023, 'N/A', 0),
('A000140', '2023-09-13', 'CANCELLED', 'CANCELLED', '206279', 'Pre-Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-09-13', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-09-13', 2023, 'N/A', 0),
('A000141', '2023-09-13', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'AUG', 3120, 0, NULL, 0, 0, 1800, 120, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-09-13', 2023, 'N/A', 0),
('A000142', '2023-09-13', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'SEP', 3030, 0, NULL, 0, 0, 1800, 30, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000142', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-09-13', 2023, 'N/A', 0),
('D17', '2023-09-13', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-09-13', 2023, 'N/A', 0),
('A000143', '2023-09-13', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'OCT-NOV-DEC', 9000, 0, NULL, 0, 0, 5400, 0, NULL, 0, 3600, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000143', 'A000143', 'A000143', NULL, NULL, NULL, 'T2309131212084465360335', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-13', 2023, 'N/A', 0),
('A000144', '2023-09-15', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 'SEP', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000144', NULL, NULL, NULL, NULL, NULL, NULL, 'T2309150806358294220636', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-09-15', 2023, 'N/A', 0),
('A000145', '2023-09-26', 'CANCELLED', 'CANCELLED', '314804', 'Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-09-26', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-09-26', 2023, 'N/A', 0),
('A000146', '2023-10-03', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000146', NULL, NULL, NULL, NULL, NULL, 'T2310030937437192620010', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-03', 2023, 'N/A', 0),
('A000147', '2023-10-03', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000147', NULL, NULL, NULL, NULL, NULL, '327680898381', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-03', 2023, 'N/A', 0),
('A000148', '2023-10-04', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000148', NULL, NULL, NULL, NULL, NULL, 'T2310041147069209514287', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-04', 2023, 'N/A', 0),
('A000149', '2023-10-04', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'SEP-OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000149', 'A000149', NULL, NULL, NULL, NULL, NULL, 'T2310041149181903334328', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-04', 2023, 'N/A', 0),
('A000150', '2023-10-04', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 'SEP-OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000150', 'A000150', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-10-04', 2023, 'N/A', 0),
('A000151', '2023-10-05', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000151', NULL, NULL, NULL, NULL, NULL, '327880226323', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000152', '2023-10-05', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 'OCT-NOV-DEC', 5400, 0, NULL, 0, 0, 5400, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000152', 'A000152', 'A000152', NULL, NULL, NULL, '327880193423', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000153', '2023-10-05', 'CANCELLED', 'CANCELLED', '314809', 'Baby Pre-Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', 'EMP0229 ON-23-10-05', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000154', '2023-10-05', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1600, 0, NULL, 0, 0, 1600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000154', NULL, NULL, NULL, NULL, NULL, 'T2310040850332446746215', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000155', '2023-10-05', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'NOV', 2000, 0, NULL, 0, 0, 2000, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000155', NULL, NULL, NULL, NULL, 'T2310040849525755141207', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000156', '2023-10-05', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000156', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000157', '2023-10-05', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000157', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000158', '2023-10-05', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000158', NULL, NULL, NULL, NULL, NULL, '0795632a0075803', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000159', '2023-10-05', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'OCT', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000159', NULL, NULL, NULL, NULL, NULL, '364416566534', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000160', '2023-10-05', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 'AUG-SEP', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000160', 'A000160', NULL, NULL, NULL, NULL, NULL, NULL, 'T2310040932384089038388', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000161', '2023-10-05', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000161', NULL, NULL, NULL, NULL, NULL, 'S42687938', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-05', 2023, 'N/A', 0),
('A000162', '2023-10-06', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 'SEP', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000162', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-10-06', 2023, 'N/A', 0),
('A000163', '2023-10-06', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000163', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-10-06', 2023, 'N/A', 0),
('A000164', '2023-10-06', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 'OCT', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000164', NULL, NULL, NULL, NULL, NULL, '327909733546', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-06', 2023, 'N/A', 0),
('A000165', '2023-10-06', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'OCT', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000165', NULL, NULL, NULL, NULL, NULL, 'T2310061253269077869045', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-06', 2023, 'N/A', 0),
('A000166', '2023-10-07', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'OCT', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000166', NULL, NULL, NULL, NULL, NULL, '327933824968', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-07', 2023, 'N/A', 0),
('A000167', '2023-10-07', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000167', NULL, NULL, NULL, NULL, NULL, 'T2310061342579523406795', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-07', 2023, 'N/A', 0),
('A000168', '2023-10-07', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 'OCT', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000168', NULL, NULL, NULL, NULL, NULL, '364533373450', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-07', 2023, 'N/A', 0),
('A000169', '2023-10-09', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 'SEP-OCT', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000169', 'A000169', NULL, NULL, NULL, NULL, NULL, 'T2310071305504716858724', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-09', 2023, 'N/A', 0),
('A000170', '2023-10-09', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nursery', 'A', 0, 'JUL', 15700, 4000, NULL, 5500, 4000, 1800, 0, NULL, 400, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'A000170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-10-09', 2023, 'N/A', 0),
('A000171', '2023-10-09', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nursery', 'A', 0, 'AUG-SEP', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000171', 'A000171', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-10-09', 2023, 'N/A', 0),
('A000172', '2023-10-09', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1810, 0, NULL, 0, 0, 1800, 10, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000172', NULL, NULL, NULL, NULL, NULL, 'T2310091152502952179644', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-09', 2023, 'N/A', 0),
('A000173', '2023-10-10', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'OCT', 3010, 0, NULL, 0, 0, 1800, 10, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000173', NULL, NULL, NULL, NULL, NULL, '328207656424', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-10', 2023, 'N/A', 0),
('A000174', '2023-10-11', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'OCT', 1820, 0, NULL, 0, 0, 1800, 20, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000174', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-10-11', 2023, 'N/A', 0),
('A000175', '2023-10-12', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'OCT', 1820, 0, NULL, 0, 0, 1800, 20, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000175', NULL, NULL, NULL, NULL, NULL, '328469895016', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-12', 2023, 'N/A', 0),
('A000176', '2023-10-13', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'SEP', 3115, 0, NULL, 0, 0, 1800, 115, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000176', NULL, NULL, NULL, NULL, NULL, NULL, '328671438164', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-13', 2023, 'N/A', 0),
('A000177', '2023-10-28', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 'NOV', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000177', NULL, NULL, NULL, NULL, '366519283880', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-28', 2023, 'N/A', 0),
('D18', '2023-10-30', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '330311093995', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-10-30', 2023, 'N/A', 0),
('A000178', '2023-10-30', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'OCT', 3100, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1300, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000178', NULL, NULL, NULL, NULL, NULL, '327679878906', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-30', 2023, 'N/A', 0),
('D19', '2023-10-30', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '330394566678', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-10-30', 2023, 'N/A', 0),
('A000179', '2023-10-30', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'SEP-OCT-NOV', 9150, 0, NULL, 0, 0, 5400, 150, NULL, 0, 3600, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000179', 'A000179', 'A000179', NULL, NULL, NULL, NULL, '3303133433144', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-10-30', 2023, 'N/A', 0),
('D20', '2023-10-31', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '330449910278', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-10-31', 2023, 'N/A', 0),
('D21', '2023-10-31', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '0795632A0075803.bqr@kotak', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-10-31', 2023, 'N/A', 0),
('D22', '2023-11-01', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '330588460684', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-11-01', 2023, 'N/A', 0),
('A000180', '2023-11-01', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000180', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 1, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-11-01', 2023, 'N/A', 0),
('D23', '2023-11-01', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/A', 1, 'SE', 'CASH', 'N/A', '2023-11-01', 2023, 'N/A', 0),
('A000181', '2023-11-02', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000181', NULL, NULL, NULL, NULL, 'S89141466', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-02', 2023, 'N/A', 0),
('A000182', '2023-11-02', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'NOV', 3100, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1300, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000182', NULL, NULL, NULL, NULL, '330586864463', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-02', 2023, 'N/A', 0),
('A000183', '2023-11-02', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'OCT', 3130, 0, NULL, 0, 0, 1800, 130, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000183', NULL, NULL, NULL, NULL, NULL, '330674882445', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-02', 2023, 'N/A', 0),
('D24', '2023-11-02', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '330609519386', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-11-02', 2023, 'N/A', 0),
('D25', '2023-11-02', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '330674885768', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-11-02', 2023, 'N/A', 0),
('A000184', '2023-11-02', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000184', NULL, NULL, NULL, NULL, '330647136210', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-02', 2023, 'N/A', 0),
('D26', '2023-11-02', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '330647180657', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-11-02', 2023, 'N/A', 0),
('A000185', '2023-11-03', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000185', NULL, NULL, NULL, NULL, '367302422346', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-03', 2023, 'N/A', 0),
('D27', '2023-11-03', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '367302668655', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-11-03', 2023, 'N/A', 0),
('A000186', '2023-11-06', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000186', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('A000187', '2023-11-06', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000187', NULL, NULL, NULL, NULL, 'T2310041147069209514287', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('D28', '2023-11-06', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'T2311061143577626430996', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('A000188', '2023-11-06', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'NOV', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000188', NULL, NULL, NULL, NULL, '331058472014', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('A000189', '2023-11-06', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000189', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('A000190', '2023-11-06', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000190', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('A000191', '2023-11-06', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000191', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('A000192', '2023-11-06', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000192', NULL, NULL, NULL, NULL, '0795632A0075803.bqr@kotak', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('A000193', '2023-11-06', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'NOV', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000193', NULL, NULL, NULL, NULL, '367611844424', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-06', 2023, 'N/A', 0),
('A000194', '2023-11-08', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'NOV', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000194', NULL, NULL, NULL, NULL, '331185358434', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-08', 2023, 'N/A', 0),
('A000195', '2023-11-09', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000195', NULL, NULL, NULL, NULL, 'T2311081319430551677878', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-09', 2023, 'N/A', 0),
('A000196', '2023-11-09', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'SEP-OCT-NOV', 1810, 0, NULL, 0, 0, 1800, 10, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000196', 'A000196', 'A000196', NULL, NULL, NULL, NULL, '331375382260', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-09', 2023, 'N/A', 0),
('A000197', '2023-11-09', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 'NOV', 1810, 0, NULL, 0, 0, 1800, 10, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000197', NULL, NULL, NULL, NULL, '367914541095', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-09', 2023, 'N/A', 0),
('A000198', '2023-11-09', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 'NOV', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000198', NULL, NULL, NULL, NULL, '331229687279', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-09', 2023, 'N/A', 0),
('A000199', '2023-11-10', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'NOV', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000199', NULL, NULL, NULL, NULL, '331314415824', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-10', 2023, 'N/A', 0),
('A000200', '2023-11-10', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 'OCT', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000200', NULL, NULL, NULL, NULL, NULL, 'T2311100828116234577381', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-11-10', 2023, 'N/A', 0),
('A000201', '2023-11-10', 'CANCELLED', 'CANCELLED', '216737', 'Prep', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'EMP0229 ON-23-11-10', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-11-10', 2023, 'N/A', 0),
('A000202', '2023-11-10', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 'OCT-NOV', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000202', 'A000202', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-11-10', 2023, 'N/A', 0),
('D29', '2023-11-29', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'MISL.-SUNIL_ENTERPRISES_SALE', 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '369902132653', 'N/A', 0, 'N/A', 1, 'SE', 'UPI', 'N/A', '2023-11-29', 2023, 'N/A', 0),
('A000203', '2023-12-01', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000203', NULL, NULL, NULL, '370116964555', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-01', 2023, 'N/A', 0),
('A000204', '2023-12-02', 'HARSHIT CHAUDHARY', 'A14282', '314805', 'Prep', 'A', 0, 'NOV', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000204', NULL, NULL, NULL, NULL, 'T2312010902488512029490', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-02', 2023, 'N/A', 0),
('A000205', '2023-12-02', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Pre-Nursery', 'A', 0, 'DEC', 3500, 1700, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000205', NULL, NULL, NULL, '333412503324', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-02', 2023, 'N/A', 0),
('A000206', '2023-12-02', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'DEC', 15300, 4000, NULL, 5500, 4000, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000206', NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-12-02', 2023, 'N/A', 0),
('A000207', '2023-12-04', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 'NOV-DEC', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000207', 'A000207', NULL, NULL, NULL, '333849420042', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-04', 2023, 'N/A', 0),
('A000208', '2023-12-04', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000208', NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-12-04', 2023, 'N/A', 0),
('A000209', '2023-12-04', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000209', NULL, NULL, NULL, 'T2311061142167062931692', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-04', 2023, 'N/A', 0),
('A000210', '2023-12-04', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'NOV', 1950, 0, NULL, 0, 0, 1800, 150, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000210', NULL, NULL, NULL, NULL, '333812098819', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-04', 2023, 'N/A', 0),
('A000211', '2023-12-04', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000211', NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-12-04', 2023, 'N/A', 0),
('A000212', '2023-12-04', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000212', NULL, NULL, NULL, '0795632A0075803.bqr@kotak', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-04', 2023, 'N/A', 0),
('A000213', '2023-12-04', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000213', NULL, NULL, NULL, 'T2312041155393926522636', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-04', 2023, 'N/A', 0),
('A000214', '2023-12-04', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000214', NULL, NULL, NULL, 'S89141466', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-04', 2023, 'N/A', 0),
('A000215', '2023-12-05', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'DEC', 3100, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1300, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000215', NULL, NULL, NULL, '370598981824', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-05', 2023, 'N/A', 0),
('A000216', '2023-12-05', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000216', NULL, NULL, NULL, '333986790165', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-05', 2023, 'N/A', 0),
('A000217', '2023-12-06', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'DEC', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000217', NULL, NULL, NULL, '324969027765', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-06', 2023, 'N/A', 0),
('A000218', '2023-12-06', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000218', NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-12-06', 2023, 'N/A', 0),
('A000219', '2023-12-06', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'NOV-DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000219', 'A000219', NULL, NULL, NULL, '334011185090', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-06', 2023, 'N/A', 0),
('A000220', '2023-12-06', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000220', NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-12-06', 2023, 'N/A', 0),
('A000221', '2023-12-07', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'DEC', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000221', NULL, NULL, NULL, '370623093719', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-07', 2023, 'N/A', 0),
('A000222', '2023-12-07', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000222', NULL, NULL, NULL, '334125734924', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-07', 2023, 'N/A', 0),
('A000223', '2023-12-08', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000223', NULL, NULL, NULL, 'T2312080920482989210430', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-08', 2023, 'N/A', 0),
('A000224', '2023-12-08', 'KESHAV KUMAR', 'A14292', '314804', 'Nursery', 'A', 0, 'AUG-SEP-OCT-NOV', 9000, 0, NULL, 0, 0, 5400, 0, NULL, 0, 3600, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000224', 'A000224', 'A000224', 'A000224', NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-12-08', 2023, 'N/A', 0),
('A000225', '2023-12-11', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'DEC', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000225', NULL, NULL, NULL, 'T2312091200164608905494', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-11', 2023, 'N/A', 0),
('A000226', '2023-12-12', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 'DEC', 1820, 0, NULL, 0, 0, 1800, 20, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000226', NULL, NULL, NULL, '334613980126', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-12', 2023, 'N/A', 0),
('A000227', '2023-12-12', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 'DEC', 1820, 0, NULL, 0, 0, 1800, 20, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000227', NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2023-12-12', 2023, 'N/A', 0),
('A000228', '2023-12-12', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nursery', 'A', 0, 'NOV-DEC', 3770, 0, NULL, 0, 0, 3600, 170, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000228', 'A000228', NULL, NULL, NULL, 'T2312121234088341691418', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-12', 2023, 'N/A', 0),
('A000229', '2023-12-13', 'CANCELLED', 'CANCELLED', '183887', 'Prep', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '334712631409', 'EMP0229 ON-23-12-13', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-13', 2023, 'N/A', 0),
('A000230', '2023-12-13', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000230', NULL, NULL, NULL, '334712631409', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2023-12-13', 2023, 'N/A', 0),
('A000231', '2024-01-06', 'MUHAMMAD TALHA RAZA', 'A14293', '319018', 'Baby Pre-Nursery', 'A', 0, 'JAN', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000231', NULL, NULL, '400516445754', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-06', 2023, 'N/A', 0),
('A000232', '2024-01-09', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 'DEC', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000232', NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-09', 2023, 'N/A', 0),
('A000233', '2024-01-09', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000233', NULL, NULL, '400761517253', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-09', 2023, 'N/A', 0),
('A000234', '2024-01-09', 'CANCELLED', 'CANCELLED', '216731', 'Nursery', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'T2401080944002667590770', 'EMP0229 ON-24-01-09', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-09', 2023, 'N/A', 0),
('A000235', '2024-01-09', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'JAN', 1805, 0, NULL, 0, 0, 1800, 5, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000235', NULL, NULL, 'T2401080944002667590770', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-09', 2023, 'N/A', 0),
('A000236', '2024-01-09', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 'JAN', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000236', NULL, NULL, '400875001133', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-09', 2023, 'N/A', 0),
('A000237', '2024-01-09', 'SHAURYA KUMAR', 'A14262', '216758', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1805, 0, NULL, 0, 0, 1800, 5, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000237', NULL, NULL, '437411225748', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-09', 2023, 'N/A', 0),
('A000238', '2024-01-09', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000238', NULL, NULL, 'T2312041224572599728899', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-09', 2023, 'N/A', 0);
INSERT INTO `temp_daycoll` (`RECT_NO`, `RECT_DATE`, `STU_NAME`, `STUDENTID`, `ADM_NO`, `CLASS`, `SEC`, `ROLL_NO`, `PERIOD`, `TOTAL`, `Fee1`, `Fee2`, `Fee3`, `Fee4`, `Fee5`, `Fee6`, `Fee7`, `Fee8`, `Fee9`, `Fee10`, `Fee11`, `Fee12`, `Fee13`, `Fee14`, `Fee15`, `Fee16`, `Fee17`, `Fee18`, `Fee19`, `Fee20`, `Fee21`, `Fee22`, `Fee23`, `Fee24`, `Fee25`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CHQ_NO`, `Narr`, `TAmt`, `Fee_Book_No`, `Collection_Mode`, `User_Id`, `Payment_Mode`, `Bank_Name`, `Pay_Date`, `Session_Year`, `FORM_NO`, `voucher_created`) VALUES
('A000239', '2024-01-10', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1805, 0, NULL, 0, 0, 1800, 5, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000239', NULL, NULL, '0795632a0075803.bqr@kotak', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000240', '2024-01-10', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'JAN', 1805, 0, NULL, 0, 0, 1800, 5, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000240', NULL, NULL, 'T2401090926400352911210', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000241', '2024-01-10', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000241', NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000242', '2024-01-10', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Pre-Nursery', 'A', 0, 'JAN', 1805, 0, NULL, 0, 0, 1800, 5, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000242', NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000243', '2024-01-10', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000243', NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000244', '2024-01-10', 'SHREYANSH RANJAN', 'A14285', '314807', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1805, 0, NULL, 0, 0, 1800, 5, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000244', NULL, NULL, '437513249096', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000245', '2024-01-10', 'CANCELLED', 'CANCELLED', '183887', 'Prep', 'A', 0, 'CANCELLED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '0795632a0075803.bqr@kotak', 'EMP0229 ON-24-01-13', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000246', '2024-01-10', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'JAN', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000246', NULL, NULL, 'T2401081301214797725914', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000247', '2024-01-10', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'DEC', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000247', NULL, NULL, NULL, '400759948429', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000248', '2024-01-10', 'AYANSH RAJ', 'A14278', '206277', 'Prep', 'A', 0, 'JAN', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000248', NULL, NULL, '334462830579', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000249', '2024-01-10', 'SHASHI PANDEY', 'A14254', '216738', 'Baby Pre-Nursery', 'A', 0, 'AUG-SEP', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A000249', 'A000249', NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000250', '2024-01-10', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'JAN', 3005, 0, NULL, 0, 0, 1800, 5, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000250', NULL, NULL, '437410324407', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-10', 2023, 'N/A', 0),
('A000251', '2024-01-12', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'JAN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000251', NULL, NULL, 'S7124023', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-12', 2023, 'N/A', 0),
('A000252', '2024-01-13', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'JAN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000252', NULL, NULL, '401212242560', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-13', 2023, 'N/A', 0),
('A000253', '2024-01-13', 'SYED MUHAMMAD HASSAAN ', 'A14294', '319017', 'Pre-Nursery', 'A', 0, 'JAN-FEB', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000253', 'A000253', NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-13', 2023, 'N/A', 0),
('A000254', '2024-01-13', 'ADHRAV RANJAN', 'A14276', '183886', 'Nursery', 'A', 0, 'JAN', 1830, 0, NULL, 0, 0, 1800, 30, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000254', NULL, NULL, '401369996864', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-13', 2023, 'N/A', 0),
('A000255', '2024-01-13', 'ANVIE ', 'A14274', '314801', 'Nursery', 'A', 0, 'JAN-FEB-MAR', 5430, 0, NULL, 0, 0, 5400, 30, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000255', 'A000255', 'A000255', '401375375852', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-13', 2023, 'N/A', 0),
('A000256', '2024-01-13', 'SHOURYA ABHINANDAN PANDEY', 'A14284', '216737', 'Prep', 'A', 0, 'JAN', 1830, 0, NULL, 0, 0, 1800, 30, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000256', NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-13', 2023, 'N/A', 0),
('A000257', '2024-01-16', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'DEC', 1955, 0, NULL, 0, 0, 1800, 155, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000257', NULL, NULL, NULL, '401689939636', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-16', 2023, 'N/A', 0),
('A000258', '2024-01-16', 'GUNGUN KUMARI TURI', 'A14269', '216751', 'Pre-Nursery', 'A', 0, 'SEP-OCT', 3600, 0, NULL, 0, 0, 3600, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000258', 'A000258', NULL, NULL, NULL, NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-16', 2023, 'N/A', 0),
('A000259', '2024-01-17', 'SHIVANSH RAJ', 'A14279', '216732', 'Prep', 'A', 0, 'DEC-JAN', 6050, 0, NULL, 0, 0, 3600, 50, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000259', 'A000259', NULL, NULL, '401711248056', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-17', 2023, 'N/A', 0),
('A000260', '2024-01-17', 'HREYAANSH RAJYAVARDHAN', 'A14261', '216759', 'Baby Pre-Nursery', 'A', 0, 'JAN', 3100, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1300, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000260', NULL, NULL, '437796827918', 'N/A', 1, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-17', 2023, 'N/A', 0),
('A000261', '2024-01-18', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000261', NULL, NULL, '4017377201599', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-01-18', 2023, 'N/A', 0),
('A000262', '2024-01-31', 'IRA BHARDWAJ', 'A14267', '216755', 'Pre-Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000262', NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-31', 2023, 'N/A', 0),
('A000263', '2024-01-31', 'JAYDEN MIGUEL', 'A14260', '206271', 'Baby Pre-Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000263', NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-01-31', 2023, 'N/A', 0),
('A000264', '2024-02-02', 'ETHAN SHALEEN', 'A14264', '206274', 'Baby Pre-Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000264', NULL, '400761517253', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-02', 2023, 'N/A', 0),
('A000265', '2024-02-02', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'JAN', 1855, 0, NULL, 0, 0, 1800, 55, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000265', NULL, NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-02-02', 2023, 'N/A', 0),
('A000266', '2024-02-02', 'RIYANSH BOSE', 'A14290', '319020', 'Baby Pre-Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000266', NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-02-02', 2023, 'N/A', 0),
('A000267', '2024-02-02', 'AYAAN SHARMA', 'A14266', '206279', 'Pre-Nursery', 'A', 0, 'JAN-FEB-MAR', 9060, 0, NULL, 0, 0, 5400, 60, NULL, 0, 3600, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000267', 'A000267', 'A000267', 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-02-02', 2023, 'N/A', 0),
('A000268', '2024-02-02', 'AADITRI JHA', 'A14268', '121676010', 'Pre-Nursery', 'A', 0, 'FEB', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000268', NULL, '439933883515', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-02', 2023, 'N/A', 0),
('A000269', '2024-02-02', 'RUDRANSHU GOHEL', 'A14277', '206278', 'Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000269', NULL, 'S20211211', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-02', 2023, 'N/A', 0),
('A000270', '2024-02-05', 'AAVYA MAHESWARI', 'A14272', '216731', 'Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000270', NULL, 'T2402051029533126135406', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-05', 2023, 'N/A', 0),
('A000271', '2024-02-05', 'ANAY RAJ', 'A14255', '216757', 'Baby Pre-Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000271', NULL, '440210749657', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-05', 2023, 'N/A', 0),
('A000272', '2024-02-06', 'MELWIN EVAAN LAKRA', 'A14275', '183888', 'Nursery', 'A', 0, 'DEC-JAN-FEB', 6000, 0, NULL, 0, 0, 3600, 0, NULL, 0, 2400, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000272', 'A000272', 'A000272', NULL, '440304820494', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-06', 2023, 'N/A', 0),
('A000273', '2024-02-06', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'FEB', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000273', NULL, 'T2402061214361571325485', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-06', 2023, 'N/A', 0),
('A000274', '2024-02-06', 'BHAVYANSH PODDAR', 'A14259', '216740', 'Baby Pre-Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000274', NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-02-06', 2023, 'N/A', 0),
('A000275', '2024-02-06', 'RIYANSHI TOPPO', 'A14281', '183889', 'Prep', 'A', 0, 'FEB', 3000, 0, NULL, 0, 0, 1800, 0, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000275', NULL, '403760944909', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-06', 2023, 'N/A', 0),
('A000276', '2024-02-06', 'AAYUSHI JHA ', 'A14270', '216754', 'Pre-Nursery', 'A', 0, 'JAN', 1920, 0, NULL, 0, 0, 1800, 120, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000276', NULL, NULL, '403795882478', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-06', 2023, 'N/A', 0),
('A000277', '2024-02-08', 'AYANSH MANAN LAKRA', 'A14295', '319016', 'Pre-Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000277', NULL, '403397327453', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-08', 2023, 'N/A', 0),
('A000278', '2024-02-08', 'REEVA VIJAY', 'A14288', '319012', 'Baby Pre-Nursery', 'A', 0, 'FEB', 1805, 0, NULL, 0, 0, 1800, 5, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000278', NULL, 'T2401081232228582114144', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-08', 2023, 'N/A', 0),
('A000279', '2024-02-08', 'ALWIN LAKRA', 'A14280', '183882', 'Prep', 'A', 0, 'JAN-FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000279', 'A000279', NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-02-08', 2023, 'N/A', 0),
('A000280', '2024-02-09', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 'JAN-FEB', 1805, 0, NULL, 0, 0, 1805, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000280', 'A000280', NULL, '403939959073', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-09', 2023, 'N/A', 0),
('A000281', '2024-02-12', 'AASHWI MISHRA', 'A14258', '314809', 'Baby Pre-Nursery', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000281', NULL, '404003533281', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-12', 2023, 'N/A', 0),
('A000282', '2024-02-12', 'AARUSH KUMAR', 'A14289', '314806', 'Baby Pre-Nursery', 'A', 0, 'JAN-FEB', 1850, 0, NULL, 0, 0, 1800, 50, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000282', 'A000282', NULL, 'T2402121241389417296826', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-02-12', 2023, 'N/A', 0),
('A000283', '2024-02-13', 'ADITYA VISHWAKARMA', 'A14283', '183887', 'Prep', 'A', 0, 'FEB', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000283', NULL, 'N/A', 'N/A', 0, 'N/A', 1, 'EMP0229', 'CASH', 'N/A', '2024-02-13', 2023, 'N/A', 0),
('A000284', '2024-04-14', 'ANSH RAJ', 'A14291', '319019', 'Baby Pre-Nursery', 'A', 0, 'MAR', 1800, 0, NULL, 0, 0, 1800, 0, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000284', '406771470168', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '0000-00-00', 2023, 'N/A', 0),
('A000285', '2024-03-14', 'RIYANSH RAJ', 'A14263', '216734', 'Baby Pre-Nursery', 'A', 0, 'MAR', 3030, 0, NULL, 0, 0, 1800, 30, NULL, 0, 1200, 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A000285', 'T2402061214361571325485', 'N/A', 0, 'N/A', 1, 'EMP0229', 'UPI', 'N/A', '2024-03-14', 2023, 'N/A', 0);

-- --------------------------------------------------------

--
-- Table structure for table `temp_report_card`
--

CREATE TABLE `temp_report_card` (
  `id` int(11) NOT NULL,
  `adm_no` int(11) NOT NULL,
  `classes` varchar(100) NOT NULL,
  `sec` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `first_nm` varchar(255) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `tot_wet_mrk` int(11) NOT NULL,
  `tot_per` int(11) NOT NULL,
  `tot_grd` varchar(100) NOT NULL,
  `attendance` varchar(100) NOT NULL,
  `subj1_nm` varchar(255) NOT NULL,
  `subj1_mo` varchar(11) NOT NULL,
  `subj1_per` int(11) NOT NULL,
  `subj1_grd` varchar(100) NOT NULL,
  `subj2_nm` varchar(255) NOT NULL,
  `subj2_mo` varchar(11) NOT NULL,
  `subj2_per` int(11) NOT NULL,
  `subj2_grd` varchar(100) NOT NULL,
  `subj3_nm` varchar(255) NOT NULL,
  `subj3_mo` varchar(11) NOT NULL,
  `subj3_per` int(11) NOT NULL,
  `subj3_grd` varchar(100) NOT NULL,
  `subj4_nm` varchar(255) NOT NULL,
  `subj4_mo` varchar(11) NOT NULL,
  `subj4_per` int(11) NOT NULL,
  `subj4_grd` varchar(100) NOT NULL,
  `subj5_nm` varchar(255) NOT NULL,
  `subj5_mo` varchar(11) NOT NULL,
  `subj5_per` int(11) NOT NULL,
  `subj5_grd` varchar(100) NOT NULL,
  `subj6_nm` varchar(255) NOT NULL,
  `subj6_mo` varchar(11) NOT NULL,
  `subj6_per` int(11) NOT NULL,
  `subj6_grd` varchar(100) NOT NULL,
  `subj7_nm` varchar(255) NOT NULL,
  `subj7_mo` varchar(11) NOT NULL,
  `subj7_per` int(11) NOT NULL,
  `subj7_grd` varchar(100) NOT NULL,
  `subj8_nm` varchar(255) NOT NULL,
  `subj8_mo` varchar(11) NOT NULL,
  `subj8_per` int(11) NOT NULL,
  `subj8_grd` varchar(100) NOT NULL,
  `subj9_nm` varchar(255) NOT NULL,
  `subj9_mo` varchar(11) NOT NULL,
  `subj9_per` int(11) NOT NULL,
  `subj9_grd` varchar(100) NOT NULL,
  `subj10_nm` varchar(255) NOT NULL,
  `subj10_mo` varchar(11) NOT NULL,
  `subj10_per` int(11) NOT NULL,
  `subj10_grd` varchar(100) NOT NULL,
  `subj11_nm` varchar(255) NOT NULL,
  `subj11_mo` varchar(11) NOT NULL,
  `subj11_per` int(11) NOT NULL,
  `subj11_grd` varchar(100) NOT NULL,
  `subj12_nm` varchar(255) NOT NULL,
  `subj12_mo` varchar(11) NOT NULL,
  `subj12_per` int(11) NOT NULL,
  `subj12_grd` varchar(100) NOT NULL,
  `subj13_nm` varchar(255) NOT NULL,
  `subj13_mo` varchar(11) NOT NULL,
  `subj13_per` int(11) NOT NULL,
  `subj13_grd` varchar(100) NOT NULL,
  `subj14_nm` varchar(255) NOT NULL,
  `subj14_mo` varchar(11) NOT NULL,
  `subj14_per` int(11) NOT NULL,
  `subj14_grd` varchar(100) NOT NULL,
  `subj15_nm` varchar(255) NOT NULL,
  `subj15_mo` varchar(11) NOT NULL,
  `subj15_per` int(11) NOT NULL,
  `subj15_grd` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_voucher_db`
--

CREATE TABLE `temp_voucher_db` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `ac_type` varchar(255) NOT NULL,
  `dc` varchar(1) NOT NULL,
  `ac_head` text NOT NULL,
  `amount` float(10,2) NOT NULL,
  `narration` text NOT NULL,
  `login_id` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tpstudent`
--

CREATE TABLE `tpstudent` (
  `STUDENTID` varchar(50) DEFAULT NULL,
  `ADM_DATE` date DEFAULT NULL,
  `ADM_NO` varchar(50) NOT NULL,
  `BIRTH_DT` date DEFAULT NULL,
  `TITLE_NM` varchar(50) DEFAULT NULL,
  `FIRST_NM` varchar(50) DEFAULT NULL,
  `MIDDLE_NM` varchar(50) DEFAULT NULL,
  `BLOOD_GRP` varchar(25) DEFAULT NULL,
  `CATEGORY` smallint(6) DEFAULT NULL,
  `SEX` smallint(6) DEFAULT NULL,
  `NATION` varchar(25) DEFAULT NULL,
  `EMP_WARD` varchar(255) DEFAULT NULL,
  `EMPID` varchar(25) DEFAULT NULL,
  `FATHER_NM` varchar(50) DEFAULT NULL,
  `MOTHER_NM` varchar(50) DEFAULT NULL,
  `LAST_SCH` varchar(50) DEFAULT NULL,
  `LSCH_ADD` varchar(150) DEFAULT NULL,
  `ADM_CLASS` smallint(6) DEFAULT NULL,
  `ADM_SEC` smallint(6) DEFAULT NULL,
  `SIB_NO` smallint(6) DEFAULT NULL,
  `PERM_ADD` varchar(150) DEFAULT NULL,
  `P_CITY` varchar(50) DEFAULT NULL,
  `P_STATE` varchar(50) DEFAULT NULL,
  `P_NATION` varchar(50) DEFAULT NULL,
  `P_PIN` varchar(50) DEFAULT NULL,
  `P_PHONE1` varchar(50) DEFAULT NULL,
  `P_PHONE2` varchar(50) DEFAULT NULL,
  `P_FAXNO` varchar(50) DEFAULT NULL,
  `P_MOBILE` varchar(50) DEFAULT NULL,
  `P_EMAIL` varchar(50) DEFAULT NULL,
  `CORR_ADD` varchar(150) DEFAULT NULL,
  `C_CITY` varchar(50) DEFAULT NULL,
  `C_STATE` varchar(50) DEFAULT NULL,
  `C_NATION` varchar(50) DEFAULT NULL,
  `C_PIN` varchar(50) DEFAULT NULL,
  `C_PHONE1` varchar(50) DEFAULT NULL,
  `C_PHONE2` varchar(50) DEFAULT NULL,
  `C_FAXNO` varchar(50) DEFAULT NULL,
  `C_MOBILE` varchar(50) DEFAULT NULL,
  `C_EMAIL` varchar(50) DEFAULT NULL,
  `HOUSE_CODE` smallint(6) DEFAULT NULL,
  `CLASS` smallint(6) DEFAULT NULL,
  `DISP_CLASS` varchar(25) DEFAULT NULL,
  `SEC` smallint(6) DEFAULT NULL,
  `DISP_SEC` varchar(10) DEFAULT NULL,
  `ROLL_NO` smallint(6) DEFAULT NULL,
  `BUS_NO` varchar(35) DEFAULT NULL,
  `STOPNO` smallint(6) DEFAULT NULL,
  `FREESHIP` tinyint(1) DEFAULT NULL,
  `SCHOLAR` tinyint(1) DEFAULT NULL,
  `LETTERNO` varchar(50) DEFAULT NULL,
  `LIB_FLAG` varchar(50) DEFAULT NULL,
  `ACT_FLAG` varchar(50) DEFAULT NULL,
  `TC_ISSUED` tinyint(1) DEFAULT NULL,
  `COMPUTER` tinyint(1) DEFAULT NULL,
  `HOSTEL` tinyint(1) DEFAULT NULL,
  `TC_NUMBER` varchar(50) DEFAULT NULL,
  `PAID_UPTO` smallint(6) DEFAULT NULL,
  `SESSIONID` varchar(50) DEFAULT NULL,
  `APR_FEE` varchar(50) DEFAULT NULL,
  `MAY_FEE` varchar(50) DEFAULT NULL,
  `JUNE_FEE` varchar(50) DEFAULT NULL,
  `JULY_FEE` varchar(50) DEFAULT NULL,
  `AUG_FEE` varchar(50) DEFAULT NULL,
  `SEP_FEE` varchar(50) DEFAULT NULL,
  `OCT_FEE` varchar(50) DEFAULT NULL,
  `NOV_FEE` varchar(50) DEFAULT NULL,
  `DEC_FEE` varchar(50) DEFAULT NULL,
  `JAN_FEE` varchar(50) DEFAULT NULL,
  `FEB_FEE` varchar(50) DEFAULT NULL,
  `MAR_FEE` varchar(50) DEFAULT NULL,
  `CBSE_REG` varchar(50) DEFAULT NULL,
  `CBSE_ROLL` varchar(50) DEFAULT NULL,
  `SUBJECT1` varchar(50) DEFAULT NULL,
  `SUBJECT2` varchar(50) DEFAULT NULL,
  `SUBJECT3` varchar(50) DEFAULT NULL,
  `SUBJECT4` varchar(50) DEFAULT NULL,
  `SUBJECT5` varchar(50) DEFAULT NULL,
  `SUBJECT6` varchar(50) DEFAULT NULL,
  `WORK_DAYS` smallint(6) DEFAULT NULL,
  `APR_ATT` smallint(6) DEFAULT NULL,
  `MAY_ATT` smallint(6) DEFAULT NULL,
  `JUNE_ATT` smallint(6) DEFAULT NULL,
  `JULY_ATT` smallint(6) DEFAULT NULL,
  `AUG_ATT` smallint(6) DEFAULT NULL,
  `SEP_ATT` smallint(6) DEFAULT NULL,
  `OCT_ATT` smallint(6) DEFAULT NULL,
  `NOV_ATT` smallint(6) DEFAULT NULL,
  `DEC_ATT` smallint(6) DEFAULT NULL,
  `JAN_ATT` smallint(6) DEFAULT NULL,
  `FEB_ATT` smallint(6) DEFAULT NULL,
  `MAR_ATT` smallint(6) DEFAULT NULL,
  `UPD_DATE` datetime DEFAULT NULL,
  `oldadmno` varchar(50) DEFAULT NULL,
  `religion` smallint(6) DEFAULT NULL,
  `math_lab` tinyint(1) DEFAULT NULL,
  `busno1` smallint(6) DEFAULT NULL,
  `BFEE` varchar(50) DEFAULT NULL,
  `BFEEType` tinyint(1) DEFAULT NULL,
  `HFEE` varchar(50) DEFAULT NULL,
  `Mag` tinyint(1) DEFAULT NULL,
  `Fee_Book_No` int(11) DEFAULT 0,
  `Bus_Book_No` varchar(100) DEFAULT NULL,
  `Student_Status` varchar(50) DEFAULT NULL,
  `RemID` int(11) NOT NULL DEFAULT 0,
  `VL` varchar(50) NOT NULL DEFAULT 'N/A',
  `VR` varchar(50) NOT NULL DEFAULT 'N/A',
  `DEN` varchar(50) NOT NULL DEFAULT 'N/A',
  `Height` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `Password` varchar(255) NOT NULL DEFAULT 'bachpan@2019',
  `student_image` varchar(500) NOT NULL,
  `Parent_password` varchar(500) NOT NULL DEFAULT 'bachpan@2019',
  `route_id` int(11) NOT NULL DEFAULT 0,
  `student_transport_facility_id` int(11) NOT NULL DEFAULT 0,
  `mid_session_admisson_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '	0=ADMISSION IN APR,1=ADMISSION IN MID SESSION',
  `Admission_month` varchar(50) NOT NULL DEFAULT '1',
  `mid_session_payment_status` varchar(50) NOT NULL DEFAULT 'N/A',
  `Counter_payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `Login_Id` varchar(255) NOT NULL DEFAULT 'N/A'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpstudent`
--

INSERT INTO `tpstudent` (`STUDENTID`, `ADM_DATE`, `ADM_NO`, `BIRTH_DT`, `TITLE_NM`, `FIRST_NM`, `MIDDLE_NM`, `BLOOD_GRP`, `CATEGORY`, `SEX`, `NATION`, `EMP_WARD`, `EMPID`, `FATHER_NM`, `MOTHER_NM`, `LAST_SCH`, `LSCH_ADD`, `ADM_CLASS`, `ADM_SEC`, `SIB_NO`, `PERM_ADD`, `P_CITY`, `P_STATE`, `P_NATION`, `P_PIN`, `P_PHONE1`, `P_PHONE2`, `P_FAXNO`, `P_MOBILE`, `P_EMAIL`, `CORR_ADD`, `C_CITY`, `C_STATE`, `C_NATION`, `C_PIN`, `C_PHONE1`, `C_PHONE2`, `C_FAXNO`, `C_MOBILE`, `C_EMAIL`, `HOUSE_CODE`, `CLASS`, `DISP_CLASS`, `SEC`, `DISP_SEC`, `ROLL_NO`, `BUS_NO`, `STOPNO`, `FREESHIP`, `SCHOLAR`, `LETTERNO`, `LIB_FLAG`, `ACT_FLAG`, `TC_ISSUED`, `COMPUTER`, `HOSTEL`, `TC_NUMBER`, `PAID_UPTO`, `SESSIONID`, `APR_FEE`, `MAY_FEE`, `JUNE_FEE`, `JULY_FEE`, `AUG_FEE`, `SEP_FEE`, `OCT_FEE`, `NOV_FEE`, `DEC_FEE`, `JAN_FEE`, `FEB_FEE`, `MAR_FEE`, `CBSE_REG`, `CBSE_ROLL`, `SUBJECT1`, `SUBJECT2`, `SUBJECT3`, `SUBJECT4`, `SUBJECT5`, `SUBJECT6`, `WORK_DAYS`, `APR_ATT`, `MAY_ATT`, `JUNE_ATT`, `JULY_ATT`, `AUG_ATT`, `SEP_ATT`, `OCT_ATT`, `NOV_ATT`, `DEC_ATT`, `JAN_ATT`, `FEB_ATT`, `MAR_ATT`, `UPD_DATE`, `oldadmno`, `religion`, `math_lab`, `busno1`, `BFEE`, `BFEEType`, `HFEE`, `Mag`, `Fee_Book_No`, `Bus_Book_No`, `Student_Status`, `RemID`, `VL`, `VR`, `DEN`, `Height`, `Weight`, `Password`, `student_image`, `Parent_password`, `route_id`, `student_transport_facility_id`, `mid_session_admisson_status`, `Admission_month`, `mid_session_payment_status`, `Counter_payment_status`, `Login_Id`) VALUES
('A14254', '2023-01-16', '216738', '2020-08-25', NULL, 'SHASHI PANDEY', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'NIRAJ KUMAR PANDEY', 'PRACHI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789192091', '', 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004253628', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000027', 'A000070', 'A000071', 'A000072', 'A000249', 'A000249', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216738', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14255', '2023-02-27', '216757', '2020-10-01', NULL, 'ANAY RAJ', NULL, 'O+', 4, 1, 'INDIA', '1', NULL, 'SHAMBHU KUMAR', 'ARADHANA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8434010794', '', 'NEW AMRAWATI COLONY, NEAR RAILWAY COLONY ,CHUTIA , RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9546519667', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', '', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216757', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14256', '2023-04-20', '314802', '2021-01-17', NULL, 'AYANSH DUBEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ADITYA RAJ DUBEY', 'GITA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'H. NO- 188 AMRAVATI CHUTIA RAILWAY COLONY KALI MANDIR RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6299732886', '', 'H. NO- 188 AMRAVATI CHUTIA RAILWAY COLONY KALI MANDIR RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8271363734', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000011', 'A000011', 'A000054', 'A000105', 'A000136', 'A000137', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314802', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14257', '2022-10-10', '206276', '2021-05-16', NULL, 'RIDDHI ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SNEH NAMAN', 'APURVA GAUTAM', 'N/A', 'N/A', 1, 1, NULL, '', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8294779497', '', 'ANANTPUR, OM SAI APARTMENT ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6203572802', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000050', 'A000050', 'A000050', 'A000050', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206276', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14258', '2023-04-20', '314809', '2020-10-21', NULL, 'AASHWI MISHRA', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SIDDHARTH MISHRA', 'PRERITA VARDHAN', 'N/A', 'N/A', 1, 1, NULL, '43 , VIKAS NAGAR , ROAD NO. 1 , SINGH MORE ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9431749396', '', '43 , VIKAS NAGAR , ROAD NO. 1 , SINGH MORE ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7549088080', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000029', 'A000029', 'A000052', 'A000087', 'A000088', 'A000089', 'A000154', 'A000155', 'A000223', 'A000261', 'A000281', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314809', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14259', '2023-02-03', '216740', '2020-08-01', NULL, 'BHAVYANSH PODDAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ASHISH PODDAR', 'JAGRITI PODDAR', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 404 ,SHEETAL COMPLEX NIVARANPUR ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903142939', '', 'FLAT NO - 404 ,SHEETAL COMPLEX NIVARANPUR ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7033018557', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000041', 'A000041', 'A000041', 'A000067', 'A000115', 'A000156', 'A000157', 'A000185', 'A000220', 'A000243', 'A000274', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216740', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14260', '2022-08-05', '206271', '2020-07-27', NULL, 'JAYDEN MIGUEL', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'JESSE ARPAN HANS', 'MARIAM HANNA HEMROM', 'N/A', 'N/A', 1, 1, NULL, 'NEW GARDEN SIROMTOLI CLUB ROAD RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7631113465', '', 'NEW GARDEN SIROMTOLI CLUB ROAD RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7549101012', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000020', 'A000020', 'A000020', 'A000053', 'A000084', 'A000119', 'A000147', 'A000189', 'A000211', 'A000241', 'A000263', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206271', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14261', '2023-03-27', '216759', '2020-02-06', NULL, 'HREYAANSH RAJYAVARDHAN', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RISHI ROSHAN', 'MAHARANI KUNWAR', 'N/A', 'N/A', 1, 1, NULL, 'BAJRANG BHAVAN ,TRIPATHY COLONY , 48 DIVERSION ROAD , NEAR YUVRAJ PLACE ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7277001616', '', 'BAJRANG BHAVAN ,TRIPATHY COLONY , 48 DIVERSION ROAD , NEAR YUVRAJ PLACE ', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9470978077', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000005', 'A000005', 'A000005', 'A000069', 'A000086', 'A000125', 'A000178', 'A000182', 'A000215', 'A000260', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216759', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14262', '2023-02-27', '216758', '2020-02-22', NULL, 'SHAURYA KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'ANITOSH KUMAR', 'SIKHA SINHA ', 'N/A', 'N/A', 1, 1, NULL, 'ROAD NO - 3 CHUTIA RANCHI KRISHNAPURI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '903176602', '', 'ROAD NO - 3 CHUTIA RANCHI KRISHNAPURI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004320860', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000006', 'A000006', 'A000006', 'A000080', 'A000095', 'A000135', 'A000146', 'A000197', 'A000203', 'A000237', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216758', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14263', '2022-09-08', '216734', '2020-09-27', NULL, 'RIYANSH RAJ', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'RAVI SHANKAR KUMAR ', 'ANISHA BHARTI', 'N/A', 'N/A', 1, 1, NULL, 'QUATER NO - 95 KUSHAI COLONY DORANDA', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835680277', '', 'QUATER NO - 95 KUSHAI COLONY DORANDA', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6204040567', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 3, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000036', 'A000057', 'A000057', 'A000099', 'A000100', 'A000129', 'A000165', 'A000199', 'A000225', 'A000246', 'A000273', 'A000285', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216734', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14264', '2022-07-18', '206274', '2019-01-18', NULL, 'ETHAN SHALEEN', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'PAWAN HEMROM', 'VENUS BHENGRA', 'N/A', 'N/A', 1, 1, NULL, 'SOUTH RAILWAY COLONY RANCHI QTR NO. - TY/8A , P.O - CHUTIA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9955612990', '', 'SOUTH RAILWAY COLONY RANCHI QTR NO. - TY/8A , P.O - CHUTIA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9955612990', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000022', 'A000035', 'A000046', 'A000061', 'A000085', 'A000128', 'A000175', 'A000219', 'A000219', 'A000233', 'A000264', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206274', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14265', '2022-11-16', '216733', '2020-11-24', NULL, 'DEVESHI SHARMA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'RAHUL KUMAR', 'JYOTI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'FLAT A, BLOCK B ,SATYABHAMA GRAND KUSAI ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9471353191', '', 'FLAT A, BLOCK B ,SATYABHAMA GRAND KUSAI ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7250822801', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000014', 'A000031', 'A000055', 'A000055', 'A000091', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216733', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14266', '2022-07-06', '206279', '2020-10-26', NULL, 'AYAAN SHARMA', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'ARVIND KUMAR', 'SWATI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'RAM NAGAR COLONY CHUTIA POWER HOUSE RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835685082', '', 'RAM NAGAR COLONY CHUTIA POWER HOUSE RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7979767607', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000042', 'A000042', 'A000076', 'A000139', 'A000141', 'A000142', 'A000143', 'A000143', 'A000143', 'A000267', 'A000267', 'A000267', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206279', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14267', '2023-02-22', '216755', '2020-12-03', NULL, 'IRA BHARDWAJ', NULL, 'B+', 4, 2, 'INDIA', '1', NULL, 'SONU KUMAR PRASAD ', 'KHUSHBU', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 4 NEAR POST OFFICE CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6203554583', '', 'KRISHNAPURI ROAD NO. 4 NEAR POST OFFICE CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7979017634', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000018', 'A000032', 'A000047', 'A000108', 'A000109', 'A000149', 'A000149', 'A000180', 'A000208', 'A000240', 'A000262', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216755', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14268', '2023-03-10', '121676010', '2023-03-06', NULL, 'AADITRI JHA', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'ROSHAN KUMAR ', 'SHWETA KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'ROAD NO - 3 KRISHNAPURI , CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7295962198', '', 'ROAD NO - 3 KRISHNAPURI , CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8521412442', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 8, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000017', 'A000040', 'A000051', 'A000107', 'A000113', 'A000133', 'A000166', 'A000194', 'A000217', 'A000250', 'A000268', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '121676010', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14269', '2023-01-16', '216751', '2019-10-09', NULL, 'GUNGUN KUMARI TURI', NULL, 'NONE', 2, 2, 'INDIA', '1', NULL, 'BABLOO TURI', 'KHUSHBU KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'AT - HARIJAN DADA , GAUSHALA ROAD DUDHANI , NAG MANDIR PO- DUMKA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9798816485', '', 'AT - HARIJAN DADA , GAUSHALA ROAD DUDHANI , NAG MANDIR PO- DUMKA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8757748264', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000026', 'A000048', 'A000048', 'A000111', 'A000112', 'A000258', 'A000258', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216751', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14270', '2023-02-03', '216754', '2019-10-15', NULL, 'AAYUSHI JHA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'ASHISH KUMAR ', 'RAKHI ', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI , CHUTIA ROAD NO- 1 ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6299965295', '', 'KRISHNAPURI , CHUTIA ROAD NO- 1 ,RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9386624585', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000019', 'A000059', 'A000059', 'A000082', 'A000127', 'A000176', 'A000183', 'A000210', 'A000257', 'A000276', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216754', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14271', '2022-07-05', '183890', '2019-03-03', NULL, 'ARHAM SIDDIQUE', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'MOHAMMAD ZAUQUE SIDDIQUE ', 'AMRIN KHANAM', 'N/A', 'N/A', 1, 1, NULL, 'CENTRAL STREET SAMRAT COMPLEX MAIN ROAD', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9570208238', '', 'CENTRAL STREET SAMRAT COMPLEX MAIN ROAD', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7631794370', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000030', 'A000078', 'A000078', 'A000078', 'A000103', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183890', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14272', '2022-08-11', '216731', '2019-12-10', NULL, 'AAVYA MAHESWARI', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SURESH SABOO', 'NAJUK SABOO', 'N/A', 'N/A', 1, 1, NULL, 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7903634316', '', 'C/O SHYAM LAL SABOO NEAR RAM MANDIR UPPER CHUTIA , RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '9334424621', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'A000016', 'A000033', 'A000033', 'A000077', 'A000094', 'A000123', 'A000167', 'A000195', 'A000213', 'A000235', 'A000270', 'TC_ISSUE', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216731', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14273', '2022-07-04', '183884', '2019-06-19', NULL, 'ADARSH KUMAR SINGH', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SHASHI RANJAN KUMAR SINGH', 'DIPTI SINGH', 'N/A', 'N/A', 1, 1, NULL, 'H.NO - 252 RUPA SADAN A.N SINGH ROAD KUSIA COLONY DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9955773951', '', 'H.NO - 252 RUPA SADAN A.N SINGH ROAD KUSIA COLONY DORANDA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9110939277', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 3, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000028', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183884', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14274', '2023-03-20', '314801', '2019-08-07', NULL, 'ANVIE ', NULL, 'O+', 4, 2, 'INDIA', '1', NULL, 'AJIT KUMAR JHA ', 'SWETA SHARMA', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 1B , A BLOCK , OAK RESIDENCY ,CLUB ROAD RNCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9850270116', '', 'FLAT NO - 1B , A BLOCK , OAK RESIDENCY ,CLUB ROAD RNCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789500686', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000024', 'A000038', 'A000044', 'A000066', 'A000066', 'A000066', 'A000152', 'A000152', 'A000152', 'A000255', 'A000255', 'A000255', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314801', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14275', '2022-07-04', '183888', '2019-05-11', NULL, 'MELWIN EVAAN LAKRA', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'ROBIN LAKRA ', 'VICTORIA EKKA', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 5 CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6260366891', '', 'KRISHNAPURI ROAD NO. 5 CHUTIA, RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8224001002', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 10, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000010', 'A000010', 'A000010', 'A000079', 'A000106', 'A000122', 'A000168', 'A000177', 'A000272', 'A000272', 'A000272', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183888', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14276', '2022-07-04', '183886', '2019-05-25', NULL, 'ADHRAV RANJAN', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'NAVIN RANJAN', 'PRIYA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'PANCHWATI ,NIVARANPUR RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8340241552', '', 'PANCHWATI ,NIVARANPUR RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835900581', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', '', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183886', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14277', '2022-07-06', '206278', '2019-09-30', NULL, 'RUDRANSHU GOHEL', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'HERIK RAJNIKANI GOHEL', 'MADHU KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO - 203 SHEETAL APARTMENT NIWARANPUR , RANCHI NEAR RAVI STORE', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004660546', '', 'FLAT NO - 203 SHEETAL APARTMENT NIWARANPUR , RANCHI NEAR RAVI STORE', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9664988743', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000009', 'A000009', 'A000009', 'A000073', 'A000096', 'A000126', 'A000161', 'A000181', 'A000214', 'A000251', 'A000269', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206278', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14278', '2022-06-04', '206277', '2019-10-15', NULL, 'AYANSH RAJ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SAROJ RAJAN', 'VARSHA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'RD NO - 10 , KRISHNAPURI CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8050681719', '', 'RD NO - 10 , KRISHNAPURI CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9835707415', '', 1, 4, 'Prep', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000039', 'A000060', 'A000060', 'A000101', 'A000102', 'A000134', 'A000173', 'A000188', 'A000247', 'A000248', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '206277', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14279', '2022-11-19', '216732', '2018-12-20', NULL, 'SHIVANSH RAJ', NULL, 'NONE', 3, 1, 'INDIA', '1', NULL, 'SP RANJAN', 'SP RANJAN', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 7 NEAR COLD STORAGE CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '', '', 'KRISHNAPURI ROAD NO. 7 NEAR COLD STORAGE CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7488886236', '', 1, 4, 'Prep', 1, 'A', 0, '0', 10, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000037', 'A000037', 'A000058', 'A000058', 'A000093', 'A000179', 'A000179', 'A000179', 'A000259', 'A000259', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216732', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14280', '2022-06-12', '183882', '2019-10-05', NULL, 'ALWIN LAKRA', NULL, 'NONE', 1, 2, 'INDIA', '1', NULL, 'SUBHASHISH LAKRA', 'SWETA KULLU', 'N/A', 'N/A', 1, 1, NULL, 'KADRU SRNA TOLI , RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903336486', '', 'KADRU SRNA TOLI , RANCHI JHARKHAND', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7903692051', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000021', 'A000021', 'A000021', 'A000075', 'A000097', 'A000162', 'A000163', 'A000186', 'A000227', 'A000279', 'A000279', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183882', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14281', '2022-07-04', '183889', '2019-09-27', NULL, 'RIYANSHI TOPPO', NULL, 'NONE', 1, 2, 'INDIA', '1', NULL, 'RAMU ORAON ', 'NEELAM KUMARI ', 'N/A', 'N/A', 1, 1, NULL, 'FOREST COLONY QTR-NO - C- 45 DORANDA RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '', '', 'FOREST COLONY QTR-NO - C- 45 DORANDA RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7541825398', '', 1, 4, 'Prep', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000008', 'A000008', 'A000008', 'A000065', 'A000104', 'A000121', 'A000164', 'A000207', 'A000207', 'A000236', 'A000275', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 7, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183889', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14282', '2023-04-04', '314805', '2019-08-06', NULL, 'HARSHIT CHAUDHARY', NULL, 'NONE', 2, 1, 'INDIA', '1', NULL, 'SANJAY KUMAR CHAUDHARY', 'ANJALI DEVI', 'N/A', 'N/A', 4, 1, NULL, 'Q.NO - P 35 , FORSET COLONY DORANDA RANCHI ', 'RANCHI', 'Jharkhand', '', '', '', '', '', '8294349102', '', 'Q.NO - P 35 , FORSET COLONY DORANDA RANCHI ', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9471388002', '', 1, 4, 'Prep', 1, 'A', 0, '0', 2, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000015', 'A000063', 'A000083', 'A000120', 'A000160', 'A000160', 'A000200', 'A000204', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314805', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14283', '2022-05-02', '183887', '2018-07-15', NULL, 'ADITYA VISHWAKARMA', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'VIVEK VISHWAKARMA ', 'NISHA VISHWAKARMA', 'N/A', 'N/A', 1, 1, NULL, 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8319104601', '', 'H.NO - 26Y ANANTPUR CHUTIA RANCHI', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8709612447', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, 1, 0, 0, NULL, NULL, '2023', 'A000013', 'A000043', 'A000043', 'A000062', 'A000114', 'A000138', 'A000174', 'A000190', 'A000230', 'A000252', 'A000283', 'TC_ISSUE', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '183887', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14284', '2022-11-16', '216737', '2019-03-09', NULL, 'SHOURYA ABHINANDAN PANDEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAJ KUMAR PANDEY', 'PRIYANKA PANDEY', 'N/A', 'N/A', 1, 1, NULL, 'C/O C.S DUBEY PANCHWATI CHOWK , RAILWAY COLONY ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7903944075', '', 'C/O C.S DUBEY PANCHWATI CHOWK , RAILWAY COLONY ,RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7319660035', '', 1, 4, 'Prep', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000007', 'A000007', 'A000007', 'A000080', 'A000116', 'A000144', 'A000202', 'A000202', 'A000232', 'A000256', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216737', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14285', '2023-06-21', '314807', '2020-06-29', NULL, 'SHREYANSH RANJAN', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAVI RANJAN DUBEY', 'NAMARATA DUBEY', 'N/A', 'N/A', 1, 1, NULL, '9/C ASHOK NAGAR ,ROAD NO -1 ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '8709559009', '', '9/C ASHOK NAGAR ,ROAD NO -1 ,DORANDA RANCHI', 'RANCHI', 'Jharkhand', '', '', '', '', '', '9608557337', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'NOT ADMITTED', 'NOT ADMITTED', 'NOT ADMITTED', 'A000012', 'A000098', 'A000131', 'A000151', 'A000184', 'A000216', 'A000244', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314807', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14254', '2023-01-16', '216738D', '2020-08-25', NULL, 'DUMMY', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'NIRAJ KUMAR PANDEY', 'PRACHI KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8789192091', '', 'KRISHNAPURI ROAD NO. 6 CHUTIA ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7004253628', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 9, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 0, '000000000000', 'UNACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '216738', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14288', '2023-07-18', '314810', '2019-04-29', NULL, 'AAROHI ARYA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'SUBODH KUMAR TIWARI', 'RITU KUMARI', 'N/A', 'N/A', 3, 1, NULL, 'OLD AG COLONY, BEHIND HYUNDAI SHOWROOM,KADRU RANCHI ', 'RANCHI ', 'Jharkhand', 'India', '834002', '', '', '', '9905793990', '', 'OLD AG COLONY, BEHIND HYUNDAI SHOWROOM,KADRU RANCHI ', 'RANCHI ', 'Jharkhand', 'India', '834002', '', '', '', '7755911622', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 12, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', '', '', '', '', '', '', '', '', '', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314810', 0, 0, 1, '7', 'N/A', 0, 'N/A'),
('A14288', '2023-07-24', '319012', '2020-12-12', NULL, 'REEVA VIJAY', NULL, 'B+', 3, 0, 'INDIA', '1', NULL, 'VIVEK VIJAY', 'SONAM VIJAY ', 'N/A', 'N/A', 1, 1, NULL, 'MISTRI MOHALLA , DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7903541900', '', 'MISTRI MOHALLA , DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7903519203', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'A000081', 'A000081', 'A000081', 'A000081', 'A000110', 'A000130', 'A000148', 'A000187', 'A000209', 'A000238', 'A000278', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319012', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14289', '2023-07-04', '314806', '2019-07-25', NULL, 'AARUSH KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'CHANDAN KUMAR', 'MANITA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'NEW AMRAWATI COLONY, RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7667734768', '', 'NEW AMRAWATI COLONY, RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '', '', '', '', '7757808230', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'FREESHIP', 'FREESHIP', 'FREESHIP', 'A000170', 'A000171', 'A000171', 'A000172', 'A000228', 'A000228', 'A000282', 'A000282', '', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314806', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14290', '2023-08-01', '319020', '2020-10-18', NULL, 'RIYANSH BOSE', NULL, 'B+', 4, 1, 'INDIA', '1', NULL, 'MALAY BOSE ', 'ANIMA KUMARI ', 'N/A', 'N/A', 1, 1, NULL, '19, NIWARANPUR ,DORANDA RANCHI -834002', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7870537081', '', '19, NIWARANPUR ,DORANDA RANCHI -834002', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '7209228266', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000117', 'A000196', 'A000196', 'A000196', 'A000218', 'A000265', 'A000266', 'N/A', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319020', 0, 0, 1, '9', 'N/A', 0, 'N/A'),
('A14291', '2023-08-29', '319019', '2021-01-03', NULL, 'ANSH RAJ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'RAHUL KUMAR GUPTA ', 'SIMA KUMARI', 'N/A', 'N/A', 1, 1, NULL, 'BEHIND HIGH COURT ,BAZAAR MOHALLA ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '6205016267', '', 'BEHIND HIGH COURT ,BAZAAR MOHALLA ,DORANDA RANCHI', 'RANCHI', 'JHARKHAND', 'INDIA', '834002', '', '', '', '8210265219', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000118', 'A000169', 'A000169', 'A000198', 'A000222', 'A000280', 'A000280', 'A000284', '', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319019', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14292', '2023-04-01', '314804', '2019-09-19', NULL, 'KESHAV KUMAR', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SHANKAR KUMAR PANDIT', 'MANITA DEVI', 'N/A', 'N/A', 3, 1, NULL, 'KRISHNAPURI CHUTIA ,RD NO. 10 KANCHAN MENTION FLAT NO. 401 NEAR SHIV MANDIR RD-B', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7050219411', '', 'KRISHNAPURI CHUTIA ,RD NO. 10 KANCHAN MENTION FLAT NO. 401 NEAR SHIV MANDIR RD-B', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8210229961', '', 1, 3, 'Nursery', 1, 'A', 0, '0', 4, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000224', 'A000224', 'A000224', 'A000224', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '314804', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14293', '2023-08-30', '319018', '2020-09-19', NULL, 'MUHAMMAD TALHA RAZA', NULL, 'B+', 4, 1, 'INDIA', '1', NULL, 'MOHAMMAD AASIF', 'HEENA HAQUE', 'N/A', 'N/A', 1, 1, NULL, 'FLAT NO. 1/D SABRI ENCLAVE , MASJID ROAD, RAHMAT COLONY , DORANDA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '6205322699', '', 'FLAT NO. 1/D SABRI ENCLAVE , MASJID ROAD, RAHMAT COLONY , DORANDA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '8984949220', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 13, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000124', 'A000159', 'A000193', 'A000221', 'A000231', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319018', 0, 0, 1, '8', 'N/A', 0, 'N/A'),
('A14294', '2023-11-22', '319017', '2018-10-27', NULL, 'SYED MUHAMMAD HASSAAN ', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SYED MOHAMMED SAJID ', 'NISHATH FATIMA', 'N/A', 'N/A', 2, 1, NULL, 'RAHMAT COLONY , NEAR SANSKRITI APARTMENT ,DORANDA RANCHI -2', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7294823367', '', 'RAHMAT COLONY , NEAR SANSKRITI APARTMENT ,DORANDA RANCHI -2', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '8873575625', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000206', 'A000253', 'A000253', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '954249211445', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319017', 0, 0, 1, '12', 'N/A', 0, 'N/A'),
('A14295', '2023-11-30', '319016', '2020-08-13', NULL, 'AYANSH MANAN LAKRA', NULL, 'NONE', 1, 1, 'INDIA', '1', NULL, 'AMAN SAMIR LAKRA ', 'PREMIKA XALXO', 'N/A', 'N/A', 2, 1, NULL, 'GOSSNER COMPOUND , PRINCIPAL LANE RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '6202804194', '', 'GOSSNER COMPOUND , PRINCIPAL LANE RANCHI ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '7250918550', '', 1, 2, 'Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'ADMITTED', 'A000205', 'A000242', 'A000277', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 3, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '319016', 0, 0, 1, '12', 'N/A', 0, 'N/A'),
('A14296', '2024-02-15', '14296', '2022-03-16', NULL, 'FATIMA HUSSAIN', NULL, 'NONE', 3, 2, 'INDIA', '1', NULL, 'SADDAM HUSSAIN ', 'SUMAIYA KHANAM', 'N/A', 'N/A', 1, 1, NULL, 'E-203 , PATEL CHOWK, BANSAL PLAZA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '9119347360', '', 'E-203 , PATEL CHOWK, BANSAL PLAZA ', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '9992486887', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 12, 0, NULL, '', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 2, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14296', 0, 0, 1, '1', 'N/A', 0, 'N/A'),
('A14298', '2024-03-30', '14298', '2021-04-02', NULL, 'ABHIRUP KOLEY', NULL, 'NONE', 4, 1, 'INDIA', '1', NULL, 'SUBHADIP KOLEY', 'MOUMITA KOLEY', 'N/A', 'N/A', 1, 1, NULL, 'NEW ANANTPUR , NEW OVER BRIDGE ,RANCHI ,834002', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '7478739073', '', 'NEW ANANTPUR , NEW OVER BRIDGE ,RANCHI ,834002', 'RANCHI', 'Jharkhand', 'India', '834002', '', '', '', '7366921413', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'NOT ADMITTED', 'NOT ADMITTED', 'NOT ADMITTED', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14298', 0, 0, 1, '4', 'N/A', 0, 'N/A'),
('A14297', '2024-02-15', '14297', '2021-06-19', NULL, 'PURVI VISHNU ADPA ', NULL, 'NONE', 4, 2, 'INDIA', '1', NULL, 'A.PAWAN.KUMAR', 'PERABATHULA SRAWANI ', 'N/A', 'N/A', 1, 1, NULL, '', '', '', '', '', '', '', '', '', '', 'Q. NO. - D S/17B, NEAR KALI MANDIR, SOUTH RAILWAY COLONY ', 'RANCHI', 'Jharkhand', 'India', '', '', '', '', '9153644678', '', 1, 1, 'Baby Pre-Nursery', 1, 'A', 0, '0', 1, 0, NULL, 'N/A', NULL, NULL, NULL, 0, 0, NULL, NULL, '2023', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N/A', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '000000000000', 'ACTIVE', 0, 'N/A', 'N/A', 'N/A', 0, 0, 'bachpan@2019', '', '14297', 0, 0, 1, '1', 'N/A', 0, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `wing_master`
--

CREATE TABLE `wing_master` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `CAMPUS_MASTER_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wing_master`
--

INSERT INTO `wing_master` (`ID`, `NAME`, `CAMPUS_MASTER_ID`) VALUES
(1, 'Junior', 1),
(2, 'Primary', 1),
(3, 'Senior', 1),
(4, 'Senior Secondary', 1),
(5, 'Office', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accg`
--
ALTER TABLE `accg`
  ADD PRIMARY KEY (`CAT_CODE`);

--
-- Indexes for table `adm_no`
--
ALTER TABLE `adm_no`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `att_temp_save`
--
ALTER TABLE `att_temp_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busnomaster`
--
ALTER TABLE `busnomaster`
  ADD PRIMARY KEY (`BusCode`);

--
-- Indexes for table `campus_master`
--
ALTER TABLE `campus_master`
  ADD PRIMARY KEY (`Campus_ID`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`Class_No`);

--
-- Indexes for table `class_section_wise_subject_allocation`
--
ALTER TABLE `class_section_wise_subject_allocation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `daycoll`
--
ALTER TABLE `daycoll`
  ADD PRIMARY KEY (`RECT_NO`);

--
-- Indexes for table `driver_master`
--
ALTER TABLE `driver_master`
  ADD PRIMARY KEY (`Driver_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feegeneration`
--
ALTER TABLE `feegeneration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feegeneration_2324`
--
ALTER TABLE `feegeneration_2324`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feegeneration_bak_04092023`
--
ALTER TABLE `feegeneration_bak_04092023`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feehead`
--
ALTER TABLE `feehead`
  ADD PRIMARY KEY (`ACT_CODE`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework_adm_wise`
--
ALTER TABLE `homework_adm_wise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework_cat_master`
--
ALTER TABLE `homework_cat_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latefine_master`
--
ALTER TABLE `latefine_master`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_data_role`
--
ALTER TABLE `menu_data_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `misc_password`
--
ALTER TABLE `misc_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_adm_wise`
--
ALTER TABLE `notice_adm_wise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admno` (`admno`),
  ADD KEY `idx_notice_tbl_id` (`notice_tbl_id`);

--
-- Indexes for table `online_transaction`
--
ALTER TABLE `online_transaction`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_data`
--
ALTER TABLE `permission_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `previous_year_collection`
--
ALTER TABLE `previous_year_collection`
  ADD PRIMARY KEY (`RECT_NO`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `school_setting`
--
ALTER TABLE `school_setting`
  ADD PRIMARY KEY (`S_No`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_no`);

--
-- Indexes for table `session_master`
--
ALTER TABLE `session_master`
  ADD PRIMARY KEY (`Session_ID`);

--
-- Indexes for table `short_recoverd_payment`
--
ALTER TABLE `short_recoverd_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stoppage`
--
ALTER TABLE `stoppage`
  ADD PRIMARY KEY (`STOPNO`);

--
-- Indexes for table `stop_amt`
--
ALTER TABLE `stop_amt`
  ADD PRIMARY KEY (`STOP_NO`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`adm_no`);

--
-- Indexes for table `student_2324`
--
ALTER TABLE `student_2324`
  ADD PRIMARY KEY (`ADM_NO`);

--
-- Indexes for table `student_20012024`
--
ALTER TABLE `student_20012024`
  ADD PRIMARY KEY (`ADM_NO`);

--
-- Indexes for table `student_attendance_type`
--
ALTER TABLE `student_attendance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_transport_facility`
--
ALTER TABLE `student_transport_facility`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stu_attendance_entry`
--
ALTER TABLE `stu_attendance_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admno` (`admno`),
  ADD KEY `idx_att_date` (`att_date`);

--
-- Indexes for table `temp_daycoll`
--
ALTER TABLE `temp_daycoll`
  ADD PRIMARY KEY (`RECT_NO`);

--
-- Indexes for table `tpstudent`
--
ALTER TABLE `tpstudent`
  ADD PRIMARY KEY (`ADM_NO`);

--
-- Indexes for table `wing_master`
--
ALTER TABLE `wing_master`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `att_temp_save`
--
ALTER TABLE `att_temp_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `campus_master`
--
ALTER TABLE `campus_master`
  MODIFY `Campus_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_section_wise_subject_allocation`
--
ALTER TABLE `class_section_wise_subject_allocation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `feegeneration`
--
ALTER TABLE `feegeneration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `feegeneration_2324`
--
ALTER TABLE `feegeneration_2324`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `feegeneration_bak_04092023`
--
ALTER TABLE `feegeneration_bak_04092023`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework_adm_wise`
--
ALTER TABLE `homework_adm_wise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework_cat_master`
--
ALTER TABLE `homework_cat_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_data_role`
--
ALTER TABLE `menu_data_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `misc_password`
--
ALTER TABLE `misc_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_adm_wise`
--
ALTER TABLE `notice_adm_wise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_transaction`
--
ALTER TABLE `online_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `short_recoverd_payment`
--
ALTER TABLE `short_recoverd_payment`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_transport_facility`
--
ALTER TABLE `student_transport_facility`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `stu_attendance_entry`
--
ALTER TABLE `stu_attendance_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
