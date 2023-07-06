-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 10:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmanagementsystemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindetails`
--

CREATE TABLE `admindetails` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(30) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminMobileNumber` text NOT NULL,
  `adminPassword` text NOT NULL,
  `hostelName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admindetails`
--

INSERT INTO `admindetails` (`adminId`, `adminName`, `adminEmail`, `adminMobileNumber`, `adminPassword`, `hostelName`) VALUES
(11, 'Sameer Chavan', 'sameerchavan@rediffmail.com', '8944885577', '$2y$10$t8fgZE5Y5cda6QFc4L981uZqHwa4SCrHyIul5acgGZCboZ3aT0JK2', 'Chavan hostels'),
(13, 'ganesh more', 'ganeshmore@gmail.com', '8447775777', '$2y$10$xbkUm5QOFuypjtXf01YB/eBaJ3B0eovrqxYxKCPwWJxZIAg.esEVa', 'ganesh hostels'),
(14, 'Rahul sonawane', 'rahulsonawane23@rediffmail.com', '88444885588', '$2y$10$9iuBqyZ4lUGl4b69AexS2.TUDgnvashefq/80YI/k5qPsX99DXJq6', 'Rahul hostels'),
(15, 'navin patil', 'navinpatil23@gmail.com', '8844775577', '$2y$10$BnK3lPXkBoPJ8pfxqzGYFuMdhQe8RKCPbMNMiewh9p4OERD2bqsyy', 'navin hostels'),
(16, 'hemant gangurde', 'hemantgangurde45@gmail.com', '8855445212', '$2y$10$APzhhUF708XATFtHhWE5K.CXJ2D8X5o11bWM.hxFKLqk28GCPjixG', 'hemant hostel services'),
(17, 'Savinay chaudhary', 'savinaychaudhary45@gmail.com', '88444888833', '$2y$10$75ccOnuvmE7gHOv.Tfb0r.yBaNRCS91G1oSwNwg4HdarlnvZ/k67W', 'savinay hostels');

-- --------------------------------------------------------

--
-- Table structure for table `adminstudentroomdeposit`
--

CREATE TABLE `adminstudentroomdeposit` (
  `asrd_Id` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `roomId` int(11) NOT NULL,
  `depositId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminstudentroomdeposit`
--

INSERT INTO `adminstudentroomdeposit` (`asrd_Id`, `adminId`, `studentId`, `roomId`, `depositId`) VALUES
(11, 16, 2, 42, 41);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `depositId` int(11) NOT NULL,
  `depositAmount` int(5) NOT NULL,
  `depositPaid` int(5) NOT NULL,
  `roomId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`depositId`, `depositAmount`, `depositPaid`, `roomId`, `studentId`) VALUES
(36, 10000, 10000, 37, 2),
(37, 20000, 10000, 38, 5),
(38, 20000, 0, 39, 0),
(39, 10000, 10000, 40, 5),
(40, 20000, 0, 41, 0),
(41, 50000, 10000, 42, 2),
(42, 30000, 0, 43, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rentId` int(11) NOT NULL,
  `rentTenure` int(11) NOT NULL,
  `totalRent` int(11) NOT NULL,
  `rentPaid` int(11) NOT NULL,
  `studentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rentId`, `rentTenure`, `totalRent`, `rentPaid`, `studentId`) VALUES
(8, 4, 24000, 3000, 5),
(9, 4, 12000, 3000, 5),
(10, 4, 12000, 0, 2),
(11, 4, 24000, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `roomId` int(11) NOT NULL,
  `totalNumberOfBeds` int(1) NOT NULL,
  `rentPerMonth` int(10) NOT NULL,
  `allotmentStatus` varchar(10) NOT NULL DEFAULT '0',
  `roomTable` varchar(10) NOT NULL DEFAULT '1 table',
  `fan` varchar(5) NOT NULL DEFAULT '1 fan',
  `cupboard` varchar(10) NOT NULL DEFAULT '1 cupboard',
  `adminId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomId`, `totalNumberOfBeds`, `rentPerMonth`, `allotmentStatus`, `roomTable`, `fan`, `cupboard`, `adminId`) VALUES
