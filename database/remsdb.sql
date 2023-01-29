-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 07:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `remsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'ff', 'ff', 9188642139, 'ff@ff.com', '633de4b0c14ca52ea2432a3c8a5c4c31', '2023-01-28 07:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateID` int(5) NOT NULL,
  `CityName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `CountryID`, `StateID`, `CityName`, `EnterDate`) VALUES
(19, 1, 19, 'kochi', '2023-01-28 08:54:30'),
(20, 1, 20, 'Manglore', '2023-01-29 17:04:26'),
(21, 19, 21, 'NY', '2023-01-29 17:05:29'),
(22, 1, 19, 'bangalore', '2023-01-29 17:07:42'),
(23, 1, 22, 'Mumbai', '2023-01-29 17:12:42'),
(24, 20, 23, 'tokyo ', '2023-01-29 17:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcountry`
--

CREATE TABLE `tblcountry` (
  `ID` int(10) NOT NULL,
  `CountryName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcountry`
--

INSERT INTO `tblcountry` (`ID`, `CountryName`, `EnterDate`) VALUES
(1, 'India', '2019-08-06 07:19:38'),
(19, 'United States', '2023-01-29 17:05:44'),
(20, 'Japan', '2023-01-29 17:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(11) NOT NULL,
  `PropertyID` int(10) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `Message` mediumtext NOT NULL,
  `EnquiryNumber` varchar(200) NOT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(10) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `PropertyID`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryNumber`, `EnquiryDate`, `Status`, `Remark`, `RemarkDate`) VALUES
(6, 6, 'agent1', 'agent1@g.g', 1234567891, 'sedf', '466870285', '2023-01-29 13:35:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `UserRemark` mediumtext NOT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Is_Publish` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`id`, `UserId`, `PropertyId`, `UserRemark`, `PostingDate`, `Is_Publish`) VALUES
(1, 3, 1, 'This review is for testing.', '2019-09-20 19:15:03', 0),
(2, 9, 8, 'good', '2023-01-29 17:36:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<font color=\"#003399\"><b>Capsule Market place</b></font><br><div><br></div><div><b><font color=\"#003399\">Our Vision:</font></b></div><div><span style=\"color: rgb(170, 170, 170); font-family: Poppins, sans-serif;\">Propin ipsum dolor sit amet, consectetur adipisicing elited eiusmod tempore incidid ut labor et dolore magna aliquaut enim ad minim veniam.</span><br></div><div><span style=\"color: rgb(170, 170, 170); font-family: Poppins, sans-serif;\"><br></span></div><div><span style=\"font-family: Poppins, sans-serif;\"><b style=\"\"><font color=\"#003399\">Our Goal:</font></b></span></div><div><span style=\"color: rgb(170, 170, 170); font-family: Poppins, sans-serif;\">Duis aute viele irure dolor in reprer volupta velite esse cilume dolore eu fugiat nulla pariatur. Excepteur sint occae cupidat non proident.</span><span style=\"color: rgb(170, 170, 170); font-family: Poppins, sans-serif;\"><b><br></b></span></div><div><br></div>', 'info@gmsil.com', 8989899898, '2023-01-28 09:41:34'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,<div>Delhi-110096,India</div>', 'info@podmarket.com', 0, '2023-01-28 09:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblproperty`
--

CREATE TABLE `tblproperty` (
  `ID` int(10) NOT NULL,
  `UserID` char(20) DEFAULT NULL,
  `PropertyTitle` mediumtext DEFAULT NULL,
  `PropertDescription` mediumtext DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `Bedrooms` varchar(200) DEFAULT NULL,
  `Bathrooms` varchar(200) DEFAULT NULL,
  `Floors` varchar(200) DEFAULT NULL,
  `Garages` varchar(200) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `RentorsalePrice` varchar(120) DEFAULT NULL,
  `BeforePricelabel` varchar(120) DEFAULT NULL,
  `AfterPricelabel` varchar(120) DEFAULT NULL,
  `PropertyID` varchar(120) DEFAULT NULL,
  `CenterCooling` int(4) DEFAULT NULL,
  `Balcony` int(4) DEFAULT NULL,
  `PetFriendly` int(4) DEFAULT NULL,
  `Barbeque` int(4) DEFAULT NULL,
  `FireAlarm` int(4) DEFAULT NULL,
  `ModernKitchen` int(4) DEFAULT NULL,
  `Storage` int(4) DEFAULT NULL,
  `Dryer` int(4) DEFAULT NULL,
  `Heating` int(4) DEFAULT NULL,
  `Pool` int(4) DEFAULT NULL,
  `Laundry` int(4) DEFAULT NULL,
  `Sauna` int(4) DEFAULT NULL,
  `Gym` int(4) DEFAULT NULL,
  `Elevator` int(4) DEFAULT NULL,
  `DishWasher` int(4) DEFAULT NULL,
  `EmergencyExit` int(4) DEFAULT NULL,
  `FeaturedImage` varchar(200) DEFAULT NULL,
  `GalleryImage1` varchar(200) DEFAULT NULL,
  `GalleryImage2` varchar(200) DEFAULT NULL,
  `GalleryImage3` varchar(200) DEFAULT NULL,
  `GalleryImage4` varchar(200) DEFAULT NULL,
  `GalleryImage5` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `City` varchar(220) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `ZipCode` varchar(200) DEFAULT NULL,
  `Neighborhood` varchar(200) DEFAULT NULL,
  `ListingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproperty`
--

INSERT INTO `tblproperty` (`ID`, `UserID`, `PropertyTitle`, `PropertDescription`, `Type`, `Status`, `Location`, `Bedrooms`, `Bathrooms`, `Floors`, `Garages`, `Area`, `Size`, `RentorsalePrice`, `BeforePricelabel`, `AfterPricelabel`, `PropertyID`, `CenterCooling`, `Balcony`, `PetFriendly`, `Barbeque`, `FireAlarm`, `ModernKitchen`, `Storage`, `Dryer`, `Heating`, `Pool`, `Laundry`, `Sauna`, `Gym`, `Elevator`, `DishWasher`, `EmergencyExit`, `FeaturedImage`, `GalleryImage1`, `GalleryImage2`, `GalleryImage3`, `GalleryImage4`, `GalleryImage5`, `Address`, `Country`, `City`, `State`, `ZipCode`, `Neighborhood`, `ListingDate`) VALUES
(6, '6', 'Urben naps', 'indiann sleeep pod at airport', 'Sleep Pod', 'Rent', 'kochin airport', '10', '2', '1', '0', '100', '40', '500000', '600000', '200000', '800817755', 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, '3fb2db6cccf4a23383383394b28b2b311675011151.jpg', '3fb2db6cccf4a23383383394b28b2b311674896252.jpg', 'fa4e2d48a7065de3624e5ba0a5a9d3a71674896252.png', '9633bdc271363bb6674c85b86214771a1675011216jpeg', '3fb2db6cccf4a23383383394b28b2b311674896252.jpg', 'fa4e2d48a7065de3624e5ba0a5a9d3a71674896252.png', 'floor 9, kochin airptort', '1', 'kochi', '19', '671315', '', '2023-01-28 08:57:32'),
(7, '8', 'URBANPOD', 'URBANPOD Next Generation Smart Hotel caters to both your business and leisure needs. The first of its kind in India, it is conveniently located at Mumbai Central Railway Station. ', 'Capsule Hotel', 'Sale', 'Mumbai', '16', '5', '2', '2', '800', '40', '6000000', '', '', '933424383', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, '49b9ee2c34d645663a3c57698a5f1b401675012742.jpg', 'a22a794c036c06431e632f9d5e2e298f1675012742.jpg', 'edfa0438254df70540d59b8770daaa591675012742.jpg', 'aa2835be4723dd65c293ed1ef43166351675012742.jpg', '9a36a4c79b9d1bec20f3b9df49c5dcb71675012742.jpg', 'edfa0438254df70540d59b8770daaa591675012742.jpg', 'mumbai railway station', '1', 'Mumbai', '22', '230532', '', '2023-01-29 17:19:02'),
(8, '9', '9hour capusele', 'The idea behind this trendy capsule hotel chain in Kyoto, Narita, and Tokyo .\r\n urgent sale', 'Capsule Hotel', 'Sale', 'tokyo suberb', '80', '20', '8', '5', '8900', '50', '7 cr', '6 cr', '6 cr', '408127629', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '4b5905d6a0e4fdf77c31004ea4dc03b41675013675.jpg', 'dd991f8cd0518522a605223c2983dde41675013675.jpg', '7ec90bc3d173b9ec1e5fed83a20ffe451675013675.jpg', 'd34d957140f87182a3d62faae128ab5e1675013675.jpg', 'b08a5992ecdd738ee05ca20175a8ebec1675013675.jpg', 'd34d957140f87182a3d62faae128ab5e1675013675.jpg', 'near tokyo suberb ,tokyo', '20', 'tokyo ', '23', '100 0000', 'tokyo suberb', '2023-01-29 17:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblpropertytype`
--

CREATE TABLE `tblpropertytype` (
  `ID` int(10) NOT NULL,
  `PropertType` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpropertytype`
--

INSERT INTO `tblpropertytype` (`ID`, `PropertType`, `EnterDate`) VALUES
(7, 'Sleep Pod', '2023-01-28 08:40:08'),
(8, 'Capsule Hotel', '2023-01-29 17:06:25'),
(9, 'Sleeping Cabin', '2023-01-29 17:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `CountryID`, `StateName`, `EnterDate`) VALUES
(19, 1, 'Kerela', '2023-01-28 08:53:33'),
(20, 1, 'Karnataka', '2023-01-28 08:53:42'),
(21, 19, 'New York', '2023-01-29 17:04:55'),
(22, 1, 'Maharashtra', '2023-01-29 17:12:29'),
(23, 20, 'Tokyo', '2023-01-29 17:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserType` int(5) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Aboutme` mediumtext NOT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `UserType`, `PostingDate`, `Aboutme`, `UpdationDate`) VALUES
(6, 'agent1', 'agent1@g.g', 1234567891, '969479a4a290cbee925dfdaef18cd08c', 1, '2023-01-28 07:20:59', '', '0000-00-00 00:00:00'),
(7, 'user2', 'user2@g.g', 0, 'ca91fb70ce928672ee257b71a676d64c', 3, '2023-01-29 13:36:03', '', '0000-00-00 00:00:00'),
(8, 'urbanpod', 'urbanpod@u.u', 1234567897, '131eab4a876252e2d80a7dc71c21ee60', 2, '2023-01-29 17:09:49', '', '2023-01-29 17:10:52'),
(9, 'ninehr', 'ninehr@g.g', 1234567898, '8cdb83ffa371237b6ead24e906eb172f', 1, '2023-01-29 17:25:56', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcountry`
--
ALTER TABLE `tblcountry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproperty`
--
ALTER TABLE `tblproperty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcountry`
--
ALTER TABLE `tblcountry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproperty`
--
ALTER TABLE `tblproperty`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
