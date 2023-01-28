-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 07:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'Admin', 'admin'),
(2, 'John Paul A. Maniwang', 'maniwangjp', 'maniwangjp'),
(3, 'France Jell J. Jurane', 'juranetheboss', '131244070258'),
(4, 'Jamaica E. Dayanan', 'maica_d', 'chosenvessel'),
(5, 'Dince Akhea Ilarde', 'akhea', 'iloveyoulord'),
(6, 'JOHH NIGELS SAPILAN SIPE', 'jsipe072', 'pmasooninjesusname17');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `firstname`, `middlename`, `lastname`, `address`, `contactno`) VALUES
(15, 'Dince Akhea', 'P', 'Ilarde', 'MOLAVE', '094870178'),
(16, 'Eric ', 'I.', 'Capa', 'IMELDA', '09476256143'),
(17, 'Jamaica', 'E', 'Dayanan', 'MOLAVE', '09876543212'),
(18, 'France Jell', 'J', 'Jurane', 'MOLAVE', '09876453278'),
(19, 'John Paul', 'A', 'Maniwang', 'MOLAVE', '091234567899'),
(20, 'John Nigels', 'S', 'Sipe', 'MOLAVE', '09879654532'),
(21, 'Kent Roar', 'M', 'Sistoso', 'MOLAVE', '09765437822'),
(22, 'Debie Mouryl', 'P', 'Ilarde', 'MOLAVE', '09864275421'),
(23, 'David Grey ', 'P', 'Ilarde', 'Ozamiz', '08487364254'),
(24, 'Nadine', 'L', 'Lustre', 'Mahayag', '09878765643'),
(25, 'James ', 'R', 'Reid', 'Tambulig', '09878776545'),
(26, 'Genelou', 'A', 'Mamolo', 'Pagadian', '09987654321');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `price` varchar(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `price`, `photo`, `description`) VALUES
(1, 'Economy', '3290', 'economy.jpg', 'This room offers a basic accommodations with little to no services. Economy room is perfect for guests who want to live comfortably, but for less money. Therefore, Economy Class is going to be less expensive.'),
(3, 'Deluxe', '3990', 'deluxe.jpg', 'This is extra fancy or of very high quality. If you upgrade to a deluxe hotel room, it will be bigger and more luxurious. Deluxe rooms are modern decorated, can accommodate up to 2 persons, totally soundproofed and equipped with high tech comforts such as high speed internet access, USB ports, smart TV, room cleaning touch system, and private hydromassage bathtub.'),
(5, 'Suite', '4690', 'suite.jpg', 'This includes a room separate from the bedroom. One room is usually a living area with a couch that converts to a bed, a separate TV, and sometimes a kitchen or kitchenette. In this room, you also can definitely get a bigger dining area. This room may include self-contained bathroom and kitchen facilities, however, it shall not include laundry facilities within individual suites.');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_no` int(5) NOT NULL,
  `extra_bed` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `days` int(2) NOT NULL,
  `checkin` date NOT NULL,
  `checkin_time` time NOT NULL,
  `checkout` date NOT NULL,
  `checkout_time` time NOT NULL,
  `bill` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `guest_id`, `room_id`, `room_no`, `extra_bed`, `status`, `days`, `checkin`, `checkin_time`, `checkout`, `checkout_time`, `bill`) VALUES
(9, 15, 3, 0, 0, 'Pending', 0, '2022-12-21', '00:00:00', '0000-00-00', '00:00:00', ''),
(10, 16, 1, 0, 0, 'Pending', 0, '2022-12-13', '00:00:00', '0000-00-00', '00:00:00', ''),
(11, 17, 3, 0, 0, 'Pending', 0, '2022-12-30', '00:00:00', '0000-00-00', '00:00:00', ''),
(12, 18, 5, 3, 0, 'Check Out', 5, '2022-12-14', '14:49:13', '2022-12-11', '14:49:36', '23450'),
(13, 19, 3, 0, 0, 'Pending', 0, '2022-12-31', '00:00:00', '0000-00-00', '00:00:00', ''),
(14, 20, 5, 0, 0, 'Pending', 0, '2023-01-07', '00:00:00', '0000-00-00', '00:00:00', ''),
(15, 21, 3, 0, 0, 'Pending', 0, '2022-12-24', '00:00:00', '0000-00-00', '00:00:00', ''),
(17, 23, 5, 6, 1, 'Check In', 10, '2023-01-31', '14:48:31', '2022-12-16', '00:00:00', '47700'),
(18, 24, 1, 0, 0, 'Pending', 0, '2023-01-18', '00:00:00', '0000-00-00', '00:00:00', ''),
(19, 25, 3, 0, 0, 'Pending', 0, '2023-01-09', '00:00:00', '0000-00-00', '00:00:00', ''),
(20, 26, 3, 0, 0, 'Pending', 0, '2022-12-14', '00:00:00', '0000-00-00', '00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
