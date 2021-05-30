-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2021 at 09:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Aazd Khan', 'azad@gmail.com', '$2y$10$Oa.f2dveei3HT/IBXOgVtOvI7txsx2T5SvW..HRtqxkM7ydbECH8K', '2021-02-25 01:13:40', '2021-02-25 01:13:40'),
(2, 'Alamin', 'alaminmia.cse@gmail.com', '$2y$10$zVQYC2rYe4jd564ErClameHp2JVisCLdNAIenV0GLQ38HwO7mEfZa', '2021-02-27 04:41:13', '2021-02-27 04:41:13'),
(3, 'Aazd Khan', 'mhazad0000@gmail.com', '$2y$10$jNV7cO0rzeJv..tQP70ld.OjLrnYpKzynJNhzYkHLlqZlyYCODhEC', '2021-02-27 05:05:32', '2021-02-27 05:05:32'),
(4, 'David', 'david@gmail.com', '$2y$10$vDEOrL3zp2PONBxf9Qxi9O8OjJqe.RHN.BOWbFhiCX8.2k7YdQJli', '2021-02-27 21:09:36', '2021-02-27 21:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_attendances`
--

CREATE TABLE `user_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `punch_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `punch_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_attendances`
--

INSERT INTO `user_attendances` (`id`, `name`, `user_id`, `type`, `punch_status`, `date`, `attendance_status`, `punch_time`, `created_at`, `updated_at`) VALUES
(1, 'Aazd Khan', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-25 01:13:40', '2021-02-25 01:13:40'),
(2, 'Alamin', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-27 04:41:13', '2021-02-27 04:41:13'),
(3, 'Aazd Khan', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-27 05:05:32', '2021-02-27 05:05:32'),
(4, 'David', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-27 21:09:36', '2021-02-27 21:09:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_attendances`
--
ALTER TABLE `user_attendances`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_attendances`
--
ALTER TABLE `user_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
