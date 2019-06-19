-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2019 at 10:49 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asian`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `roll` bigint(20) UNSIGNED,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `contactnumber` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`roll`, `name`, `address`, `gender`, `contactnumber`) VALUES
(1, 'Sumir Acharya', 'Baniyataar', 'M', '9861819088'),
(2, 'Shreeja Manandhar', 'Kalimati', 'M', '9860687984'),
(3, 'Deebas Lg', 'Baniyataar', 'M', '9867638284'),
(4, 'Sajal Maharjan', 'Kalanki', 'M', '9886152527'),
(5, 'Erina Rai', 'Greenland', 'F', ''),
(6, 'Sanam Maharjan', 'Totitole', 'F', ''),
(7, 'Pooja Dhamala', 'Basundhara', 'F', '9860966579'),
(8, 'Sangin Thapa Magar', 'Basundhara', 'M', '9847538520'),
(9, 'Ananda Aryal', 'Swyambhu', 'M', ''),
(10, 'Puja', 'Basundhara', 'F', NULL),
(11, 'Sunny Baniya', 'Manamaiju', 'M', '9860870564'),
(12, 'Ravi Tamang', 'Basundhara', 'M', ''),
(13, 'Arbin Magar', 'Swyambhu', 'M', ''),
(14, 'Rubeena Tamang', 'Grande', 'F', '9861978402'),
(15, 'Roshan Shah', 'Kalanki', 'M', '9861446290'),
(16, 'Sahil Jha', 'Manamaiju', 'M', '9849850605'),
(17, 'Anik Karki', 'Swyambhu', 'M', '9861489504'),
(18, 'Hari Rijal', 'Baniyataar', 'M', '9867633283'),
(19, 'Karan Bhandari', 'Manamaiju', 'M', '9861096872');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `roll` (`roll`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `roll` bigint(20) UNSIGNED AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
