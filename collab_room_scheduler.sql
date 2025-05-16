-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 06:45 PM
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
-- Database: `collab_room_scheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminacctbl`
--

CREATE TABLE `adminacctbl` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminacctbl`
--

INSERT INTO `adminacctbl` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `reservationtbl`
--

CREATE TABLE `reservationtbl` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `student_number` varchar(50) DEFAULT NULL,
  `program` varchar(100) DEFAULT NULL,
  `number_of_members` int(11) DEFAULT NULL,
  `name_of_members` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `room_number` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'on-hold'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservationtbl`
--

INSERT INTO `reservationtbl` (`id`, `fullname`, `user_type`, `student_number`, `program`, `number_of_members`, `name_of_members`, `date`, `time`, `purpose`, `room_number`, `created_at`, `status`) VALUES
(1, 'Mendoza, Rayza', 'Student', '24-1698', 'BS Information Technology', 5, 'sam\nxhan\njem\njia\nbea', '2025-05-19', '10:00AM - 11:00AM', 'meeting', 'Room 001', '2025-05-16 16:25:54', 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `roomstatustbl`
--

CREATE TABLE `roomstatustbl` (
  `room_id` varchar(3) NOT NULL,
  `status` enum('available','occupied','reserved') NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomstatustbl`
--

INSERT INTO `roomstatustbl` (`room_id`, `status`) VALUES
('001', 'reserved'),
('002', 'available'),
('003', 'available'),
('004', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminacctbl`
--
ALTER TABLE `adminacctbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservationtbl`
--
ALTER TABLE `reservationtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomstatustbl`
--
ALTER TABLE `roomstatustbl`
  ADD PRIMARY KEY (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminacctbl`
--
ALTER TABLE `adminacctbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservationtbl`
--
ALTER TABLE `reservationtbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