(37, 2, 3000, '0', '1 table', '1 fan', '1 cupboard', 14),
(38, 3, 6000, '0', '1 table', '1 fan', '1 cupboard', 14),
(39, 2, 3000, '0', '1 table', '1 fan', '1 cupboard', 16),
(40, 2, 3000, '0', '1 table', '1 fan', '1 cupboard', 17),
(41, 1, 3000, '0', '1 table', '1 fan', '1 cupboard', 17),
(42, 2, 6000, '0', '1 table', '1 fan', '1 cupboard', 16),
(43, 1, 6000, '0', '1 table', '1 fan', '1 cupboard', 16);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentId` int(11) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `studentEmail` varchar(150) NOT NULL,
  `studentMobileNumber` text NOT NULL,
  `studentPassword` text NOT NULL,
  `studentToken` varchar(16) NOT NULL,
  `studentAge` int(3) NOT NULL,
  `studentCaste` varchar(30) NOT NULL,
  `collegeName` varchar(50) NOT NULL,
  `courseName` varchar(50) NOT NULL,
  `percentageInTwelfth` int(2) NOT NULL,
  `studentAddress` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `studentName`, `studentEmail`, `studentMobileNumber`, `studentPassword`, `studentToken`, `studentAge`, `studentCaste`, `collegeName`, `courseName`, `percentageInTwelfth`, `studentAddress`) VALUES
(1, 'prakash deshmukh', 'prakash@prakash.com', '8944775566', '$2y$10$qMo4YFTsbstwEAYBKpLuf.668qI6cHhhov7MvcHqw9axXJNtBnDCG', 'bed3b6c73212c26c', 0, '', '', '', 0, ''),
(2, 'jai prakash', 'jaiprakash@rediffmail.com', '8449388499', '$2y$10$eN9MKDRBfSAs.7ol2qd6SuTTQdAu/ca7A7zJKdCTKq97O5GkUWRZm', 'd1e6a2a0c9bd6502', 25, 'Barad', 'kattappa institute', 'bahubali ne kattapa ko kyu mara', 80, '1352 Dark Hollow Road Maple Shade New Jersey'),
(3, 'Ramanand awasthi', 'ramanandawasthi1122@gmail.com', '9944885577', '$2y$10$KzUtO3sjHk.H0w2jCMx.5.RHlfqRXk0Elj2x8b/m0CZjWPwHqKhEm', 'ebb0ed15f8adfda2', 0, '', '', '', 0, ''),
(4, 'sachin tendulkar', 'sachintendulkar1299@rediffmail.com', '9944884477', '$2y$10$2ESiUbTo9eMihAKq8QngCe3086ynMqm3QuR1rJKY/Qx.UEG4aqKOS', '7bd8bf3952443742', 0, '', '', '', 0, ''),
(5, 'ramesh tiwari', 'rameshtiwari234@gmail.com', '88447474777', '$2y$10$GrwJCVqnwRTXMNifC95yCO08UKYT4DwbjO7cwapq92S4fezRLJ8q2', '2e9fe115f1a860e6', 0, '', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindetails`
--
ALTER TABLE `admindetails`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `adminstudentroomdeposit`
--
ALTER TABLE `adminstudentroomdeposit`
  ADD PRIMARY KEY (`asrd_Id`),
  ADD KEY `adminId` (`adminId`,`studentId`,`roomId`,`depositId`),
  ADD KEY `depositId` (`depositId`),
  ADD KEY `roomId` (`roomId`),
  ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`depositId`),
  ADD KEY `roomId` (`roomId`,`studentId`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rentId`),
  ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`roomId`),
  ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindetails`
--
ALTER TABLE `admindetails`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `adminstudentroomdeposit`
--
ALTER TABLE `adminstudentroomdeposit`
  MODIFY `asrd_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `depositId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `roomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminstudentroomdeposit`
--
ALTER TABLE `adminstudentroomdeposit`
  ADD CONSTRAINT `adminstudentroomdeposit_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admindetails` (`adminId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adminstudentroomdeposit_ibfk_2` FOREIGN KEY (`depositId`) REFERENCES `deposit` (`depositId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adminstudentroomdeposit_ibfk_3` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`roomId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adminstudentroomdeposit_ibfk_4` FOREIGN KEY (`studentId`) REFERENCES `student` (`studentId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
