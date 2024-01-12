-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 07:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lavs`
--

-- --------------------------------------------------------

--
-- Table structure for table `addloan1`
--

CREATE TABLE `addloan1` (
  `loan_id` int(11) NOT NULL,
  `loan_name` varchar(255) DEFAULT NULL,
  `tenure_period` int(11) DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `condition1` text DEFAULT NULL,
  `condition2` text DEFAULT NULL,
  `condition3` text DEFAULT NULL,
  `feature1` text DEFAULT NULL,
  `feature2` text DEFAULT NULL,
  `feature3` text DEFAULT NULL,
  `eligibility1` text DEFAULT NULL,
  `eligibility2` text DEFAULT NULL,
  `eligibility3` text DEFAULT NULL,
  `interest_rate` decimal(5,2) DEFAULT NULL,
  `max_loan_amount` decimal(15,2) DEFAULT NULL,
  `loan_photo` varchar(255) DEFAULT NULL,
  `collateral1` varchar(255) DEFAULT NULL,
  `collateral2` varchar(255) DEFAULT NULL,
  `collateral3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addloan1`
--

INSERT INTO `addloan1` (`loan_id`, `loan_name`, `tenure_period`, `quote`, `condition1`, `condition2`, `condition3`, `feature1`, `feature2`, `feature3`, `eligibility1`, `eligibility2`, `eligibility3`, `interest_rate`, `max_loan_amount`, `loan_photo`, `collateral1`, `collateral2`, `collateral3`) VALUES
(19, 'Home Loan', 120, 'Own the home you always wished for with us.', 'Purchase for standalone houses.', 'Construction of House.', 'financing available', 'No application fees', 'Apply from anywhere', '', 'more than 18 yrs', 'less than 50 yrs', 'no previous loans from us', 13.89, 20000000.00, 'home.png', 'citizenship', 'regular income source statement', 'pp size photo'),
(21, 'Vehicle Loan', 99, 'Own your dream car freely.', 'Purchase of new vehicles', 'purchase of second hand vehicles', 'financing available', 'no application fees', 'Apply from anywhere', 'rfdasc', 'more than 18 yrs', 'less than 50 yrs', 'regular income source', 10.86, 12000000.00, 'mustang.png', 'citizenship', 'regular income source statement', 'pp size photo');

-- --------------------------------------------------------

--
-- Table structure for table `adminn`
--

CREATE TABLE `adminn` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminn`
--

INSERT INTO `adminn` (`username`, `password`) VALUES
('testadmin', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `application1`
--

CREATE TABLE `application1` (
  `application_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `loan_name` varchar(255) NOT NULL,
  `loan_amount` decimal(10,2) NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL,
  `tenure_period` int(11) NOT NULL,
  `emi` decimal(10,2) DEFAULT NULL,
  `monthly_salary` decimal(10,2) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `other_emis` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `application_date` date NOT NULL,
  `collateral1` text NOT NULL,
  `collateral2` text NOT NULL,
  `collateral3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application1`
--

INSERT INTO `application1` (`application_id`, `username`, `status`, `loan_name`, `loan_amount`, `interest_rate`, `tenure_period`, `emi`, `monthly_salary`, `phone_number`, `other_emis`, `email`, `application_date`, `collateral1`, `collateral2`, `collateral3`) VALUES
(21, 'testuser', 'Verified', 'Vehicle Loan', 1200000.00, 10.86, 24, 55851.44, 20000.00, '9856005877', 0, 'w@gmail.com', '2023-09-14', 'P.pdf', 'P.pdf', 'P.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackid`, `name`, `email`, `phone`, `message`) VALUES
(5, 'Ramesh Chalise', 'wasim@gg.com', '9856002456', 'wrtykqwertyuiop[asdfghjklzxcvbnm'),
(6, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `ImageData` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL DEFAULT '2000-01-01',
  `bank_account` varchar(20) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `education` text NOT NULL,
  `skills` text NOT NULL,
  `job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `username`, `password`, `first_name`, `middle_name`, `last_name`, `dob`, `bank_account`, `phone_number`, `email`, `address`, `education`, `skills`, `job`) VALUES
(2, 'testuser', '098f6bcd4621d373cade4e832627b4f6', 'test', '', 'test', '2000-01-01', 'test', '9856005877', 'w@gmail.com', 'test', 'test', 'test\r\ntest \r\ntest\r\nTEST\r\nTEST \r\nTEST', 'TEST');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addloan1`
--
ALTER TABLE `addloan1`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `adminn`
--
ALTER TABLE `adminn`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `application1`
--
ALTER TABLE `application1`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addloan1`
--
ALTER TABLE `addloan1`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `application1`
--
ALTER TABLE `application1`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
