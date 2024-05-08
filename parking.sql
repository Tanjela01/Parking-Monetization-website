-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 06:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `space_id` int(11) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `total_cost` decimal(8,2) NOT NULL,
  `license_plate` varchar(255) NOT NULL,
  `drivers_license` varchar(255) NOT NULL,
  `status` enum('Booked','Parked','Cancelled','Complete') DEFAULT 'Booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `space_id`, `start_time`, `end_time`, `total_cost`, `license_plate`, `drivers_license`, `status`) VALUES
(1, 3, 1, '2023-12-18 16:21:16', '2023-12-18 17:21:16', 20.00, '', '', 'Complete'),
(2, 3, 1, '0000-00-00 00:00:00', '2023-12-18 23:38:50', 20.00, '', '', ''),
(3, 3, 2, '0000-00-00 00:00:00', '2023-12-18 23:48:29', 20.00, '', '', ''),
(4, 3, 1, '0000-00-00 00:00:00', '2023-12-18 23:52:50', 20.00, '', '', ''),
(5, 3, 1, '2023-12-18 22:55:00', '2023-12-18 23:55:00', 20.00, '', '', ''),
(6, 3, 1, '2023-12-24 21:15:00', '2023-12-24 23:15:00', 40.00, '', '', ''),
(7, 3, 1, '2024-01-27 09:50:00', '2024-01-27 10:50:00', 20.00, '', '', ''),
(8, 3, 1, '2024-01-27 09:51:00', '2024-01-27 10:51:00', 20.00, '', '', ''),
(9, 3, 3, '2024-01-27 09:50:00', '2024-01-27 10:50:00', 50.00, '', '', ''),
(10, 3, 3, '2024-01-27 09:51:00', '2024-01-27 10:51:00', 50.00, '', '', ''),
(11, 3, 1, '2024-01-27 21:54:00', '2024-01-27 23:54:00', 40.00, '', '', ''),
(12, 3, 4, '2024-01-27 09:55:00', '2024-01-27 12:55:00', 45.00, '', '', ''),
(13, 3, 26, '2024-01-31 23:39:00', '2024-02-01 00:39:00', 10.00, '', '', ''),
(14, 3, 26, '2024-01-31 23:39:00', '2024-02-01 00:39:00', 10.00, '', '', ''),
(15, 3, 55, '2024-02-04 13:04:00', '2024-02-04 14:04:00', 25.00, '', '', ''),
(16, 3, 55, '2024-02-04 17:08:00', '2024-02-04 18:08:00', 25.00, '', '', ''),
(17, 3, 55, '2024-02-04 17:10:00', '2024-02-04 18:10:00', 25.00, '', '', ''),
(18, 3, 55, '2024-02-04 17:10:00', '2024-02-04 18:10:00', 25.00, '', '', ''),
(19, 3, 55, '2024-02-04 17:10:00', '2024-02-04 18:10:00', 25.00, '', '', ''),
(20, 3, 55, '2024-02-04 17:10:00', '2024-02-04 18:10:00', 25.00, '', '', ''),
(21, 3, 55, '2024-02-04 17:10:00', '2024-02-04 18:10:00', 25.00, '', '', ''),
(22, 3, 55, '2024-02-04 17:14:00', '2024-02-04 19:14:00', 50.00, '', '', ''),
(23, 3, 55, '2024-02-04 17:21:00', '2024-02-04 18:21:00', 25.00, '', '', ''),
(24, 3, 55, '2024-02-04 16:34:00', '2024-02-04 17:34:00', 25.00, '', '', ''),
(25, 3, 55, '2024-02-04 17:07:00', '2024-02-04 18:07:00', 25.00, '', '', ''),
(26, 3, 55, '2024-02-04 00:41:00', '2024-02-04 01:41:00', 25.00, '', '', ''),
(27, 3, 55, '2024-02-04 17:41:00', '2024-02-05 06:41:00', 325.00, '', '', ''),
(28, 3, 55, '2024-02-04 17:48:00', '2024-02-04 18:48:00', 25.00, '', '', ''),
(30, 3, 55, '2024-02-04 17:49:00', '2024-02-04 18:49:00', 25.00, '', '', ''),
(31, 3, 55, '2024-02-04 17:50:00', '2024-02-04 18:50:00', 25.00, '', '', ''),
(32, 3, 55, '2024-02-04 17:51:00', '2024-02-04 18:51:00', 25.00, '', '', ''),
(33, 3, 55, '2024-02-04 17:52:00', '2024-02-04 19:52:00', 50.00, '', '', 'Complete'),
(34, 3, 55, '2024-02-04 17:51:00', '2024-02-04 18:51:00', 25.00, '', '', 'Complete'),
(41, 3, 55, '2024-02-04 19:51:00', '2024-02-04 20:51:00', 25.00, '', '', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `parking_spaces`
--

CREATE TABLE `parking_spaces` (
  `space_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `owner_mobile` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `available_capacity` int(11) NOT NULL,
  `start_time` datetime NOT NULL DEFAULT current_timestamp(),
  `end_time` datetime NOT NULL,
  `price_per_hour` decimal(6,2) NOT NULL,
  `facilities` set('CCTV','Guard','Indoor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking_spaces`
--

INSERT INTO `parking_spaces` (`space_id`, `location`, `lat`, `lon`, `user_id`, `owner_name`, `owner_mobile`, `capacity`, `available_capacity`, `start_time`, `end_time`, `price_per_hour`, `facilities`) VALUES
(1, 'Banasree , Block E , Road 3 , H-3', 0, 0, 0, '', 0, 10, 9, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 20.00, 'CCTV'),
(2, 'Banasree , Block E , Road 3 , H-3', 0, 0, 0, '', 0, 10, 10, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 20.00, 'CCTV'),
(3, 'Gulshan-1 , Road 1 , H-1', 0, 0, 0, '', 0, 20, 20, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 50.00, 'CCTV'),
(4, 'Mirpur - 10 ,  H-2', 0, 0, 0, '', 0, 5, 5, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 15.00, 'CCTV'),
(5, 'Banani , C block , Road 13 , H-10', 0, 0, 0, '', 0, 15, 15, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 40.00, 'CCTV'),
(6, 'Bashundhara RA , B block , Road 2 , H-7', 0, 0, 0, '', 0, 7, 7, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 25.00, 'CCTV'),
(7, 'Uttara , Sector 1 , Road 1 , H-1', 0, 0, 0, '', 0, 12, 12, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 25.00, 'CCTV'),
(8, 'Adabor-13 , C Block , Road 16 , H-16', 0, 0, 0, '', 0, 5, 5, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 15.00, 'CCTV'),
(9, 'Baridhara , Block B , Road 2 , H-9', 0, 0, 0, '', 0, 10, 10, '2024-01-26 06:53:17', '2024-01-26 06:53:17', 30.00, 'CCTV'),
(10, 'test', 0, 0, 0, 'testOwner', 111, 10, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10.00, 'CCTV,Guard,Indoor'),
(11, 'test', 0, 0, 0, 'testOwner', 111, 10, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10.00, 'CCTV,Guard,Indoor'),
(12, 'test', 0, 0, 0, 'testOwner', 111, 10, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10.00, 'CCTV,Guard,Indoor'),
(13, 'asd', 0, 0, 0, 'dsa', 123, 12, 12, '2024-01-26 07:31:00', '2024-01-26 08:32:00', 12.00, 'CCTV,Guard'),
(14, 'test', 0, 0, 0, 'asd', 0, 1, 1, '2024-01-26 20:46:00', '2024-01-26 21:47:00', 1.00, 'CCTV'),
(15, 'test', 0, 0, 0, 'asd', 0, 1, 1, '2024-01-26 20:46:00', '2024-01-26 21:47:00', 1.00, 'CCTV'),
(16, 'test', 0, 0, 0, 'asd', 0, 1, 1, '2024-01-26 20:46:00', '2024-01-26 21:47:00', 1.00, 'CCTV'),
(17, 'newLocation', 0, 0, 6, 'adam', 911, 50, 50, '2024-01-26 07:55:00', '2024-01-26 19:55:00', 25.00, 'CCTV,Guard,Indoor'),
(18, 'newNewLocation', 0, 0, 6, 'adam', 911, 12, 12, '2024-01-26 07:58:00', '2024-01-26 19:58:00', 6.00, 'CCTV'),
(26, 'h-1,r-1,b-a,dhaka,1212', 23, 90, 3, 'alex', 0, 10, 10, '2024-01-31 14:58:00', '2024-01-31 15:00:00', 10.00, 'CCTV,Guard,Indoor'),
(33, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 15:21:00', '2024-01-31 15:30:00', 10.00, 'CCTV'),
(34, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 15:28:00', '2024-01-31 15:33:00', 10.00, 'CCTV'),
(35, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 15:26:00', '2024-01-31 15:28:00', 10.00, 'CCTV'),
(36, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 15:31:00', '2024-01-31 15:28:00', 10.00, 'CCTV'),
(37, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 15:31:00', '2024-01-31 15:27:00', 10.00, 'Guard'),
(38, 'test', 24, 25, 3, 'alex', 0, 10, 10, '2024-01-31 15:34:00', '2024-01-31 15:37:00', 10.00, 'Indoor'),
(39, 'test', 22, 21, 0, '', 0, 10, 10, '2024-01-31 15:37:00', '2024-01-31 15:33:00', 10.00, 'Guard'),
(40, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 15:40:00', '2024-01-31 15:42:00', 10.00, 'Indoor'),
(41, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 15:48:00', '2024-01-31 15:47:00', 10.00, 'CCTV'),
(42, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 15:57:00', '2024-01-31 20:00:00', 10.00, 'Indoor'),
(43, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 14:03:00', '2024-01-31 16:05:00', 10.00, 'Guard,Indoor'),
(44, 'test', 10, 10, 3, 'alex', 0, 10, 10, '2024-01-31 16:09:00', '2024-01-31 20:14:00', 10.00, 'CCTV'),
(45, '10', 20, 20, 3, 'alex', 0, 10, 10, '2024-01-31 16:13:00', '2024-01-31 21:18:00', 10.00, 'Guard'),
(46, '10', 55, 55, 3, 'alex', 0, 10, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10.00, 'Guard'),
(47, '10', 12, 24, 3, 'alex', 0, 10, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10.00, 'CCTV,Guard,Indoor'),
(48, '10', 10, 111, 3, 'alex', 0, 10, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10.00, ''),
(49, 'test', 111, 111, 3, 'alex', 0, 10, 10, '2024-01-31 18:46:00', '2024-01-31 21:46:00', 10.00, ''),
(50, 'test', 10, 10, 3, 'alex', 0, 10, 10, '2024-01-31 16:50:00', '2024-01-31 22:47:00', 10.00, ''),
(51, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 16:55:00', '2024-01-31 22:52:00', 10.00, ''),
(52, 'test', 23.7732, 90.4004, 3, 'alex', 0, 10, 10, '2024-01-31 16:56:00', '2024-01-31 23:53:00', 10.00, ''),
(53, 'alex', 24.7502, 91.4397, 3, 'alex', 0, 10, 10, '2024-02-01 22:55:00', '2024-02-01 23:59:00', 10.00, 'CCTV'),
(54, 'ewu', 23.7685, 90.4229, 3, 'alex', 0, 50, 50, '2024-02-01 22:55:00', '2024-02-01 23:57:00', 50.00, 'CCTV,Guard,Indoor'),
(55, 'house-1,road-1,Block-A,Banasree', 23.7507, 90.4408, 3, 'alex', 1714905666, 10, 5, '2024-02-04 17:36:00', '2024-02-04 22:36:00', 25.00, 'CCTV,Guard,Indoor'),
(56, 'testNew', 23.7515, 90.4408, 3, 'alex', 1714905666, 10, 10, '2024-02-04 21:05:00', '2024-02-04 22:06:00', 10.00, 'CCTV'),
(57, 'EWU', 23.76, 90.36, 3, 'alex', 1714905666, 100, 100, '2024-02-05 17:00:00', '2024-02-29 17:00:00', 50.00, 'Guard,Indoor');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expiration_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `token`, `expiration_time`) VALUES
(1, 'fahimxt@gmail.com', '0392235ae7e92e62ff8b32d19a64473d3bcb616097c90776feb6e0325b1b32e1', '2024-02-01 14:45:52'),
(2, '2018-3-60-089@std.ewubd.edu', 'ca7a017b14c22de4181d57f23ba3c16ff361ef2fd30922908c4d6e1ef3db0117', '2024-02-01 14:45:52'),
(5, 'fahimxt@gmail.com', 'acd49135e676980db7982a7eab262e18a45cac2fba10fcafde36455e51bcca33', '2024-02-01 14:45:52'),
(6, 'fahimxt@gmail.com', 'ebd50f474d84749ec54a49b9bb6c81b911011d58f2dfadeed228dc238c5a67a4', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `residential_address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nid` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `eth_address` varchar(255) NOT NULL,
  `private_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `dob`, `gender`, `residential_address`, `city`, `zip`, `contact`, `email`, `nid`, `password`, `eth_address`, `private_key`) VALUES
(3, 'alex', '2000-01-07', 'Male', 'Aftabnagar', 'Dhaka', 1219, 1714905666, 'alex@gmail.com', 511394578, '$2y$10$DxIMFA2bKhvqVxXDH6W/p.XP3kFRMTThna5W7G/PwYLUColtezGka', '0x92Faab959201345593042EB6BCF4a1044E492440', '0x04856bcc81d8de51b5e290a6507f00857352265deec6e05200af5f18fdbf1219'),
(4, 'test', '0000-00-00', 'Male', '', '', 0, 0, 'test@gmail.com', 0, '$2y$10$ZlTdPeVGdMeeW2f2/81M8OXvuIFGtQ5SOb.OUSwOBezfZIiPrH88K', '', ''),
(5, 'test', '0000-00-00', 'Male', '', '', 0, 123, 'testt@gmail.com', 0, '$2y$10$VXuLuEWCfqKmVBB1orh7B.APO7qWh4QJc74KdtVsJLCQnVLFlV8A6', '', ''),
(6, 'adam', '0000-00-00', 'Male', '', '', 0, 911, 'adam@gmail.com', 0, '$2y$10$cyPKt8q8n8p0pgZaBJesX.geejzcXAqF6Om3cgquXSxCiocIcpRyG', '', ''),
(7, 'sun', '0000-00-00', 'Male', '', '', 0, 911, 'sun@gmail.com', 0, '$2y$10$/sM/WtkEMsPC/pgRsG87EuLIgMd.ztSBjnOfKhkVvuZPo17FLfcY2', '0x00DC389869F6967211Ee1D0e48dAa9b4f19ebd36', ''),
(8, 'moon', '0000-00-00', 'Male', '', '', 0, 199, 'moon@gmail.com', 0, '$2y$10$4xCBHJkE5oe2BnzP6Q6sOeFyW9yQDDmYSmkRpOFBnuaquxHAv2oCK', '0xB3569076A0e62248B6F83576bc2028450fEd762B', ''),
(9, 'test', '0000-00-00', 'Male', '', '', 0, 0, 'testtt@gmail.com', 0, '$2y$10$8I4pfznnSVpqo3vDVF9guuXhZabGohrHwMwmsuKwZ3eCjVc/uL1Vm', '0xAD8aE5B1Ff4bDf35Ed4Baa3eB26C0964C1c2C2E0', ''),
(10, 'test', '0000-00-00', 'Male', '', '', 0, 911, 'testa@gmail.com', 0, '$2y$10$KMde3W/8V/n64pEAtyN03OlD.K1fRmakWfpQy..8dUyYX42EnwYca', '0x25AaCd5b2bFe202fA5dc986F137e7ecefA95B0e0', ''),
(11, 'MarS', '1991-01-01', 'Male', 'EastWest', 'Dhaka', 1212, 911, 'new@gmail.com', 15654065, '$2y$10$4AyuiFN91DNqdoCICryX0u4Sao0DDjr5yMiohL0FQVDh/XOKSpPoa', '0x00DC389869F6967211Ee1D0e48dAa9b4f19ebd36', ''),
(12, 'MarS', '1991-01-01', 'Male', 'EastWest', 'Dhaka', 1212, 911, 'alex@gmail.com', 15654065, '$2y$10$otGHs6ogXxjcP1yJwpglU..jvuH9.N6sqmAog4w4Pt4oAemfec/su', '0xB3569076A0e62248B6F83576bc2028450fEd762B', ''),
(13, 'MarS', '2000-01-01', 'Male', 'EastWest', 'test', 1212, 911, '0', 15654065, '$2y$10$RYAuRVGQmRtDoO068PW2Ee6if6lCINDWyoEs7c./f9bu5AWfU31ZO', '0xC86Ae564C34cBCBA5Ca570625F2a01460BA76c67', '0x3d25288fb15da640b9874cbfa260aff21ede8d957d9aeafc094e7741d0114349'),
(14, 'eth', '1990-01-01', 'Male', 'eth', 'eth', 123, 123, '0', 123, '$2y$10$FJwUhlTdYQPpBUFiZbipV.g1JWurw8MRAVgoLar7iS.WqjtuW9Lfm', '0x176bCdE0Af4bda655390d7c56573b4563A4ea43C', '0x63c32c81a781ca704cac2c093a8105dbec7e9d816d8cc6e9587b431127b8aebb'),
(15, 'Fahamidul Hasan', '2001-10-07', 'Male', 'E-2,R-3,Banasree', 'Dhaka', 1219, 1313983939, '0', 51139777, '$2y$10$ZENfZVNDyzfhPywD6RCsLeLe/iiJXYpAZxt.fAFmd4smSNA8i5sOW', '0x481Fee6C5871F86734FcAA78c77760360E865595', '0xb4dcbc57044e9b6029cc9de1a32a8e4d8342fefd3c77652b2af568884c9e96c7'),
(16, 'test', '2000-01-01', 'Male', 'EastWest', 'Dhaka', 1212, 911, '0', 15654065, '$2y$10$2LDbAvAmo4MJd8TyPGZ//uRaZx4bZ2kUenysYlldbWRfmFL5lAohC', '0xd04bAb6F4A93F5dc4678dDdb28f0dE43c4AeA0B9', '0x1a39ab6827c47075befe9f1d08a1b8ec7988052dd7ac309478858a6c3bed50db'),
(17, 'test', '2000-01-01', 'Male', 'EastWest', 'Dhaka', 1212, 911, '0', 15654065, '$2y$10$pzkX3UeNw3C45wkoFmIpYe.Q10la7tZKnVyuNg6aKT2bUmSHf88bO', '0x70d15E1c092391e348D9F30b38E84C9Ac96a5c4c', '0x50f7c5cac6792747ed48310071b61be3de8aa4780d8cf4033cf6af5854854efa'),
(18, 'test', '2000-01-01', 'Male', 'EastWest', 'Dhaka', 1212, 911, '0', 15654065, '$2y$10$.xmM87mTJZ0IjhijLJYrpeIBMxnUMXC4wwWE6Gdu6Rh9u9Z0.VwBu', '0x2136d224d86E809e77F8DDB5074b0D93c671277F', '0xee30cfb01dc5b0a881cdcc70725a7dbba2d057bb563428f61d64d6a6531ec01e'),
(19, 'test', '2000-01-01', 'Male', 'EastWest', 'Dhaka', 1212, 911, 'testingEmail@gmail.com', 15654065, '$2y$10$.ny/olmRhmF.HQsB1hLMMep4E2xyxhUnmKvOiFfXeOwcJ9JUha7PC', '0x4c38116fC3333514Ce40E5BF02fB58d63C888908', '0xfa1297b2f8d4ecd27bf9cc91b6c052d39b8ed8798381b9183b0f0ee9020ca4b7'),
(20, 'fahimxt@gmail.com', '2001-10-07', 'Male', 'E-2,R-3,Banasree', 'Dhaka', 1219, 1313983939, 'fahimxt@gmail.com', 51139777, '$2y$10$Pp5lQlrW.uHYZ1klcLOBveDqZsd2PkFnIOsM6fiYQlkgA1XC45jmq', '0x769efcD0D2881a0192ADb5e53CEB16a03462D1C3', '0x036adc9b4fc50f7367bc56981f8d173851ddadc08ebeb21dc6872886eeb020b4'),
(21, 'Fahamidul Hasan', '2001-01-07', 'Male', 'E-2,R-3,Banasree', 'Dhaka', 1219, 1313983939, '2018-3-60-089@std.ewubd.edu', 51139777, '$2y$10$dUJ5wS2ZkC4XO2Vg8/5q.eUyKtf.aaemNjkktCvkNFR3SNXT8qgfe', '0x4D314aD828d5C96a20C9bC3e7D7B9cFDC02e1867', '0xe6f9ff1625bdf662f04848706f3cbae788c3a27d4e6265d73c78ff8826a0acf0'),
(22, 'admin', '1998-07-10', 'Male', 'Banasree', 'Dhaka', 1219, 1313983939, 'admin@gmail.com', 2147483647, '$2y$10$mFh8OW/X2xq8RWAAMnvDoO3V9bhaxBPWsiO1FQ4N4cKgrRLodpJD2', '0xF5db4bd5B2B45d3e37f0e4dF882Ac2c59B01fBE5', '0xa94920f6e2923d1c4e7f02d8c8e9df8e3439e61d8b66c58b6e9522491b2565aa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `space_id` (`space_id`);

--
-- Indexes for table `parking_spaces`
--
ALTER TABLE `parking_spaces`
  ADD PRIMARY KEY (`space_id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `parking_spaces`
--
ALTER TABLE `parking_spaces`
  MODIFY `space_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`space_id`) REFERENCES `parking_spaces` (`space_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
