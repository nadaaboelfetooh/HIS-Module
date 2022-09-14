-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 04:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'nada', 'naboelfetooh@gmail.com', '01023047859', 'banha', '0', NULL, '$2y$10$1Il7.yCNqcJgzXGBmQpIzOR0VlaS8W390zg.YWWA3.pxDFg5SVf..', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 19:47:38', '2022-09-06 19:47:38'),
(2, 'admin', 'admin@gmail.com', '01232478686', 'banha', '1', NULL, '$2y$10$UHkZ4klz4cCmoCCIktR.m.vMBnUFkYqns3KHVqFD48G/C5JFbnINm', NULL, NULL, NULL, 'v2CrQymdMdTrCwVX2dgsmdLH27NqVbiXqFjgTHbQevAscXJ3gStnCkzGCVfC', NULL, NULL, '2022-09-06 19:49:42', '2022-09-06 19:49:42'),
(3, 'user', 'user@gmail.com', '01234545343', 'cairo', '0', NULL, '$2y$10$TtbPe2hUYyU1vdAXtrUoWun.K3kJoO6TAP8KD0ukw5.dJFZXwr.w2', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 20:37:28', '2022-09-06 20:37:28'),
(4, 'Heba', 'gfgfgh@gmail.com', '0101237252', 'benha', '0', NULL, '$2y$10$UuDtY7Kfit4dJdE5Lz17xu4eTp3MbeX6qsUpkLm97cUAuV5SD5yQa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 20:25:56', '2022-09-09 20:25:56'),
(5, 'Nouran', 'nouransamy243@gmail.com', '01026268501', 'benha', '0', NULL, '$2y$10$00GFU9MgEE247CRzSnSCfOcdHbSZT6dSrYkb1LNRwLHm/tRuLJo9y', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-10 11:58:34', '2022-09-10 11:58:34'),
(6, 'menna', 'zheba37@gmail.com', '01073196398', 'benha', '0', NULL, '$2y$10$mEC2Ii/zqTYK53o67pHKseYQfiPOZrTL7fWxkGlVENBTEmGgwTD/q', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 17:59:46', '2022-09-13 17:59:46'),
(7, 'noha', 'thoht.he.zheba@gmail.com', '01062498566', 'benha', '0', NULL, '$2y$10$f5yTKlY/.UFUhg23.0OcjeT1LGnOJtt7dm/EYf2ehJ4RJYuloDoka', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-13 18:25:00', '2022-09-13 18:25:00');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
