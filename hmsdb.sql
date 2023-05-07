-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 05:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adiaginfo`
--

CREATE TABLE `adiaginfo` (
  `PatientID` int(200) NOT NULL,
  `Symptoms` varchar(200) DEFAULT NULL,
  `Diagnosis` varchar(300) DEFAULT NULL,
  `Medicines` varchar(200) DEFAULT NULL,
  `Ward` varchar(10) DEFAULT NULL,
  `WType` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adiaginfo`
--

INSERT INTO `adiaginfo` (`PatientID`, `Symptoms`, `Diagnosis`, `Medicines`, `Ward`, `WType`) VALUES
(18, 'Cold', 'Viral', 'Paracetamol', 'YES', 'DUO'),
(43, 'Cough', 'Viral', 'Dolo650', 'YES', 'SINGLE');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `PatientId` int(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `ADate` date NOT NULL,
  `ATime` varchar(300) NOT NULL,
  `PDoctor` varchar(500) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctortable`
--

CREATE TABLE `doctortable` (
  `DoctorID` int(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `Bg` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `MaritialStatus` varchar(15) NOT NULL,
  `JoinDate` date NOT NULL,
  `Dept` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctortable`
--

INSERT INTO `doctortable` (`DoctorID`, `Name`, `Age`, `Bg`, `Gender`, `Address`, `Contact`, `MaritialStatus`, `JoinDate`, `Dept`, `Username`, `Password`, `image`) VALUES
(99, 'Akshay Sharma', '20', 'O+', 'MALE', 'Jalandhar', '9877405594', 'MARRIED', '2022-02-05', 'Neurology department', 'akshay17', 'disha17', '1677514238202WhatsApp Image 2023-02-22 at 20.11.56.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `MedCode` int(200) NOT NULL,
  `MedName` varchar(200) NOT NULL,
  `Price` varchar(300) NOT NULL,
  `Qty` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`MedCode`, `MedName`, `Price`, `Qty`) VALUES
(1, 'Crocin', '50', '2'),
(2, 'Paracetamol', '80', '5'),
(45, 'Dolo650', '120', '4');

-- --------------------------------------------------------

--
-- Table structure for table `medsales`
--

CREATE TABLE `medsales` (
  `MedCode` int(20) NOT NULL,
  `TotalCost` varchar(500) NOT NULL,
  `gst` varchar(500) NOT NULL,
  `TotalBill` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medsales`
--

INSERT INTO `medsales` (`MedCode`, `TotalCost`, `gst`, `TotalBill`) VALUES
(1, '---', '---', '---');

-- --------------------------------------------------------

--
-- Table structure for table `patienttable`
--

CREATE TABLE `patienttable` (
  `PatientID` int(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Age` int(200) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Bg` varchar(10) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `MajorIssueBefore` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patienttable`
--

INSERT INTO `patienttable` (`PatientID`, `Name`, `Contact`, `Age`, `Gender`, `Bg`, `Address`, `MajorIssueBefore`) VALUES
(43, 'Shivani', '9877678566', 13, 'Female', 'O', 'Bathinda', 'No'),
(65, 'Mithali', '9877406698', 46, 'Female', 'B', 'Jammu', 'Cancer');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`username`, `password`) VALUES
('disha17', 'Hardik1917');

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

CREATE TABLE `reception` (
  `username` int(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reception`
--

INSERT INTO `reception` (`username`, `password`) VALUES
(123, 'Hardik1917');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `WardNumber` int(200) NOT NULL,
  `Activate` varchar(200) DEFAULT NULL,
  `WType` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`WardNumber`, `Activate`, `WType`) VALUES
(1, 'NO', 'GENERAL'),
(7, 'NO', 'GENERAL'),
(43, 'NO', 'SINGLE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adiaginfo`
--
ALTER TABLE `adiaginfo`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`PatientId`);

--
-- Indexes for table `doctortable`
--
ALTER TABLE `doctortable`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`MedCode`);

--
-- Indexes for table `medsales`
--
ALTER TABLE `medsales`
  ADD PRIMARY KEY (`MedCode`);

--
-- Indexes for table `patienttable`
--
ALTER TABLE `patienttable`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `reception`
--
ALTER TABLE `reception`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`WardNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adiaginfo`
--
ALTER TABLE `adiaginfo`
  MODIFY `PatientID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `PatientId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `doctortable`
--
ALTER TABLE `doctortable`
  MODIFY `DoctorID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `MedCode` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `medsales`
--
ALTER TABLE `medsales`
  MODIFY `MedCode` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patienttable`
--
ALTER TABLE `patienttable`
  MODIFY `PatientID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `reception`
--
ALTER TABLE `reception`
  MODIFY `username` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `ward`
--
ALTER TABLE `ward`
  MODIFY `WardNumber` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
