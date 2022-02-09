-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2022 at 02:55 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bunch`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mohamed', 'm@gmail.com', NULL, '7634578346', '$2y$10$Dfrvq3PHOAq9q9gPFvfuY.Beg1ztEM3p65C8i4/JsV/PRLgaH8huG', 'DCFYpSSAawizZVuSNVXHpGXVTqY8kvzWoHZHnV989qlfBbwpUJHtfk6h686K', NULL, NULL, NULL),
(2, 'msbri', 'msbri@g.com', 'uploads/users/5ba634ae29319.jpeg', '874583478', '$2y$10$IoTLZFMoWA2q2GZ7ZeKP5.6zQVl1oNKkGpsv5ks7fQx1d04qjca0K', NULL, '2018-09-22 17:25:18', '2018-09-22 17:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`email`, `token`, `created_at`) VALUES
('m@gmail.com', '$2y$10$1hT.tT7mwAOnTD/eNxeSqOXeyc6WWEk7ihSiWo37dLx8R4m.PCUi.', '2018-05-22 13:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` enum('home_top','home_middle','home_down','sale_page','product_page') COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `order_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `image`, `link`, `position`, `status`, `order_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/ads/5b826f8c2868f.jpg', NULL, NULL, 'not_active', NULL, '2018-07-15 06:01:30', '2018-09-18 12:59:40', '2018-09-18 12:59:40'),
(2, 'uploads/ads/5b826fc6e3931.jpg', NULL, NULL, 'not_active', NULL, '2018-08-26 14:15:50', '2018-09-18 12:59:40', '2018-09-18 12:59:40'),
(3, 'uploads/ads/5ba0b092e95e9.jpg', NULL, NULL, 'active', NULL, '2018-09-18 13:00:18', '2018-09-20 18:00:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `id` int(11) NOT NULL,
  `ads_id` int(11) NOT NULL,
  `locale` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_translations`
--

INSERT INTO `ads_translations` (`id`, `ads_id`, `locale`, `descriptions`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Branding', '2018-07-15 06:01:30', '2018-08-26 14:14:52', NULL),
(2, 1, 'ar', 'العلامات التجارية', '2018-07-15 06:01:30', '2018-08-26 14:14:52', NULL),
(3, 2, 'en', 'social media', '2018-08-26 14:15:50', '2018-08-26 14:15:50', NULL),
(4, 2, 'ar', 'السوشيال ميديا', '2018-08-26 14:15:50', '2018-08-26 14:15:50', NULL),
(5, 3, 'en', 'Description En *', '2018-09-18 13:00:18', '2018-09-18 13:00:18', NULL),
(6, 3, 'ar', 'التافصيل بالعربي', '2018-09-18 13:00:18', '2018-09-18 13:00:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advertisement_us`
--

CREATE TABLE `advertisement_us` (
  `id` int(11) NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advertisement_us`
--

INSERT INTO `advertisement_us` (`id`, `image`, `fullname`, `email`, `mobile`, `comment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/images/AdvertisementUs//F4k9AutgpskTGQKo6qrVtHAq0DCtuY1QJRDmyXul.jpeg', 'flayer', '1flayer@hotail.com', '56895652', 'Advertisement With Us1', '2018-01-24 12:45:33', '2018-02-13 14:32:52', NULL),
(2, 'uploads/images/AdvertisementUs//QApCY2vFcDyCVziHDngx3YqVrqDqFlGn12kA2cCf.jpeg', 'flayer App', '2flayer@hotail.com', '55505151', 'Advertisement With Us2', '2018-01-24 12:46:04', '2018-01-24 12:46:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attatchments`
--

CREATE TABLE `attatchments` (
  `id` int(11) NOT NULL,
  `attatchmentable_id` int(11) NOT NULL,
  `attatchmentable_type` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attatchments`
--

INSERT INTO `attatchments` (`id`, `attatchmentable_id`, `attatchmentable_type`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 'App\\Models\\Product', 'uploads/products/5ba1fb54cc213.jpg', '2018-09-19 12:31:32', '2018-09-19 12:31:32', NULL),
(2, 2, 'App\\Models\\Product', 'uploads/products/5ba2293b2e7cf.jpg', '2018-09-19 15:47:23', '2018-09-19 15:47:23', NULL),
(3, 10, 'App\\Models\\Product', 'uploads/products/5ba22a22e04de.jpg', '2018-09-19 15:51:14', '2018-09-19 15:51:14', NULL),
(4, 11, 'App\\Models\\Product', 'uploads/products/5ba22a7f2ec7c.jpg', '2018-09-19 15:52:47', '2018-09-19 15:52:47', NULL),
(5, 8, 'App\\Models\\Company', 'uploads/company/5ba232f3dc4d2.jpg', '2018-09-19 16:28:51', '2018-09-19 16:28:51', NULL),
(6, 8, 'App\\Models\\Company', 'uploads/company/5ba232f3dce22.jpg', '2018-09-19 16:28:51', '2018-09-19 16:28:51', NULL),
(7, 5, 'App\\Models\\Service', 'uploads/services/5ba233b57bd04.jpg', '2018-09-19 16:32:05', '2018-09-19 16:32:05', NULL),
(8, 5, 'App\\Models\\Service', 'uploads/services/5ba233b57c752.jpg', '2018-09-19 16:32:05', '2018-09-19 16:32:05', NULL),
(9, 6, 'App\\Models\\Service', 'uploads/services/5ba2340e0fb27.jpg', '2018-09-19 16:33:34', '2018-09-19 16:33:34', NULL),
(10, 6, 'App\\Models\\Service', 'uploads/services/5ba2340e1023d.jpg', '2018-09-19 16:33:34', '2018-09-19 16:33:34', NULL),
(11, 7, 'App\\Models\\Service', 'uploads/services/5ba23744716b9.jpg', '2018-09-19 16:47:16', '2018-09-19 16:47:16', NULL),
(12, 9, 'App\\Models\\Company', 'uploads/company/5ba5dd589979f.png', '2018-09-22 11:12:40', '2018-09-22 11:12:40', NULL),
(13, 10, 'App\\Models\\Company', 'uploads/company/5ba5e1612204e.jpg', '2018-09-22 11:29:53', '2018-09-22 11:29:53', NULL),
(14, 10, 'App\\Models\\Company', 'uploads/company/5ba5e161229a5.jpg', '2018-09-22 11:29:53', '2018-09-22 11:29:53', NULL),
(15, 11, 'App\\Models\\Company', 'uploads/company/5ba5e44f3e979.png', '2018-09-22 11:42:23', '2018-09-22 11:42:23', NULL),
(16, 11, 'App\\Models\\Company', 'uploads/company/5ba5e44f3fdc8.png', '2018-09-22 11:42:23', '2018-09-22 11:42:23', NULL),
(17, 12, 'App\\Models\\Product', 'uploads/products/5ba5e51892f30.png', '2018-09-22 11:45:44', '2018-09-22 11:45:44', NULL),
(18, 13, 'App\\Models\\Product', 'uploads/products/5ba5e54b949be.png', '2018-09-22 11:46:35', '2018-09-22 11:46:35', NULL),
(19, 14, 'App\\Models\\Product', 'uploads/products/5ba5e5a34d9fd.png', '2018-09-22 11:48:03', '2018-09-22 11:48:03', NULL),
(20, 15, 'App\\Models\\Product', 'uploads/products/5ba5e5e8b7450.png', '2018-09-22 11:49:12', '2018-09-22 11:49:12', NULL),
(21, 16, 'App\\Models\\Product', 'uploads/products/5ba5e6176211b.png', '2018-09-22 11:49:59', '2018-09-22 11:49:59', NULL),
(22, 17, 'App\\Models\\Product', 'uploads/products/5ba5e64a4fb2c.png', '2018-09-22 11:50:50', '2018-09-22 11:50:50', NULL),
(23, 12, 'App\\Models\\Company', 'uploads/company/5ba5eb409de16.jpg', '2018-09-22 12:12:00', '2018-09-22 12:12:00', NULL),
(24, 13, 'App\\Models\\Company', 'uploads/company/5ba5ec5ec2b95.jpg', '2018-09-22 12:16:46', '2018-09-22 12:16:46', NULL),
(25, 8, 'App\\Models\\Service', 'uploads/services/5ba5ecb801b2a.jpg', '2018-09-22 12:18:16', '2018-09-22 12:18:16', NULL),
(26, 8, 'App\\Models\\Service', 'uploads/services/5ba5ecb802439.jpg', '2018-09-22 12:18:16', '2018-09-22 12:18:16', NULL),
(27, 9, 'App\\Models\\Service', 'uploads/services/5ba5ed4b0d66e.jpg', '2018-09-22 12:20:43', '2018-09-22 12:20:43', NULL),
(28, 9, 'App\\Models\\Service', 'uploads/services/5ba5ed4b0de73.jpg', '2018-09-22 12:20:43', '2018-09-22 12:20:43', NULL),
(29, 10, 'App\\Models\\Service', 'uploads/services/5ba5edc2eab3c.jpg', '2018-09-22 12:22:42', '2018-09-22 12:22:42', NULL),
(30, 10, 'App\\Models\\Service', 'uploads/services/5ba5edc2eb2f4.jpg', '2018-09-22 12:22:42', '2018-09-22 12:22:42', NULL),
(31, 10, 'App\\Models\\Service', 'uploads/services/5ba5edc2eb8ee.jpg', '2018-09-22 12:22:42', '2018-09-22 12:22:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `time` time NOT NULL,
  `payment_status` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `company_id`, `service_id`, `from_date`, `to_date`, `time`, `payment_status`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 1, '2018-08-05', '2018-08-15', '00:00:00', 0, 0, '2018-08-05 12:08:23', '2018-09-22 10:44:56', '2018-09-22 10:44:56'),
(2, 2, 3, 1, '2018-08-05', '2018-08-15', '00:00:00', 0, 0, '2018-08-05 12:08:47', '2018-09-22 10:44:56', '2018-09-22 10:44:56'),
(3, 2, 1, 1, '2018-08-05', '2018-08-15', '00:00:00', 0, 1, '2018-08-05 12:09:47', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(4, 2, 3, 1, '2018-08-05', '2018-08-15', '00:00:00', 0, 0, '2018-08-05 12:11:04', '2018-09-22 10:44:56', '2018-09-22 10:44:56'),
(5, 2, 3, 1, '2018-08-05', '2018-08-15', '00:00:00', 0, 1, '2018-08-05 12:11:15', '2018-08-07 12:01:50', '2018-08-07 12:01:50'),
(6, 2, 3, 1, '2018-08-05', '2018-08-15', '07:08:20', 1, 0, '2018-08-12 11:54:23', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(7, 2, 3, 1, '2018-08-05', '2018-08-15', '07:08:20', 1, 0, '2018-08-12 11:54:50', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(8, 2, 3, 1, '2018-08-05', '2018-08-15', '07:08:20', 2, 0, '2018-08-12 11:56:31', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(9, 4, 3, 1, '2018-08-16', '2018-08-18', '08:50:51', 1, 0, '2018-08-12 13:50:57', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(10, 4, 3, 1, '2018-08-19', '2018-08-19', '08:59:45', 1, 0, '2018-08-12 13:59:51', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(11, 4, 3, 1, '2018-08-20', '2018-08-20', '10:00:08', 2, 0, '2018-08-12 14:00:16', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(12, 4, 3, 1, '2018-09-11', '2018-09-17', '04:01:57', 2, 0, '2018-08-12 14:02:06', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(13, 5, 3, 1, '2018-08-26', '2018-08-28', '16:48:55', 1, 0, '2018-08-26 16:49:07', '2018-09-22 10:44:42', '2018-09-22 10:44:42'),
(14, 8, 3, 1, '2018-08-31', '2018-08-31', '14:56:08', 1, 0, '2018-08-26 16:56:15', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(15, 7, 3, 1, '2018-08-05', '2018-08-15', '07:08:20', 2, 0, '2018-08-28 14:47:35', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(16, 7, 3, 1, '2018-08-05', '2018-08-15', '07:08:00', 2, 0, '2018-08-28 14:47:43', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(17, 7, 3, 1, '2018-08-05', '2018-08-15', '07:08:00', 1, 0, '2018-08-28 14:47:51', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(18, 7, 3, 1, '2018-08-08', '2018-08-16', '12:56:38', 2, 0, '2018-08-28 14:56:53', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(19, 7, 3, 1, '2018-08-08', '2018-08-15', '13:05:04', 1, 0, '2018-08-28 15:05:17', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(20, 9, 3, 1, '2018-09-13', '2018-09-20', '11:42:13', 1, 0, '2018-09-05 10:43:02', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(21, 9, 3, 1, '2018-09-27', '2018-09-27', '04:21:08', 1, 0, '2018-09-05 10:43:14', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(22, 7, 3, 1, '2018-09-11', '2018-09-27', '13:50:00', 1, 0, '2018-09-05 15:51:16', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(23, 7, 3, 1, '2018-09-04', '2018-09-19', '13:53:11', 1, 0, '2018-09-05 15:53:19', '2018-09-22 10:44:18', '2018-09-22 10:44:18'),
(24, 8, 8, 5, '2018-10-05', '2018-10-05', '04:20:05', 1, 1, '2018-09-19 16:39:21', '2018-09-19 16:41:03', NULL),
(25, 8, 8, 6, '2018-10-05', '2018-10-05', '15:42:57', 1, 1, '2018-09-19 16:43:10', '2018-09-19 16:43:41', NULL),
(26, 12, 8, 6, '2018-09-20', '2018-09-20', '16:18:24', 1, 1, '2018-09-19 18:18:26', '2018-09-19 18:18:45', NULL),
(27, 8, 12, 10, '2018-09-30', '2018-09-30', '10:45:04', 1, 0, '2018-09-22 12:45:10', '2018-09-22 12:45:10', NULL),
(28, 14, 13, 7, '2018-08-28', '2018-09-28', '15:55:15', 1, 0, '2018-09-24 17:55:50', '2018-09-24 17:55:50', NULL),
(29, 14, 13, 7, '2018-09-30', '2018-10-05', '15:57:19', 1, 1, '2018-09-24 17:57:05', '2018-09-24 17:58:32', NULL),
(30, 14, 12, 9, '2018-09-26', '2018-09-26', '19:00:41', 1, 1, '2018-09-24 18:02:37', '2018-09-24 18:03:25', NULL),
(31, 8, 13, 7, '2018-10-23', '2018-10-25', '16:59:37', 1, 0, '2018-09-25 18:59:54', '2018-09-25 18:59:54', NULL),
(32, 8, 13, 7, '2018-10-31', '2018-11-10', '17:00:02', 1, 0, '2018-09-25 19:00:29', '2018-09-25 19:00:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `email` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `specalization` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `cv` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `fullname`, `mobile`, `comment`, `created_at`, `updated_at`, `deleted_at`, `email`, `specalization`, `age`, `nationality`, `cv`) VALUES
(1, 'ffdffd', '23455343456', 'rfrfergerg', '2018-09-06 11:17:00', '2018-09-06 14:35:54', '2018-09-06 14:35:54', 'm@gmail.com', 'dsvsdv', '45', 'kw', 'uploads/cv/5b90c65c29722.pdf'),
(2, 'ali', '23455343456', 'fwefwefgerwgrg', '2018-09-06 14:37:47', '2018-09-06 14:37:47', NULL, 'test@test.test', 'dsvsdv', '45', 'kw', 'uploads/cv/5b90f56bd8f88.pdf'),
(3, 'Test', '123654789', 'safdsg', '2018-09-09 14:26:58', '2018-09-09 14:26:58', NULL, 'test.linekw@gmail.com', 'sasfas', 'sfdsfgsd', 'kw', 'uploads/cv/5b94e762e5f9f.jpg'),
(4, 'mohamed', '23455343456', 'frfferfegreg', '2018-09-10 11:36:22', '2018-09-10 11:36:22', NULL, 'm@gmail.com', 'dsvsdv', '45', 'kw', 'uploads/cv/5b9610e651a05.jpeg'),
(5, 'rami', '7787878858', 'hhhhhhhhhhhhh', '2018-09-10 11:40:12', '2018-09-10 11:40:12', NULL, 'rami@g.com', 'cars', '45', 'kw', 'uploads/cv/5b9611ccd0127.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quentity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `total_price` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `company_id`, `product_id`, `quentity`, `price`, `color`, `size`, `total_price`, `note`, `status`, `created_at`, `updated_at`) VALUES
(34, 5, 1, 9, 1, 34, '#f7ff61', 3, '34', NULL, 0, '2018-08-30 16:28:06', '2018-08-30 16:28:06'),
(48, 9, 1, 1, 2, 45, NULL, NULL, '90', NULL, 0, '2018-09-05 10:30:29', '2018-09-05 10:30:29'),
(47, 9, 1, 1, 2, 45, NULL, NULL, '90', NULL, 0, '2018-09-05 10:30:27', '2018-09-05 10:30:27'),
(45, 9, 1, 1, 1, 45, NULL, NULL, '45', NULL, 0, '2018-09-05 10:29:42', '2018-09-05 10:29:42'),
(46, 9, 1, 1, 1, 45, NULL, NULL, '45', NULL, 0, '2018-09-05 10:30:11', '2018-09-05 10:30:11'),
(49, 9, 1, 8, 1, 34, '#ff6161', 2, '34', NULL, 0, '2018-09-05 16:58:39', '2018-09-05 16:58:39'),
(107, 15, 10, 16, 1, 0, NULL, NULL, '0.321', NULL, 0, '2018-09-25 14:25:58', '2018-09-25 14:25:58'),
(115, 8, 11, 12, 1, 0, '#ff0000', 1, '0.125', NULL, 0, '2018-09-27 12:07:58', '2018-09-27 12:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `logo` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `order_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `section_id`, `logo`, `status`, `order_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'uploads/category/5b4b1bf7006e2.png', 'active', NULL, '2018-07-15 07:03:35', '2018-09-22 10:40:57', '2018-09-22 10:40:57'),
(2, 2, 'uploads/category/5b4b1da0ea75c.jpeg', 'active', NULL, '2018-07-15 07:10:40', '2018-07-15 07:14:22', NULL),
(3, 1, 'uploads/category/5b4f95ab0fed0.jpeg', 'active', NULL, '2018-07-18 16:31:55', '2018-09-22 10:40:52', '2018-09-22 10:40:52'),
(4, 2, 'uploads/category/5b571d62eb8fd.png', 'active', NULL, '2018-07-24 09:36:50', '2018-09-11 20:42:48', NULL),
(5, 3, 'uploads/category/5b5858b58a91a.jpeg', 'active', NULL, '2018-07-25 08:02:13', '2018-09-11 20:42:48', NULL),
(6, 1, 'uploads/category/5b8275e038f93.png', 'active', NULL, '2018-08-26 14:41:52', '2018-09-11 20:42:48', NULL),
(7, 1, 'uploads/category/5b8275f80574a.png', 'active', NULL, '2018-08-26 14:42:16', '2018-09-11 20:42:48', NULL),
(8, 2, 'uploads/category/5b8276147ffaf.png', 'active', NULL, '2018-08-26 14:42:44', '2018-09-11 20:42:48', NULL),
(9, 2, 'uploads/category/5b82762ebeea8.png', 'active', NULL, '2018-08-26 14:43:10', '2018-09-11 20:42:48', NULL),
(10, 2, 'uploads/category/5b8276470e52d.png', 'active', NULL, '2018-08-26 14:43:35', '2018-09-11 20:42:48', NULL),
(11, 1, 'uploads/category/5b82765cdde98.png', 'active', NULL, '2018-08-26 14:43:56', '2018-09-11 20:42:48', NULL),
(12, 4, 'uploads/category/5b82768a0483f.png', 'active', NULL, '2018-08-26 14:44:42', '2018-09-18 13:18:04', NULL),
(13, 4, 'uploads/category/5b8276e725dc9.png', 'active', NULL, '2018-08-26 14:46:15', '2018-09-05 16:31:10', '2018-09-05 16:31:10'),
(14, 3, 'uploads/category/5ba1f00f57c24.png', 'active', NULL, '2018-09-19 11:43:27', '2018-09-19 11:49:33', '2018-09-19 11:49:33'),
(15, 3, 'uploads/category/5ba1f016ac8e6.png', 'active', NULL, '2018-09-19 11:43:34', '2018-09-19 11:43:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Food', '2018-07-15 07:03:35', '2018-07-15 07:03:35', NULL),
(2, 1, 'ar', 'طعام', '2018-07-15 07:03:35', '2018-07-15 07:03:35', NULL),
(3, 2, 'en', 'Clothes', '2018-07-15 07:10:41', '2018-07-15 07:10:41', NULL),
(4, 2, 'ar', 'ملابس', '2018-07-15 07:10:41', '2018-07-15 07:10:41', NULL),
(5, 3, 'en', 'First', '2018-07-18 16:31:55', '2018-07-18 16:31:55', NULL),
(6, 3, 'ar', 'First', '2018-07-18 16:31:55', '2018-07-18 16:31:55', NULL),
(7, 4, 'en', 'Fashing', '2018-07-24 09:36:51', '2018-07-24 09:36:51', NULL),
(8, 4, 'ar', 'Fashing', '2018-07-24 09:36:51', '2018-07-24 09:36:51', NULL),
(9, 5, 'en', 'Food Truck', '2018-07-25 08:02:13', '2018-08-26 14:40:34', NULL),
(10, 5, 'ar', 'سيارات الطعام', '2018-07-25 08:02:13', '2018-08-26 14:40:34', NULL),
(11, 6, 'en', 'Restaurants', '2018-08-26 14:41:52', '2018-08-26 14:41:52', NULL),
(12, 6, 'ar', 'مطاعم', '2018-08-26 14:41:52', '2018-08-26 14:41:52', NULL),
(13, 7, 'en', 'Coffee Shop', '2018-08-26 14:42:16', '2018-09-22 10:57:45', NULL),
(14, 7, 'ar', 'مقاهي', '2018-08-26 14:42:16', '2018-08-26 14:42:16', NULL),
(15, 8, 'en', 'Dress', '2018-08-26 14:42:44', '2018-08-26 14:42:44', NULL),
(16, 8, 'ar', 'ملابس', '2018-08-26 14:42:44', '2018-08-26 14:42:44', NULL),
(17, 9, 'en', 'Makeup', '2018-08-26 14:43:10', '2018-08-26 14:43:10', NULL),
(18, 9, 'ar', 'مكياج', '2018-08-26 14:43:10', '2018-08-26 14:43:10', NULL),
(19, 10, 'en', 'Bags', '2018-08-26 14:43:35', '2018-08-26 14:43:35', NULL),
(20, 10, 'ar', 'حقائب', '2018-08-26 14:43:35', '2018-08-26 14:43:35', NULL),
(21, 11, 'en', 'Bakery', '2018-08-26 14:43:56', '2018-08-26 14:43:56', NULL),
(22, 11, 'ar', 'مخابز', '2018-08-26 14:43:56', '2018-08-26 14:43:56', NULL),
(23, 12, 'en', 'Birthday', '2018-08-26 14:44:42', '2018-08-26 14:44:42', NULL),
(24, 12, 'ar', 'أعياد ميلاد', '2018-08-26 14:44:42', '2018-08-26 14:44:42', NULL),
(25, 13, 'en', 'Wedding', '2018-08-26 14:46:15', '2018-08-26 14:46:15', NULL),
(26, 13, 'ar', 'أعراس', '2018-08-26 14:46:15', '2018-08-26 14:46:15', NULL),
(27, 14, 'en', 'Wedding Planner', '2018-09-19 11:43:27', '2018-09-19 11:43:27', NULL),
(28, 14, 'ar', 'تخطيط حفلات الزفاف', '2018-09-19 11:43:27', '2018-09-19 11:43:27', NULL),
(29, 15, 'en', 'Wedding Planner', '2018-09-19 11:43:34', '2018-09-19 11:43:34', NULL),
(30, 15, 'ar', 'تخطيط حفلات الزفاف', '2018-09-19 11:43:34', '2018-09-19 11:43:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catsizes`
--

CREATE TABLE `catsizes` (
  `id` int(11) NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catsizes`
--

INSERT INTO `catsizes` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'small', '2018-08-06 12:48:07', '2018-08-06 12:48:07', 'active'),
(2, 'medum', '2018-08-06 12:48:16', '2018-08-06 12:48:16', 'active'),
(3, 'large', '2018-08-06 12:48:21', '2018-08-06 12:48:21', 'active'),
(4, 'xL', '2018-08-06 12:48:27', '2018-08-06 12:48:27', 'active'),
(6, 'Family Size', '2018-09-03 12:34:49', '2018-09-03 12:34:49', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `order_by` int(11) NOT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'not_active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `order_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'active', '2018-04-01 03:49:53', '2018-04-03 09:43:33', NULL),
(2, 0, 'active', '2018-04-10 05:06:14', '2018-05-08 12:06:56', '2018-05-08 12:06:56'),
(3, 0, 'active', '2018-05-08 12:07:08', '2018-05-08 14:29:32', NULL),
(4, 0, 'active', '2018-05-08 12:07:22', '2018-05-08 14:29:32', NULL),
(5, 0, 'active', '2018-05-08 12:07:38', '2018-05-08 14:29:32', NULL),
(6, 0, 'active', '2018-05-08 12:07:54', '2018-07-03 17:56:08', NULL),
(7, 0, 'active', '2018-05-08 12:08:07', '2018-09-11 20:47:06', NULL),
(8, 0, 'not_active', '2018-06-06 16:48:43', '2018-06-06 16:49:07', '2018-06-06 16:49:07'),
(9, 0, 'not_active', '2018-06-06 16:49:28', '2018-06-28 16:39:35', '2018-06-28 16:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `locale` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'kuwait', '2018-04-01 03:49:53', '2018-04-01 03:57:18', NULL),
(2, 1, 'ar', 'الكويت', '2018-04-01 03:49:53', '2018-04-01 03:49:53', NULL),
(3, 2, 'en', 'efef', '2018-04-10 05:06:14', '2018-04-10 05:06:14', NULL),
(4, 2, 'ar', 'sfrsf', '2018-04-10 05:06:14', '2018-04-10 05:06:14', NULL),
(5, 3, 'en', 'Hawalli', '2018-05-08 12:07:08', '2018-05-08 12:07:08', NULL),
(6, 3, 'ar', 'حولي', '2018-05-08 12:07:08', '2018-05-08 12:07:08', NULL),
(7, 4, 'en', 'Farwaniya', '2018-05-08 12:07:22', '2018-05-08 12:07:22', NULL),
(8, 4, 'ar', 'الفروانية', '2018-05-08 12:07:22', '2018-05-08 12:07:22', NULL),
(9, 5, 'en', 'Mubarak Al-Kabeer', '2018-05-08 12:07:38', '2018-05-08 12:07:38', NULL),
(10, 5, 'ar', 'مبارك الكبير', '2018-05-08 12:07:38', '2018-05-08 12:07:38', NULL),
(11, 6, 'en', 'Ahmadi', '2018-05-08 12:07:54', '2018-05-08 12:07:54', NULL),
(12, 6, 'ar', 'الأحمدي', '2018-05-08 12:07:54', '2018-05-08 12:07:54', NULL),
(13, 7, 'en', 'Jahra', '2018-05-08 12:08:07', '2018-05-08 12:08:07', NULL),
(14, 7, 'ar', 'الجهراء', '2018-05-08 12:08:07', '2018-05-08 12:08:07', NULL),
(15, 8, 'en', 'Salmiya', '2018-06-06 16:48:43', '2018-06-06 16:48:43', NULL),
(16, 8, 'ar', 'السالمية', '2018-06-06 16:48:43', '2018-06-06 16:48:43', NULL),
(17, 9, 'en', 'Salmiya', '2018-06-06 16:49:28', '2018-06-06 16:49:28', NULL),
(18, 9, 'ar', 'السالمية', '2018-06-06 16:49:28', '2018-06-06 16:49:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `company_id`, `comment`, `created_at`, `updated_at`) VALUES
(3, 4, 1, 'Comment test', '2018-08-08 16:56:32', '2018-08-08 16:56:32'),
(4, 4, 1, 'test', '2018-08-08 16:58:48', '2018-08-08 16:58:48'),
(5, 4, 3, 'test service', '2018-08-08 16:59:33', '2018-08-08 16:59:33'),
(6, 4, 3, 'test\nddfg', '2018-08-09 17:48:39', '2018-08-09 17:48:39'),
(7, 8, 1, 'thx', '2018-08-26 15:31:10', '2018-08-26 15:31:10'),
(8, 8, 1, 'hi line plz visit our website \nwww.linekw.com', '2018-08-26 15:32:23', '2018-08-26 15:32:23'),
(9, 7, 3, 'Test message', '2018-09-01 18:11:13', '2018-09-01 18:11:13'),
(10, 7, 3, 'Dasdasd', '2018-09-01 18:20:26', '2018-09-01 18:20:26'),
(11, 7, 3, 'شسيشسيشسي', '2018-09-01 18:21:58', '2018-09-01 18:21:58'),
(14, 8, 12, 'شكرا لكم شغل محترفين', '2018-09-22 12:45:36', '2018-09-22 12:45:36'),
(13, 9, 3, 'yes', '2018-09-05 10:35:24', '2018-09-05 10:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `section_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `delivery_time` int(11) DEFAULT NULL,
  `min_price_order` int(11) DEFAULT NULL,
  `preorder` int(11) NOT NULL DEFAULT '0',
  `package` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_day` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_day` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `location` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lan` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `order_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `owner_id`, `section_id`, `category_id`, `project_id`, `delivery_time`, `min_price_order`, `preorder`, `package`, `from_day`, `to_day`, `from_time`, `to_time`, `location`, `lat`, `lan`, `facebook`, `twitter`, `instagram`, `linkedin`, `logo`, `status`, `order_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 5, 56, 0, '30', 'Mon', 'Wed', '12:25:00', '14:25:00', 'Khalaf Al Ahmar Rd, Kuwait City, Kuwait', '29.28606589945099', '47.835956225390646', 'www.fac.com', 'www.twit.com', 'www.ins.com', 'www.lin.com', 'uploads/company/5b827a57d436e.png', 'active', NULL, '2018-07-19 06:27:09', '2018-09-22 10:45:25', '2018-09-22 10:45:25'),
(2, 4, 2, 2, 2, 5, 56, 0, '30', 'Mon', 'Thu', '15:40:00', '17:40:00', 'Jamal Abdul Naseer St, Kuwait', '29.321885053254576', '47.88683236598513', 'www.facebook.com', 'www.facebook.com', 'https://www.insta.com/', 'www.facebook.com', 'uploads/company/5ba228844bfb2.png', 'active', NULL, '2018-07-24 09:40:16', '2018-09-27 12:56:34', NULL),
(3, 6, 3, 15, 2, 5, 56, 1, '90', 'Mon', 'Thu', '14:05:00', '17:05:00', 'Khalaf Al Ahmar Rd, Kuwait City, Kuwait', '29.278879036853677', '47.84831584453127', 'www.facebook.com', 'www.facebook.com', 'https://www.insta.com/', 'www.facebook.com', 'uploads/company/5ba2490f2ca11.png', 'active', NULL, '2018-07-25 08:05:57', '2018-09-22 10:45:25', '2018-09-22 10:45:25'),
(5, 8, 2, NULL, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.facebook.com', 'www.facebook.com', 'https://www.insta.com/', 'www.facebook.com', 'uploads/company/5b8292644ddee.png', 'active', NULL, '2018-09-05 18:01:56', '2018-09-22 10:42:48', '2018-09-22 10:42:48'),
(6, 9, 3, NULL, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.facebook.com', 'www.facebook.com', 'https://www.insta.com/', 'www.facebook.com', 'uploads/settings/5b8284fdd0873.png', 'active', NULL, '2018-09-05 18:12:50', '2018-09-19 17:58:53', '2018-09-19 17:58:53'),
(7, 11, 2, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.facebook.com', 'www.facebook.com', 'https://www.insta.com/', 'www.facebook.com', 'uploads/settings/5b8284fdd0873.png', 'active', NULL, '2018-09-10 11:53:20', '2018-09-22 10:42:48', '2018-09-22 10:42:48'),
(9, 12, 1, 7, 1, 23, 1, 1, NULL, 'Sun', 'Thu', '08:00:00', '20:00:00', 'Hamad Alkhaled St, Kuwait', '29.349527886727138', '48.000751147265646', NULL, NULL, NULL, NULL, 'uploads/company/5ba5dd5893add.png', 'active', NULL, '2018-09-22 11:12:40', '2018-09-22 11:12:40', NULL),
(10, 13, 1, 6, 2, 15, 1, 1, NULL, 'Sat', 'Fri', '08:30:00', '23:30:00', '2 53 St, Kuwait', '29.353118893945624', '47.97191203593752', NULL, NULL, NULL, NULL, 'uploads/company/5ba5e1611ac45.jpg', 'active', NULL, '2018-09-22 11:29:53', '2018-09-22 11:29:53', NULL),
(11, 14, 1, 11, 4, 60, 3, 1, NULL, 'Mon', 'Fri', '09:35:00', '21:35:00', '12 46 St, Kuwait', '29.351921905602456', '47.97740520000002', NULL, NULL, NULL, NULL, 'uploads/company/5ba5e44f3b642.jpg', 'active', NULL, '2018-09-22 11:42:23', '2018-09-22 11:42:23', NULL),
(12, 15, 3, 5, 4, 2, 20, 1, NULL, 'Sat', 'Fri', '10:00:00', '00:00:00', '22 St, Kuwait City, Kuwait', '29.30882096199436', '48.02341044902346', NULL, NULL, NULL, NULL, 'uploads/company/5ba5eb409ac89.jpg', 'active', NULL, '2018-09-22 12:12:00', '2018-09-22 12:12:00', NULL),
(13, 16, 3, 15, 2, 2, 1, 1, NULL, 'Sun', 'Fri', '10:15:00', '22:15:00', '360 Mall, 800001 Faris Abdulrahman Al Waqayan St, Zahra, Kuwait', '29.266899809261798', '47.992511401171896', NULL, NULL, NULL, NULL, 'uploads/company/5ba5ec5ebcdd7.jpg', 'active', NULL, '2018-09-22 12:16:46', '2018-09-22 12:16:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_translations`
--

CREATE TABLE `company_translations` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_translations`
--

INSERT INTO `company_translations` (`id`, `company_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'alpha Coffee Shop', 'alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha alpha', '2018-07-19 06:27:09', '2018-09-19 11:53:09', NULL),
(2, 1, 'ar', 'الفا كوفي شوب', 'الفا الفاالفاالفا الفا الفا  الفا الفاالفاالفا الفا الفا   الفا الفاالفاالفا الفا الفا  الفا الفاالفاالفا الفا الفا   الفا الفاالفاالفا الفا الفا  الفا الفاالفاالفا الفا الفا', '2018-07-19 06:27:09', '2018-09-19 11:53:09', NULL),
(3, 2, 'en', 'shop zara clothing women\'s dresses', 'fashing hi man', '2018-07-24 09:40:16', '2018-09-19 15:44:20', NULL),
(4, 2, 'ar', 'shop zara clothing women\'s dresses', 'fashing hi man', '2018-07-24 09:40:16', '2018-09-19 15:44:20', NULL),
(5, 3, 'en', 'WEDDING', 'WEDDING  WEDDING  WEDDING  WEDDING  WEDDING  WEDDING  WEDDING', '2018-07-25 08:05:57', '2018-09-19 18:03:11', NULL),
(6, 3, 'ar', 'WEDDING', 'WEDDING  WEDDING  WEDDING  WEDDING  WEDDING  WEDDING  WEDDING', '2018-07-25 08:05:57', '2018-09-19 18:03:11', NULL),
(9, 5, 'en', 'RANKO', 'dddddddddddddddddd', '2018-09-05 18:01:56', '2018-09-05 18:01:56', NULL),
(10, 5, 'ar', 'RANKO', 'dddddddddddddddddd', '2018-09-05 18:01:56', '2018-09-05 18:01:56', NULL),
(11, 6, 'en', 'SAta', 'eewfwfewfewf', '2018-09-05 18:12:50', '2018-09-19 17:58:53', '2018-09-19 17:58:53'),
(12, 6, 'ar', 'SAta', 'eewfwfewfewf', '2018-09-05 18:12:50', '2018-09-19 17:58:53', '2018-09-19 17:58:53'),
(13, 7, 'en', 'DAF CO', 'rfefgergergreg', '2018-09-10 11:53:20', '2018-09-10 11:53:20', NULL),
(14, 7, 'ar', 'DAF CO', 'rfefgergergreg', '2018-09-10 11:53:20', '2018-09-10 11:53:20', NULL),
(15, 8, 'en', 'Halls', 'HallsHallsHallsHallsHallsHalls', '2018-09-18 15:12:27', '2018-09-18 15:12:27', NULL),
(16, 8, 'ar', 'قاعات', 'قاعاتقاعاتقاعاتقاعاتقاعات', '2018-09-18 15:12:27', '2018-09-18 15:12:27', NULL),
(17, 9, 'en', 'alpha Coffee Shop', '\'We are a locally owned,  . We provide, premium small coffee, espresso drinks, amazing locally sourced baked goods and locally made artisan gelato.', '2018-09-22 11:12:40', '2018-09-22 11:12:40', NULL),
(18, 9, 'ar', 'الفا كوفي شوب', '\"نحن مملوكة محليا ،. نحن نقدم ، القهوة الصغيرة الممتازة ، مشروبات اسبريسو ، المخبوزات المدهشة من مصادر محلية و الجيلاتي المصنوع محليا.', '2018-09-22 11:12:40', '2018-09-22 11:12:40', NULL),
(19, 10, 'en', 'Restaurant', 'A restaurant or an eatery, is a business which prepares and serves food and drinks to customers in exchange for money', '2018-09-22 11:29:53', '2018-09-22 11:29:53', NULL),
(20, 10, 'ar', 'مطعم', 'المطعم ، أو المطعم ، هو عمل يقوم بإعداد وتقديم الطعام والمشروبات للعملاء مقابل المال', '2018-09-22 11:29:53', '2018-09-22 11:29:53', NULL),
(21, 11, 'en', 'Honey Bee Bakery', 'Honey Bee Bakery is located on the historic Medina Square. Known for our made from scratch cakes, pies, breads and pastries, you know it\'ll always be', '2018-09-22 11:42:23', '2018-09-22 11:42:23', NULL),
(22, 11, 'ar', 'مخبز عسل النحل', 'يقع  في ساحة المدينة التاريخية. معروف لدينا مصنوعة من الكعك الصفر ، والفطائر ، والخبز والمعجنات ، وكنت أعلم أنه سوف يكون دائما', '2018-09-22 11:42:23', '2018-09-22 11:42:23', NULL),
(23, 12, 'en', 'FOOD Service', 'FOOD Service', '2018-09-22 12:12:00', '2018-09-22 12:12:00', NULL),
(24, 12, 'ar', 'خدمات الطعام', 'خدمات الطعام', '2018-09-22 12:12:00', '2018-09-22 12:12:00', NULL),
(25, 13, 'en', 'RENT HALL', 'RENT HALL', '2018-09-22 12:16:46', '2018-09-22 12:16:46', NULL),
(26, 13, 'ar', 'قاعات للإيجار', 'قاعات للإيجار', '2018-09-22 12:16:46', '2018-09-22 12:16:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `fullname` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fullname`, `mobile`, `comment`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mohamed', '23455343456', 'fwfwefwfef', NULL, '2018-09-04 12:52:12', '2018-09-04 12:52:12', NULL),
(2, 'msbri', '345643336345', 'dcdcdcdcdcdcdcdc', NULL, '2018-09-05 10:57:19', '2018-09-05 10:57:19', NULL),
(3, 'sfsaefds', '654654', 'sdfsgdfd', NULL, '2018-09-09 14:29:47', '2018-09-09 14:29:47', NULL),
(4, 'fdsgfd', '654654', 'sdgfdgdf', NULL, '2018-09-09 14:51:02', '2018-09-09 14:51:02', NULL),
(5, 'mohamed', '23455343456', 'fvsdsvfsdbs', NULL, '2018-09-10 11:42:13', '2018-09-10 11:42:13', NULL),
(6, 'test', '14725852', 'Test been', 'emadtraner@gmail.com', '2018-09-16 19:50:47', '2018-09-16 19:50:47', NULL),
(7, 'hgff', '25805525', 'gdgfc', 'test.linekw@gmail.com', '2018-09-17 10:25:01', '2018-09-17 10:25:01', NULL),
(8, 'gdd', '588475588', 'dgxv', 'test.linekw@gmail.com', '2018-09-17 10:26:23', '2018-09-17 10:26:23', NULL),
(9, 'dfgrerger', '734865873468', 'rweghkjgfkerjghkrejghdsfg', 'm@ff.com', '2018-09-17 10:27:22', '2018-09-17 10:27:22', NULL),
(10, 'dfgrerger', '734865873468', 'rweghkjgfkerjghkrejghdsfg', 'm@m.m', '2018-09-17 10:28:22', '2018-09-17 10:28:22', NULL),
(11, 'gffg', '25556555', 'Kxndjdjd', 't@t.t', '2018-09-17 11:29:53', '2018-09-17 11:29:53', NULL),
(12, 'name', '12345678', 'wweee', 'qqq@cc.co.co.us', '2018-09-18 18:48:00', '2018-09-18 18:48:00', NULL),
(13, 'ttt', '2', 'Gub', 'tt@tt.tt', '2018-09-19 18:38:32', '2018-09-19 18:38:32', NULL),
(14, 'hi', '258668558', 'tggg', 'test.linekw@gmail.com', '2018-09-22 12:28:58', '2018-09-22 12:28:58', NULL),
(15, 'tfg', '555878', 'الرسالة', 'tt@tt.tt', '2018-09-22 13:37:04', '2018-09-22 13:37:04', NULL),
(16, 'reham', '66385962', 'hello support', 'reham@linekw.com', '2018-09-24 17:31:00', '2018-09-24 17:31:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'not_active',
  `order_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `createdBy`, `status`, `order_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'active', 1, '2018-01-24 12:03:56', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency_translations`
--

CREATE TABLE `currency_translations` (
  `id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency_translations`
--

INSERT INTO `currency_translations` (`id`, `currency_id`, `locale`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'D.K', '2018-01-24 12:04:09', '0000-00-00 00:00:00', NULL),
(2, 1, 'ar', 'د.ك', '2018-01-24 12:04:42', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `product_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 0, '2018-08-08 11:43:32', '2018-08-08 16:43:32', NULL),
(2, 4, 9, 0, '2018-08-08 11:38:57', '2018-08-08 16:38:57', NULL),
(3, 4, 8, 0, '2018-08-08 11:41:51', '2018-08-08 16:41:51', NULL),
(4, 4, 1, 0, '2018-08-09 07:09:19', '2018-08-09 12:09:19', NULL),
(5, 4, 7, 0, '2018-08-09 07:10:19', '2018-08-09 12:10:19', NULL),
(6, 8, 1, 1, '2018-09-19 05:51:08', '2018-09-19 10:51:08', NULL),
(7, 5, 9, 0, '2018-08-29 08:27:06', '2018-08-29 13:27:06', NULL),
(8, 8, 4, 1, '2018-08-26 16:57:50', '2018-08-26 16:57:50', NULL),
(9, 8, 2, 1, '2018-09-25 09:59:31', '2018-09-25 14:59:31', NULL),
(10, 7, 9, 0, '2018-08-27 09:34:59', '2018-08-27 14:34:59', NULL),
(11, 7, 8, 1, '2018-08-27 14:35:04', '2018-08-27 14:35:04', NULL),
(12, 7, 7, 1, '2018-08-27 14:35:12', '2018-08-27 14:35:12', NULL),
(13, 9, 4, 0, '2018-09-04 06:18:44', '2018-09-04 11:18:44', NULL),
(14, 9, 1, 1, '2018-09-05 05:30:38', '2018-09-05 10:30:38', NULL),
(15, 11, 8, 1, '2018-09-06 12:31:43', '2018-09-06 12:31:43', NULL),
(16, 11, 7, 0, '2018-09-06 07:39:51', '2018-09-06 12:39:51', NULL),
(17, 11, 9, 1, '2018-09-06 12:47:12', '2018-09-06 12:47:12', NULL),
(18, 11, 2, 1, '2018-09-06 12:47:31', '2018-09-06 12:47:31', NULL),
(19, 11, 4, 1, '2018-09-06 12:47:37', '2018-09-06 12:47:37', NULL),
(20, 5, 7, 0, '2018-09-18 13:02:21', '2018-09-18 18:02:21', NULL),
(21, 5, 6, 0, '2018-09-18 12:57:33', '2018-09-18 17:57:33', NULL),
(22, 12, 6, 1, '2018-09-19 06:28:28', '2018-09-19 11:28:28', NULL),
(23, 12, 4, 0, '2018-09-19 06:13:48', '2018-09-19 11:13:48', NULL),
(24, 8, 9, 0, '2018-09-19 12:15:28', '2018-09-19 17:15:28', NULL),
(25, 7, 10, 1, '2018-09-20 11:49:21', '2018-09-20 11:49:21', NULL),
(26, 14, 2, 1, '2018-09-24 17:33:27', '2018-09-24 17:33:27', NULL),
(27, 14, 12, 0, '2018-09-25 07:38:00', '2018-09-25 12:38:00', NULL),
(28, 8, 12, 0, '2018-09-25 09:57:47', '2018-09-25 14:57:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `features_color`
--

CREATE TABLE `features_color` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `features_color`
--

INSERT INTO `features_color` (`id`, `company_id`, `product_id`, `color`, `created_at`, `updated_at`) VALUES
(17, 2, 10, '#ff6161', '2018-09-20 13:53:41', '2018-09-20 13:53:41'),
(16, 2, 11, '#001dfc', '2018-09-19 15:53:49', '2018-09-19 15:53:49'),
(5, 1, 8, '#ff6161', '2018-08-07 12:57:21', '2018-08-07 12:57:21'),
(6, 1, 8, '#616cff', '2018-08-07 12:57:27', '2018-08-07 12:57:27'),
(7, 2, 7, '#b02323', '2018-08-07 13:02:24', '2018-08-07 13:02:24'),
(8, 2, 7, '#bb61ff', '2018-08-07 13:02:30', '2018-08-07 13:02:30'),
(9, 2, 6, '#6b5a5a', '2018-08-07 13:03:17', '2018-08-07 13:03:17'),
(10, 2, 6, '#66ff61', '2018-08-07 13:03:22', '2018-08-07 13:03:22'),
(15, 2, 11, '#ff0000', '2018-09-19 15:52:47', '2018-09-19 15:52:47'),
(14, 2, 10, '#000000', '2018-09-19 15:51:14', '2018-09-19 15:51:14'),
(13, 2, 2, '#000000', '2018-08-26 16:47:31', '2018-08-26 16:47:31'),
(18, 11, 12, '#ff0000', '2018-09-22 11:45:44', '2018-09-22 11:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `features_size`
--

CREATE TABLE `features_size` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `features_size`
--

INSERT INTO `features_size` (`id`, `company_id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(15, 2, 11, 4, '2018-09-19 15:54:11', '2018-09-19 15:54:11'),
(14, 2, 11, 1, '2018-09-19 15:52:47', '2018-09-19 15:52:47'),
(5, 1, 8, 2, '2018-08-07 12:57:38', '2018-08-07 12:57:38'),
(6, 1, 8, 3, '2018-08-07 12:57:42', '2018-08-07 12:57:42'),
(7, 2, 7, 1, '2018-08-07 13:02:39', '2018-08-07 13:02:39'),
(8, 2, 7, 3, '2018-08-07 13:02:43', '2018-08-07 13:02:43'),
(9, 2, 6, 2, '2018-08-07 13:02:55', '2018-08-07 13:02:55'),
(10, 2, 6, 3, '2018-08-07 13:02:59', '2018-08-07 13:02:59'),
(13, 2, 10, 1, '2018-09-19 15:51:14', '2018-09-19 15:51:14'),
(12, 2, 2, 1, '2018-08-26 16:48:24', '2018-08-26 16:48:24'),
(16, 2, 10, 3, '2018-09-20 13:54:40', '2018-09-20 13:54:40'),
(17, 11, 12, 1, '2018-09-22 11:45:44', '2018-09-22 11:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `helps`
--

CREATE TABLE `helps` (
  `id` int(11) NOT NULL,
  `status` enum('Active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `helps`
--

INSERT INTO `helps` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Active', '2018-06-25 05:43:06', '2018-07-05 16:39:42', '2018-07-05 16:39:42'),
(2, 'Active', '2018-06-25 05:43:11', '2018-07-03 12:28:35', '2018-07-03 12:28:35'),
(3, 'Active', '2018-06-25 05:59:08', '2018-07-05 16:39:42', '2018-07-05 16:39:42'),
(4, 'Active', '2018-06-25 05:59:11', '2018-07-03 12:17:32', '2018-07-03 12:17:32'),
(5, 'Active', '2018-07-03 13:27:30', '2018-07-05 16:39:42', '2018-07-05 16:39:42'),
(6, 'Active', '2018-07-03 13:34:03', '2018-07-05 16:39:42', '2018-07-05 16:39:42'),
(7, 'Active', '2018-07-03 13:36:09', '2018-07-05 16:39:42', '2018-07-05 16:39:42'),
(8, 'Active', '2018-07-05 16:37:06', '2018-07-05 16:37:06', NULL),
(9, 'Active', '2018-07-05 16:37:47', '2018-07-05 16:37:47', NULL),
(10, 'Active', '2018-07-05 16:38:27', '2018-07-05 16:38:27', NULL),
(11, 'Active', '2018-09-12 19:32:53', '2018-09-12 19:32:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `help_translations`
--

CREATE TABLE `help_translations` (
  `id` int(11) NOT NULL,
  `help_id` int(11) NOT NULL,
  `locale` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `help_translations`
--

INSERT INTO `help_translations` (`id`, `help_id`, `locale`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'ssdsdsfsdsgsdgdsfgfddfha', 'gsfgsdfsdfbsdfbsfbdbdfbdsgbdsfsb fv dfsgsfgsfvsfsfdbsdfbdfsbsfbasf', '2018-06-25 05:43:41', NULL, NULL),
(2, 1, 'ar', 'ssdsdsfsdsgsdgdsfgfddfha', 'gsfgsdfsdfbsdfbsfbdbdfbdsgbdsfsb fv dfsgsfgsfvsfsfdbsdfbdfsbsfbasf', '2018-06-25 05:43:44', NULL, NULL),
(3, 2, 'en', 'dsfsdflsdhblkjfsdh', 'fngvjkfdhbjvdfsbhfd', '2018-06-25 05:44:11', NULL, NULL),
(4, 2, 'ar', 'dsfsdflsdhblkjfsdh', 'fngvjkfdhbjvdfsbhfd', '2018-06-25 05:44:15', NULL, NULL),
(5, 3, 'en', 'dfwefrwegwgw', 'rwgwqrwqgegwegwqregrwgrewgrwg', '2018-06-25 05:59:32', NULL, NULL),
(6, 3, 'ar', 'dfwefrwegwgw', 'rwgwqrwqgegwegwqregrwgrewgrwg', '2018-06-25 05:59:36', NULL, NULL),
(7, 4, 'en', 'rgegegerhetwhewrthrewr', 'qhwerhewrhwerhwerewhewhrewhew', '2018-06-25 05:59:52', NULL, NULL),
(8, 4, 'ar', 'rgegegerhetwhewrthrewr', 'qhwerhewrhwerhwerewhewhrewhew', '2018-06-25 05:59:55', NULL, NULL),
(9, 5, 'en', 'efwfewqfwefwe', 'wrgwrgwergweg', '2018-07-03 13:27:30', '2018-07-03 13:27:30', NULL),
(10, 5, 'ar', 'wgfwgfwergwer', 'rwgwregrewgrg', '2018-07-03 13:27:30', '2018-07-03 13:27:30', NULL),
(11, 6, 'en', 'dsdssddsdssdsddsdds', 'sddsfdsfsdfdsfdsfdsf', '2018-07-03 13:34:03', '2018-07-03 13:34:03', NULL),
(12, 6, 'ar', 'سيبليشليسشبثشيليشليسل', 'سيبليشليسشبثشيليشليسل', '2018-07-03 13:34:03', '2018-07-03 13:34:03', NULL),
(13, 7, 'en', 'dsdssddsdssdsddsdds', 'sddsfdsfsdfdsfdsfdsf', '2018-07-03 13:36:09', '2018-07-03 13:36:09', NULL),
(14, 7, 'ar', 'dsdssddsdssdsddsdds', 'sddsfdsfsdfdsfdsfdsf', '2018-07-03 13:36:09', '2018-07-03 13:36:09', NULL),
(15, 8, 'en', 'Ask for Quotation', 'Ask for Quotation Ask for Quotation Ask for Quotation Ask for Quotation Ask for Quotation', '2018-07-05 16:37:06', '2018-07-05 16:37:06', NULL),
(16, 8, 'ar', 'السؤال الأول', 'الجواب الأول الجواب الأول الجواب الأول الجواب الأول الجواب الأول الجواب الأول الجواب الأول الجواب الأول الجواب الأول', '2018-07-05 16:37:06', '2018-07-05 16:37:06', NULL),
(17, 9, 'en', 'FAQS 02', 'FAQS 02 FAQS 02 FAQS 02 FAQS 02 FAQS 02 FAQS 02 FAQS 02 FAQS 02 FAQS 02 FAQS 02 FAQS 02', '2018-07-05 16:37:47', '2018-07-05 16:37:47', NULL),
(18, 9, 'ar', 'السؤال بالعربي', 'السؤال بالعربي *  السؤال بالعربي *  السؤال بالعربي *  السؤال بالعربي *  السؤال بالعربي *  السؤال بالعربي *  السؤال بالعربي *  السؤال بالعربي *', '2018-07-05 16:37:47', '2018-07-05 16:37:47', NULL),
(19, 10, 'en', 'FAQS 03', 'FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03 FAQS 03', '2018-07-05 16:38:27', '2018-07-05 16:38:27', NULL),
(20, 10, 'ar', 'السؤال بالعربي 03', 'السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03  السؤال بالعربي 03', '2018-07-05 16:38:27', '2018-07-05 16:38:27', NULL),
(21, 11, 'en', 'Q1', 'A1', '2018-09-12 19:32:53', '2018-09-12 19:32:53', NULL),
(22, 11, 'ar', 'سؤال 1', 'اجابة1', '2018-09-12 19:32:53', '2018-09-12 19:32:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `id` int(11) NOT NULL,
  `status` enum('Active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `logo` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lands`
--

INSERT INTO `lands` (`id`, `status`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Active', 'http://medoz.linekw.com/front-end/images/event.png', '2018-06-24 10:07:36', NULL, NULL),
(2, 'Active', 'http://medoz.linekw.com/front-end/images/startup.png', '2018-06-24 10:07:40', NULL, NULL),
(3, 'Active', 'http://medoz.linekw.com/front-end/images/list.png', '2018-06-24 10:07:52', NULL, NULL),
(5, 'Active', 'http://medoz.linekw.com/front-end/images/list.png', '2018-09-06 06:39:45', NULL, NULL),
(6, 'Active', 'http://medoz.linekw.com/front-end/images/list.png', '2018-09-06 06:39:48', NULL, NULL),
(7, 'Active', 'http://medoz.linekw.com/front-end/images/list.png', '2018-09-06 06:40:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `land_translations`
--

CREATE TABLE `land_translations` (
  `id` int(11) NOT NULL,
  `land_id` int(11) NOT NULL,
  `locale` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `land_translations`
--

INSERT INTO `land_translations` (`id`, `land_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Why Us', 'These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice', '2018-06-24 10:09:53', '2018-09-06 11:33:37', NULL),
(2, 1, 'ar', 'لماذا نحن', 'الأحداث الأحداث الأحداث الأحداث الأحداث الأحداث الأحداث الأحداث الأحداث الأحداث الأحداث', '2018-06-24 10:09:56', '2018-09-06 11:33:37', NULL),
(3, 2, 'en', 'Our clients', 'These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice', '2018-06-24 10:19:03', '2018-09-06 11:35:16', NULL),
(4, 2, 'ar', 'عملائنا', 'عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا عملائنا', '2018-06-24 10:19:07', '2018-09-06 11:35:16', NULL),
(5, 3, 'en', 'Contact Us', 'You can communicate with us by sending us a message via the link below', '2018-06-24 10:20:21', '2018-09-06 11:36:43', NULL),
(6, 3, 'ar', 'تواصل معنا', 'يمكنك التواصل معنا من خلال ارسال رسالة عبر نافدة تواصل معنا في الاسفل', '2018-06-24 10:20:24', '2018-09-06 11:36:43', NULL),
(7, 5, 'en', 'Download Application', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2018-09-06 06:40:38', NULL, NULL),
(8, 5, 'ar', 'تحميل التطبيق', 'تحميل التطبيق تحميل التطبيق تحميل التطبيق تحميل التطبيق تحميل التطبيق تحميل التطبيق', '2018-09-06 06:40:40', NULL, NULL),
(9, 6, 'en', 'Careers', 'We are looking for enthusiastic people to meet. Your first step towards an important career!', '2018-09-06 06:40:50', '2018-09-09 14:23:54', NULL),
(10, 6, 'ar', 'وظائف', 'نبحث عن أشخاص متحمسين لتشكيل المستقبل . اتخذ خطوتك الأولى نحو مهنة مهمة!', '2018-09-06 06:40:52', '2018-09-09 14:23:54', NULL),
(11, 7, 'en', 'Join us', 'Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us Join us ', '2018-09-06 06:41:02', NULL, NULL),
(12, 7, 'ar', 'انضم الينا', 'انضم الينا انضم الينا انضم الينا انضم الينا ر انضم الينا انضم الينا انضم الينا انضم الينا انضم الينا انضم الينا ر انضم الينا انضم الينا ', '2018-09-06 06:41:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `flag` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `flag`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'en', 'uploads/language/m.png', '2017-10-18 10:36:27', '0000-00-00 00:00:00', NULL),
(2, 'ar', 'uploads/language/s.png', '2017-10-18 10:36:38', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_translations`
--

CREATE TABLE `language_translations` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `language_translations`
--

INSERT INTO `language_translations` (`id`, `language_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'English', '2017-10-19 08:04:44', '0000-00-00 00:00:00', NULL),
(2, 1, 'ar', 'إنجليزي', '2017-10-19 08:04:44', '0000-00-00 00:00:00', NULL),
(3, 2, 'en', 'Arabic', '2017-10-19 08:05:27', '0000-00-00 00:00:00', NULL),
(4, 2, 'ar', 'عربي', '2017-10-19 08:05:27', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `company_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'hi company', '2018-08-12 13:00:57', '2018-08-12 13:00:57'),
(3, 4, 3, 'message', '2018-08-12 14:36:22', '2018-08-12 14:36:22'),
(4, 5, 3, 'msg\njsjsn', '2018-08-26 16:48:49', '2018-08-26 16:48:49'),
(5, 8, 3, 'hii', '2018-08-26 16:56:25', '2018-08-26 16:56:25'),
(6, 7, 3, 'asdqweaxcasd', '2018-09-01 18:27:46', '2018-09-01 18:27:46'),
(7, 9, 3, 'Hggh', '2018-09-05 10:34:52', '2018-09-05 10:34:52'),
(8, 9, 3, 'b hcgx', '2018-09-05 10:34:58', '2018-09-05 10:34:58'),
(9, 8, 8, 'hiii', '2018-09-19 16:44:16', '2018-09-19 16:44:16'),
(10, 8, 12, 'hiii', '2018-09-22 12:24:02', '2018-09-22 12:24:02'),
(11, 8, 12, 'vvbh', '2018-09-22 12:44:43', '2018-09-22 12:44:43'),
(12, 8, 13, 'hi', '2018-09-22 16:15:08', '2018-09-22 16:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification_message`
--

CREATE TABLE `notification_message` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification_message`
--

INSERT INTO `notification_message` (`id`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'efwefewfewfg', '2018-08-28 12:50:52', '2018-08-28 12:50:52', NULL),
(2, 'eddqdeqd', '2018-08-28 12:53:36', '2018-08-28 12:53:36', NULL),
(3, 'fsfvfsfvsfv', '2018-08-28 12:59:29', '2018-08-28 12:59:29', NULL),
(4, 'tgtththth', '2018-08-28 12:59:37', '2018-08-28 12:59:37', NULL),
(5, 'yjyjyjytjytj', '2018-08-28 12:59:52', '2018-08-28 12:59:52', NULL),
(6, 'rrrrrr', '2018-08-28 13:08:34', '2018-08-28 13:08:34', NULL),
(7, 'Push Notification', '2018-09-05 11:12:40', '2018-09-05 11:12:40', NULL),
(8, 'Push Notification', '2018-09-05 11:12:56', '2018-09-05 11:12:56', NULL),
(9, 'Push Notification', '2018-09-05 15:00:19', '2018-09-05 15:00:19', NULL),
(10, 'Push Notification', '2018-09-05 15:01:29', '2018-09-05 15:01:29', NULL),
(11, 'sfvsvsdfb', '2018-09-19 13:05:52', '2018-09-19 13:05:52', NULL),
(12, 'test', '2018-09-19 13:10:56', '2018-09-19 13:10:56', NULL),
(13, 'test', '2018-09-19 13:11:10', '2018-09-19 13:11:10', NULL),
(14, 'test', '2018-09-19 13:15:54', '2018-09-19 13:15:54', NULL),
(15, 'test', '2018-09-19 13:28:17', '2018-09-19 13:28:17', NULL),
(16, 'test', '2018-09-19 13:34:22', '2018-09-19 13:34:22', NULL),
(17, 'test', '2018-09-19 13:39:41', '2018-09-19 13:39:41', NULL),
(18, 'Push Notification', '2018-09-22 10:46:31', '2018-09-22 10:46:31', NULL),
(19, 'Send Message', '2018-09-22 10:47:32', '2018-09-22 10:47:32', NULL),
(20, 'Push Notification', '2018-09-22 10:48:27', '2018-09-22 10:48:27', NULL),
(21, 'Push Notification', '2018-09-22 10:48:45', '2018-09-22 10:48:45', NULL),
(22, 'Push Notification', '2018-09-22 10:49:42', '2018-09-22 10:49:42', NULL),
(23, 'Push Notification 2', '2018-09-22 10:49:51', '2018-09-22 10:49:51', NULL),
(24, 'Push Notification', '2018-09-22 10:50:06', '2018-09-22 10:50:06', NULL),
(25, 'Send Message', '2018-09-22 10:50:22', '2018-09-22 10:50:22', NULL),
(26, 'Push Notification', '2018-09-22 10:50:37', '2018-09-22 10:50:37', NULL),
(27, 'Push Notification  10:30', '2018-09-22 12:29:52', '2018-09-22 12:29:52', NULL),
(28, 'qdqw', '2020-08-11 09:53:39', '2020-08-11 09:53:39', NULL),
(29, 'qdqw', '2020-08-11 09:55:30', '2020-08-11 09:55:30', NULL),
(30, 'qdqw', '2020-08-11 09:55:45', '2020-08-11 09:55:45', NULL),
(31, 'qdqw', '2020-08-11 09:56:09', '2020-08-11 09:56:09', NULL),
(32, 'qdqw', '2020-08-11 09:56:27', '2020-08-11 09:56:27', NULL),
(33, 'qdqw', '2020-08-11 10:02:58', '2020-08-11 10:02:58', NULL),
(34, 'qdqw', '2020-08-11 10:03:46', '2020-08-11 10:03:46', NULL),
(35, 'qdqw', '2020-08-11 10:03:49', '2020-08-11 10:03:49', NULL),
(36, 'qdqw', '2020-08-11 10:04:20', '2020-08-11 10:04:20', NULL),
(37, 'qdqw', '2020-08-11 10:10:45', '2020-08-11 10:10:45', NULL),
(38, 'fdgdfg', '2020-08-11 10:15:18', '2020-08-11 10:15:18', NULL),
(39, 'fdgdfg', '2020-08-11 10:16:05', '2020-08-11 10:16:05', NULL),
(40, 'fdgdfg', '2020-08-11 10:16:16', '2020-08-11 10:16:16', NULL),
(41, 'qdwqf', '2020-08-11 10:16:44', '2020-08-11 10:16:44', NULL),
(42, 'wdw', '2020-08-11 10:16:56', '2020-08-11 10:16:56', NULL),
(43, 'wdw', '2020-08-11 10:18:16', '2020-08-11 10:18:16', NULL),
(44, 'qwdwq', '2020-08-11 10:28:23', '2020-08-11 10:28:23', NULL),
(45, 'qwdwq', '2020-08-11 10:28:48', '2020-08-11 10:28:48', NULL),
(46, 'hjhk', '2020-08-11 10:32:05', '2020-08-11 10:32:05', NULL),
(47, 'hjhk', '2020-08-11 10:32:15', '2020-08-11 10:32:15', NULL),
(48, 'qqq', '2020-08-11 10:32:44', '2020-08-11 10:32:44', NULL),
(49, 'dfdf', '2020-08-11 10:34:56', '2020-08-11 10:34:56', NULL),
(50, 'dfdf', '2020-08-11 10:35:24', '2020-08-11 10:35:24', NULL),
(51, 'dfdf', '2020-08-11 10:36:00', '2020-08-11 10:36:00', NULL),
(52, 'ghkjhkhk', '2020-08-11 10:37:49', '2020-08-11 10:37:49', NULL),
(53, 'ghkjhkhk', '2020-08-11 10:39:00', '2020-08-11 10:39:00', NULL),
(54, 'ghkjhkhk', '2020-08-11 10:39:04', '2020-08-11 10:39:04', NULL),
(55, 'qwdwqd', '2020-08-11 10:39:52', '2020-08-11 10:39:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 33, 2, '2018-05-13 11:30:01', '2018-05-13 11:30:01', NULL, 'active'),
(3, 34, 6, '2018-05-13 13:08:38', '2018-05-13 13:08:38', NULL, 'active'),
(4, 51, 3, '2018-06-07 17:36:21', '2018-06-07 17:36:21', NULL, 'active'),
(5, 51, 3, '2018-06-08 03:21:30', '2018-06-08 03:21:30', NULL, 'active'),
(6, 52, 3, '2018-06-08 03:21:35', '2018-06-08 03:21:35', NULL, 'active'),
(7, 51, 3, '2018-06-08 05:09:51', '2018-06-08 05:09:51', NULL, 'active'),
(8, 52, 3, '2018-06-08 05:10:02', '2018-06-08 05:10:02', NULL, 'active'),
(9, 34, 3, '2018-06-24 14:16:47', '2018-06-24 14:16:47', NULL, 'active'),
(10, 34, 3, '2018-06-24 18:24:04', '2018-06-24 18:24:04', NULL, 'active'),
(11, 34, 3, '2018-06-25 12:46:07', '2018-06-25 12:46:07', NULL, 'active'),
(12, 50, 3, '2018-06-27 16:09:28', '2018-06-27 16:09:28', NULL, 'active'),
(13, 50, 3, '2018-06-27 17:45:20', '2018-06-27 17:45:20', NULL, 'active'),
(14, 50, 3, '2018-06-30 16:05:43', '2018-06-30 16:05:43', NULL, 'active'),
(15, 54, 3, '2018-06-30 16:07:29', '2018-06-30 16:07:29', NULL, 'active'),
(16, 54, 3, '2018-06-30 16:07:50', '2018-06-30 16:07:50', NULL, 'active'),
(17, 54, 3, '2018-06-30 16:09:29', '2018-06-30 16:09:29', NULL, 'active'),
(18, 54, 3, '2018-07-01 13:51:17', '2018-07-01 13:51:17', NULL, 'active'),
(19, 54, 3, '2018-07-01 14:15:30', '2018-07-01 14:15:30', NULL, 'active'),
(20, 54, 3, '2018-07-02 00:18:14', '2018-07-02 00:18:14', NULL, 'active'),
(21, 52, 3, '2018-07-04 13:20:34', '2018-07-04 13:20:34', NULL, 'active'),
(22, 52, 3, '2018-07-04 13:33:23', '2018-07-04 13:33:23', NULL, 'active'),
(23, 52, 3, '2018-07-04 13:33:53', '2018-07-04 13:33:53', NULL, 'active'),
(24, 52, 3, '2018-07-04 13:33:54', '2018-07-04 13:33:54', NULL, 'active'),
(25, 54, 3, '2018-07-05 14:12:06', '2018-07-05 14:12:06', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00e6072948079ce76a39b51850e04bdd22ff573533eceb05d452cd2ebab81565a76165072c22f154', 2, 1, 'mobile', '[]', 0, '2018-07-26 13:19:53', '2018-07-26 13:19:53', '2019-07-26 08:19:53'),
('0238178dd221cd9328ed7d35387c9741343cbaf3bab2b7b06cdce52a6485b465fec38bc92d226617', 4, 1, 'mobile', '[]', 1, '2018-08-19 12:54:07', '2018-08-19 12:54:07', '2019-08-19 07:54:07'),
('036da0907ad7e7e4ac12ee5551ac399c7fe045d4ebcae1a13a9f4d2d71b31837c6208c3751314dab', 9, 1, 'mobile', '[]', 1, '2018-09-03 14:02:56', '2018-09-03 14:02:56', '2019-09-03 09:02:56'),
('045f865424ad54518ad862d57cd98ca5ffb0b68043b7e153b8f77226f94092031a73375951c48976', 12, 1, 'mobile', '[]', 0, '2018-09-19 11:08:55', '2018-09-19 11:08:55', '2019-09-19 06:08:55'),
('05751c7ee1db20b240108b2fb6a93681e103da1cc8cc9250887c591db3783f65055c77cca7aab921', 4, 1, 'mobile', '[]', 1, '2018-09-26 12:32:37', '2018-09-26 12:32:37', '2019-09-26 07:32:37'),
('0711c8cdc633c42244d5e91b3e88fbd70134a426847feef039ad4a68b7937e948233888ff6a2e9f5', 4, 1, 'mobile', '[]', 1, '2018-09-22 13:06:03', '2018-09-22 13:06:03', '2019-09-22 08:06:03'),
('07c2f84af49cf715cc829aad33466d2bce2d3dd8dcbb709e254b08d0bf913dbb7e9f4b7c652ebcdd', 4, 1, 'mobile', '[]', 1, '2018-09-06 17:01:38', '2018-09-06 17:01:38', '2019-09-06 12:01:38'),
('0983bd65484d19d966d18de144aa3346d5bcc2dfccdab6c7af15f8be89638a165c59661740de0e44', 5, 1, 'mobile', '[]', 0, '2018-09-18 18:40:53', '2018-09-18 18:40:53', '2019-09-18 13:40:53'),
('0abc5d5b73eabdf04e80c315bcbbc21dfa41689fbadf094f3851a1b7b71b58ea63183d6a98cf4337', 4, 1, 'mobile', '[]', 1, '2018-09-18 18:24:17', '2018-09-18 18:24:17', '2019-09-18 13:24:17'),
('0be03b6282fcac214c9e119cd659d0bf804620b71f02704a539a7979458c2c19f8ab5a0174e99fbf', 2, 1, 'mobile', '[]', 1, '2018-08-12 11:51:53', '2018-08-12 11:51:53', '2019-08-12 06:51:53'),
('0c6b20d9c87649d81a989e85d2d87616308e64c8dd3d83cf0ee03d93c72c7393f957c765024eb288', 4, 1, 'mobile', '[]', 1, '2018-09-05 11:00:08', '2018-09-05 11:00:08', '2019-09-05 06:00:08'),
('0c93514257360c38a50717768f8f65a50bd2ef31bc78ae6bae2923ec3bdb08fbf1ca2527de72efbd', 5, 1, 'mobile', '[]', 1, '2018-08-30 15:44:29', '2018-08-30 15:44:29', '2019-08-30 10:44:29'),
('0cf8f361ec41960fadd60a238c17e10c7324d54eff38bdf7d8210cf88ff4ecba673f329c29e378ee', 4, 1, 'mobile', '[]', 0, '2018-09-03 12:15:03', '2018-09-03 12:15:03', '2019-09-03 07:15:03'),
('0d606dcaf4bf962fad6416a2113ca0bd38ac26c85cb9d9c8e86faf80e2e005c416dada14d1d53f63', 7, 1, 'mobile', '[]', 1, '2018-09-19 11:26:34', '2018-09-19 11:26:34', '2019-09-19 06:26:34'),
('0ebabba6522b8bfc20ae24c0ef1bc9652c8251b67aa9451e63b93b4c6f7b3984063cb6f22325b038', 5, 1, 'mobile', '[]', 0, '2018-08-30 15:31:24', '2018-08-30 15:31:24', '2019-08-30 10:31:24'),
('0f60e1251b4190c82a349586eb3bd26f60bc77d55930e759f38926ce9d20694772ed9cf85351402e', 4, 1, 'mobile', '[]', 1, '2018-09-05 10:54:55', '2018-09-05 10:54:55', '2019-09-05 05:54:55'),
('10b86109d8bedfdac04eb02051e240272624644a8104c2c27c30d6f81fc1c98cbc67b45820892212', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:10:38', '2018-08-26 13:10:38', '2019-08-26 08:10:38'),
('10eb7bde5527b24c6236f3173041ddda3d74b5cc767a7510ecd06582ec584e3c90781c662039afad', 4, 1, 'mobile', '[]', 0, '2018-09-25 17:22:22', '2018-09-25 17:22:22', '2019-09-25 12:22:22'),
('124e49d832061c94cfdd9b9bab3cc2247f86e2bbae9b6036f74590a0499becfad56cf7ffa4209a4a', 5, 1, 'mobile', '[]', 1, '2018-09-18 18:25:23', '2018-09-18 18:25:23', '2019-09-18 13:25:23'),
('1355dad18630d05a0307438e66eb9dba65d753dbdbbcb5d68b96a60b55e88e1ee7f18bfcc8a89e80', 12, 1, 'mobile', '[]', 0, '2018-09-27 12:53:56', '2018-09-27 12:53:56', '2019-09-27 07:53:56'),
('1403c874b0aaea906e493d5d75bd28731c37a2feaf08b81b4441e5980179d610c0c33f18b4b85dd5', 8, 1, 'mobile', '[]', 1, '2018-09-22 12:55:24', '2018-09-22 12:55:24', '2019-09-22 07:55:24'),
('146cb4106eaaad7a22cffa71797831429233747c530f5c03cadc23ad795b92cce3287b1354ba8c38', 4, 1, 'mobile', '[]', 1, '2018-09-25 18:20:01', '2018-09-25 18:20:01', '2019-09-25 13:20:01'),
('15d6f175d0865ce5c8eaefb95ab879bcab4e8a6a8f73bfabc00a9ac1367d7ce98ff603dd7802f599', 4, 1, 'mobile', '[]', 1, '2018-08-12 13:50:38', '2018-08-12 13:50:38', '2019-08-12 08:50:38'),
('1746ed931f866ea70918d66525636230bc264a06ae35554208b9a84c02433ae66ce3306a9a58f8b5', 7, 1, 'mobile', '[]', 1, '2018-08-28 17:18:21', '2018-08-28 17:18:21', '2019-08-28 12:18:21'),
('186d0e7299bd90e5ed4bd321e71c757ac2a3f6e404ee9df46e17a7d527bab2330310d049dbaf37cc', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:05:45', '2018-08-26 13:05:45', '2019-08-26 08:05:45'),
('18733c6f87acec263f4a6d22796ba7289e0d28b3b76b559c8ebc42c26dceb9f1e3a2e9e239f859d8', 7, 1, 'mobile', '[]', 1, '2018-09-19 15:09:01', '2018-09-19 15:09:01', '2019-09-19 10:09:01'),
('1999eedf23c761fb5c135b5ca3c52aba6575b3376a613fd7cd449f564bb259e9f1270804f3045c6e', 4, 1, 'mobile', '[]', 1, '2018-09-27 12:48:31', '2018-09-27 12:48:31', '2019-09-27 07:48:31'),
('1c4361b8d7556293a01223ff30345cc2a19e61b03a5f9a5c8438add6d1aaeba82519d78d89276358', 8, 1, 'mobile', '[]', 1, '2018-08-26 15:27:36', '2018-08-26 15:27:36', '2019-08-26 10:27:36'),
('1db74a965e818479b9f822c5f84a9a43122fd8cd6cee8bb08c2374db79de95b0454dffd71865159a', 2, 1, 'mobile', '[]', 0, '2018-08-07 17:29:31', '2018-08-07 17:29:31', '2019-08-07 12:29:31'),
('1eea8e6c6592d60da2d884df188d2012e81d94ae0714c836922b023c51515b6c799b6cc0ddaea103', 5, 1, 'mobile', '[]', 0, '2018-08-28 12:50:28', '2018-08-28 12:50:28', '2019-08-28 07:50:28'),
('1f6ce3e7fd1c1ec52acefa8fa3c98be837d0b9de60944c320b99edcda0f87bd380519d8a61b7e365', 5, 1, 'mobile', '[]', 1, '2018-08-26 16:17:04', '2018-08-26 16:17:04', '2019-08-26 11:17:04'),
('1f7139c27c9e747275d0fd9ed601936f464e9b28d62805eb881a5c9b56d89ee6f2b53ea8e989c876', 9, 1, 'mobile', '[]', 1, '2018-09-05 11:38:59', '2018-09-05 11:38:59', '2019-09-05 06:38:59'),
('1fe66a33b62642e6b94477626a63e719eff28dc571f5ba9559f0a96fc614f1ca473d1cb90cf17913', 9, 1, 'mobile', '[]', 0, '2018-09-03 13:53:57', '2018-09-03 13:53:57', '2019-09-03 08:53:57'),
('203fd4f573824b9f10b44be610e398180341ab2e6f7843b2863c66059d935b5bee870eceda906019', 2, 1, 'mobile', '[]', 0, '2018-08-26 12:24:00', '2018-08-26 12:24:00', '2019-08-26 07:24:00'),
('216f217e8012b88f276f6b65644503dc2dee84d2436e839219fe78e47fa728644d3277b25e4a7eed', 7, 1, 'mobile', '[]', 0, '2018-08-19 15:17:14', '2018-08-19 15:17:14', '2019-08-19 10:17:14'),
('21c5a49bd9e7de647c2a0c50c549aefae106abd195e7bde3523e824deea3440eb56e8af7cc19b369', 8, 1, 'mobile', '[]', 1, '2018-09-19 18:11:13', '2018-09-19 18:11:13', '2019-09-19 13:11:13'),
('232d740724de972b84386053505edddc64cb3eae5131c035c15dec70a36f7dcbea019221df8c44bf', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:55:51', '2018-08-26 13:55:51', '2019-08-26 08:55:51'),
('24003417d28f58f69397895a84cdbaa9ecf192d5754a88c6371f6e311998e7de5eaf6e75f725b12a', 4, 1, 'mobile', '[]', 0, '2018-09-27 12:44:46', '2018-09-27 12:44:46', '2019-09-27 07:44:46'),
('254538d2752d832b61bb4c891c2e188b333cecddbd1f3e3c853416cc193d32cfe8dda7b9f83b1de7', 4, 1, 'mobile', '[]', 1, '2018-09-22 12:32:28', '2018-09-22 12:32:28', '2019-09-22 07:32:28'),
('25535d1e870ee76cc5c462cac3dd419111e3ec054f2b2e5c6e20ed3ffa1220a1be9813c054380549', 7, 1, 'mobile', '[]', 1, '2018-09-06 16:40:43', '2018-09-06 16:40:43', '2019-09-06 11:40:43'),
('26c892232802df0c8de6e4a54db885647741c8030c9bc02fb689aa42a3d9d15454e1def3c1ae7d0a', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:09:23', '2018-08-26 13:09:23', '2019-08-26 08:09:23'),
('27b252fea85909f17565f1a1b32fcaad2e8776a11ec83638bf4ebeb97b3ec9d70dc1851e6e76f812', 8, 1, 'mobile', '[]', 1, '2018-09-26 12:21:41', '2018-09-26 12:21:41', '2019-09-26 07:21:41'),
('2a5efa9edd0aa6f2f273756b496b7f53c5a12c58b19e44dcddedea3a30fbc5b0254812f1edff3444', 2, 1, 'mobile', '[]', 0, '2018-08-28 14:46:43', '2018-08-28 14:46:43', '2019-08-28 09:46:43'),
('2b37aa72a6bed1dd511790a6af560a92f2d467dc7b3e6e05e82b318b715bf6a319e0e1df7f69d443', 8, 1, 'mobile', '[]', 0, '2018-09-25 17:08:01', '2018-09-25 17:08:01', '2019-09-25 12:08:01'),
('2c93ed423ff1b4a0f616048924d7c857bac042f8f4491099f773587cc2d2e14a71ae3be4f6644cb4', 4, 1, 'mobile', '[]', 1, '2018-08-28 15:01:33', '2018-08-28 15:01:33', '2019-08-28 10:01:33'),
('2d1230ccb1c5820192f802b230f8c13ebade3769be30fb2b3bbd86f8e4d064df6d11187a1ba96791', 4, 1, 'mobile', '[]', 1, '2018-09-19 11:31:39', '2018-09-19 11:31:39', '2019-09-19 06:31:39'),
('2f96d078b3be1a09bbba17c971a2ebdcb541ee4b6fa779e7da7b776412e650cb3d47d4bcc790da0a', 8, 1, 'mobile', '[]', 1, '2018-09-25 14:59:11', '2018-09-25 14:59:11', '2019-09-25 09:59:11'),
('2fe0e48c2a13b228099e7003daeab7adaa5d5d6848b10f913e2ad0317dfa1506ad389421e5effaf0', 2, 1, 'mobile', '[]', 0, '2018-07-26 13:20:29', '2018-07-26 13:20:29', '2019-07-26 08:20:29'),
('30d665f651791467cd18aaab91d0a713888b7888aecb5853b507a845a71879f426928f3fe6a9f089', 4, 1, 'mobile', '[]', 1, '2018-09-26 14:03:10', '2018-09-26 14:03:10', '2019-09-26 09:03:10'),
('3195724e38d0049c5b50b472cd6b62a992d1cbd1d152d2496499e7ee87dea76067cd87f7e675d8cc', 4, 1, 'mobile', '[]', 1, '2018-08-07 17:36:54', '2018-08-07 17:36:54', '2019-08-07 12:36:54'),
('3444c1ddd65183a1b5a5241c55eafe4f28087c4de4abcd2d9055da2c9fec129db6e737b064d67780', 7, 1, 'mobile', '[]', 0, '2018-09-20 16:01:56', '2018-09-20 16:01:56', '2019-09-20 11:01:56'),
('34a96cf74d122b2316191e4c938a2cdf417a069922bcfe72b8b71770aa21d34a5878cb689e532af9', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:48:29', '2018-09-25 14:48:29', '2019-09-25 09:48:29'),
('34ac1eb214f0b03e0bbbfa870ad12fbaf9bc9602372ae691466be988830dfee1860f0a3982e75ebb', 4, 1, 'mobile', '[]', 0, '2018-09-26 11:23:39', '2018-09-26 11:23:39', '2019-09-26 06:23:39'),
('350a4d90951c14898610c751cfc3e97b2367d0c7f17d6238765dbfee198e375212da7bbd0327a356', 4, 1, 'mobile', '[]', 1, '2018-09-19 11:27:06', '2018-09-19 11:27:06', '2019-09-19 06:27:06'),
('36ac436bf8b21eef7cc3d867a69f25c64b099fd60a35a16c27c4b85f749e2513ed33cff484986478', 5, 1, 'mobile', '[]', 1, '2018-08-29 12:46:48', '2018-08-29 12:46:48', '2019-08-29 07:46:48'),
('36f43bf0fb279c8ea81f67e8c9133e3766cbab82356eda9de3a2d4c8a1eff374b8f14041e88aeb4c', 4, 1, 'mobile', '[]', 1, '2018-09-27 13:10:46', '2018-09-27 13:10:46', '2019-09-27 08:10:46'),
('375e33a63cb5c391e41d7a5e444813c8191c8cf8be16673b03dfe4cb4f7ac8de538ccd2e9a243028', 7, 1, 'mobile', '[]', 1, '2018-08-29 17:22:57', '2018-08-29 17:22:57', '2019-08-29 12:22:57'),
('3827debb93b4e8e211eceb8856401c63882c0399c7ee86be9654b831024472f1f0a40f4676e9e252', 9, 1, 'mobile', '[]', 0, '2018-09-05 11:00:13', '2018-09-05 11:00:13', '2019-09-05 06:00:13'),
('394a2bbe26a26521f879089624288e71a27b756ac350905a122afdf7fb8b706ccdf672d722e3c473', 12, 1, 'mobile', '[]', 0, '2018-09-25 16:15:10', '2018-09-25 16:15:10', '2019-09-25 11:15:10'),
('398446e4821cf5c2c200a466086a2485f54b69db4e0e30e8fff74da3b83e03b06b5118ae40c3f3a2', 4, 1, 'mobile', '[]', 0, '2018-08-08 16:40:00', '2018-08-08 16:40:00', '2019-08-08 11:40:00'),
('39c220fe65976b67e3a1861e2e1812a8d557086d016d1b9ddac6fb3495fbe578c583738f937d2a8a', 2, 1, 'mobile', '[]', 0, '2018-08-06 15:22:45', '2018-08-06 15:22:45', '2019-08-06 10:22:45'),
('39d4e98d5c2b8d94f30352ce3d5ffe95ce659fc776591f146ad2cbec3284d4017ceebba55abce718', 7, 1, 'mobile', '[]', 1, '2018-09-02 11:10:37', '2018-09-02 11:10:37', '2019-09-02 06:10:37'),
('3a6f5e72254fba36a3ec1dafbbebfefc2f6bbc1827c845f3751cea53a2d7c702dc4c8b3c9dd977d1', 8, 1, 'mobile', '[]', 0, '2018-09-01 12:17:29', '2018-09-01 12:17:29', '2019-09-01 07:17:29'),
('3c9e376a72ce3dbbd81727abed6a4680a7fd7c1fbeca2b15224a9d7f6879c7e95a9b411c8e43d1b9', 4, 1, 'mobile', '[]', 1, '2018-08-06 17:11:16', '2018-08-06 17:11:16', '2019-08-06 12:11:16'),
('3cc944a9c7917151f085a6dc8e1521f4a289919322a6a4f8999ed65cbdba5b2bcf9291742eef7677', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:14:00', '2018-08-26 13:14:00', '2019-08-26 08:14:00'),
('3cf0ea451fe2c74f1b59f01232715f75fb687a2541d3603dadfffe053307003c8900f215f7672516', 4, 1, 'mobile', '[]', 1, '2018-08-06 16:37:22', '2018-08-06 16:37:22', '2019-08-06 11:37:22'),
('3e4191ddd94089fd962ed4da59493c187431ec6d12f60c0f81efb6501ec7709955099cad31187f85', 4, 1, 'mobile', '[]', 0, '2018-09-26 12:32:00', '2018-09-26 12:32:00', '2019-09-26 07:32:00'),
('3ec8e9d83f8b3cccea1fed6f0e050779f96a23b3b99d08ff13e681283f17cb7f8cc5c4f80b016419', 4, 1, 'mobile', '[]', 0, '2018-08-06 16:32:44', '2018-08-06 16:32:44', '2019-08-06 11:32:44'),
('3ef866ac28666d6690e8d240ef180ac69a67e928ed4f10f8715dfb4be763f5f8eb0dbcffa4534ac8', 4, 1, 'mobile', '[]', 0, '2018-08-06 17:41:44', '2018-08-06 17:41:44', '2019-08-06 12:41:44'),
('4410fca7d98dc1d08d82da2753caa81c4456734b390331e41ae83f4309892b60b49dca1c00f1065c', 2, 1, 'mobile', '[]', 0, '2018-08-06 15:14:04', '2018-08-06 15:14:04', '2019-08-06 10:14:04'),
('460473304a6d4390a46e7c4b27bf22925787fd817cf58c5caf67cc93cf2b907658e4ee1005a6592e', 4, 1, 'mobile', '[]', 0, '2018-08-06 17:20:21', '2018-08-06 17:20:21', '2019-08-06 12:20:21'),
('46089f77dc30c63f75414ad02624b920c0c165891093fc17d481a8121caf7a8ac452c966e1773fca', 13, 1, 'mobile', '[]', 1, '2018-09-25 15:49:25', '2018-09-25 15:49:25', '2019-09-25 10:49:25'),
('465a4f77a2a2d9332727b98c3cd6b75279f49634b3e30d65fe862ddc7e6736f8395c4f608066e218', 5, 1, 'mobile', '[]', 0, '2018-09-18 18:41:48', '2018-09-18 18:41:48', '2019-09-18 13:41:48'),
('475701e3a87cdbcc0def1de906aa9a046adf502190dc81eccdd9985b1d09afb522dba566434d71d2', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:10:58', '2018-08-26 13:10:58', '2019-08-26 08:10:58'),
('4b261234ab499fd1bb5d8abc5c523c73151e5a51a204b1a8acaf02159d91bf045095a46d3adff711', 2, 1, 'mobile', '[]', 0, '2018-08-08 16:36:29', '2018-08-08 16:36:29', '2019-08-08 11:36:29'),
('4bf279d303953d19233ad337810d3526a5ea8662e4be0e03bf1ffa1864891212d38b2ebc1829f5e1', 4, 1, 'mobile', '[]', 0, '2018-08-06 17:18:58', '2018-08-06 17:18:58', '2019-08-06 12:18:58'),
('4cca1fa61bd6d30aaf41083084183aabf106eb390c47ba3eac97227052ca2c31953b17fe2007fca4', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:51:39', '2018-08-26 13:51:39', '2019-08-26 08:51:39'),
('4d71780ee81875051c966f006daada6ca8beaa5dd9d28cf679db3110046c65b23f9acd415701c2ae', 4, 1, 'mobile', '[]', 0, '2018-09-26 13:01:52', '2018-09-26 13:01:52', '2019-09-26 08:01:52'),
('4db79a27d8c83795d0e12b7aa8880ab21a06036d95d9d815e5aee14e8204b87d1df9bb085041a4d4', 4, 1, 'mobile', '[]', 0, '2018-09-06 16:45:32', '2018-09-06 16:45:32', '2019-09-06 11:45:32'),
('517668b5a27f9f603adbb1a2f0870db1d2f5a892446730fe8448de2fe61d346a055754d67cc2cabd', 7, 1, 'mobile', '[]', 0, '2018-08-29 17:29:33', '2018-08-29 17:29:33', '2019-08-29 12:29:33'),
('51842a8f7fc2b27389bbed60a971632c340699f43c9a261d735ff3a242e055c2cbb8820ce2f24a67', 7, 1, 'mobile', '[]', 0, '2018-08-26 12:04:24', '2018-08-26 12:04:24', '2019-08-26 07:04:24'),
('522bc83b83c99e81bd81d7548d872733974205b7142dae866554f52dfdf392f5c4de702f39bb1669', 7, 1, 'mobile', '[]', 0, '2018-09-19 17:25:05', '2018-09-19 17:25:05', '2019-09-19 12:25:05'),
('526abe8f478f0f85242be38c78342ce673668cab455605dd65964e9e0ffd0e430ff950be1e87411e', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:46:35', '2018-09-25 14:46:35', '2019-09-25 09:46:35'),
('52febf634d01cfb16d11550eb4dbde82a2b5314fcb0c2cf7abe51ab7cf7276d3d31451960d93b9fa', 5, 1, 'mobile', '[]', 1, '2018-08-30 15:40:37', '2018-08-30 15:40:37', '2019-08-30 10:40:37'),
('548864f568cc888a5196071764bb7eb5a7cdccda38d4b90474f8a20875b6fc8494351206a06a5166', 7, 1, 'mobile', '[]', 1, '2018-09-22 13:24:07', '2018-09-22 13:24:07', '2019-09-22 08:24:07'),
('5572fbd4c6b45d779ec1dba0bd9f2250a0cbfdc9100859959ac898755629df1530ba9ef47e31d72f', 4, 1, 'mobile', '[]', 1, '2018-08-19 13:15:43', '2018-08-19 13:15:43', '2019-08-19 08:15:43'),
('559ba14074a866ed7f92a6e44e7da8b7b7fab90ec97cbba1b3b225291dc6480f3554d391ee846dd5', 7, 1, 'mobile', '[]', 0, '2018-09-25 14:44:07', '2018-09-25 14:44:07', '2019-09-25 09:44:07'),
('55d2d6785586deea9cee1c84330d8a33240a7c5b032786c867c4099d6093ec4b8165c5a8b9be536c', 8, 1, 'mobile', '[]', 1, '2018-08-30 14:29:54', '2018-08-30 14:29:54', '2019-08-30 09:29:54'),
('5b02ad6c92d5333c5bbcd1953633e066eb5b0051d45d3b18c95814b5886ab5aeb5b5fddf07ff2517', 2, 1, 'mobile', '[]', 0, '2018-08-19 14:09:25', '2018-08-19 14:09:25', '2019-08-19 09:09:25'),
('5b53b0d57a13fa94e9807c3b436f2a4b8dfea38792c05f2abef7d4736387a9e26fcbbe2aea0e523b', 12, 1, 'mobile', '[]', 1, '2018-09-19 11:46:00', '2018-09-19 11:46:00', '2019-09-19 06:46:00'),
('5cfe146f4f7e460483c03eb650f41b85ed7c4d68c28d7e1d10ac754a95b9666d009e7828af8cfd62', 4, 1, 'mobile', '[]', 1, '2018-09-25 19:05:23', '2018-09-25 19:05:23', '2019-09-25 14:05:23'),
('5d44f22e4eaffc1541838fe1c5c10ad41e57f69e795b1b335417e7d201bf70763c43380e20403a41', 4, 1, 'mobile', '[]', 1, '2018-09-22 12:58:30', '2018-09-22 12:58:30', '2019-09-22 07:58:30'),
('5e2f8482f6f6663163b9c6e96cae336ae1a2b04a11fb8e076f23e8b85ad32fe6434ed9b839d94c4d', 14, 1, 'mobile', '[]', 0, '2018-09-25 14:33:24', '2018-09-25 14:33:24', '2019-09-25 09:33:24'),
('61bfed3bac34570415e82d8c9bc9cfb23509088f933bcc856a5208ae203854a149be934bcd81c9cf', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:45:03', '2018-09-25 14:45:03', '2019-09-25 09:45:03'),
('61e5660c88b6d7cc56e6aead9bc73928704c592817c821c15c84331a0f612069907d3be69739e831', 4, 1, 'mobile', '[]', 1, '2018-08-29 17:26:26', '2018-08-29 17:26:26', '2019-08-29 12:26:26'),
('62b889663df4b6561d1a233ce82a684c7b75e914dd242debe2bf1be40b7ba68caf85b1cb594af4f1', 7, 1, 'mobile', '[]', 1, '2018-09-01 12:12:49', '2018-09-01 12:12:49', '2019-09-01 07:12:49'),
('639b25a70772ca1971155b763beec8d14b4ffbac176ca44168c4bb3fb83964a788e874a8ec8889f8', 12, 1, 'mobile', '[]', 0, '2018-09-19 11:10:56', '2018-09-19 11:10:56', '2019-09-19 06:10:56'),
('65a5f8afdbc6b91e8adbc537864ef457f9fc698e288ba3420c6c5053e47d167a1669d4daa8c9eb0f', 7, 1, 'mobile', '[]', 0, '2018-09-22 16:16:04', '2018-09-22 16:16:04', '2019-09-22 11:16:04'),
('66470f0aa40ef2004d5e6ce3b5cc8086366eff79df4a8f348b37aeff210b812c2f479896e62dd6aa', 5, 1, 'mobile', '[]', 0, '2018-09-18 18:40:42', '2018-09-18 18:40:42', '2019-09-18 13:40:42'),
('66fa6b1bd0b17ebd7a93090539f6242a651e85af6bef4fdf7ef856618d2dc54cf9e7be14c0efee80', 8, 1, 'mobile', '[]', 1, '2018-08-30 17:00:07', '2018-08-30 17:00:07', '2019-08-30 12:00:07'),
('6712e2e4c2c5b41b5291b987a89e09786597863ee95e4d2cf6d2994d46277ef8a6d6e97a50e9e2e2', 5, 1, 'mobile', '[]', 1, '2018-09-18 16:49:04', '2018-09-18 16:49:04', '2019-09-18 11:49:04'),
('67aaf6da6931f63251ecd27a362875638f7d934e73891642482d427100fa65b7d6fab5fa6b93639c', 12, 1, 'mobile', '[]', 1, '2018-09-19 18:11:56', '2018-09-19 18:11:56', '2019-09-19 13:11:56'),
('688c331864ba83630d81536fca2d03d495732aff08ac15047d6e6f768d857419ad13cad528c758b7', 4, 1, 'mobile', '[]', 0, '2018-09-27 12:35:49', '2018-09-27 12:35:49', '2019-09-27 07:35:49'),
('68b23429560ca7e731897c4d17b4e2c87efb4db1f226226d31bf4abcbe960c3f49e8b8ab9b88fa58', 4, 1, 'mobile', '[]', 0, '2018-09-02 12:37:36', '2018-09-02 12:37:36', '2019-09-02 07:37:36'),
('69f6458a4970c5ea35f7b30bf6a7e9d640e0e0c8c4193b9bc0841f6d1357170657effce4b126573e', 5, 1, 'mobile', '[]', 1, '2018-08-30 16:09:36', '2018-08-30 16:09:36', '2019-08-30 11:09:36'),
('6a3c33099a2e9bfe40ed7d582fd961092bc4c93c522c2b378dc1f2a0c5281727af49b21fa71f114f', 7, 1, 'mobile', '[]', 1, '2018-09-06 17:00:41', '2018-09-06 17:00:41', '2019-09-06 12:00:41'),
('6a54b543c8190e03beeb6b1eb4f630acdc50dd4e3e395ec3343bb6143cb6edaa7ea6ecbac992dd91', 7, 1, 'mobile', '[]', 0, '2018-09-18 18:36:54', '2018-09-18 18:36:54', '2019-09-18 13:36:54'),
('6a719a328a65e298d06fad226f0bf3d5a9c9cf75ee71fa63e94465e0518cd2148f7b46add3e464ef', 7, 1, 'mobile', '[]', 1, '2018-09-01 18:10:09', '2018-09-01 18:10:09', '2019-09-01 13:10:09'),
('6aee03f3a77d780713048886ac993e5ab36b0b5ac7f75845ebe8ee0bb9ca4c5aae5c0f3b3bc4e5da', 4, 1, 'mobile', '[]', 1, '2018-09-27 13:01:11', '2018-09-27 13:01:11', '2019-09-27 08:01:11'),
('6e3a210f6f9f2e85a9b0a807c93a1516e789ff65be9ef66ba2eb22cbcf804d854d68aab0c2ba5a00', 4, 1, 'mobile', '[]', 1, '2018-09-26 12:22:06', '2018-09-26 12:22:06', '2019-09-26 07:22:06'),
('6e518927d2e9b54fbf429d6a6938ab753e5b3c6950c62f179db5db577375965a0a7be1e655446746', 2, 1, 'mobile', '[]', 0, '2018-08-06 15:21:39', '2018-08-06 15:21:39', '2019-08-06 10:21:39'),
('6ee3ab9af806e8fc8304a3e38347cfd50b8425f2cbfba8f81c2b56558f57f48ce7d3713241c84903', 8, 1, 'mobile', '[]', 0, '2018-09-25 17:21:09', '2018-09-25 17:21:09', '2019-09-25 12:21:09'),
('6ff42e9c2d92bee94c3f9b3213dd8e896aa3389905bf26d29778ac2d3b9c7d38754bc1c67b9802c8', 4, 1, 'mobile', '[]', 1, '2018-09-27 16:27:41', '2018-09-27 16:27:41', '2019-09-27 11:27:41'),
('724511f7593dc705b3ff8e609d792870e248eebb1bd5df7e3c213cda12d059f5a5b0b6308e59abef', 4, 1, 'mobile', '[]', 1, '2018-09-19 17:01:36', '2018-09-19 17:01:36', '2019-09-19 12:01:36'),
('72a3c00b5aa7d49b9c112ac996c6f567e3726231f14dbbe2a1e922c10c4051d8046cfb9c8df558de', 7, 1, 'mobile', '[]', 0, '2018-09-05 15:49:49', '2018-09-05 15:49:49', '2019-09-05 10:49:49'),
('742b203e4c40b89880285f44ca811680381c8116ab9bd8b342ccbb3fb813b334a99265b490c7bfe8', 14, 1, 'mobile', '[]', 1, '2018-09-23 12:48:34', '2018-09-23 12:48:34', '2019-09-23 07:48:34'),
('745830b3c3cf2c112d2f58a3246ccd4b7a30e1fea8fffaa38293cfd9596b11ff035a8089f13c0f82', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:49:56', '2018-09-25 14:49:56', '2019-09-25 09:49:56'),
('760b7717b3e3829aed86298151415510719653aa79615fd6a667f7a1af04ec5972ea3fea125acfe3', 4, 1, 'mobile', '[]', 1, '2018-08-06 16:58:14', '2018-08-06 16:58:14', '2019-08-06 11:58:14'),
('762d1ace9a320e6e1c6c01b148cb8b6752c6e7ce5cb8e7bfc48b94d4634d312b3e96e9c477dcb5bc', 4, 1, 'mobile', '[]', 0, '2018-09-27 13:10:03', '2018-09-27 13:10:03', '2019-09-27 08:10:03'),
('766c7294410a202040015da91a9326052c7f3583eaa1206dff7d1a2210d576850a3bc7ed90b221cc', 8, 1, 'mobile', '[]', 1, '2018-09-22 16:14:54', '2018-09-22 16:14:54', '2019-09-22 11:14:54'),
('78a0910c96df8b4cd6bb13efde8699e4ffaf08d7a39ca99f93f1206ad503f4f16ee7e000a050759b', 8, 1, 'mobile', '[]', 1, '2018-09-19 16:39:16', '2018-09-19 16:39:16', '2019-09-19 11:39:16'),
('7917dfe897f8ce6f7bd405163b37f58794fcb6b06b0f6d57e85efb7856c85d768a27e072b4918d6c', 5, 1, 'mobile', '[]', 1, '2018-08-30 15:50:11', '2018-08-30 15:50:11', '2019-08-30 10:50:11'),
('7922986977dd63534f5b9175b1abd04dea2a85efad8567a2fe0e81fad0209b44e474d34f986d98ea', 14, 1, 'mobile', '[]', 1, '2018-09-25 13:25:37', '2018-09-25 13:25:37', '2019-09-25 08:25:37'),
('7991b80761f72b6ada36ed1f18e49fb68aa28a2f8eb02442b32797189043da15478abd70f44143e5', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:44:45', '2018-09-25 14:44:45', '2019-09-25 09:44:45'),
('79a5c1ad73c413c3104629b62c076a6f965de61ff4be2fd9adb8861390b696d3d471c3000f5bdd01', 4, 1, 'mobile', '[]', 1, '2018-09-05 11:46:30', '2018-09-05 11:46:30', '2019-09-05 06:46:30'),
('79a645f8f3efe427ea070bacb5d9c6ca422bf4bf5abe9ce13110998c77802a3ff77b01e26fe0279d', 8, 1, 'mobile', '[]', 1, '2018-09-22 12:54:18', '2018-09-22 12:54:18', '2019-09-22 07:54:18'),
('7b6d49ac0c85bdc42a9f2df9431ee9e58468f077750d5bc551acb5bb78ae7470282a877270df55b3', 8, 1, 'mobile', '[]', 1, '2018-09-26 12:35:52', '2018-09-26 12:35:52', '2019-09-26 07:35:52'),
('7c0b0c6cf9f545ad470f73cb35b375bc6b58fe7687d9385abe269b22885677589892e33a645201f6', 4, 1, 'mobile', '[]', 1, '2018-08-19 14:43:12', '2018-08-19 14:43:12', '2019-08-19 09:43:12'),
('7da403f79ffdec068f816ee7e498509d959ed3b44d4ff6a8d69052cc52d4d91e78dcac2802611cdb', 4, 1, 'mobile', '[]', 0, '2018-08-06 17:40:58', '2018-08-06 17:40:58', '2019-08-06 12:40:58'),
('7f2b870e65005328a2941515f0148da0faa840cb5417466561f8e1178d87293a5848da30a5c8655b', 2, 1, 'mobile', '[]', 0, '2018-08-05 10:43:15', '2018-08-05 10:43:15', '2019-08-05 05:43:15'),
('8030efab7f9b3cac7e38d1a711ea62b295b569f66737a5d21d84a2ad1cb5dccbbc7057ff64d908cd', 8, 1, 'mobile', '[]', 0, '2018-08-30 14:22:39', '2018-08-30 14:22:39', '2019-08-30 09:22:39'),
('8047c296f84ea32f3c82369e1e6a621e43a0ef3f8b03dd3b699631d7d98c686e97bf39e1a17e4a1e', 7, 1, 'mobile', '[]', 0, '2018-08-26 12:01:51', '2018-08-26 12:01:51', '2019-08-26 07:01:51'),
('80f7dffab0323f7fb2028bebc9d4abd54986e6120121ab4f5b8ae0de5ad07708b1950bd912992c8d', 4, 1, 'mobile', '[]', 1, '2018-08-06 16:53:35', '2018-08-06 16:53:35', '2019-08-06 11:53:35'),
('8344d7342cd0ca5856b9cee73d635e13a9503b751e891d75fe29d34f34dd152451c63928fb7bc83a', 2, 1, 'mobile', '[]', 0, '2018-08-07 13:23:48', '2018-08-07 13:23:48', '2019-08-07 08:23:48'),
('834c28f442fc6c42cf38cf94933710b24c6f0f8d848a3350846a321f1609310690e5c358a7d02e16', 2, 1, 'mobile', '[]', 1, '2018-08-12 13:40:30', '2018-08-12 13:40:30', '2019-08-12 08:40:30'),
('84a0fbe9c140a6f77b0424edc919699553ddccd7b61b7c8e71487041244232811bed7a553e0b3eb3', 7, 1, 'mobile', '[]', 0, '2018-09-27 11:08:22', '2018-09-27 11:08:22', '2019-09-27 06:08:22'),
('84a9cfdbd717a966f2bbcbe09e36a852646479bfdd6271c52816f90b86fb58c017679ce6aca3c840', 4, 1, 'mobile', '[]', 0, '2018-08-06 17:33:29', '2018-08-06 17:33:29', '2019-08-06 12:33:29'),
('84b6e71ac587a14b36e317124e887003f5012b370e1fde4d4a83c1baa2d9b7f7034abda5964fca77', 8, 1, 'mobile', '[]', 1, '2018-09-26 12:52:51', '2018-09-26 12:52:51', '2019-09-26 07:52:51'),
('86a00c11bb7fb5b57fc9696122424114bb4ac7af78412bd3d96cab0b2d6e25d626fbbab5aeb60c9e', 4, 1, 'mobile', '[]', 1, '2018-09-27 12:33:12', '2018-09-27 12:33:12', '2019-09-27 07:33:12'),
('87c8b602ca2ba83375e115c9262226ec8748659a260b01a427db8606c6e8792c957c2333a0ead4eb', 4, 1, 'mobile', '[]', 0, '2018-09-26 12:42:58', '2018-09-26 12:42:58', '2019-09-26 07:42:58'),
('87de87dd7e933abd1d608ae8a82a6cca457a31fd9cc6185191bf8c155228433b84248f9f00f93435', 2, 1, 'mobile', '[]', 0, '2018-09-06 14:53:28', '2018-09-06 14:53:28', '2019-09-06 09:53:28'),
('87e13143b07ae01f051ea09c2260aa73b12d44774296536db1779fd74e0a4f15f92a350234effc83', 5, 1, 'mobile', '[]', 1, '2018-08-30 15:41:39', '2018-08-30 15:41:39', '2019-08-30 10:41:39'),
('89fb8660618433416e9b0bccc7467b48016dc3b06828449771f27febda21e38bc27ffdaeade861d8', 4, 1, 'mobile', '[]', 1, '2018-09-22 13:24:36', '2018-09-22 13:24:36', '2019-09-22 08:24:36'),
('8a6aa1675c2183054f63866825f01ec4f5d05c7829f2f0f2ed7a9e4cafb1e7e4ed5d932ddd6e9a92', 3, 1, 'mobile', '[]', 0, '2018-07-26 13:11:28', '2018-07-26 13:11:28', '2019-07-26 08:11:28'),
('8b57d0be2b89895085beaf792248b5f99bb5c861e0ef795347cf3863d48e279019023618a4dcee4c', 9, 1, 'mobile', '[]', 1, '2018-09-03 13:40:52', '2018-09-03 13:40:52', '2019-09-03 08:40:52'),
('8b8c508ea5659bcda553e309d31a31830b6dc456dd81a6f2840cafd9fab74e30f6f4975539b9a003', 8, 1, 'mobile', '[]', 1, '2018-08-26 16:12:22', '2018-08-26 16:12:22', '2019-08-26 11:12:22'),
('8c0e23086e6dd28ab1a5bc4d6d86253724e3e14e602a5cd1e5326657b3a7e752337d8a434e8d919e', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:58:31', '2018-09-25 14:58:31', '2019-09-25 09:58:31'),
('8c54b9b1112859761f096f205d26e356b58e9c32b5f3359b4d7c65a58d8dc6a55d5b8b00be2138c6', 12, 1, 'mobile', '[]', 1, '2018-09-19 11:27:37', '2018-09-19 11:27:37', '2019-09-19 06:27:37'),
('8c641d7b39d33f89146ab7241f0b068a48247c0a64d1e7a2c03391a26aa854a6a7b411041c15b522', 7, 1, 'mobile', '[]', 1, '2018-09-25 14:44:18', '2018-09-25 14:44:18', '2019-09-25 09:44:18'),
('8d5994926f227bce802230d4d737a2628e4cd1da5b00f255c207c7e29dd873d7ed1da1e40e91aa5e', 2, 1, 'mobile', '[]', 0, '2018-08-06 15:22:39', '2018-08-06 15:22:39', '2019-08-06 10:22:39'),
('8e698e4fda5153cda58dbebb18009d16eff7638e3a03afc7f4b8c25f97d97c8026e47e710fc9857c', 12, 1, 'mobile', '[]', 1, '2018-09-19 17:38:34', '2018-09-19 17:38:34', '2019-09-19 12:38:34'),
('8f0b620f2a951aa2d884126fe16272185e1b740bf730bcc58768929e1d24462afa21e13c0343c41a', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:10:56', '2018-08-26 13:10:56', '2019-08-26 08:10:56'),
('911ce9137a98c25060d816c46f04dd903d7d429b0f02241deefaf0092209881b2fef5afe51e359dc', 7, 1, 'mobile', '[]', 0, '2018-09-27 16:42:12', '2018-09-27 16:42:12', '2019-09-27 11:42:12'),
('920aa091dbf0ab33bdc30b3508252ce702acf197e1e93ee11737da148f09af56fd09a8e954005128', 2, 1, 'mobile', '[]', 0, '2018-08-06 17:25:24', '2018-08-06 17:25:24', '2019-08-06 12:25:24'),
('926608525662eb148a74676e8f1df0ae72557c19ba618fbc8d9ce883758a03f955b2c50d567aca10', 4, 1, 'mobile', '[]', 0, '2018-09-27 16:31:51', '2018-09-27 16:31:51', '2019-09-27 11:31:51'),
('92d3c959a15ebf1197c96b888a6c751b7fd70289b3fae9a5413790c8a15fe74cecd411ef37d11e19', 4, 1, 'mobile', '[]', 1, '2018-09-25 17:41:54', '2018-09-25 17:41:54', '2019-09-25 12:41:54'),
('9597e4eac4359863467534f17ecbb7390586d3baeac69c2fb014784ef2ee58de1ba7dbad6d2182a5', 2, 1, 'mobile', '[]', 0, '2018-08-19 16:56:22', '2018-08-19 16:56:22', '2019-08-19 11:56:22'),
('969727b3e1f48a4d1493fd287f9c3c8a470c9fcc39375e4f4c9863142efdf3e2edd2408da4db9494', 4, 1, 'mobile', '[]', 0, '2018-08-29 17:36:49', '2018-08-29 17:36:49', '2019-08-29 12:36:49'),
('96c006817c3a10ad64bd322501321912216eb719053021bb30f5ae1c6a6bea345b5834feebbd9f47', 5, 1, 'mobile', '[]', 0, '2018-08-30 15:31:41', '2018-08-30 15:31:41', '2019-08-30 10:31:41'),
('96c711c2efbc2cb0b7f4cf894bfd54a692eb1a99cbfa8bf19554f29ab57139c0d9d73c169a600a26', 2, 1, 'mobile', '[]', 0, '2018-08-06 15:18:24', '2018-08-06 15:18:24', '2019-08-06 10:18:24'),
('973d6518e070915575bad64db68d026a1bc38201beab1b6cc151ae96381e5bd44a2ce62e2ce08a20', 7, 1, 'mobile', '[]', 1, '2018-09-05 13:23:14', '2018-09-05 13:23:14', '2019-09-05 08:23:14'),
('987f0989fa2ef244b829dab944cba681b5b5fcbe4b57b5efc0a16aa843d1d411c35e61e1920f2103', 2, 1, 'mobile', '[]', 0, '2018-07-30 16:50:52', '2018-07-30 16:50:52', '2019-07-30 11:50:52'),
('98aa8530ce8bd362f47f68c3a01d36546e9586c62252f1888dec0884ec49cfe9e957d7059a98976e', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:25:33', '2018-08-26 13:25:33', '2019-08-26 08:25:33'),
('98ff40cd8978dca723780c9e9ad8f67700968561d3220bf5e2eeb4c594c31b492ce7023ed6289e2a', 14, 1, 'mobile', '[]', 1, '2018-09-25 14:42:57', '2018-09-25 14:42:57', '2019-09-25 09:42:57'),
('9dda1ce8f4c0970a7b4f758517f0a2d79f80a051d77caaa010c1fe76aacc0051a190ffa46ed2cc07', 8, 1, 'mobile', '[]', 1, '2018-09-19 16:42:41', '2018-09-19 16:42:41', '2019-09-19 11:42:41'),
('9f13cb2a5871349cb3a6822cd02675fec7784d73acc0c3c906674848b2baa9292e6d540008102776', 8, 1, 'mobile', '[]', 0, '2018-09-22 12:23:54', '2018-09-22 12:23:54', '2019-09-22 07:23:54'),
('a0461e76dc927c599181a4c07cd9319c8b03a0e8884084a2c7e5cb755e3891979eea4d1ab16435a8', 4, 1, 'mobile', '[]', 1, '2018-09-06 16:36:01', '2018-09-06 16:36:01', '2019-09-06 11:36:01'),
('a0b2609e8047053bea1362011d9769aa1a7c8816e4b3a0debd908dfe74de9104da5a53bc9a7db9fd', 7, 1, 'mobile', '[]', 0, '2018-08-28 14:47:13', '2018-08-28 14:47:13', '2019-08-28 09:47:13'),
('a3a09a16b73a2ac551e9571c2bd12fcc06d8307dc7e24d5dfa1258d4bb12980e1c0c7e38e7e7f1bc', 7, 1, 'mobile', '[]', 1, '2018-09-06 16:55:49', '2018-09-06 16:55:49', '2019-09-06 11:55:49'),
('a3a44fe4e3cfbf6168ae112ebde693a56c54e26ad208250633557113c2f5284e5da9f855854005a3', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:49:33', '2018-09-25 14:49:33', '2019-09-25 09:49:33'),
('a435c6bc7c4be5af55683506a16ff88cbe0820b926b90873ce00ac098f9be7ae749ddac175ab4c43', 4, 1, 'mobile', '[]', 0, '2018-08-29 17:35:37', '2018-08-29 17:35:37', '2019-08-29 12:35:37'),
('a483e76b2aa10d23a563ce25b40ae1eebfce93f05752186910f68440d0c5c807270584d8f54d9c00', 7, 1, 'mobile', '[]', 1, '2018-08-26 10:41:01', '2018-08-26 10:41:01', '2019-08-26 05:41:01'),
('a49ac9f70c878227cb660882ed26aee3e7acf3428242b00b95f07380589fb74aab19ebd1f7fb5706', 5, 1, 'mobile', '[]', 0, '2018-08-19 19:02:49', '2018-08-19 19:02:49', '2019-08-19 14:02:49'),
('a8906a81852264daa4a555e40b6935f65facf49e638cb1267c4cc38fb21fcce6a44c957c9cbd06ef', 4, 1, 'mobile', '[]', 1, '2018-09-27 16:29:55', '2018-09-27 16:29:55', '2019-09-27 11:29:55'),
('a900dc6f33fe2cc7e62eea9e375a213f5e79dfd1d9ed0577bf25a9e684bb90b34f34dcbf903e3cb6', 4, 1, 'mobile', '[]', 1, '2018-09-02 12:18:02', '2018-09-02 12:18:02', '2019-09-02 07:18:02'),
('a9d29dcf8c50568238acb5173678af847c131e5eade12e3a23cf0f6185b631448ba0ec4fc0df68b6', 5, 1, 'mobile', '[]', 1, '2018-08-29 13:26:20', '2018-08-29 13:26:20', '2019-08-29 08:26:20'),
('ad3c75ca4a9018c455d927287fa032b991a018a52355b680e6ff65eecefa91f99b81409367ec8e88', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:10:45', '2018-08-26 13:10:45', '2019-08-26 08:10:45'),
('aeff9e34fce07c131180e5e3fae1ba4ceef9bd6e10e9aaa29eac1bcdecf70f7cb2bf0631b2aa3703', 2, 1, 'mobile', '[]', 0, '2018-08-06 17:29:37', '2018-08-06 17:29:37', '2019-08-06 12:29:37'),
('af7e4618c90bff4f4df1cae94f47d1c5f2b3875a5800ed1f77ff1fecd879509e3a6f1cf59e3635a2', 12, 1, 'mobile', '[]', 1, '2018-09-19 11:10:32', '2018-09-19 11:10:32', '2019-09-19 06:10:32'),
('b1668f9f983e4abf34cd15ab970db11338b46ec1a1abf00d19217e1ec8efb542ee0d40e3663b5918', 4, 1, 'mobile', '[]', 1, '2018-09-25 18:11:39', '2018-09-25 18:11:39', '2019-09-25 13:11:39'),
('b247907e65a85bc261062edd310765a76600bc45bf7168fbcf82cdf58e19e579b3020915a81586d6', 7, 1, 'mobile', '[]', 1, '2018-09-19 15:08:41', '2018-09-19 15:08:41', '2019-09-19 10:08:41'),
('b2726ddb44068696baf2abcf449c889a852929d1f7e35ed9d1cd4ba054768ce9d432b0f9581f228e', 7, 1, 'mobile', '[]', 0, '2018-08-28 17:54:32', '2018-08-28 17:54:32', '2019-08-28 12:54:32'),
('b2f532f74a1b1422e9b418fc1df5301397807d99e8677baf23e83511c0c7f1387481eb22f9689b57', 2, 1, 'mobile', '[]', 0, '2018-08-12 13:42:23', '2018-08-12 13:42:23', '2019-08-12 08:42:23'),
('b45330bdf80cae119aa1bcfe1c8a2ad26a795ea198b1e5578940a78770b7ef295c61bc5396e38238', 4, 1, 'mobile', '[]', 1, '2018-08-06 17:01:55', '2018-08-06 17:01:55', '2019-08-06 12:01:55'),
('b46ad9a43332adc6376bc95e77739e631b7f9129d96be9d5508fe8218e14c40993ab6ce8ce146b95', 8, 1, 'mobile', '[]', 0, '2018-09-20 10:27:58', '2018-09-20 10:27:58', '2019-09-20 05:27:58'),
('b4aa102807257ccbde8a10b3c28cb589e2cd3c00671c2ae42a4bdab110ee048329bf08974c1faeae', 5, 1, 'mobile', '[]', 0, '2018-08-29 13:27:54', '2018-08-29 13:27:54', '2019-08-29 08:27:54'),
('b7b1b6b12bb1d0ba667662e8d0e922885f5d98e4873b9ede9a61eb2b74e6dcff0b39478e9f1d0925', 4, 1, 'mobile', '[]', 0, '2018-09-25 17:06:40', '2018-09-25 17:06:40', '2019-09-25 12:06:40'),
('b7dd4747d55eb031af4bef0d2427e6ba4bb9f1e02f15db3a56a8d5cb6370a23389ea7cba1126d07e', 14, 1, 'mobile', '[]', 0, '2018-09-25 14:42:40', '2018-09-25 14:42:40', '2019-09-25 09:42:40'),
('b7f286af59310770b038337848beea837b6a4eed4e99a8144b3365b2f57badecc6ae12a4d7c73bba', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:14:59', '2018-08-26 13:14:59', '2019-08-26 08:14:59'),
('b8207accec1d7105b46eed814db13e1a1d3010f4ed6aa6267a6033662b326556e6dbb9d000c5a3af', 7, 1, 'mobile', '[]', 1, '2018-09-02 16:22:52', '2018-09-02 16:22:52', '2019-09-02 11:22:52'),
('b8786f51ca6c799593c5fdb2414a65407328655c8ddb7696a6f54b912747dd872e75b08cbc61d89a', 4, 1, 'mobile', '[]', 0, '2018-08-06 17:01:08', '2018-08-06 17:01:08', '2019-08-06 12:01:08'),
('b99ff5af47c31c2e0f0e2c750ac04f404ed9d5dec5fe59a663a65eecafa5271ecb9df3df723f3c13', 4, 1, 'mobile', '[]', 1, '2018-09-05 12:12:02', '2018-09-05 12:12:02', '2019-09-05 07:12:02'),
('bc760120cee782ee07901ba3571f74fda8f16ac6f6935c3675e58d2b7dd7ed9349b9d5e69891b07d', 8, 1, 'mobile', '[]', 0, '2018-08-26 18:52:04', '2018-08-26 18:52:04', '2019-08-26 13:52:04'),
('bc9c31de75dbe2607838f6a136a1e6b1a93194f4511186c676ba091265b5d49b7f1e0c15c99469e9', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:47:39', '2018-09-25 14:47:39', '2019-09-25 09:47:39'),
('bd3504abf9d9dad5738b16466bcfad4b6fb1f410ae6a99e3cdf3e59b0a3a93f910849b23d88d0786', 4, 1, 'mobile', '[]', 0, '2018-08-06 17:20:52', '2018-08-06 17:20:52', '2019-08-06 12:20:52'),
('bdd555119aab34afacc55e58241d6ecd9c58b4d4938ceb2a1f55eca19e814b19ce796b51ac072a23', 5, 1, 'mobile', '[]', 0, '2018-09-18 16:45:49', '2018-09-18 16:45:49', '2019-09-18 11:45:49'),
('bdd8f4b230b946ecc0fbaea2c40ae97a3c32e76008b4ca3f5b43aaec072fdd12e6db37e4da8bef04', 9, 1, 'mobile', '[]', 1, '2018-09-03 14:04:45', '2018-09-03 14:04:45', '2019-09-03 09:04:45'),
('bde7736288340dfbc4f9f0860441824ac6f8209c8ace1fb1976c38f98b2be1b4b6daa78a438e2640', 8, 1, 'mobile', '[]', 0, '2018-09-19 10:53:27', '2018-09-19 10:53:27', '2019-09-19 05:53:27'),
('bdff31ea162ebc648f32914fdbe37c90d88e22c45e3fced8e416ab8856f87ca923d160cc73e8a0d2', 5, 1, 'mobile', '[]', 1, '2018-08-29 11:37:44', '2018-08-29 11:37:44', '2019-08-29 06:37:44'),
('bf4fb454054d258640385eaf6f9d47f47ca9b5833cc749d77e7bb38656116c7acd840f3416d42d4f', 11, 1, 'mobile', '[]', 0, '2018-09-05 13:23:41', '2018-09-05 13:23:41', '2019-09-05 08:23:41'),
('c211c2f27becfff68d363a4de13368ebfb575d1f4af54fb6382ba0b9452e902adbd3256cc58778b1', 4, 1, 'mobile', '[]', 1, '2018-08-07 15:16:45', '2018-08-07 15:16:45', '2019-08-07 10:16:45'),
('c3a56b391077a5c0db9621fdc648964d096408e16e3901030019186c40672d242d886423ce3bbb69', 8, 1, 'mobile', '[]', 0, '2018-09-19 10:50:54', '2018-09-19 10:50:54', '2019-09-19 05:50:54'),
('c3d45c52cba79907fea9898bf59cd6bb8b83527cbb699a156ab81ce964ba98406fa29ce02b29d255', 12, 1, 'mobile', '[]', 0, '2018-09-25 18:58:09', '2018-09-25 18:58:09', '2019-09-25 13:58:09'),
('c4160b23ed5e59e553fbe23b83b183658abf6ffccb1406cffc91503bc97117df8b45bf750b462e60', 2, 1, 'mobile', '[]', 0, '2018-08-13 11:23:13', '2018-08-13 11:23:13', '2019-08-13 06:23:13'),
('c42df7fbe77e98a0205e59e3be81c61a87d9ade330122e5d9768aa0a5024a69495a55bb5d524bc3d', 4, 1, 'mobile', '[]', 1, '2018-09-27 12:41:57', '2018-09-27 12:41:57', '2019-09-27 07:41:57'),
('c457c34606d55793b7b847d24ad68c75804be7f9f2dc23153c27f098c92f5bbe5f070e44ea2a6070', 2, 1, 'mobile', '[]', 0, '2018-07-26 13:12:23', '2018-07-26 13:12:23', '2019-07-26 08:12:23'),
('c52794ba8ff608dda33bc7e68e56b2176b593d991c67660e4bbd5dccd6e2074ceba705ef521efda7', 4, 1, 'mobile', '[]', 0, '2018-09-02 11:31:31', '2018-09-02 11:31:31', '2019-09-02 06:31:31'),
('c5c96e52d74e347d2acb424c833d1672b2429a5e0ef76c2c312ae87fcdb48fde3f5eb1454fad0aa5', 5, 1, 'mobile', '[]', 1, '2018-08-13 16:47:40', '2018-08-13 16:47:40', '2019-08-13 11:47:40'),
('c60ace56a090bd8308df2f5646903463ee474204e9a91c718677a7ce628031466303f4c96c0346bb', 7, 1, 'mobile', '[]', 0, '2018-09-06 12:52:26', '2018-09-06 12:52:26', '2019-09-06 07:52:26'),
('c78bd41496bf5ef98efbbc4cf38457b51c7ffca500096764e67402bd8fb9a20e333a65f37af81125', 4, 1, 'mobile', '[]', 1, '2018-08-19 14:36:47', '2018-08-19 14:36:47', '2019-08-19 09:36:47'),
('c78ee48124f5bd7aa3ea7eb2e5794d81edffdaa7cd1e6cc363eda5c9844cb78559335462873d0884', 4, 1, 'mobile', '[]', 1, '2018-09-03 12:29:19', '2018-09-03 12:29:19', '2019-09-03 07:29:19'),
('c837f2f1070ac6a177385024bca8b8f1fc7429b9f093341a55c75a24ab721caf37bb8ad26a5e9f9c', 7, 1, 'mobile', '[]', 0, '2018-08-28 16:52:40', '2018-08-28 16:52:40', '2019-08-28 11:52:40'),
('c982f52225485df118779a28453addc9a2f2d92565c63c1ef4242b7b471f1ac56db4c1801e9b8488', 8, 1, 'mobile', '[]', 1, '2018-09-25 18:19:52', '2018-09-25 18:19:52', '2019-09-25 13:19:52'),
('ca8f9099cd22349c58270d2cf4eb930cf597165ef9b6afb1bb18a11eb4ab19f613c693de4403ac4e', 4, 1, 'mobile', '[]', 1, '2018-08-29 12:47:15', '2018-08-29 12:47:15', '2019-08-29 07:47:15'),
('caeaa4a73047b192ab7cf65b0ca3370e18fa6a087201ab3ef12e61b07669d47daa08353eab90c681', 8, 1, 'mobile', '[]', 1, '2018-09-26 11:32:02', '2018-09-26 11:32:02', '2019-09-26 06:32:02'),
('cb1ef0652ec6ff820d62275c3c1e5ae4120163dbce2ba29e2528ca345db92b05476e1b78cf5d467a', 9, 1, 'mobile', '[]', 0, '2018-09-03 14:04:00', '2018-09-03 14:04:00', '2019-09-03 09:04:00'),
('ccb16021c31f09e852f480d6aa97c0ebc25070178f80bba2bb15fdf12c9397b8abeeeef0e1c0ddc7', 12, 1, 'mobile', '[]', 1, '2018-09-19 12:05:45', '2018-09-19 12:05:45', '2019-09-19 07:05:45'),
('ccd87a5a5ee9fccdb70525cc057c549c76733dfb745dcb159f43fd6fe354a3a0bb234912538ffda4', 14, 1, 'mobile', '[]', 0, '2018-09-25 16:31:28', '2018-09-25 16:31:28', '2019-09-25 11:31:28'),
('d222fec62123c3f60f00adfb41186304cfb5f47cf1382c0f7b8f760177ec6969bb744f5dcbc00307', 5, 1, 'mobile', '[]', 1, '2018-09-19 11:27:24', '2018-09-19 11:27:24', '2019-09-19 06:27:24'),
('d3b7f34e50f2b98b7d440ac9c5fb3bf69cf348368be6f5f16116812f2cf67d12a09596bbbcb3d748', 2, 1, 'mobile', '[]', 0, '2018-08-12 15:15:35', '2018-08-12 15:15:35', '2019-08-12 10:15:35'),
('d427ed076a78f47fcd22c566cf717d32c64c96a891575f50b83c639d9a86bce4013d68193429dc6d', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:14:47', '2018-08-26 13:14:47', '2019-08-26 08:14:47'),
('d686a864a89ddde201f998ba2c6ead702411cf115418fb881ed92f596b3536add3a4ab08d68f4514', 8, 1, 'mobile', '[]', 1, '2018-09-19 18:15:55', '2018-09-19 18:15:55', '2019-09-19 13:15:55'),
('d6f43d72fbbc6c5946a8f6ec0739d4f95468e9fdf0504cb659c856853317faef9a0427c23b686d75', 4, 1, 'mobile', '[]', 1, '2018-09-02 11:33:08', '2018-09-02 11:33:08', '2019-09-02 06:33:08'),
('d715e4a54d2ba35d7afb58ec6d20fde97e293e5bab823badb116d549fbf865751e745e754f1938b7', 12, 1, 'mobile', '[]', 1, '2018-09-19 11:08:20', '2018-09-19 11:08:20', '2019-09-19 06:08:20'),
('d731ce0963c0fa755cf28873c0a855a7b3085b57f378df0234dbdf8b71abdb8e6fc7af92bf60409e', 5, 1, 'mobile', '[]', 0, '2018-08-30 15:52:28', '2018-08-30 15:52:28', '2019-08-30 10:52:28'),
('d7e71cc6c4b7081b695e27865e9181844e0a6f654edb4fe31ea593e8df98a1667ff9999a3f68fa59', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:47:04', '2018-09-25 14:47:04', '2019-09-25 09:47:04'),
('de29eb9618760ed88c9ff0dd624ccc9680b354fd4e4db8c79cf14a15fa25006c326d0a98b41fa9db', 8, 1, 'mobile', '[]', 1, '2018-09-27 12:02:12', '2018-09-27 12:02:12', '2019-09-27 07:02:12'),
('e00207ae63783b3bc2f9c0ef15d066b1c7246cc0c62e1d67c3a000f2926132d362490402687e4aed', 12, 1, 'mobile', '[]', 1, '2018-09-19 17:33:53', '2018-09-19 17:33:53', '2019-09-19 12:33:53'),
('e079e5bffb10a825ff3c6b68933abd41e7cc1e4460b0ebbba9ddce76ec83bdde96438e222112b60b', 4, 1, 'mobile', '[]', 0, '2018-09-06 12:52:14', '2018-09-06 12:52:14', '2019-09-06 07:52:14'),
('e0cae496b93b570bc378a190ed3cb3c487e539b8114c5222a568d4e6112c11a96a07bc062c16ade1', 9, 1, 'mobile', '[]', 1, '2018-09-03 13:43:17', '2018-09-03 13:43:17', '2019-09-03 08:43:17'),
('e39b3ec2c875e25a4a54379d66e78875416782249fb755c7b1ed2da281405a06a97789ed69891c83', 4, 1, 'mobile', '[]', 1, '2018-08-09 17:47:53', '2018-08-09 17:47:53', '2019-08-09 12:47:53'),
('e52d73cf2fe39d4a7c747754e8c8b69a01e1e3111b9cb1205e2bd487a252e3b411e619c65d51c94f', 4, 1, 'mobile', '[]', 1, '2018-09-26 12:35:52', '2018-09-26 12:35:52', '2019-09-26 07:35:52'),
('e5cb1c56601abbdf12207516524d43c7d9f12942c51f3c9e37dd435a801df8874ccb75d01de2c314', 5, 1, 'mobile', '[]', 1, '2018-08-30 15:33:57', '2018-08-30 15:33:57', '2019-08-30 10:33:57'),
('e5dfd2d33e3792dfc8c5d5ae39c6c7ffb4eee31c2abfa6b5bdb1d05442ff9c35ed18123cf97e5068', 14, 1, 'mobile', '[]', 0, '2018-09-25 14:42:56', '2018-09-25 14:42:56', '2019-09-25 09:42:56'),
('e64c8cf54eb06013c44440736c66501e641df5d6ed485c901e500e74074f6f927425c86599570c84', 4, 1, 'mobile', '[]', 0, '2018-09-27 12:36:48', '2018-09-27 12:36:48', '2019-09-27 07:36:48'),
('e75d4a94398a10b278119cd595f4a1e57f53109fb220a9a5b05b257b74d928a79ec183131f305a6a', 8, 1, 'mobile', '[]', 1, '2018-08-26 16:03:35', '2018-08-26 16:03:35', '2019-08-26 11:03:35'),
('e76e3a079e811b92c30803d905be076b980e94d885cd6c164ff59f615f0f6294bc09154c78f00d83', 6, 1, 'mobile', '[]', 0, '2018-08-19 15:04:05', '2018-08-19 15:04:05', '2019-08-19 10:04:05'),
('e90b3e50b2bd97542e411cd4ca5d6b35e7b230ca56ee183a1ca796e591afe79d1ae89b4f0e1ef44b', 8, 1, 'mobile', '[]', 1, '2018-09-25 19:06:53', '2018-09-25 19:06:53', '2019-09-25 14:06:53'),
('ea7e26372ef3ca376b23c3a1ae17f48a103cd6506fceded30b777cc48881b97c1d04aa267d2d7d71', 4, 1, 'mobile', '[]', 1, '2018-08-13 16:49:02', '2018-08-13 16:49:02', '2019-08-13 11:49:02'),
('ed258ca3a4f9ce957aab96bb98cbf04f016c325c3e01add6d4be0565e90f169e9574a2e8f2a87fad', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:54:52', '2018-09-25 14:54:52', '2019-09-25 09:54:52'),
('ed76640dd064097e63014e4286cd565194ae2d09419eb46edcab6d1b2c43069d9c2c5fb3148a9e15', 7, 1, 'mobile', '[]', 0, '2018-08-19 15:13:25', '2018-08-19 15:13:25', '2019-08-19 10:13:25'),
('ee6245cc990133a23a0e9ab69dce1002fbcb47951b1f1e8edd82e1c25216cc2342eb769b111b9ffc', 10, 1, 'mobile', '[]', 1, '2018-09-05 13:16:37', '2018-09-05 13:16:37', '2019-09-05 08:16:37'),
('ef8e8b9ec398a7200c9c154328cc6c1a3345d03130b1ec10cb3be10d60a2c9cd52fcc915b3c87720', 7, 1, 'mobile', '[]', 0, '2018-09-01 12:14:47', '2018-09-01 12:14:47', '2019-09-01 07:14:47'),
('effad2970807e4534e1a720e0a10abe06dc215914fd805c40bd348bb08c50bcbf6fe703599c0abcc', 7, 1, 'mobile', '[]', 0, '2018-08-26 10:31:56', '2018-08-26 10:31:56', '2019-08-26 05:31:56'),
('f037c85a1855a9dcdbe40791cac6cb2b4787df9d8fc4aeb41e723cb77f0f691291b6288afb472fa2', 4, 1, 'mobile', '[]', 0, '2018-08-28 15:09:16', '2018-08-28 15:09:16', '2019-08-28 10:09:16'),
('f06b3662037d176e89b4dbe33f70e99f8cf39db9419e5fca7912840f14337f31138e4c6f48cf42e3', 7, 1, 'mobile', '[]', 0, '2018-08-26 13:05:57', '2018-08-26 13:05:57', '2019-08-26 08:05:57'),
('f54ff7ccedfb4e6a9e14b58ca0e9962d11c01614d527707aabd0df0624e5bcc5ec17e71bb397cce6', 4, 1, 'mobile', '[]', 1, '2018-09-25 16:52:13', '2018-09-25 16:52:13', '2019-09-25 11:52:13'),
('f587df4ced0724b4f2ad76479af48e0a0fe860037915a387597c2f0efb1fbe7edaa88afb5df21fc6', 2, 1, 'mobile', '[]', 0, '2018-07-26 13:36:24', '2018-07-26 13:36:24', '2019-07-26 08:36:24'),
('f6cc4d9f82684fa80d8267c599ea3470a06ba4ab1ac50167ac9cf7f0bbed530ab88380c32866b906', 4, 1, 'mobile', '[]', 0, '2018-08-06 17:23:14', '2018-08-06 17:23:14', '2019-08-06 12:23:14'),
('f773f76ed3736b27c1b9e903c6b8162301d95deb9a139c42d6095596dd95e1e859d6f759bdba93e0', 15, 1, 'mobile', '[]', 1, '2018-09-25 13:20:32', '2018-09-25 13:20:32', '2019-09-25 08:20:32'),
('f7c321cf5a7f4e4aa3c27bb993db54ad62d63a7f05f1ceddb71bae9ff1e093662d11b54a0e491909', 8, 1, 'mobile', '[]', 1, '2018-08-30 16:02:36', '2018-08-30 16:02:36', '2019-08-30 11:02:36'),
('f80ec5cd728b995398e9cfbf6faa1ed396655661fc5fc8c27f519b8aa4875a2caf571f293552a50c', 4, 1, 'mobile', '[]', 1, '2018-09-22 12:36:02', '2018-09-22 12:36:02', '2019-09-22 07:36:02'),
('f85bc063d6829396850e8442d43ddd3983f746a253a7c5f70402600e80e92ffe6a711dfc310e5362', 5, 1, 'mobile', '[]', 1, '2018-08-26 15:51:17', '2018-08-26 15:51:17', '2019-08-26 10:51:17'),
('f87d1f59d5de5f39c229a9ed3bb54a28f68374a29f946f2e2898d05eaf8a58556c391db7a4e51626', 4, 1, 'mobile', '[]', 1, '2018-08-09 12:08:38', '2018-08-09 12:08:38', '2019-08-09 07:08:38'),
('f956c1d9399c51bc5214dd39de7ad993368daf2618c5b6dfc7e53f42a909f3348a70073d07eb5af7', 8, 1, 'mobile', '[]', 0, '2018-09-25 14:48:00', '2018-09-25 14:48:00', '2019-09-25 09:48:00'),
('f9a70c4f1146b3daf0bffb894f34d71a780bb4d35b6033d0f86c0f0bfa6518f2ec80ac1f31a778f0', 8, 1, 'mobile', '[]', 1, '2018-08-26 16:09:44', '2018-08-26 16:09:44', '2019-08-26 11:09:44'),
('fabbf1fbfe8e74b7de45821c70a6b55266f681747eb7ae13ec0c66f3aca822f1535291e4c20ca9ad', 4, 1, 'mobile', '[]', 0, '2018-09-02 11:11:31', '2018-09-02 11:11:31', '2019-09-02 06:11:31'),
('faddf240896685cae614917c41e31dc5582c55cc4afa2b03d603fce005107d6c1d2c0f92e9ddca09', 4, 1, 'mobile', '[]', 1, '2018-09-02 11:08:37', '2018-09-02 11:08:37', '2019-09-02 06:08:37'),
('fd6afd32c09a6f90193a93190f2bce53072fa11d22f216276bba8384380d86ef14c5bb26803743e1', 4, 1, 'mobile', '[]', 0, '2018-08-19 14:41:08', '2018-08-19 14:41:08', '2019-08-19 09:41:08'),
('fdc6777b9cf1879203e56bfceb0f16d37fbe2dc1f1e0add0066ac168451a6239f76aacc81f5b7bbc', 12, 1, 'mobile', '[]', 1, '2018-09-19 13:52:31', '2018-09-19 13:52:31', '2019-09-19 08:52:31'),
('fe921dbf30c360ce0222d00e1174dbf1ee2135d8e657474c2c62692af219586a8e0dbb3cff203ef6', 4, 1, 'mobile', '[]', 1, '2018-08-06 17:07:51', '2018-08-06 17:07:51', '2019-08-06 12:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'b5R7r18pfp92zTbIeNbcAEUnUOKAFj4RF26OQBQ9', 'http://localhost', 1, 0, 0, '2018-04-04 05:12:13', '2018-04-04 05:12:13'),
(2, NULL, 'Laravel Password Grant Client', '8FeNSQNGX4ImJ1IScKBaEi1XzD76DFIifSRBjn9j', 'http://localhost', 0, 1, 0, '2018-04-04 05:12:13', '2018-04-04 05:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-04 05:12:13', '2018-04-04 05:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `company_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `location` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `lon` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_date` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `driver` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `category_id`, `description`, `company_id`, `time`, `date`, `location`, `lat`, `lon`, `delivery_date`, `name`, `mobile`, `email`, `price`, `status`, `driver`, `response`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, NULL, NULL, NULL, NULL, NULL, 'Al Jahra Governorate', '29.99318314', '47.76347351', '2018-09-19 16:37:00', 'test user', '56565464546465', 'testuser@bunch.com', NULL, 0, NULL, NULL, '2018-09-18 18:37:57', '2018-09-18 18:37:57', NULL),
(2, 5, NULL, NULL, NULL, NULL, NULL, 'Al Jahra Governorate', '29.99318314', '47.76347351', '2018-09-19 16:37:00', 'test user', '56565464546465', 'testuser@bunch.com', NULL, 0, NULL, NULL, '2018-09-18 18:38:03', '2018-09-18 18:38:03', NULL),
(3, 5, NULL, NULL, NULL, NULL, NULL, 'Al Jahra Governorate', '29.99318314', '47.76347351', '2018-09-19 16:37:00', 'test user', '56565464546465', 'testuser@bunch.com', NULL, 0, NULL, NULL, '2018-09-18 18:38:54', '2018-09-18 18:38:54', NULL),
(4, 12, NULL, NULL, '2', NULL, NULL, 'Qadsiya', '29.34996223', '48.00350571', '2018-09-20 10:28:00', 'Ahmed J', '12345678', 'ahmedjabusada@gmail.com', '45', 4, '4', NULL, '2018-09-19 11:28:49', '2018-09-26 13:02:03', NULL),
(5, 8, NULL, NULL, '2', NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-24 17:51:32', 'test', '123456789013', 'test.linekw@gmail.com', '35.998', 1, NULL, NULL, '2018-09-19 16:51:45', '2018-09-19 16:52:29', NULL),
(6, 8, NULL, NULL, '2', NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-29 14:51:00', 'test', '123456789013', 'test.linekw@gmail.com', '35.998', 4, '4', NULL, '2018-09-19 16:51:50', '2018-09-19 17:34:16', NULL),
(7, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-29 08:28:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:29:42', '2018-09-20 10:29:42', NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-29 08:28:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:29:54', '2018-09-20 10:29:54', NULL),
(9, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-20 08:30:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:30:13', '2018-09-20 10:30:13', NULL),
(10, 8, NULL, NULL, '1', NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-20 09:30:34', 'test', '123456789013', 'test.linekw@gmail.com', '41.125', 0, NULL, NULL, '2018-09-20 10:30:41', '2018-09-20 10:30:41', NULL),
(11, 8, NULL, NULL, '2', NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-29 08:32:00', 'test', '123456789013', 'test.linekw@gmail.com', '19.999', 0, NULL, NULL, '2018-09-20 10:32:54', '2018-09-20 10:32:54', NULL),
(12, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-29 08:38:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:38:39', '2018-09-20 10:38:39', NULL),
(13, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-29 08:38:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:38:48', '2018-09-20 10:38:48', NULL),
(14, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-29 08:38:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:39:25', '2018-09-20 10:39:25', NULL),
(15, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-20 08:40:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:40:16', '2018-09-20 10:40:16', NULL),
(16, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-20 08:40:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:40:37', '2018-09-20 10:40:37', NULL),
(17, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-21 08:40:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:40:44', '2018-09-20 10:40:44', NULL),
(18, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-21 08:40:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:41:04', '2018-09-20 10:41:04', NULL),
(19, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-21 08:41:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:41:28', '2018-09-20 10:41:28', NULL),
(20, 8, NULL, NULL, '2', NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-20 08:42:00', 'test', '123456789013', 'test.linekw@gmail.com', '20.125', 4, '4', NULL, '2018-09-20 10:42:12', '2018-09-25 18:55:54', NULL),
(21, 8, NULL, NULL, NULL, NULL, NULL, 'Mishref', '29.27610397', '48.06547165', '2018-09-21 08:43:00', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 0, NULL, NULL, '2018-09-20 10:43:44', '2018-09-20 10:43:44', NULL),
(22, 7, NULL, NULL, '1', NULL, NULL, 'Westerwald-Obereichsfeld', '51.26597214', '10.24972534', '2018-09-20 09:49:49', 'iMostafa', '1010101001001', 'qqq@qqq.qqq', '100.997', 0, NULL, NULL, '2018-09-20 11:49:57', '2018-09-20 11:49:57', NULL),
(23, 7, NULL, NULL, '2', NULL, NULL, 'Westerwald-Obereichsfeld', '51.26597214', '10.24972534', '2018-09-20 14:07:58', 'iMostafa', '1010101001001', 'qqq@qqq.qqq', '136.119', 0, NULL, NULL, '2018-09-20 16:08:06', '2018-09-20 16:08:07', NULL),
(24, 14, NULL, NULL, '2', NULL, NULL, 'Stonehenge ghhjjjj', '51.17888260', '-1.82621503', '2018-09-26 15:37:27', 'reham matar', '6633652', 'reham@linekw.com', '47.997', 0, NULL, NULL, '2018-09-24 17:36:03', '2018-09-24 17:36:04', NULL),
(25, 14, NULL, NULL, '11', NULL, NULL, 'Stonehenge', '51.17888260', '-1.82621503', '2018-09-26 10:40:33', 'reham matar', '6633652', 'reham@linekw.com', '1.000', 0, NULL, NULL, '2018-09-25 12:40:56', '2018-09-25 12:40:56', NULL),
(26, 14, NULL, NULL, '11', NULL, NULL, 'dddddddd', '51.17888260', '-1.82621503', '2018-10-01 11:09:46', 'reham matar', '6633652', 'reham@linekw.com', '0.125', 0, NULL, NULL, '2018-09-25 13:10:26', '2018-09-25 13:10:26', NULL),
(27, 14, NULL, NULL, '10', NULL, NULL, 'Stoneh', '51.17888260', '-1.82621503', '2018-09-25 15:17:40', 'reham matar', '6633652', 'reham@linekw.com', '2.889', 0, NULL, NULL, '2018-09-25 14:17:55', '2018-09-25 14:17:55', NULL),
(28, 8, NULL, NULL, NULL, NULL, NULL, 'Al-Farabi for Multilingual Services', '31.50175858', '34.43461227', '2018-09-26 17:05:48', 'test', '123456789013', 'test.linekw@gmail.com', NULL, 3, '4', NULL, '2018-09-25 19:06:00', '2018-09-26 12:50:16', NULL),
(29, 8, NULL, NULL, '2', NULL, NULL, 'Al-Farabi for Multilingual Services', '31.50175858', '34.43461227', '2018-09-28 17:07:30', 'test', '123456789013', 'test.linekw@gmail.com', '31.998', 4, '4', NULL, '2018-09-25 19:07:40', '2018-09-26 12:54:00', NULL),
(30, 8, NULL, NULL, '11', NULL, NULL, 'Al-Farabi for Multilingual Services', '31.50175858', '34.43461227', '2018-09-28 09:38:46', 'test', '123456789013', 'test.linekw@gmail.com', '0.125', 4, '4', NULL, '2018-09-26 11:38:53', '2018-09-27 16:31:24', NULL),
(31, 7, NULL, NULL, '9', NULL, NULL, 'Al-Farabi for Multilingual Services', '31.50175858', '34.43461227', '2018-09-28 09:40:10', 'iMostafa', '10101010010015', 'qqq@qqq.qqq', '1.954', 0, NULL, NULL, '2018-09-27 11:39:20', '2018-09-27 11:39:20', NULL),
(32, 8, NULL, NULL, '11', NULL, NULL, 'Al-Farabi for Multilingual Services', '31.50175858', '34.43461227', '2018-09-27 10:05:18', 'test', '123456789013', 'test.linekw@gmail.com', '1.107', 0, NULL, NULL, '2018-09-27 12:06:49', '2018-09-27 12:06:49', NULL),
(33, 12, NULL, NULL, '2', NULL, NULL, 'Qadsiya', '29.34996223', '48.00350571', '2018-09-28 08:54:00', 'Ahmed J', '12345678', 'ahmedjabusada@gmail.com', '15.999', 4, '4', NULL, '2018-09-27 12:54:23', '2018-09-27 16:28:48', NULL),
(34, 7, NULL, NULL, '9', NULL, NULL, 'Al-Farabi for Multilingual Services', '31.50175858', '34.43461227', '2018-09-27 16:43:19', 'iMostafa', '10101010010015', 'qqq@qqq.qqq', '0.544', 1, NULL, NULL, '2018-09-27 16:43:27', '2018-09-27 16:43:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image`, `views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/pages/5b828e9c39579.png', 0, '2018-08-05 12:27:40', '2018-08-26 16:27:24', NULL),
(2, 'uploads/pages/5b828efe0f7aa.jpg', 0, '2018-08-05 12:27:42', '2018-08-26 16:29:02', NULL),
(3, 'uploads/pages/5b828fc031e7e.png', 0, '2018-08-05 12:27:49', '2018-08-26 16:32:16', NULL),
(4, 'cvdvwfvfwv', 0, '2018-08-05 12:27:51', NULL, '2018-08-16 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `locale` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `key_words` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `slug`, `description`, `key_words`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'About Us', 'about-us', '<p style=\"text-align:center\"><strong>About Us</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong>Bunch App help you to find best stors</strong></p>', 'about us', '2018-08-05 12:29:09', '2018-08-26 16:27:24', NULL),
(2, 1, 'ar', 'About Us', 'about-us', '<p style=\"text-align:center\">عن التطبيق</p>\r\n\r\n<p style=\"text-align:center\">تطبيق بنش يساعدك على ايجاد افضل المتاجر</p>', 'about us', '2018-08-05 12:29:12', '2018-08-26 16:27:24', NULL),
(3, 2, 'en', 'Privacy Policy', 'privacy-policy', '<p style=\"text-align:center\">privacy policy</p>\r\n\r\n<p style=\"text-align:center\">Privacy Policy</p>\r\n\r\n<p style=\"text-align:center\">Privacy Policy</p>\r\n\r\n<p style=\"text-align:center\">Privacy Policy</p>\r\n\r\n<p style=\"text-align:center\">Privacy Policy</p>', 'Privacy Policy', '2018-08-05 12:30:08', NULL, NULL),
(4, 2, 'ar', 'Privacy Policy', 'privacy-policy', '<p style=\"text-align:center\">privacy policy</p>\r\n\r\n<p style=\"text-align:center\">Privacy Policy</p>\r\n\r\n<p style=\"text-align:center\">Privacy Policy</p>\r\n\r\n<p style=\"text-align:center\">Privacy Policy</p>\r\n\r\n<p style=\"text-align:center\">Privacy Policy</p>', 'Privacy Policy', '2018-08-05 12:30:11', NULL, NULL),
(5, 3, 'en', 'Terms Of Use', 'terms-of-use', '<p style=\"text-align:center\">Terms Of Use</p>\r\n\r\n<p style=\"text-align:center\">Terms Of Use</p>\r\n\r\n<p style=\"text-align:center\">Terms Of Use</p>\r\n\r\n<p style=\"text-align:center\">Terms Of Use</p>', 'Terms Of Use', '2018-08-05 12:31:01', NULL, NULL),
(6, 3, 'ar', 'Terms Of Use', 'terms-of-use', '<p style=\"text-align:center\">شروط الإستخدام</p>\r\n\r\n<p style=\"text-align:center\">شروط الإستخدام شروط الإستخدام شروط الإستخدام شروط الإستخدام شروط الإستخدام شروط الإستخدام</p>', 'Terms Of Use', '2018-08-05 12:31:03', '2018-09-05 11:10:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ali@gmail.com', '$2y$10$yurfUedG1Dqq0fWx/Csx8O/SDC2RUyeinpZqf5N866CVDKCYZ381i', '2018-04-09 13:29:58'),
('oo@oo.com', '$2y$10$466U4.nBioi4QQTChrjYueGqrhgRarV.P/SKANjtePzl00nxYivfy', '2018-06-11 16:36:46'),
('asd@asd.com', '$2y$10$/Xf.FssewFdnPzQhi1sfN.dfYoUNPo0Rwg3PzqpUwrQTObArr2dNm', '2018-06-12 15:55:47'),
('emadtraner@gmail.com', '$2y$10$JtftGR.GGloKC3lPx9l/zOLvu/BYgAejM5NS/7pz37E2zqJ682MZO', '2018-07-05 14:30:01'),
('mohamed.alijla@gmail.com', '$2y$10$pwhXCRuWQ5yeRPiGoI3PT.aqxckadL8mjgEzSvB1YuLJEssVYdtqi', '2018-09-19 16:13:13'),
('qqq@qqq.qqq', '$2y$10$yI.8r9i2gfE0/vqBFfp2WuN2Kokau0Rixhn9PnZBexRs2BmaYgTxC', '2018-08-19 16:15:27'),
('test.linekw@gmail.com', '$2y$10$zu3xT79vZ547nFw0ko.BOOVFF.hQxkkTsDeKrA8KjZU6t8mr.5sOi', '2018-09-19 14:47:39'),
('ahmedjabusada@gmail.com', '$2y$10$T1MG1Zw8pPK2fA6Bjq6X3.fxwI9jhtXgmnklFeQAi0/L0y1Im8RnW', '2018-09-19 17:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `payment_companies`
--

CREATE TABLE `payment_companies` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_companies`
--

INSERT INTO `payment_companies` (`id`, `company_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(55, 1, 4, '2018-09-19 11:53:09', '2018-09-19 11:53:09'),
(56, 1, 5, '2018-09-19 11:53:09', '2018-09-19 11:53:09'),
(57, 1, 6, '2018-09-19 11:53:09', '2018-09-19 11:53:09'),
(60, 8, 5, '2018-09-19 16:28:51', '2018-09-19 16:28:51'),
(61, 3, 4, '2018-09-19 18:03:11', '2018-09-19 18:03:11'),
(62, 9, 4, '2018-09-22 11:12:40', '2018-09-22 11:12:40'),
(63, 10, 4, '2018-09-22 11:29:53', '2018-09-22 11:29:53'),
(64, 10, 5, '2018-09-22 11:29:53', '2018-09-22 11:29:53'),
(65, 11, 4, '2018-09-22 11:42:23', '2018-09-22 11:42:23'),
(66, 11, 5, '2018-09-22 11:42:23', '2018-09-22 11:42:23'),
(67, 12, 4, '2018-09-22 12:12:00', '2018-09-22 12:12:00'),
(68, 12, 5, '2018-09-22 12:12:00', '2018-09-22 12:12:00'),
(69, 13, 6, '2018-09-22 12:16:46', '2018-09-22 12:16:46'),
(70, 2, 5, '2018-09-27 12:56:34', '2018-09-27 12:56:34'),
(71, 2, 6, '2018-09-27 12:56:34', '2018-09-27 12:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `logo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'first payment', 'uploads/payment/5b50326406356.jpeg', 'active', '2018-07-19 03:40:36', '2018-08-26 14:53:49', '2018-08-26 14:53:49'),
(2, 'second payment', 'uploads/payment/5b50327762ae0.png', 'active', '2018-07-19 03:40:55', '2018-08-26 14:53:46', '2018-08-26 14:53:46'),
(3, 'third payment', 'uploads/payment/5b572649c7550.jpeg', 'active', '2018-07-24 10:14:49', '2018-08-26 14:53:43', '2018-08-26 14:53:43'),
(4, 'CASH', 'uploads/payment/5b82796d2d249.png', 'active', '2018-08-26 14:57:01', '2018-08-26 14:57:01', NULL),
(5, 'VISA', 'uploads/payment/5b8279be43c83.png', 'active', '2018-08-26 14:58:22', '2018-08-26 14:58:22', NULL),
(6, 'Masterc Card', 'uploads/payment/5b8279de18b38.png', 'active', '2018-08-26 14:58:54', '2018-08-26 14:58:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `company_id` int(19) NOT NULL,
  `old_price` double DEFAULT NULL,
  `current_price` double NOT NULL,
  `quentity` int(11) NOT NULL,
  `delivered_day` int(11) NOT NULL,
  `offer` int(4) NOT NULL DEFAULT '0',
  `logo` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'not_active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_id`, `old_price`, `current_price`, `quentity`, `delivered_day`, `offer`, `logo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 55, 45, 88, 3, 1, 'uploads/products/5b54423e9ee28.jpeg', 'active', '2018-07-22 05:37:18', '2018-09-22 10:42:07', '2018-09-22 10:42:07'),
(2, 2, 20, 15.999, 56, 3, 1, 'uploads/products/5ba229332dfce.jpg', 'active', '2018-07-25 06:05:29', '2018-09-19 15:47:15', NULL),
(3, 1, 77, 56, 55, 3, 0, 'uploads/products/5b584368820fe.png', 'active', '2018-07-25 06:31:20', '2018-07-25 06:45:28', '2018-07-25 06:45:28'),
(4, 2, 55, 45, 88, 3, 1, 'uploads/products/5b6814906f7b5.png', 'active', '2018-08-06 14:27:44', '2018-09-19 16:45:01', '2018-09-19 16:45:01'),
(5, 2, 55, 45, 88, 3, 1, 'uploads/products/5b6814b5b875d.png', 'active', '2018-08-06 14:28:21', '2018-09-19 16:44:58', '2018-09-19 16:44:58'),
(6, 2, 55, 45, 88, 3, 1, 'uploads/products/5b6814d731dac.png', 'active', '2018-08-06 14:28:55', '2018-09-19 16:44:55', '2018-09-19 16:44:55'),
(7, 2, 55, 45, 88, 3, 1, 'uploads/products/5b6814f65bb7f.png', 'active', '2018-08-06 14:29:26', '2018-09-19 16:44:53', '2018-09-19 16:44:53'),
(8, 1, 44, 34, 56, 3, 1, 'uploads/products/5b6949c47dc4a.png', 'active', '2018-08-07 12:27:00', '2018-09-22 10:42:01', '2018-09-22 10:42:01'),
(9, 1, NULL, 0.125, 56, 3, 0, 'uploads/products/5ba1f46863088.jpg', 'active', '2018-08-07 12:27:22', '2018-09-19 13:37:22', NULL),
(10, 2, NULL, 19.999, 12, 1, 1, 'uploads/products/5ba22a22dcec1.jpg', 'active', '2018-09-19 15:51:14', '2018-09-19 15:53:22', NULL),
(11, 2, 954.986, 0.2, 2, 2, 1, 'uploads/products/5ba22a7f2b1d1.jpg', 'active', '2018-09-19 15:52:47', '2018-09-22 16:41:46', NULL),
(12, 11, NULL, 0.125, 100, 1, 1, 'uploads/products/5ba5e5188fd8d.png', 'active', '2018-09-22 11:45:44', '2018-09-22 11:54:48', NULL),
(13, 11, NULL, 0.123, 50, 2, 0, 'uploads/products/5ba5e54b92e67.png', 'active', '2018-09-22 11:46:35', '2018-09-22 11:54:48', NULL),
(14, 9, NULL, 0.1, 500, 1, 1, 'uploads/products/5ba5e5a349f28.png', 'active', '2018-09-22 11:48:03', '2018-09-24 10:39:40', NULL),
(15, 9, 0.555, 0.222, 10, 2, 1, 'uploads/products/5ba5e5e8b541e.png', 'active', '2018-09-22 11:49:12', '2018-09-23 11:34:17', NULL),
(16, 10, NULL, 0.321, 20, 2, 0, 'uploads/products/5ba5e617601c7.png', 'active', '2018-09-22 11:49:59', '2018-09-22 11:54:48', NULL),
(17, 10, NULL, 1.896, 25, 2, 0, 'uploads/products/5ba5e64a4de97.png', 'active', '2018-09-22 11:50:50', '2018-09-23 11:33:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quentity` varchar(19) COLLATE utf8_unicode_ci NOT NULL,
  `subtotal_price` varchar(19) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(19) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `order_id`, `company_id`, `product_id`, `color`, `size`, `quentity`, `subtotal_price`, `price`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 9, '#f7ff61', '3', '1', '34', '34', '', '2018-09-18 18:37:53', '2018-09-18 18:37:53', NULL),
(2, 1, 1, 9, '#f7ff61', '3', '1', '34', '34', '', '2018-09-18 18:37:57', '2018-09-18 18:37:57', NULL),
(3, 2, 1, 9, '#f7ff61', '3', '1', '34', '34', '', '2018-09-18 18:38:03', '2018-09-18 18:38:03', NULL),
(4, 3, 1, 9, '#f7ff61', '3', '1', '34', '34', '', '2018-09-18 18:38:54', '2018-09-18 18:38:54', NULL),
(5, 4, 2, 6, '#66ff61', '2', '1', '45', '45', '', '2018-09-19 11:28:49', '2018-09-19 11:28:49', NULL),
(6, 5, 2, 2, '#000000', '1', '1', '15.999', '15.999', '', '2018-09-19 16:51:45', '2018-09-19 16:51:45', NULL),
(7, 5, 2, 10, '#000000', '1', '1', '19.999', '19.999', '', '2018-09-19 16:51:45', '2018-09-19 16:51:45', NULL),
(8, 6, 2, 2, '#000000', '1', '1', '15.999', '15.999', '', '2018-09-19 16:51:50', '2018-09-19 16:51:50', NULL),
(9, 6, 2, 10, '#000000', '1', '1', '19.999', '19.999', '', '2018-09-19 16:51:50', '2018-09-19 16:51:50', NULL),
(10, 7, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:29:42', '2018-09-20 10:29:42', NULL),
(11, 7, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:29:42', '2018-09-20 10:29:42', NULL),
(12, 8, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:29:54', '2018-09-20 10:29:54', NULL),
(13, 8, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:29:54', '2018-09-20 10:29:54', NULL),
(14, 9, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:30:13', '2018-09-20 10:30:13', NULL),
(15, 10, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:30:41', '2018-09-20 10:30:41', NULL),
(16, 10, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:30:41', '2018-09-20 10:30:41', NULL),
(17, 10, 1, 9, '', '0', '7', '0.875', '0.125', '', '2018-09-20 10:30:41', '2018-09-20 10:30:41', NULL),
(18, 11, 2, 10, '#000000', '1', '1', '19.999', '19.999', '', '2018-09-20 10:32:54', '2018-09-20 10:32:54', NULL),
(19, 12, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:38:39', '2018-09-20 10:38:39', NULL),
(20, 13, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:38:48', '2018-09-20 10:38:48', NULL),
(21, 14, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:39:25', '2018-09-20 10:39:25', NULL),
(22, 15, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:40:16', '2018-09-20 10:40:16', NULL),
(23, 16, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:40:37', '2018-09-20 10:40:37', NULL),
(24, 17, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:40:44', '2018-09-20 10:40:44', NULL),
(25, 18, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:41:04', '2018-09-20 10:41:04', NULL),
(26, 20, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 10:42:12', '2018-09-20 10:42:12', NULL),
(27, 21, 2, 11, '#001dfc', '1', '1', '20.125', '20.125', '', '2018-09-20 10:43:44', '2018-09-20 10:43:44', NULL),
(28, 22, 2, 10, '#000000', '1', '2', '39.998', '19.999', '', '2018-09-20 11:49:57', '2018-09-20 11:49:57', NULL),
(29, 22, 2, 2, '#000000', '1', '1', '15.999', '15.999', '', '2018-09-20 11:49:57', '2018-09-20 11:49:57', NULL),
(30, 22, 1, 1, '', '0', '1', '45', '45', '', '2018-09-20 11:49:57', '2018-09-20 11:49:57', NULL),
(31, 23, 2, 10, '#ff6161', '3', '1', '19.999', '19.999', '', '2018-09-20 16:08:06', '2018-09-20 16:08:06', NULL),
(32, 23, 2, 2, '#000000', '1', '1', '15.999', '15.999', '', '2018-09-20 16:08:07', '2018-09-20 16:08:07', NULL),
(33, 23, 2, 10, '#ff6161', '3', '1', '19.999', '19.999', '', '2018-09-20 16:08:07', '2018-09-20 16:08:07', NULL),
(34, 23, 2, 11, '#ff0000', '1', '1', '20.125', '20.125', '', '2018-09-20 16:08:07', '2018-09-20 16:08:07', NULL),
(35, 23, 2, 10, '#000000', '1', '3', '59.997', '19.999', '', '2018-09-20 16:08:07', '2018-09-20 16:08:07', NULL),
(36, 24, 2, 2, '#000000', '1', '3', '47.997', '15.999', '', '2018-09-24 17:36:04', '2018-09-24 17:36:04', NULL),
(37, 25, 11, 12, '#ff0000', '1', '8', '1', '0.125', 'so yummy', '2018-09-25 12:40:56', '2018-09-25 12:40:56', NULL),
(38, 26, 11, 12, '#ff0000', '1', '1', '0.125', '0.125', '', '2018-09-25 13:10:26', '2018-09-25 13:10:26', NULL),
(39, 27, 10, 16, '', '0', '3', '0.9630000000000001', '0.321', 'be hurry', '2018-09-25 14:17:55', '2018-09-25 14:17:55', NULL),
(40, 27, 10, 16, '', '0', '3', '0.9630000000000001', '0.321', 'be hurry', '2018-09-25 14:17:55', '2018-09-25 14:17:55', NULL),
(41, 27, 10, 16, '', '0', '3', '0.9630000000000001', '0.321', 'be hurry', '2018-09-25 14:17:55', '2018-09-25 14:17:55', NULL),
(42, 29, 2, 2, '#000000', '1', '2', '31.998', '15.999', '', '2018-09-25 19:07:40', '2018-09-25 19:07:40', NULL),
(43, 30, 11, 12, '#ff0000', '1', '1', '0.125', '0.125', '', '2018-09-26 11:38:53', '2018-09-26 11:38:53', NULL),
(44, 31, 9, 14, '', '0', '4', '0.4', '0.1', '', '2018-09-27 11:39:20', '2018-09-27 11:39:20', NULL),
(45, 31, 9, 15, '', '0', '7', '1.554', '0.222', 'hchcyc', '2018-09-27 11:39:20', '2018-09-27 11:39:20', NULL),
(46, 32, 11, 13, '', '0', '9', '1.107', '0.123', '', '2018-09-27 12:06:49', '2018-09-27 12:06:49', NULL),
(47, 33, 2, 2, '#000000', '1', '1', '15.999', '15.999', '', '2018-09-27 12:54:23', '2018-09-27 12:54:23', NULL),
(48, 34, 9, 15, '', '0', '1', '0.222', '0.222', '', '2018-09-27 16:43:27', '2018-09-27 16:43:27', NULL),
(49, 34, 9, 14, '', '0', '1', '0.1', '0.1', '', '2018-09-27 16:43:27', '2018-09-27 16:43:27', NULL),
(50, 34, 9, 15, '', '0', '1', '0.222', '0.222', '', '2018-09-27 16:43:27', '2018-09-27 16:43:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `locale` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'testdde', 'test', '2018-07-22 05:37:18', '2018-09-22 10:42:07', '2018-09-22 10:42:07'),
(2, 1, 'ar', 'test ar', 'test', '2018-07-22 05:37:18', '2018-09-22 10:42:07', '2018-09-22 10:42:07'),
(3, 2, 'en', 'zara clothing women\'s dresses', 'zara clothing women\'s dresses zara clothing women\'s dresses', '2018-07-25 06:05:29', '2018-09-19 15:47:15', NULL),
(4, 2, 'ar', 'zara clothing women\'s dresses', 'zara clothing women\'s dresses zara clothing women\'s dresses', '2018-07-25 06:05:29', '2018-09-19 15:47:15', NULL),
(5, 3, 'en', 'another product', 'another product', '2018-07-25 06:31:20', '2018-07-25 06:45:28', '2018-07-25 06:45:28'),
(6, 3, 'ar', 'another producte', 'another product', '2018-07-25 06:31:20', '2018-07-25 06:45:28', '2018-07-25 06:45:28'),
(7, 4, 'en', 'oyoun', 'dfcdsav', '2018-08-06 14:27:44', '2018-09-19 16:45:01', '2018-09-19 16:45:01'),
(8, 4, 'ar', 'dfdaf', 'sdvdsv', '2018-08-06 14:27:44', '2018-09-19 16:45:01', '2018-09-19 16:45:01'),
(9, 5, 'en', 'oyoun', 'dfcdsav', '2018-08-06 14:28:21', '2018-09-19 16:44:58', '2018-09-19 16:44:58'),
(10, 5, 'ar', 'dfdaf', 'sdvdsv', '2018-08-06 14:28:21', '2018-09-19 16:44:58', '2018-09-19 16:44:58'),
(11, 6, 'en', 'oyoun', 'dfcdsav', '2018-08-06 14:28:55', '2018-09-19 16:44:55', '2018-09-19 16:44:55'),
(12, 6, 'ar', 'dfdaf', 'sdvdsv', '2018-08-06 14:28:55', '2018-09-19 16:44:55', '2018-09-19 16:44:55'),
(13, 7, 'en', 'oyoun', 'dfcdsav', '2018-08-06 14:29:26', '2018-09-19 16:44:53', '2018-09-19 16:44:53'),
(14, 7, 'ar', 'dfdaf', 'sdvdsv', '2018-08-06 14:29:26', '2018-09-19 16:44:53', '2018-09-19 16:44:53'),
(15, 8, 'en', 'testfdfdfd', 'dasfadsgads', '2018-08-07 12:27:00', '2018-09-22 10:42:01', '2018-09-22 10:42:01'),
(16, 8, 'ar', 'fdsffaf', 'dsagasdgasdg', '2018-08-07 12:27:00', '2018-09-22 10:42:01', '2018-09-22 10:42:01'),
(17, 9, 'en', 'tea', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub (bush) native to Asia.', '2018-08-07 12:27:22', '2018-09-19 12:02:00', NULL),
(18, 9, 'ar', 'شاي', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub (bush) native to Asia.', '2018-08-07 12:27:22', '2018-09-19 12:02:00', NULL),
(19, 10, 'en', 'Dress - Zara - Second hand - black', 'Dress - Zara - Second hand - black', '2018-09-19 15:51:14', '2018-09-19 15:51:14', NULL),
(20, 10, 'ar', 'Dress - Zara - Second hand - black', 'Dress - Zara - Second hand - black', '2018-09-19 15:51:14', '2018-09-19 15:51:14', NULL),
(21, 11, 'en', 'Paisley_Pattern_Dress Multi Size', 'Paisley_Pattern_Dress', '2018-09-19 15:52:47', '2018-09-19 15:57:54', NULL),
(22, 11, 'ar', 'Paisley_Pattern_Dress Multi Size', 'Paisley_Pattern_Dress', '2018-09-19 15:52:47', '2018-09-19 15:57:54', NULL),
(23, 12, 'en', 'Cupcake', 'Color Cupcake', '2018-09-22 11:45:44', '2018-09-22 11:45:44', NULL),
(24, 12, 'ar', 'كب كيك', 'كب كيك ملون', '2018-09-22 11:45:44', '2018-09-22 11:45:44', NULL),
(25, 13, 'en', 'Donut', 'Donut', '2018-09-22 11:46:35', '2018-09-22 11:46:35', NULL),
(26, 13, 'ar', 'دونات', 'دونات', '2018-09-22 11:46:35', '2018-09-22 11:46:35', NULL),
(27, 14, 'en', 'Coffee', 'coffee-pot', '2018-09-22 11:48:03', '2018-09-22 11:48:03', NULL),
(28, 14, 'ar', 'قهوة', 'قهوة الصباح', '2018-09-22 11:48:03', '2018-09-22 11:48:03', NULL),
(29, 15, 'en', 'pudding', 'pudding', '2018-09-22 11:49:12', '2018-09-22 11:49:12', NULL),
(30, 15, 'ar', 'بودينج', 'بودينج', '2018-09-22 11:49:12', '2018-09-22 11:49:12', NULL),
(31, 16, 'en', 'Pancake', 'Pancake Pancake Pancake', '2018-09-22 11:49:59', '2018-09-22 11:49:59', NULL),
(32, 16, 'ar', 'بان كيك', 'بان كيك بان كيك بان كيك بان كيك', '2018-09-22 11:49:59', '2018-09-22 11:49:59', NULL),
(33, 17, 'en', 'Burger', 'burger', '2018-09-22 11:50:50', '2018-09-22 11:50:50', NULL),
(34, 17, 'ar', 'هامبرجر', 'هامبرجر', '2018-09-22 11:50:50', '2018-09-22 11:50:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`, `logo`) VALUES
(1, 'active', '2018-04-10 10:29:21', '2018-07-02 13:45:23', NULL, 'uploads/brand/5b39e623e1091.png'),
(2, 'active', '2018-04-10 10:33:41', '2018-07-03 18:09:05', NULL, 'uploads/brand/5b39e6d276f45.jpg'),
(3, 'active', '2018-04-12 05:53:20', '2018-04-12 06:02:38', '2018-04-12 06:02:38', 'uploads/clinic/5ac6284789dd5.jpg'),
(4, 'active', '2018-05-23 16:03:36', '2018-07-03 18:08:59', NULL, 'uploads/brand/5b054a9ac5856.png'),
(5, 'active', '2018-06-06 17:34:42', '2018-07-18 04:51:09', '2018-07-18 04:51:09', 'uploads/brand/5b17d4e2b5571.jpg'),
(6, 'active', '2018-09-11 21:09:16', '2018-09-22 11:03:14', '2018-09-22 11:03:14', 'uploads/projects/5b97e8ac573d8.png');

-- --------------------------------------------------------

--
-- Table structure for table `projects_translations`
--

CREATE TABLE `projects_translations` (
  `id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL,
  `locale` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects_translations`
--

INSERT INTO `projects_translations` (`id`, `projects_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'individual work', '2018-04-10 10:30:07', '2018-09-22 11:03:00', NULL),
(2, 1, 'ar', 'فردي', '2018-04-10 10:30:34', '2018-09-22 11:03:00', NULL),
(3, 2, 'en', 'company', '2018-04-10 10:34:42', '2018-09-22 11:03:47', NULL),
(4, 2, 'ar', 'شركة', '2018-04-10 10:35:07', '2018-09-22 11:03:47', NULL),
(5, 3, 'en', 'dsfsvf', '2018-04-12 05:53:20', '2018-04-12 06:02:38', '2018-04-12 06:02:38'),
(6, 3, 'ar', 'svsrvrb', '2018-04-12 05:53:20', '2018-04-12 06:02:38', '2018-04-12 06:02:38'),
(7, 4, 'en', 'Small group', '2018-05-23 16:03:36', '2018-09-22 11:03:31', NULL),
(8, 4, 'ar', 'مجموعة صغيرة', '2018-05-23 16:03:36', '2018-09-22 11:03:31', NULL),
(9, 5, 'en', 'Hey There', '2018-06-06 17:34:42', '2018-07-18 04:51:09', '2018-07-18 04:51:09'),
(10, 5, 'ar', 'Hey There', '2018-06-06 17:34:42', '2018-07-18 04:51:09', '2018-07-18 04:51:09'),
(11, 6, 'en', 'Emad', '2018-09-11 21:09:16', '2018-09-22 11:03:14', '2018-09-22 11:03:14'),
(12, 6, 'ar', 'عماد', '2018-09-11 21:09:16', '2018-09-22 11:03:14', '2018-09-22 11:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `company_id` int(19) NOT NULL,
  `price` double DEFAULT NULL,
  `logo` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'not_active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `company_id`, `price`, `logo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 44, 'uploads/services/5b82952e15da6.jpg', 'active', '2018-07-25 08:11:28', '2018-09-22 10:42:25', '2018-09-22 10:42:25'),
(2, 3, 55, 'uploads/services/5b585e47d22e3.png', 'active', '2018-07-25 08:25:59', '2018-07-25 08:26:50', '2018-07-25 08:26:50'),
(3, 3, 10, 'uploads/services/5ba0b99476d7e.jpg', 'active', '2018-09-18 13:38:44', '2018-09-22 10:42:25', '2018-09-22 10:42:25'),
(4, 2, NULL, 'uploads/services/5ba0d7e5c5855.png', 'active', '2018-09-18 15:48:05', '2018-09-22 10:42:25', '2018-09-22 10:42:25'),
(5, 8, 20, 'uploads/services/5ba233b5798d5.jpg', 'active', '2018-09-19 16:32:05', '2018-09-19 16:34:08', NULL),
(6, 8, 20, 'uploads/services/5ba2340e0bc0a.jpg', 'active', '2018-09-19 16:33:34', '2018-09-19 16:34:08', NULL),
(7, 13, 10, 'uploads/services/5ba237446f58f.jpg', 'active', '2018-09-19 16:47:16', '2018-09-22 12:17:04', NULL),
(8, 13, 10, 'uploads/services/5ba5ecb7f3ab8.jpg', 'active', '2018-09-22 12:18:16', '2018-09-22 12:23:07', NULL),
(9, 12, 16, 'uploads/services/5ba5ed4b0b228.jpg', 'active', '2018-09-22 12:20:43', '2018-09-22 12:23:07', NULL),
(10, 12, 98.345, 'uploads/services/5ba5edc2e869f.jpg', 'active', '2018-09-22 12:22:42', '2018-09-22 16:12:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `locale` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_translations`
--

INSERT INTO `service_translations` (`id`, `service_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'taest service', 'wefqwefw', '2018-07-22 06:23:59', '2018-07-22 06:23:59', NULL),
(2, 1, 'ar', 'test service', 'wfwfe', '2018-07-22 06:23:59', '2018-07-22 06:23:59', NULL),
(5, 2, 'en', 'test service tow', 'test service tow', '2018-07-25 08:26:00', '2018-07-25 08:26:50', '2018-07-25 08:26:50'),
(6, 2, 'ar', 'test service tow ar', 'test service tow', '2018-07-25 08:26:00', '2018-07-25 08:26:50', '2018-07-25 08:26:50'),
(7, 3, 'en', 'Service', 'Service', '2018-09-18 13:38:44', '2018-09-18 13:38:44', NULL),
(8, 3, 'ar', 'Service', 'Service', '2018-09-18 13:38:44', '2018-09-18 13:38:44', NULL),
(9, 4, 'en', 'ServiceService', 'ServiceServiceServiceServiceService', '2018-09-18 15:48:05', '2018-09-18 15:48:05', NULL),
(10, 4, 'ar', 'ServiceService', 'ServiceServiceServiceServiceService', '2018-09-18 15:48:05', '2018-09-18 15:48:05', NULL),
(11, 5, 'en', 'Training Halls', 'Training Halls', '2018-09-19 16:32:05', '2018-09-19 16:32:05', NULL),
(12, 5, 'ar', 'Training Halls', 'Training Halls', '2018-09-19 16:32:05', '2018-09-19 16:32:05', NULL),
(13, 6, 'en', 'computer Halls', 'computer Halls', '2018-09-19 16:33:34', '2018-09-19 16:33:34', NULL),
(14, 6, 'ar', 'computer Halls', 'computer Halls', '2018-09-19 16:33:34', '2018-09-19 16:33:34', NULL),
(15, 7, 'en', 'computer Halls 20 students', 'computer Halls 20 students', '2018-09-19 16:47:16', '2018-09-19 16:47:16', NULL),
(16, 7, 'ar', 'computer Halls 20 students', 'computer Halls 20 students', '2018-09-19 16:47:16', '2018-09-19 16:47:16', NULL),
(17, 8, 'en', 'Training Halls', 'Training Halls', '2018-09-22 12:18:16', '2018-09-22 12:18:16', NULL),
(18, 8, 'ar', 'قاعات', 'قاعات للتدريب', '2018-09-22 12:18:16', '2018-09-22 12:18:16', NULL),
(19, 9, 'en', 'Birth Day', 'Birth Day', '2018-09-22 12:20:43', '2018-09-22 12:20:43', NULL),
(20, 9, 'ar', 'أعياد ميلاد', 'أعياد ميلاد', '2018-09-22 12:20:43', '2018-09-22 12:20:43', NULL),
(21, 10, 'en', 'WEDDING', 'WEDDING', '2018-09-22 12:22:42', '2018-09-22 12:22:42', NULL),
(22, 10, 'ar', 'حفلات زواج', 'حفلات زواج', '2018-09-22 12:22:42', '2018-09-22 12:22:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_store_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_store_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paginate` int(255) DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vedio` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_us` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `url`, `logo`, `admin_email`, `app_store_url`, `play_store_url`, `info_email`, `mobile`, `phone`, `facebook`, `twitter`, `linked_in`, `instagram`, `google_plus`, `paginate`, `latitude`, `longitude`, `image`, `vedio`, `join_us`, `note`, `created_at`, `updated_at`) VALUES
(1, 'http://bunch.linekw.com/', '5f3be9f3ee98c.jpg', 'mahmoud@linekw.com', 'https://www.apple.com/ios/app-store/', 'https://play.google.com/store?hl=en', 'mahmoud@linekw.com', '96560440435', '51546554656', 'https://www.facebook.com/Linekw', 'https://www.Twitter.com/Linekw', 'https://www.linkedin.com/', 'https://www.instegram.com/linekw', 'https://www.google.com/', 20, '29.345489170224205', '47.984147966796854', '5b828437755d8.png', 'https://www.youtube.com/embed/aBiYiymg_sk', 'http://bunch.linekw.com/en/join', NULL, NULL, '2020-08-18 11:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_words` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_it_work` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `title`, `address`, `description`, `join_description`, `key_words`, `how_it_work`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Bunch', 'Kuwait City 13109, Kuwait', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliqua', 'Descript Join English', 'Bunch', 'How It Work En', NULL, '2018-09-05 16:58:00'),
(2, 1, 'ar', 'بنش', 'الكويت- شارع بيروت', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.', 'اضف شركتك للتطبيق من خلال تعبئة النموذج', 'بنش', 'كيف يعمل التطبيق', NULL, '2018-09-05 16:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `type`, `image`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'uploads/images/sliders/IAJcLV4eGjwGXFAAKVhTDbyZRJpbyd4LQk4N99PU.png', NULL, 'not_active', '2018-04-10 10:07:04', '2018-09-22 10:53:32', '2018-09-22 10:53:32'),
(2, 2, 'uploads/clinic/5ac1d20f95e99.jpg', NULL, 'active', '2018-04-15 12:13:35', '2018-05-08 16:26:06', '2018-05-08 16:26:06'),
(3, 2, 'uploads/clinic/5ac1d20f95e99.jpg', NULL, 'active', '2018-04-24 08:12:20', '2018-05-08 16:27:03', '2018-05-08 16:27:03'),
(4, 1, 'uploads/images/sliders/zhqX4NZSp0YedG2Ze69RUbJSZ88c9LMDNSPD6437.jpeg', NULL, 'active', '2018-05-08 14:26:05', '2018-05-08 14:26:05', NULL),
(5, 1, 'uploads/images/sliders/vc3kxYR8qh5zI7DtUMpnlKqyAzgbwJsZokxwXpkz.png', NULL, 'active', '2018-05-08 14:26:16', '2018-05-08 14:26:16', NULL),
(6, 2, 'uploads/images/sliders/Abi2AhEUVRiZFgiwVyol2MTA09gMjLUSqObJD62k.jpeg', NULL, 'active', '2018-05-08 14:26:48', '2018-05-08 14:26:48', NULL),
(7, 1, 'uploads/images/sliders/xSYRoO4r3I3xLaSoV70MpxGARzNQoM52AQY8Cbc2.png', 1, 'active', '2018-05-08 14:26:58', '2018-09-20 14:36:48', NULL),
(8, 1, 'uploads/images/sliders/MbtihfK4WgicPXo8xUcJvxCVu30MUPgRhWmInGrb.png', NULL, 'not_active', '2018-06-07 13:20:03', '2018-09-22 10:53:32', '2018-09-22 10:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `locale` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Dacsfvsdvb', '2018-04-10 10:07:04', '2018-04-10 10:07:04', NULL),
(2, 1, 'ar', 'Sfvsfbfdsbdbfd', '2018-04-10 10:07:04', '2018-04-10 10:07:04', NULL),
(3, 2, 'en', 'Wwwwwwww', '2018-04-15 12:13:35', '2018-04-15 12:15:38', NULL),
(4, 2, 'ar', 'Sssssssss', '2018-04-15 12:13:35', '2018-04-15 12:13:35', NULL),
(5, 3, 'en', 'efsfs', '2018-04-24 08:12:44', '0000-00-00 00:00:00', NULL),
(6, 3, 'ar', 'efsfs', '2018-04-24 08:12:47', '0000-00-00 00:00:00', NULL),
(7, 4, 'en', 'Qawseg', '2018-05-08 14:26:05', '2018-05-08 14:26:05', NULL),
(8, 4, 'ar', 'اعلان ارسال ايميلات', '2018-05-08 14:26:05', '2018-09-06 11:32:10', NULL),
(9, 5, 'en', 'Qawsrty', '2018-05-08 14:26:16', '2018-05-08 14:26:16', NULL),
(10, 5, 'ar', 'اعلان مطور عادي', '2018-05-08 14:26:16', '2018-09-06 11:31:48', NULL),
(11, 6, 'en', 'Waeuh', '2018-05-08 14:26:48', '2018-05-08 14:26:48', NULL),
(12, 6, 'ar', 'Wash', '2018-05-08 14:26:48', '2018-05-08 14:26:48', NULL),
(13, 7, 'en', 'Advertisement', '2018-05-08 14:26:58', '2018-09-24 15:59:15', NULL),
(14, 7, 'ar', 'اعلانات', '2018-05-08 14:26:58', '2018-09-06 11:31:23', NULL),
(15, 8, 'en', 'World Cup', '2018-06-07 13:20:03', '2018-06-07 13:20:03', NULL),
(16, 8, 'ar', 'World Cup', '2018-06-07 13:20:03', '2018-06-07 13:20:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` int(11) NOT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'not_active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `image`, `order_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/specialization/BADzOt3GgDgLulyksqULEXHeRvumJRqBwTZac6UP.png', 1, 'active', '2018-03-26 09:41:44', '2018-09-10 13:32:43', NULL),
(2, 'uploads/specialization/UjHl2Ms81gcmhs5bhWogR3EniB3tz1chAr3Uytha.png', 1, 'active', '2018-03-26 19:15:00', '2018-09-10 13:32:40', NULL),
(3, 'uploads/specialization/ZNGfbzihn9gl9ALWZ2hjTfOEEGBTiJL2rB8IeDiI.png', 0, 'active', '2018-04-10 05:06:04', '2018-09-10 13:32:08', NULL),
(4, 'uploads/specialization/i6uPKups3YGpBXVJSE5F4C62iDlasWJJbmk28rBl.png', 0, 'active', '2018-05-08 12:19:11', '2018-09-10 13:31:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specialization_translations`
--

CREATE TABLE `specialization_translations` (
  `id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `locale` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specialization_translations`
--

INSERT INTO `specialization_translations` (`id`, `specialization_id`, `locale`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Food&Drink', 'sdhfgsdhkv', '2018-03-26 09:41:44', '2018-03-26 09:41:44', NULL),
(2, 1, 'ar', 'طعام وشراب', 'ksdjhfgskjdv', '2018-03-26 09:41:44', '2018-03-26 09:41:44', NULL),
(3, 2, 'en', 'Fashion&Beauty', 'wvwrvrwv', '2018-03-26 19:15:00', '2018-03-26 19:15:00', NULL),
(4, 2, 'ar', 'ازياء واكسسوارات', 'wvwrvrfv', '2018-03-26 19:15:00', '2018-03-26 19:15:00', NULL),
(5, 3, 'en', 'Services', 'second', '2018-04-10 05:06:04', '2018-04-10 05:06:04', NULL),
(6, 3, 'ar', 'خدمات', 'second', '2018-04-10 05:06:04', '2018-04-10 05:06:04', NULL),
(7, 4, 'en', 'Gifts&Others', 'Four Section', '2018-05-08 12:19:11', '2018-07-15 06:57:30', NULL),
(8, 4, 'ar', 'هدايا وآخرى', 'السيكشن الرابع', '2018-05-08 12:19:11', '2018-09-11 20:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subadmins`
--

CREATE TABLE `subadmins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `subadmins`
--

INSERT INTO `subadmins` (`id`, `name`, `email`, `image`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'subadmin', 'sub@sub.sub', 'uploads/users/5b16433b54a44.jpeg', '3678326', '$2y$10$Dfrvq3PHOAq9q9gPFvfuY.Beg1ztEM3p65C8i4/JsV/PRLgaH8huG', 'uKRnsGQPbDD3uRo5k8iFNP3HGWqDjh48KC7mOYPsHq7PLUWPLpumgjxAsT7G', NULL, '2018-06-05 05:00:59', NULL),
(4, 'ali', 'ali@gmail.com', 'uploads/users/5b3b6cd849925.jpg', '123564654', '$2y$10$iR9U9pvnU9cV0fQ80ptDwO6KoEyTYRiRM8r4mddQxpUTmf80csX36', 'C6NDtCYcAJR40wY6yzL9VnXappggdBpuPTlazpxWDrmXTbq79If6SolayEm4', '2018-07-03 17:32:24', '2018-07-03 17:32:24', NULL),
(6, 'mazen', 'm@gmail.com', NULL, '435', '$2y$10$7cvT4ivRhDgKILGB8EZq5uY8y0xUwMYVQA7XQ70QxfbNnwRJVRWqm', 'aNLutNOxMdIuG9R24CjLtnEGwrtQfadj5trlJIRRPWPCSVz6eDV4o22S9OVE', '2018-07-05 14:22:32', '2018-07-05 14:22:32', NULL),
(8, 'meded@gmail.com', 'meded@gmail.com', NULL, '23455343456', '$2y$10$tjZ1RrhYYeerd69Npj4/Du5Vj8FvNZk8S1mw82XLw8GXoO/K6rYsm', NULL, '2018-09-05 18:01:56', '2018-09-05 18:01:56', NULL),
(9, 'meeee@gmail.com', 'meeee@gmail.com', NULL, '43536457564', '$2y$10$yb2hjE6/tVwaG.J.00oW4uzorZ/tQdoOZwzdTcrksyAncYY1S6Bjy', NULL, '2018-09-05 18:12:50', '2018-09-05 18:12:50', NULL),
(10, 'test@test.test', 'test@test.test', NULL, '54654635', '$2y$10$T/m74YnuB5IUM4Sp3LeCeOH7G7EjE6Zl07uBKjKEUzumw5dyFws/e', 'IBGhR9CvDuuS5DZmV2iyZ5pc6EAUiZNjw2ILp2RcglSBKA3tySFsY4MiGK3C', '2018-09-09 14:43:50', '2018-09-18 15:00:54', NULL),
(11, 'mfrfr@gmail.com', 'mfrfr@gmail.com', NULL, '23455343456', '$2y$10$oMc4kijFhDRDMiC7y7Nsz.HW9XsJe3P2w6M0BKbou9TXnZqXQ6Sp6', NULL, '2018-09-10 11:53:20', '2018-09-10 11:53:20', NULL),
(12, 'coffee', 'coffee@coffee.com', NULL, '1122334455', '$2y$10$Mr/s5PPeKVsjJLK01g8g6OconGwAos3JdHF29bhkRxONFYddpYu9a', NULL, '2018-09-22 11:11:02', '2018-09-22 11:11:02', NULL),
(13, 'Restorant', 'res@rest.com', NULL, '114477885522', '$2y$10$Fqfa6RY4mWye/sPov3VVAuY/rWRn3jzf.heNJ9PlNM8zbZnFc9aEK', NULL, '2018-09-22 11:24:25', '2018-09-22 11:24:25', NULL),
(14, 'Bakery', 'bakery@bakery.com', 'uploads/users/5ba5e1ccc470b.png', '123654789', '$2y$10$oI/ogfzCqfuJfRjmeNvGguuEpEbEVxOmK7Est3MUYLTX4Zms7Z2Xq', NULL, '2018-09-22 11:31:40', '2018-09-22 11:31:40', NULL),
(15, 'service', 'service@service.com', NULL, '123647852', '$2y$10$G7aWhq2AY3dbiHqPBdm6reozLtSXyTkUfYh6e5DLmJUHRTIznLUAW', 'xsSgR88maKVpS0gl6iNqg1zWhtuJU8Qrf96dZH6Kab3vbRT34pJV9aEQNuNI', '2018-09-22 12:10:21', '2018-09-22 12:10:21', NULL),
(16, 'HALL', 'hall@hall.comm', NULL, '1265845526', '$2y$10$fZ3Fyfwz10nm57A0pP0iRulPjuSip345A7nLKQnVK74TrlW89pTfK', NULL, '2018-09-22 12:13:06', '2018-09-22 12:13:06', NULL),
(17, 'hazem', 'hazem@g.com', 'uploads/users/5ba6342da681a.png', '75485647856', '$2y$10$WZmlnWQNPBA.TfAdVtPTQ.3PcLs.hYHRFXNEuNLBk5s/4Yo6IML2G', NULL, '2018-09-22 17:23:09', '2018-09-22 17:23:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subadmin_password_resets`
--

CREATE TABLE `subadmin_password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_companies`
--

CREATE TABLE `subcategory_companies` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategory_companies`
--

INSERT INTO `subcategory_companies` (`id`, `company_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(31, 1, 2, '2018-09-19 11:53:09', '2018-09-19 11:53:09'),
(34, 8, 6, '2018-09-19 16:28:51', '2018-09-19 16:28:51'),
(35, 3, 17, '2018-09-19 18:03:11', '2018-09-19 18:03:11'),
(36, 9, 18, '2018-09-22 11:12:40', '2018-09-22 11:12:40'),
(37, 10, 19, '2018-09-22 11:29:53', '2018-09-22 11:29:53'),
(38, 10, 20, '2018-09-22 11:29:53', '2018-09-22 11:29:53'),
(39, 10, 21, '2018-09-22 11:29:53', '2018-09-22 11:29:53'),
(40, 11, 22, '2018-09-22 11:42:23', '2018-09-22 11:42:23'),
(41, 11, 23, '2018-09-22 11:42:23', '2018-09-22 11:42:23'),
(42, 12, 24, '2018-09-22 12:12:00', '2018-09-22 12:12:00'),
(43, 13, 17, '2018-09-22 12:16:46', '2018-09-22 12:16:46'),
(44, 2, 11, '2018-09-27 12:56:34', '2018-09-27 12:56:34'),
(45, 2, 12, '2018-09-27 12:56:34', '2018-09-27 12:56:34'),
(46, 2, 13, '2018-09-27 12:56:34', '2018-09-27 12:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `logo` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int(11) NOT NULL,
  `status` enum('active','not_active') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `logo`, `order_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'uploads/subcategory/5b4b20fb4135b.jpeg', 0, 'active', '2018-07-15 07:24:59', '2018-07-15 07:24:59', NULL),
(2, 1, 'uploads/subcategory/5b5038e469848.jpeg', 0, 'active', '2018-07-19 04:08:20', '2018-07-19 04:08:20', NULL),
(3, 1, 'uploads/subcategory/5b508e33a4b1e.png', 0, 'active', '2018-07-19 10:12:19', '2018-07-19 10:12:19', NULL),
(4, 4, 'uploads/subcategory/5b571d809ffe8.jpeg', 0, 'active', '2018-07-24 09:37:20', '2018-09-22 10:41:32', '2018-09-22 10:41:32'),
(5, 4, 'uploads/subcategory/5b571ddbd1f03.png', 0, 'active', '2018-07-24 09:38:51', '2018-09-22 10:41:41', '2018-09-22 10:41:41'),
(6, 5, 'uploads/subcategory/5b5858de31ac6.jpeg', 0, 'active', '2018-07-25 08:02:54', '2018-09-22 10:41:16', '2018-09-22 10:41:16'),
(7, 5, 'uploads/subcategory/5b5858f36bd42.png', 0, 'active', '2018-07-25 08:03:15', '2018-09-22 10:41:11', '2018-09-22 10:41:11'),
(8, 1, 'uploads/subcategory/5ba1f0466c81d.png', 0, 'active', '2018-09-19 11:44:22', '2018-09-19 11:44:22', NULL),
(9, 1, 'uploads/subcategory/5ba1f0714275b.png', 0, 'active', '2018-09-19 11:45:05', '2018-09-19 11:45:05', NULL),
(10, 1, 'uploads/subcategory/5ba1f086f2fc8.png', 0, 'active', '2018-09-19 11:45:26', '2018-09-19 11:45:26', NULL),
(11, 2, 'uploads/subcategory/5ba1f0a63963b.png', 0, 'active', '2018-09-19 11:45:58', '2018-09-19 11:45:58', NULL),
(12, 2, 'uploads/subcategory/5ba1f0b8d382b.png', 0, 'active', '2018-09-19 11:46:16', '2018-09-19 11:46:16', NULL),
(13, 2, 'uploads/subcategory/5ba1f0d8a1265.png', 0, 'active', '2018-09-19 11:46:48', '2018-09-19 11:46:48', NULL),
(14, 9, 'uploads/subcategory/5ba1f1318034b.png', 0, 'active', '2018-09-19 11:48:17', '2018-09-19 11:48:17', NULL),
(15, 9, 'uploads/subcategory/5ba1f146a0d30.png', 0, 'active', '2018-09-19 11:48:38', '2018-09-19 11:48:38', NULL),
(16, 9, 'uploads/subcategory/5ba1f16202da1.png', 0, 'active', '2018-09-19 11:49:06', '2018-09-19 11:49:06', NULL),
(17, 15, NULL, 0, 'active', '2018-09-19 18:00:23', '2018-09-19 18:00:23', NULL),
(18, 7, NULL, 0, 'active', '2018-09-22 10:56:34', '2018-09-22 10:56:34', NULL),
(19, 6, NULL, 0, 'active', '2018-09-22 10:56:51', '2018-09-22 10:56:51', NULL),
(20, 6, NULL, 0, 'active', '2018-09-22 10:57:04', '2018-09-22 10:57:04', NULL),
(21, 6, NULL, 0, 'active', '2018-09-22 10:57:18', '2018-09-22 10:57:18', NULL),
(22, 11, NULL, 0, 'active', '2018-09-22 11:39:03', '2018-09-22 11:39:03', NULL),
(23, 11, NULL, 0, 'active', '2018-09-22 11:39:27', '2018-09-22 11:39:27', NULL),
(24, 5, NULL, 0, 'active', '2018-09-22 12:05:35', '2018-09-22 12:05:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_translations`
--

CREATE TABLE `sub_category_translations` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `locale` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_category_translations`
--

INSERT INTO `sub_category_translations` (`id`, `sub_category_id`, `locale`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Food Big', '2018-07-15 07:24:59', '2018-07-15 07:24:59', NULL),
(2, 1, 'ar', 'ملابس كبيرة', '2018-07-15 07:24:59', '2018-07-15 07:24:59', NULL),
(3, 2, 'en', 'Food Hot', '2018-07-19 04:08:20', '2018-07-19 04:08:20', NULL),
(4, 2, 'ar', 'Food Hot', '2018-07-19 04:08:20', '2018-07-19 04:08:20', NULL),
(5, 3, 'en', 'Third Sub', '2018-07-19 10:12:19', '2018-07-19 10:12:19', NULL),
(6, 3, 'ar', 'Third Sub', '2018-07-19 10:12:19', '2018-07-19 10:12:19', NULL),
(7, 4, 'en', 'Fashing Mazda', '2018-07-24 09:37:20', '2018-07-24 09:37:20', NULL),
(8, 4, 'ar', 'Fashing Mazda', '2018-07-24 09:37:20', '2018-07-24 09:37:20', NULL),
(9, 5, 'en', 'Fashing Lion', '2018-07-24 09:38:51', '2018-07-24 09:38:51', NULL),
(10, 5, 'ar', 'Fashing Lion', '2018-07-24 09:38:51', '2018-07-24 09:38:51', NULL),
(11, 6, 'en', 'Ser One', '2018-07-25 08:02:54', '2018-07-25 08:02:54', NULL),
(12, 6, 'ar', 'Ser One', '2018-07-25 08:02:54', '2018-07-25 08:02:54', NULL),
(13, 7, 'en', 'Ser Tow', '2018-07-25 08:03:15', '2018-07-25 08:03:15', NULL),
(14, 7, 'ar', 'Ser Tow', '2018-07-25 08:03:15', '2018-07-25 08:03:15', NULL),
(15, 8, 'en', 'Breakfast', '2018-09-19 11:44:22', '2018-09-19 11:44:22', NULL),
(16, 8, 'ar', 'أفطار', '2018-09-19 11:44:22', '2018-09-19 11:44:22', NULL),
(17, 9, 'en', 'Dinar', '2018-09-19 11:45:05', '2018-09-19 11:45:05', NULL),
(18, 9, 'ar', 'وجبة عشاء', '2018-09-19 11:45:05', '2018-09-19 11:45:05', NULL),
(19, 10, 'en', 'Lanch', '2018-09-19 11:45:26', '2018-09-19 11:45:26', NULL),
(20, 10, 'ar', 'غداء', '2018-09-19 11:45:26', '2018-09-19 11:45:26', NULL),
(21, 11, 'en', 'Men', '2018-09-19 11:45:58', '2018-09-19 11:45:58', NULL),
(22, 11, 'ar', 'رجال', '2018-09-19 11:45:58', '2018-09-19 11:45:58', NULL),
(23, 12, 'en', 'WOMAN', '2018-09-19 11:46:16', '2018-09-19 11:46:16', NULL),
(24, 12, 'ar', 'نساء', '2018-09-19 11:46:16', '2018-09-19 11:46:16', NULL),
(25, 13, 'en', 'KIDS', '2018-09-19 11:46:48', '2018-09-19 11:46:48', NULL),
(26, 13, 'ar', 'أطفال', '2018-09-19 11:46:48', '2018-09-19 11:46:48', NULL),
(27, 14, 'en', 'Foundation', '2018-09-19 11:48:17', '2018-09-19 11:48:17', NULL),
(28, 14, 'ar', 'Foundation', '2018-09-19 11:48:17', '2018-09-19 11:48:17', NULL),
(29, 15, 'en', 'Nail Polish', '2018-09-19 11:48:38', '2018-09-19 11:48:38', NULL),
(30, 15, 'ar', 'Nail Polish', '2018-09-19 11:48:38', '2018-09-19 11:48:38', NULL),
(31, 16, 'en', 'Face Powder', '2018-09-19 11:49:06', '2018-09-19 11:49:06', NULL),
(32, 16, 'ar', 'Face Powder', '2018-09-19 11:49:06', '2018-09-19 11:49:06', NULL),
(33, 17, 'en', 'WEDDING', '2018-09-19 18:00:23', '2018-09-19 18:00:23', NULL),
(34, 17, 'ar', 'WEDDING', '2018-09-19 18:00:23', '2018-09-19 18:00:23', NULL),
(35, 18, 'en', 'Sidewalk Cafe', '2018-09-22 10:56:34', '2018-09-22 11:00:03', NULL),
(36, 18, 'ar', 'Sidewalk Cafe', '2018-09-22 10:56:34', '2018-09-22 11:00:03', NULL),
(37, 19, 'en', 'Breakfast', '2018-09-22 10:56:51', '2018-09-22 10:56:51', NULL),
(38, 19, 'ar', 'أفطار', '2018-09-22 10:56:51', '2018-09-22 10:56:51', NULL),
(39, 20, 'en', 'Dinar', '2018-09-22 10:57:04', '2018-09-22 10:57:04', NULL),
(40, 20, 'ar', 'وجبة عشاء', '2018-09-22 10:57:04', '2018-09-22 10:57:04', NULL),
(41, 21, 'en', 'Lanch', '2018-09-22 10:57:18', '2018-09-22 10:57:18', NULL),
(42, 21, 'ar', 'وجبة افطار', '2018-09-22 10:57:18', '2018-09-22 10:57:18', NULL),
(43, 22, 'en', 'Bread', '2018-09-22 11:39:03', '2018-09-22 11:39:03', NULL),
(44, 22, 'ar', 'خـبز', '2018-09-22 11:39:03', '2018-09-22 11:39:03', NULL),
(45, 23, 'en', 'Cakes', '2018-09-22 11:39:27', '2018-09-22 11:39:27', NULL),
(46, 23, 'ar', 'كيك', '2018-09-22 11:39:27', '2018-09-22 11:39:27', NULL),
(47, 24, 'en', 'Wedding', '2018-09-22 12:05:35', '2018-09-22 12:05:35', NULL),
(48, 24, 'ar', 'مناسبات زواج', '2018-09-22 12:05:35', '2018-09-22 12:05:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `accept` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `token`, `type`, `accept`, `created_at`, `updated_at`, `deleted_at`) VALUES
(75, 7, 'd7heP6is7WY:APA91bFapB302qEruPBUakUcqktHbyM3iTZi6afzEUsXua1C4NEbgHbh8x5tatGbTWpG15fClP7KK6Bn7Np57kLOBJPQ69LMguOc3eAtnXh1N6VU7CvplXYmDpsobAkgIzfN8k0cRtax', 'ios', 1, '2018-09-27 16:42:14', '2018-09-27 16:42:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lan` float(11,8) DEFAULT NULL,
  `location` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile_image`, `mobile`, `password`, `lat`, `lan`, `location`, `remember_token`, `admin`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'mohamed alijla', 'mohamed.alijla@gmail.com', 'uploads/users/5b6957144fbc8.jpeg', '898989898989', '$2y$10$/29XswcWRr6uk8O72VNgwuLPJDEodWXDSHmrY8bDrcYpwqiz7HZi2', 89.97570038, 78.74356842, 'kwuait', NULL, 0, 'active', '2018-07-26 13:09:17', '2018-08-07 13:23:48', NULL),
(3, 'sabri mohamed', 'mohamed@gmail.com', NULL, '877846734', '$2y$10$ipYhFO3de16UIrtQ87vUHeNpuJJBlHRAa2oBGdM74UWudVlbfOXae', 89.97570038, 78.74356842, 'kwuait', NULL, 0, 'active', '2018-07-26 13:11:28', '2018-07-26 13:11:28', NULL),
(4, 'bunch DRIVER', 'test@bunch.com', 'uploads/users/5ba5f06b11f41.jpg', '233113665645', '$2y$10$GxpqPoVrIsxN1E5RUvpY7.kNMHwrAEMWn18XxSx6L98pnFIr6cd2G', 29.27610397, 48.06547165, 'Mishref, Kuwait', NULL, 1, 'active', '2018-08-06 16:32:44', '2018-09-22 12:35:41', NULL),
(5, 'test u', 'testuser@bunch.com', 'uploads/users/5ba1009c32645.jpg', '56565464546465', '$2y$10$OFFMpAFHxsOwGnh2vvXbUeyqpwZjRq9lF0QUdiiEGUmrLqnsCo1Za', 29.37585831, 47.97740555, 'Kuwait City', NULL, 0, 'active', '2018-08-13 16:47:40', '2018-09-18 18:43:36', NULL),
(6, 'sabriq mohamed', 'mohamed12q@gmail.com', NULL, '87784673412', '$2y$10$ULXPKWSD0UkKZTvn/3zMQeg.Y7tO02GYZibbZY92HCzK.UsNSi3c.', 89.97570038, 78.74356842, 'kwuait', NULL, 0, 'active', '2018-08-19 15:04:05', '2018-08-19 15:04:05', NULL),
(7, 'iMostafa', 'qqq@qqq.qqq', 'uploads/users/5b826b174b0b5.jpeg', '10101010010015', '$2y$10$c5FjmnI/0EfWFwG6vVJN7OdgDGXJLIMQdGQIWAYgp4xXOQ7HX5vaO', 31.50175858, 34.43461227, 'Al-Farabi for Multilingual Services', NULL, 0, 'active', '2018-08-19 15:13:25', '2018-09-25 14:44:18', NULL),
(8, 'test', 'test.linekw@gmail.com', 'uploads/users/5baa06ef088de.jpeg', '123456789013', '$2y$10$JpkMsNla2G9/8oUr7Q8TVOVwC2AW9DYHaUAR/awBKHMKa3L5ZtWie', 31.50175858, 34.43461227, 'Al-Farabi for Multilingual Services', '7yiO3ei49DNpgNy6RJQgV4hWHWE7qB5IhMEhZ1kBn6htebZzbG0rD707tXX1', 0, 'active', '2018-08-26 15:27:36', '2018-09-25 14:59:11', NULL),
(9, 'ios', 'ios@ios.ios', 'uploads/users/5b8cf9001adc5.jpg', '565446666', '$2y$10$Wwtp5Irv8o2nky/jF8FpK.Y14iYuRVG/ZJQHH9ZrvOywQ5ABuAndC', 29.25353241, 47.99733353, 'Stores of the Ministry of Electricity and Water مخازن وزارة الكهرباء والماء -', NULL, 0, 'active', '2018-09-03 13:40:51', '2018-09-05 09:49:50', NULL),
(10, 'Mostafa', 'aa@aa.aa', NULL, '12312312312', '$2y$10$e.yKczyHhZcA5nfRuVWbuOUd86RkoyEmty27f1OzEndHW4TLqspEm', 51.17888260, -1.82621503, 'ستونهنج', NULL, 0, 'active', '2018-09-05 13:16:36', '2018-09-05 13:16:36', NULL),
(11, 'asdasd', 'asd@asd.asd', NULL, '21312312222', '$2y$10$Ffza1ju.6riUeeF.5VUSouSbT9UIaWtOZbOyoFZK1F4Saenfq6HGa', 51.17893600, -1.82629645, 'Stonehenge Landscape', NULL, 0, 'not_active', '2018-09-05 13:23:41', '2018-09-20 18:15:55', NULL),
(12, 'Ahmed J', 'ahmedjabusada@gmail.com', 'uploads/users/5ba1e7f72d8ef.jpg', '12345678', '$2y$10$gKIvJefGUMwrkQZDs7MwZeVDnbg5k0ZvGytaILw3G/uIh4iz6noBS', 29.34996223, 48.00350571, 'Qadsiya', NULL, 0, 'active', '2018-09-19 11:08:19', '2018-09-19 11:10:56', NULL),
(13, 'rrrr', 'mrrrr@gmail.com', 'uploads/users/5ba2481cb5883.jpeg', '73465873465', '$2y$10$kniMErlP1MW1ZqWPOufTXOyHwMM5sOOdoiA1bZHp6B/wo2RXyLKXq', 29.37585831, 47.97740555, 'Kuwait City, Kuwait', NULL, 1, 'active', '2018-09-19 17:59:08', '2018-09-19 17:59:08', NULL),
(14, 'reham matar', 'reham@linekw.com', NULL, '66336569', '$2y$10$wVF.AG2UMh2slMepGisLXOlltz8EkAt9k43a/CzqLI1SIoi0JtSti', 51.17888260, -1.82621503, 'Stonehenge', NULL, 0, 'active', '2018-09-23 12:48:33', '2018-09-25 14:42:56', NULL),
(15, 'emad', 'emad@gmail.com', NULL, '147258369', '$2y$10$sv9qsMp3IzZgcKHvX.ocDutteW9ukBJqI9hlQizdgKrAfoqvUFTsm', 29.27610397, 48.06547165, 'Mishref', NULL, 0, 'active', '2018-09-25 13:20:32', '2018-09-25 13:20:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement_us`
--
ALTER TABLE `advertisement_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attatchments`
--
ALTER TABLE `attatchments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catsizes`
--
ALTER TABLE `catsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_translations`
--
ALTER TABLE `company_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_translations`
--
ALTER TABLE `currency_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features_color`
--
ALTER TABLE `features_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features_size`
--
ALTER TABLE `features_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `helps`
--
ALTER TABLE `helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_translations`
--
ALTER TABLE `help_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `land_translations`
--
ALTER TABLE `land_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_translations`
--
ALTER TABLE `language_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_message`
--
ALTER TABLE `notification_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_companies`
--
ALTER TABLE `payment_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_translations`
--
ALTER TABLE `projects_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialization_translations`
--
ALTER TABLE `specialization_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subadmins`
--
ALTER TABLE `subadmins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `subcategory_companies`
--
ALTER TABLE `subcategory_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_translations`
--
ALTER TABLE `sub_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ads_translations`
--
ALTER TABLE `ads_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `advertisement_us`
--
ALTER TABLE `advertisement_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attatchments`
--
ALTER TABLE `attatchments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `catsizes`
--
ALTER TABLE `catsizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `company_translations`
--
ALTER TABLE `company_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency_translations`
--
ALTER TABLE `currency_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `features_color`
--
ALTER TABLE `features_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `features_size`
--
ALTER TABLE `features_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `helps`
--
ALTER TABLE `helps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `help_translations`
--
ALTER TABLE `help_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `land_translations`
--
ALTER TABLE `land_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_translations`
--
ALTER TABLE `language_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification_message`
--
ALTER TABLE `notification_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_companies`
--
ALTER TABLE `payment_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects_translations`
--
ALTER TABLE `projects_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `specialization_translations`
--
ALTER TABLE `specialization_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subadmins`
--
ALTER TABLE `subadmins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subcategory_companies`
--
ALTER TABLE `subcategory_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sub_category_translations`
--
ALTER TABLE `sub_category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
