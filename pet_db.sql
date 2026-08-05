-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2026 at 08:54 AM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoption_requests`
--

CREATE TABLE `adoption_requests` (
  `id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `pet_name` varchar(100) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `home_type` varchar(50) DEFAULT NULL,
  `other_pets` varchar(50) DEFAULT NULL,
  `children` varchar(50) DEFAULT NULL,
  `reason` text,
  `experience` text,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `user_id` int(11) DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adoption_requests`
--

INSERT INTO `adoption_requests` (`id`, `pet_id`, `pet_name`, `fname`, `lname`, `email`, `phone`, `address`, `home_type`, `other_pets`, `children`, `reason`, `experience`, `status`, `user_id`, `request_date`, `updated_at`) VALUES
(3, 5, 'simsim', 'tooba', 'nadeem', 'tooba@gmail.com', '0325139862', 'gt 11 road 3', 'House with Yard', 'No', 'No children', 'to gain experience', 'nope', 'approved', 5, '2026-05-03 20:33:58', '2026-05-04 09:12:30'),
(4, 6, '', 'Tooba', 'Nadeem', 'tooba@gmail.com', '12345678912', 'GT road', 'House without Yard', 'No', 'No children', 'to gain experience', 'nope', 'rejected', 5, '2026-05-03 20:55:24', '2026-05-04 05:03:36'),
(5, 5, 'simsim', 'Nayab', '23F-3015', 'nayabmaryam40@gmail.com', '+923154613838', 'Darul yamen Garbi Halka Saadat House No 6/18', 'House without Yard', 'No', 'No children', 'lonely', 'no', 'approved', 3, '2026-05-04 09:37:45', '2026-05-04 09:41:51'),
(6, 7, 'xiaxia', 'Nayab', 'Maryam', 'f233015@cfd.nu.edu.pk', '+923154613838', 'Darul yamen Garbi Halka Saadat House No 6/18', 'House with Yard', 'No', 'No children', 'lonely', 'nope', 'approved', 3, '2026-05-04 09:56:49', '2026-05-04 09:58:07'),
(7, 3, 'caocao', 'Nayab', 'Maryam', 'f233015@cfd.nu.edu.pk', '12345678923', 'GT 11 Street 4', 'Apartment', 'No', 'Teenagers', 'just wanted', 'no', 'pending', 3, '2026-06-26 08:34:32', '2026-06-26 08:34:32'),
(8, 8, 'buddy', 'Nayab', '23F-3015', 'nayabmaryam40@gmail.com', '+923154613838', 'Darul yamen Garbi Halka Saadat House No 6/18', 'House with Yard', 'Yes – Cats', 'No children', 'for someone to care', 'yes i had ctas', 'pending', 3, '2026-06-26 12:51:43', '2026-06-26 12:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` enum('adopter','shelter-staff','admin') NOT NULL,
  `type` enum('success','info','warning','error') DEFAULT 'info',
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `role`, `type`, `title`, `message`, `is_read`, `created_at`) VALUES
(1, 3, 'adopter', 'success', 'Test Notification', 'This is a test message!', 0, '2026-06-26 08:32:47'),
(2, 1, 'admin', 'info', 'New Adoption Application', 'Nayab 23F-3015 applied for buddy', 1, '2026-06-26 12:51:43'),
(3, 2, 'shelter-staff', 'info', 'New Adoption Application', 'Nayab 23F-3015 applied for buddy', 0, '2026-06-26 12:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `health_status` varchar(100) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `availability` enum('available','pending','adopted') DEFAULT 'available',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `name`, `type`, `breed`, `age`, `gender`, `health_status`, `description`, `image_url`, `availability`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'caocao', 'Cat', 'Swith Golden', '6 year', 'Female', 'Vaccinated', 'lovely', 'uploads/pets/cat.webp', 'available', 2, '2026-04-26 11:54:30', '2026-05-01 05:46:23'),
(5, 'simsim', 'Bird', 'Swith Golden', '6 year', 'Male', 'Vaccinated', 'colorful and lovely.cheerful and takative', 'uploads/pets/pet_1777649627_69f4c7db25805.jfif', 'available', 2, '2026-05-01 15:33:47', '2026-05-01 15:33:47'),
(6, 'xiabao', 'Dog', 'Golden Retriver', '6 months', 'Male', 'Vaccinated', 'white,lovely eyes', 'uploads/pets/pet_1777652977_69f4d4f1733e6.jfif', 'available', 2, '2026-05-01 16:29:37', '2026-05-01 16:29:37'),
(7, 'xiaxia', 'Rabbit', 'golden retriver', '9 year', 'Female', 'Vaccinated', 'lovely', 'uploads/pets/pet_1777887615_69f8697f6937f.jfif', 'available', 2, '2026-05-04 09:40:15', '2026-05-04 09:40:15'),
(8, 'buddy', 'Rabbit', 'golden retriver', '4 year', 'Male', 'Vaccinated', 'lovely,skiny', 'uploads/pets/pet_1777888755_69f86df32b95b.jfif', 'available', 2, '2026-05-04 09:59:15', '2026-05-04 09:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `role` text NOT NULL COMMENT 'Adopter OR Shelter Staff',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fname`, `lname`, `phone`, `address`, `role`, `created_at`) VALUES
(1, 'admin@gmail.com', '123', '', '', 0, '', 'Admin', '2026-05-04 04:35:07'),
(2, 'minu@gmail.com', 'minu123', 'minahil', 'fatima', 3234129556, '332-A peoples colony number 1', 'shelter-staff', '2026-05-04 04:35:07'),
(3, 'nayab@gmail.com', 'nm123', 'Nayab', 'Maryam', 3152623838, 'Street 5 H/NO 6/14', 'adopter', '2026-05-04 04:35:07'),
(4, 'admin@gmail.com', 'admin123', 'admin', '', 12345678910, 'admin office', 'admin', '2026-05-04 04:35:07'),
(5, 'tooba@gmail.com', 'tooba123', 'tooba', 'nadeem', 3154671382, 'gt 12 road 3', 'adopter', '2026-05-04 04:35:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_id` (`pet_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  ADD CONSTRAINT `adoption_requests_ibfk_1` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `adoption_requests_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
