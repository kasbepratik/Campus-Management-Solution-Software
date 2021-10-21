-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2021 at 03:23 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campus_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_student`
--

CREATE TABLE `attendance_student` (
  `rollno` varchar(20) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `first` varchar(10) DEFAULT NULL,
  `second` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_student`
--

INSERT INTO `attendance_student` (`rollno`, `Date`, `first`, `second`) VALUES
('15336051', 'Tue Oct 19 19:00:31 IST 2021', 'Present', 'Present'),
('15336051', 'Tue Oct 19 19:04:07 IST 2021', 'Absent', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_teacher`
--

CREATE TABLE `attendance_teacher` (
  `emp_id` varchar(20) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `first` varchar(10) DEFAULT NULL,
  `second` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_teacher`
--

INSERT INTO `attendance_teacher` (`emp_id`, `Date`, `first`, `second`) VALUES
('1011603', 'Tue Oct 19 18:14:38 IST 2021', 'Present', 'Leave');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `rollno` varchar(20) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `fathers_name` varchar(25) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `fee_paid` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `rollno` varchar(15) DEFAULT NULL,
  `marks1` varchar(20) DEFAULT NULL,
  `marks2` varchar(20) DEFAULT NULL,
  `marks3` varchar(20) DEFAULT NULL,
  `marks4` varchar(20) DEFAULT NULL,
  `marks5` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`rollno`, `marks1`, `marks2`, `marks3`, `marks4`, `marks5`) VALUES
('15336051', '75', '74', '73', '72', '71');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(20) DEFAULT NULL,
  `fathers_name` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `class_x` varchar(10) DEFAULT NULL,
  `class_xii` varchar(10) DEFAULT NULL,
  `aadhar` varchar(15) DEFAULT NULL,
  `rollno` varchar(15) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `fathers_name`, `age`, `dob`, `address`, `phone`, `email`, `class_x`, `class_xii`, `aadhar`, `rollno`, `course`, `branch`) VALUES
('Pratik Kasbe', 'Prakash', '24', '13-03-1999', 'Dahigaon Ne', '8788276967', 'kasbepratik92@gmail.com', '75.80', '60.77', '242315370000', '15336051', 'M.Sc. Computer', 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `rollno` varchar(15) DEFAULT NULL,
  `subject1` varchar(20) DEFAULT NULL,
  `subject2` varchar(20) DEFAULT NULL,
  `subject3` varchar(20) DEFAULT NULL,
  `subject4` varchar(20) DEFAULT NULL,
  `subject5` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`rollno`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`) VALUES
('15336051', 'CC', 'SPM', 'JAVA', 'NS', 'SS');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `name` varchar(20) DEFAULT NULL,
  `fathers_name` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `class_x` varchar(10) DEFAULT NULL,
  `class_xii` varchar(10) DEFAULT NULL,
  `aadhar` varchar(15) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `emp_id` varchar(15) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`name`, `fathers_name`, `age`, `dob`, `address`, `phone`, `email`, `class_x`, `class_xii`, `aadhar`, `course`, `emp_id`, `dept`) VALUES
('Shamrao Sadavarte', 'Bajirao', '55', '02-11-1967', 'Shevgaon', '123126226', 'bdjbwj@wp.com', '75', '78', '5432112345', 'MCA', '1011603', 'Computer Science');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
