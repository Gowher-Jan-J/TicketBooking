-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2024 at 01:22 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tickets`
--

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `number_of_tickets` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `event_id`, `user_id`, `number_of_tickets`, `price`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 102, 1, '7', '7000', 'active', '2024-05-29 07:38:33', '2024-05-29 07:38:33'),
(2, 123, 2, '4', '4500', 'active', '2024-05-29 07:39:03', '2024-05-29 07:39:03'),
(3, 125, 1, '2', '1000', 'active', '2024-05-29 07:49:49', '2024-05-29 07:49:49'),
(4, 108, 1, '7', '7000', 'active', '2024-05-29 07:49:59', '2024-05-29 07:49:59'),
(5, 105, 2, '2\r\n', '1000', 'active', '2024-05-29 07:50:19', '2024-05-29 07:50:19'),
(6, 111, 2, '1', '500', 'active', '2024-05-29 07:51:22', '2024-05-29 07:51:22'),
(7, 123, 1, '3', '100', 'active', '2024-05-29 11:19:11', '2024-05-29 11:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'kowsi', 'kowsi@gmail.com', '9080855615', 'U2FsdGVkX1801/PY/lq0f+jFgwiFeB1QCntfgBrSgys=', 'active', '2024-05-29 05:14:53', '2024-05-29 05:14:53'),
(2, 'abinaya', 'kowsi@gmail.com', '9080855617', 'U2FsdGVkX18F9sSEFEKL1Am+d72KVOV9Tm9gG3qJjuU=', 'active', '2024-05-29 05:18:45', '2024-05-29 05:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `userAuthentication`
--

CREATE TABLE `userAuthentication` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` text NOT NULL,
  `ipv4` text NOT NULL,
  `userAgent` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userAuthentication`
--

INSERT INTO `userAuthentication` (`id`, `token`, `ipv4`, `userAgent`, `createdAt`, `updatedAt`) VALUES
(1, 'U2FsdGVkX18LiPbYjlv1QvCi4EFvH3VE48ff7x3x6IFgmDaey88u5LBovzll1JTqVKVfb5d3iubAIDm1xB/y21PjKRRnjxGQvFU2KOCvIT37EGDHy3E8zAonAM8IzdKJVvy6YIBGsVr15Aj7O5Zc7ePXDr9asrF8C3abmFxlgTPUTTtoRN5DTueUSeikWsjelJ1a1DfCDgmaz83iQXokKUojIWfmAq0+0g6Rm2w7Z+8=', '::1', 'PostmanRuntime/7.39.0', '2024-05-29 05:16:37', '2024-05-29 05:16:37'),
(2, 'U2FsdGVkX1/Sz2W8mL+dWM4fNOga87pxyDaKUEv1xta+JweHiqwXCh4nK9zkArN1+sm9omfPy4h7OWEfeaniuCT/+zLb3405hk4PNwGV1mA2lj3Kec8Z9X+/PaEktsX91IX6K20U/LMH1DxMcLPxhCEr4QdNEvxks0tf0iWg5eNHx5XHDidg27n1jTtFNVYcgeHC2uEyNkO5bHsivLYtoKTdAYJW+2KA9U9MO8fykV8=', '::1', 'PostmanRuntime/7.39.0', '2024-05-29 05:18:53', '2024-05-29 05:18:53'),
(3, 'U2FsdGVkX1+TjuRtBGUXbo8fnXbrO7ReXSl+a3JwLHmtoQdklrbg8s2P2ljN4Dab70z5DYwv+W5aiRNwjBpuqMNw8jB3Eru83RBmG3QqefneGsdMOjXJgOfoxvlWVjRoLV/G8dbCN+U0Q15M0EAxJyGHi2a752xK4GpjiQLF4CQ4+AjjXLZUeg6VcaEGZYRNDu2rlhOoHzaU2lTOQ50T+NxXmJoZf8f+3xagfbya3Go=', '::1', 'PostmanRuntime/7.39.0', '2024-05-29 06:48:12', '2024-05-29 06:48:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userAuthentication`
--
ALTER TABLE `userAuthentication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userAuthentication`
--
ALTER TABLE `userAuthentication`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
