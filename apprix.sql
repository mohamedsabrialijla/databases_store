-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2022 at 02:34 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apprix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token_auth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ar',
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `token_auth`, `lang`, `status`) VALUES
(1, 'Admin', 'Admin', 'admin@hexacit.com', '$2y$10$XnnwHoRcMCvMutowcQCmeuZVvMZdyr92fBNsP/6kTwZ6rEIqRM0RW', 'TFVXEUo0lo73tD8bWVKWegqIGP8lwDRExTlJ4D8EIkBmlMu3hD9aYRrmSXDa', '2017-10-29 22:40:02', '2018-07-15 20:19:05', '7ffeb5f5e3198e91e0db209bec168b52e33a3f36f1cf9af2eaf9e63622be003ddae28574a3b627aa8dcf03a8c0a37694dd3c955db94f1b4d079a0843ed384f33', 'ar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attatchments`
--

CREATE TABLE `attatchments` (
  `id` int(30) NOT NULL,
  `work_id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attatchments`
--

INSERT INTO `attatchments` (`id`, `work_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'uploads/1.png', '2018-08-29 10:28:14', '0000-00-00 00:00:00', NULL),
(2, 1, 'uploads/2.png', '2018-08-29 10:28:19', '0000-00-00 00:00:00', NULL),
(3, 1, 'uploads/3.png', '2018-08-29 11:11:23', '0000-00-00 00:00:00', NULL),
(4, 1, 'uploads/4.png', '2018-08-29 11:12:09', '0000-00-00 00:00:00', NULL),
(5, 1, 'uploads/5.png', '2018-08-29 11:12:09', '0000-00-00 00:00:00', NULL),
(6, 1, 'uploads/6.png', '2018-08-29 11:13:36', '0000-00-00 00:00:00', NULL),
(7, 1, 'uploads/7.png', '2018-08-29 11:14:23', '0000-00-00 00:00:00', NULL),
(8, 1, 'uploads/8.png', '2018-08-29 11:14:23', '0000-00-00 00:00:00', NULL),
(9, 2, 'uploads/1535798525_60292.png', '2018-09-01 10:44:20', '2018-09-01 17:42:05', NULL),
(10, 2, 'uploads/1535798525_75781.png', '2018-09-01 10:44:50', '2018-09-01 17:42:05', NULL),
(11, 2, 'uploads/1535798525_90022.png', '2018-09-01 10:44:50', '2018-09-01 17:42:05', NULL),
(12, 2, 'uploads/1535798525_73284.png', '2018-09-01 10:44:50', '2018-09-01 17:42:05', NULL),
(13, 2, 'uploads/1535798525_79143.png', '2018-09-01 10:44:50', '2018-09-01 17:42:05', NULL),
(14, 2, 'uploads/1535798525_67673.png', '2018-09-01 10:44:50', '2018-09-01 17:42:05', NULL),
(15, 2, 'uploads/1535798525_87225.png', '2018-09-01 11:11:59', '2018-09-01 18:11:59', '2018-09-01 18:11:59'),
(16, 2, 'uploads/1535798525_13642.png', '2018-09-01 10:44:50', '2018-09-01 17:42:05', NULL),
(17, 2, 'uploads/1535800339_19448.png', '2018-09-01 18:12:19', '2018-09-01 18:12:19', NULL),
(18, 3, 'uploads/1535801590_79922.png', '2018-09-01 18:33:10', '2018-09-01 18:33:10', NULL),
(19, 3, 'uploads/1535801590_95079.png', '2018-09-01 18:33:10', '2018-09-01 18:33:10', NULL),
(20, 3, 'uploads/1535801590_76718.png', '2018-09-01 18:33:10', '2018-09-01 18:33:10', NULL),
(21, 3, 'uploads/1535801590_27395.png', '2018-09-01 18:33:10', '2018-09-01 18:33:10', NULL),
(22, 3, 'uploads/1535801590_99529.png', '2018-09-01 18:33:10', '2018-09-01 18:33:10', NULL),
(23, 4, 'uploads/sp1.png', '2019-07-03 11:34:21', '2018-09-01 20:06:26', NULL),
(24, 4, 'uploads/sp2.png', '2019-07-03 11:34:26', '2018-09-01 20:06:26', NULL),
(25, 4, 'uploads/sp3.png', '2019-07-03 11:34:30', '2018-09-01 20:06:26', NULL),
(26, 4, 'uploads/p4.png', '2019-07-03 11:36:34', '2018-09-01 20:06:26', NULL),
(27, 4, 'uploads/sp5.png', '2019-07-03 11:34:46', '2018-09-01 20:06:26', NULL),
(28, 4, 'uploads/sp6.png', '2019-07-03 11:34:51', '2018-09-01 20:06:26', NULL),
(34, 5, 'uploads/ty3.png', '2019-07-02 11:04:22', '2018-09-01 20:25:28', NULL),
(35, 5, 'uploads/ty1.png', '2019-07-02 11:04:52', '2018-09-01 20:25:28', NULL),
(36, 5, 'uploads/ty2.png', '2019-07-02 11:04:56', '2018-09-01 20:25:28', NULL),
(37, 5, 'uploads/ty4.png', '2019-07-02 11:04:41', '2018-09-01 20:25:28', NULL),
(40, 6, 'uploads/gcc2.png', '2019-07-02 07:17:49', '2018-09-02 20:45:46', NULL),
(41, 7, 'uploads/1535976988_49235.jpg', '2018-09-03 19:16:28', '2018-09-03 19:16:28', NULL),
(42, 7, 'uploads/1535976988_89714.jpg', '2018-09-03 19:16:28', '2018-09-03 19:16:28', NULL),
(43, 8, 'uploads/en1.png', '2019-07-02 13:35:06', '2018-09-03 19:25:33', NULL),
(44, 8, 'uploads/en2.png', '2019-07-02 13:35:10', '2018-09-03 19:25:33', NULL),
(45, 8, 'uploads/en3.png', '2019-07-02 13:35:14', '2018-09-03 19:25:33', NULL),
(46, 8, 'uploads/en4.png', '2019-07-02 13:35:18', '2018-09-03 19:25:33', NULL),
(47, 8, 'uploads/1535977533_78615.png', '2018-09-03 19:25:33', '2018-09-03 19:25:33', NULL),
(48, 8, 'uploads/1535977533_70704.png', '2018-09-03 19:25:33', '2018-09-03 19:25:33', NULL),
(49, 8, 'uploads/1535977533_67682.png', '2018-09-03 19:25:36', '2018-09-03 19:25:36', NULL),
(50, 8, 'uploads/1535977536_63002.png', '2018-09-03 19:25:36', '2018-09-03 19:25:36', NULL),
(51, 8, 'uploads/1535977536_14828.png', '2018-09-03 19:25:36', '2018-09-03 19:25:36', NULL),
(52, 8, 'uploads/1535977536_60173.png', '2018-09-03 19:25:36', '2018-09-03 19:25:36', NULL),
(53, 8, 'uploads/1535977536_64516.png', '2018-09-03 19:25:36', '2018-09-03 19:25:36', NULL),
(54, 9, 'uploads/mini3.png', '2019-07-02 07:34:23', '2018-09-03 21:59:28', NULL),
(55, 9, 'uploads/1535986768_14478.png', '2018-09-04 07:32:04', '2018-09-04 14:32:04', '2018-09-04 14:32:04'),
(56, 9, 'uploads/mini2.png', '2019-07-02 07:33:49', '2018-09-03 22:01:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `link` varchar(300) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `photo`, `link`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/ham.png', '#', '0', '2018-09-01 14:52:05', '2018-09-01 18:18:47', NULL),
(2, 'uploads/tal.png', '@', '0', '2018-09-01 18:22:03', '2018-09-01 18:30:14', NULL),
(3, 'uploads/win.png', '@', '0', '2018-09-01 19:21:13', '2018-09-01 19:21:13', NULL),
(4, 'uploads/enj.png', '@', '0', '2018-09-01 19:26:19', '2018-09-01 19:26:19', NULL),
(5, 'uploads/eur.png', '@', '0', '2018-09-01 19:28:52', '2018-09-01 19:28:52', NULL),
(6, 'uploads/nur.png', '@', '0', '2018-09-01 19:31:17', '2018-09-01 19:31:17', NULL),
(7, 'uploads/dom.png', '@', '0', '2018-09-01 19:42:46', '2018-09-01 19:42:46', NULL),
(8, 'uploads/med.png', '@', '0', '2018-09-02 06:09:17', '2018-09-02 06:09:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_translations`
--

CREATE TABLE `client_translations` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_translations`
--

INSERT INTO `client_translations` (`id`, `client_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ar', 'انجازي', '2018-09-01 14:52:05', '2018-09-01 18:18:47', NULL),
(2, 1, 'en', '.', '2018-09-01 14:52:05', '2018-09-01 18:18:47', NULL),
(3, 2, 'ar', '#', '2018-09-01 18:22:03', '2018-09-01 18:22:03', NULL),
(4, 2, 'en', '@', '2018-09-01 18:22:03', '2018-09-01 18:22:03', NULL),
(5, 3, 'ar', '@', '2018-09-01 19:21:13', '2018-09-01 19:21:13', NULL),
(6, 3, 'en', '@', '2018-09-01 19:21:13', '2018-09-01 19:21:13', NULL),
(7, 4, 'ar', '-', '2018-09-01 19:26:19', '2018-09-01 19:26:19', NULL),
(8, 4, 'en', '-', '2018-09-01 19:26:19', '2018-09-01 19:26:19', NULL),
(9, 5, 'ar', '-', '2018-09-01 19:28:52', '2018-09-01 19:28:52', NULL),
(10, 5, 'en', '-', '2018-09-01 19:28:52', '2018-09-01 19:28:52', NULL),
(11, 6, 'ar', '-', '2018-09-01 19:31:17', '2018-09-01 19:31:17', NULL),
(12, 6, 'en', '-', '2018-09-01 19:31:17', '2018-09-01 19:31:17', NULL),
(13, 7, 'ar', '-', '2018-09-01 19:42:46', '2018-09-01 19:42:46', NULL),
(14, 7, 'en', '-', '2018-09-01 19:42:46', '2018-09-01 19:42:46', NULL),
(15, 8, 'ar', '-', '2018-09-02 06:09:17', '2018-09-02 06:09:17', NULL),
(16, 8, 'en', '-', '2018-09-02 06:09:17', '2018-09-02 06:09:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `email` varchar(191) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(300) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `seen`, `ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'xcxc', 'admin@mail.com', '05926947', 'xcxc', 'xcxc', 1, '192.11.22.33', '2018-08-26 14:21:07', '2018-08-26 14:21:21', NULL),
(4, 'sdbs', 'test@test.test', '6474575', 'remove account', 'SdgS', 0, '127.0.0.1', '2018-08-29 10:01:11', '2018-08-29 10:01:11', NULL),
(5, 'محمود عبد الله خالد', 'test1@test.test', '4575', 'remove account', '5etrhsrtsrh', 0, '127.0.0.1', '2018-08-29 10:01:52', '2018-08-29 10:01:52', NULL),
(6, 'محمود عبد الله خالد', 'test@test.test', '6354734', 'remove account', 'fgjdfgjdfgjdf dgj drjd r srjs r', 0, '127.0.0.1', '2018-08-29 10:04:10', '2018-08-29 10:04:10', NULL),
(7, 'محمود عبد الله خالد', 'test1@test.test', '6356', 'ers', 'rgwrgerw', 0, '127.0.0.1', '2018-08-29 10:04:54', '2018-08-29 10:04:54', NULL),
(8, 'محمود عبد الله خالد', 'test@test.test', '4635', 'sdfgdrfh', 'dfhdfh', 0, '127.0.0.1', '2018-08-29 10:05:47', '2018-08-29 10:05:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ar', NULL, NULL, NULL),
(2, 'en', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderFiles`
--

CREATE TABLE `orderFiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `services` varchar(300) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `ip_address` varchar(300) NOT NULL,
  `seen` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `mobile`, `services`, `note`, `ip_address`, `seen`, `created_at`, `updated_at`) VALUES
(4, 'جلال محمد مليباري', 'j55552003@hotmail.com', '00966555552003', '2-9-10', '', '31.166.231.226', 1, '2018-09-12 10:40:41', '2018-09-12 17:40:41'),
(6, 'Hayf', 'mibive@mailinator.net', '66', '1-2-11-3-4-9-10-5-6-7-8', 'no details found', '213.6.136.238', 1, '2018-09-12 10:32:52', '2018-09-12 17:32:52'),
(8, 'test', 'sdfd@sdf.df', '10000000000000000000000000000', '1-2-11-3-4-9-10-5-6-7-8', 'testtttttttttttttttttttttttttttttttttt', '213.6.137.134', 0, '2018-09-25 14:53:12', '2018-09-25 14:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `perant_id` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `perant_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2018-08-27 13:55:13'),
(2, 1, NULL, '2018-08-27 13:55:45'),
(3, 2, NULL, NULL),
(4, 2, NULL, NULL),
(5, 3, NULL, NULL),
(6, 3, NULL, NULL),
(7, 3, '2018-08-26 13:21:26', '2018-08-26 13:21:26'),
(8, 3, NULL, NULL),
(9, 2, NULL, NULL),
(10, 2, NULL, NULL),
(11, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_translations`
--

INSERT INTO `service_translations` (`id`, `service_id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'برمجة مواقع إلكترونية بجميع اللغات', NULL, '2018-08-26 13:12:39'),
(2, 1, 'en', 'Programming websites', NULL, NULL),
(3, 2, 'ar', 'برمجة تطبيقات الهواتف الذكية', NULL, NULL),
(4, 2, 'en', 'Smartphone Application Programming', NULL, NULL),
(5, 3, 'ar', 'تصميم المواقع والمتاجر الإلكترونية', NULL, NULL),
(6, 3, 'en', 'Website and store design', NULL, NULL),
(7, 4, 'ar', 'تصميم هوية تجارية للشركات', NULL, NULL),
(8, 4, 'en', 'Design business identity for companies', NULL, NULL),
(9, 5, 'ar', 'خطط تسويقية', NULL, NULL),
(10, 5, 'en', 'marketing plan', NULL, NULL),
(11, 6, 'ar', 'تهيئة المواقع للأرشفة SEO', NULL, NULL),
(12, 6, 'en', 'Optimize your website to Archive ( SEO)', NULL, NULL),
(13, 7, 'ar', 'إدارة صفحات التواصل الاجتماعي', '2018-08-26 13:21:26', '2018-08-26 13:21:26'),
(14, 7, 'en', 'Manage social media pages', '2018-08-26 13:21:26', '2018-08-26 13:21:26'),
(15, 8, 'ar', 'عمل حملات إعلانية ممولة', NULL, NULL),
(16, 8, 'en', 'Made best campaigns in all Marketing channels', NULL, NULL),
(17, 9, 'ar', 'تصاميم تطبيقات الهواتف الذكية', NULL, NULL),
(18, 9, 'en', 'Smartphone application designs', NULL, NULL),
(19, 10, 'ar', 'تصاميم جرافيك', NULL, NULL),
(20, 10, 'en', 'Graphic design', NULL, NULL),
(21, 11, 'ar', 'برمجة المتاجر الإلكترونية', NULL, NULL),
(22, 11, 'en', 'Programming the electronic store', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `mobile2` varchar(15) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8 NOT NULL,
  `email2` varchar(191) NOT NULL,
  `total_projects` varchar(500) DEFAULT NULL,
  `total_clients` varchar(500) DEFAULT NULL,
  `total_employee` varchar(500) DEFAULT NULL,
  `facebook` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `twitter` varchar(500) DEFAULT NULL,
  `linked_in` varchar(500) DEFAULT NULL,
  `instegram` varchar(500) DEFAULT NULL,
  `dribbble` varchar(300) NOT NULL,
  `behance` varchar(300) NOT NULL,
  `google_plus` varchar(500) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `about_us_photo` varchar(500) DEFAULT NULL,
  `our_vision_photo` varchar(500) DEFAULT NULL,
  `our_mision_photo` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `mobile`, `mobile2`, `email`, `email2`, `total_projects`, `total_clients`, `total_employee`, `facebook`, `twitter`, `linked_in`, `instegram`, `dribbble`, `behance`, `google_plus`, `logo`, `about_us_photo`, `our_vision_photo`, `our_mision_photo`, `created_at`, `updated_at`) VALUES
(1, '+970599895357', '+00 569 238 657', 'info@appwrix.com', 'position24@gmail.com', '50', '130', '9', 'https://www.facebook.com/appwrix', 'https://www.twitter.com/appwrix', 'https://www.linkedin.com/company/appwrix/', 'https://www.instagram.com/appwrix/', 'https://dribbble.com/appwrix', 'https://www.behance.net/appwrix', '4545', 'uploads/3EBikyyN2tRWDn66U3CWKbCaHkwBMxbUDlpSUmRE.png', 'uploads/1536491695_77499.png', 'uploads/1536491695_21445.png', 'uploads/1536491695_53250.png', NULL, '2018-09-09 11:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(30) NOT NULL,
  `setting_id` int(30) NOT NULL,
  `locale` varchar(30) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `sliderTitle` text NOT NULL,
  `sliderText` text NOT NULL,
  `address` varchar(300) NOT NULL,
  `about_us` text NOT NULL,
  `our_vision` text NOT NULL,
  `our_mision` text NOT NULL,
  `marketing` text NOT NULL,
  `designing` text NOT NULL,
  `developement` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `name`, `description`, `keywords`, `sliderTitle`, `sliderText`, `address`, `about_us`, `our_vision`, `our_mision`, `marketing`, `designing`, `developement`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'اب ركس لتكنولوجيا المعلومات', 'موقع شركة اب ركس متخصصة في خدمات الحلول الرقمية ( تصميم وبرمجة المواقع الإليكترونية، وتطبيقات الهواتف الذكية، التسويق الإلكتروني، إدارة صفحات التواصل الاجتماعي)', 'اب ركس،برمجة،تطبيقات،اندرويد،ايفون،تصميم، تسويق إلكتروني', 'بأيدي أفضل الخبراء', 'نقدّم لك أفضل الحلول التقنيّة.', 'هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن ', '<p style=\"text-align:justify\">نحن في شركة AppWrix المتخصصة في مجال تكنولوجيا المعلومات والتسويق الإلكتروني. نعمل بخطى ثابتة لتحسين خدماتنا&nbsp; المقدمة في مجال تقنية المعلومات اعتماداً على طاقمنا المختص في مجالات البرمجة والتصميم والتسويق. ونسعى جاهدين لتربع على عرش شركات تقنية المعلومات.</p>\r\n\r\n<p>نحن فخورون بالعمل مع قاعدة كبيرة من العملاء والشركات الرئيسية.</p>', '<p>الريادة في بناء الأعمال البرمجية الرقمية المتميزة، والتميز في التسويق الرقمي والعمل على تقريب الأفكار إلى حلول عملية إبداعية تجعل من عملائنا مميزين في مشاريعهم الرقمية.</p>', '<p>تقديم حلول مبتكرة لتكنولوجيا المعلومات والعمل على تقديم خدمة متكاملة &nbsp;لعملائنا تنال أقصى درجات الرضا ابتداء من الفكرة حتى المنتج المتكامل.</p>', '<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">نوفر لك أسلوباً فريداً ومتميزاً يعمل على نشر علامتك التجارية عبر خطط مدروسة وبأيدي خبراء التسويق لدينا.</span></span></p>\r\n\r\n<ol>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">عمل خطط تسويقية احترافية بدءً من دراسة السوق وتحليل المنافسين ووضع خطة استراتيجية.</span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">تهيئة المواقع للأرشفة SEO .</span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">إدارة صفحات التواصل الاجتماعي.</span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">عمل حملات إعلانية ممولة</span></span></li>\r\n</ol>', '<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">نقدم لك تصاميمًا جديدة بذوق ورونق خاص يليق بموقعك، تصميمًا خاليًا من الأخطاء القياسية</span></span></p>\r\n\r\n<ol>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">تصميم المواقع والمتاجر الإلكترونية.</span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">تصميم هوية تجارية للشركات.</span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">تصاميم تطبيقات الهواتف الذكية.</span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">تصاميم جرافيك.</span></span></li>\r\n</ol>', '<p dir=\"RTL\" style=\"margin-left:0in; margin-right:0in; text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">أحدث لغات البرمجة وأقواها على أيدي متخصصي البرمجة ذوي الكفاءة والخبرة العالية</span></span></p>\r\n\r\n<ol>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">برمجة مواقع إلكترونية بجميع اللغات.</span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">برمجة تطبيقات الهواتف الذكية.</span></span></li>\r\n	<li dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">برمجة المتاجر الإلكترونية.</span></span></li>\r\n</ol>', '2019-06-30 11:59:51', '2018-09-17 14:48:52'),
(2, 1, 'en', 'AppWrix For Information Technology', 'AppWrix company specialized in IT solution and Electronic Marketing.', 'AppWrix, development, design, marketing', 'By the hands of the best experts', 'We provide the best IT solutions.', 'Written enquire painful ye to offices forming it. Then so does over sent dull on. ', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">AppWrix company specialized in IT and Electronic Marketing. It works with progressive, &nbsp;steadfast steps to be among the best IT services and to improve its services to meet the highest qualified experiences with renewable energies and cope with the requirements and needs of advanced technology. Our team Consists of professional programmers, designers, and Marketers. </span></span></span></span></p>', '<p>To be one of the masters of world&lsquo;s most Innovative software companies.</p>', '<p>Delivering Innovative IT segmentation and customizing full service to our clients with the utmost satisfaction starting from the idea until to integrated product.</p>', '<p style=\"text-align:justify\">We provide you the best way to build&nbsp;a strong brand&nbsp;by our marketing experts.</p>\r\n\r\n<ol style=\"list-style-type:upper-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Make a professional marketing plan starting with Market research and analysis of competitors to make a strategic plan.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Optimize your website to Archive ( SEO).</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Manage social media pages.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Made best campaigns in all Marketing channels.</span></span></span></span></li>\r\n</ol>', '<p style=\"text-align:justify\">We provide you the best design&nbsp;for your site, design without any errors</p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"color:#1d2129\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Website and store design.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"color:#1d2129\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Design business identity for companies.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"color:#1d2129\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Smartphone application designs.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"color:#1d2129\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Graphic design</span></span></span></span></li>\r\n</ol>', '<p style=\"text-align:justify\">The strong programming languages by the&nbsp;experienced programming specialists</p>\r\n\r\n<ol style=\"list-style-type:upper-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Programming websites.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Smartphone Application Programming.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Programming the electronic store.</span></span></span></span></li>\r\n</ol>', '2019-06-30 12:05:15', '2018-09-17 14:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `skypy` varchar(191) DEFAULT NULL,
  `linked_in` varchar(191) DEFAULT NULL,
  `order` int(10) NOT NULL DEFAULT '0',
  `google_pluse` varchar(191) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `photo`, `facebook`, `twitter`, `skypy`, `linked_in`, `order`, `google_pluse`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/1535643460_63388.jpg', 'https://ar-ar.facebook.com/', 'https://twitter.com/login', 'https://account.microsoft.com/account/skype', 'https://www.linkedin.com/in/mohammed-fsifes-b92a46138/', 1, 'https://plus.google.com/discover', NULL, '2018-08-30 15:37:40', '2018-08-30 22:37:40'),
(2, 'uploads/1535644151_66025.jpg', 'https://ar-ar.facebook.com/', 'https://twitter.com/login', 'https://account.microsoft.com/account/skype', 'https://www.linkedin.com/in/iyass-taiseer-ab8105b5/', 2, 'https://plus.google.com/discover', NULL, '2018-08-30 15:49:11', NULL),
(3, 'uploads/1535823417_35678.png', 'https://ar-ar.facebook.com/', 'https://twitter.com/login', 'https://account.microsoft.com/account/skype', 'https://www.linkedin.com/in/emad-abd-almoniem-253b24100/', 3, 'https://plus.google.com/discover', NULL, '2018-09-01 17:36:57', NULL),
(4, 'uploads/1535644451_44007.jpg', 'asdasd', 'zzzz', 'sadasd', 'https://www.linkedin.com/in/elzaeem13/', 4, 'asdasd', '2018-08-26 14:15:54', '2018-08-30 15:54:11', NULL),
(5, 'uploads/1535809901_95895.jpg', NULL, NULL, NULL, 'https://www.linkedin.com/in/ashraf-ui-ux/', 0, NULL, '2018-09-01 13:51:41', '2018-09-01 13:51:41', NULL),
(6, 'uploads/1535811855_85078.png', NULL, NULL, NULL, '#', 0, NULL, '2018-09-01 14:21:53', '2018-09-01 14:24:15', NULL),
(7, 'uploads/1535810960_60131.jpeg', NULL, NULL, NULL, '#', 0, NULL, '2018-09-01 14:09:20', '2018-09-01 14:09:20', NULL),
(8, 'uploads/1535811048_98811.jpeg', NULL, NULL, NULL, 'https://www.linkedin.com/in/osama-qunoo-77a4a996', 0, NULL, '2018-09-01 14:10:48', '2018-09-01 14:10:48', NULL),
(9, 'uploads/1535811157_94643.jpeg', NULL, NULL, NULL, '#', 0, NULL, '2018-09-01 14:12:37', '2018-09-01 14:12:37', NULL),
(10, 'uploads/1535811237_40276.jpeg', NULL, NULL, NULL, 'https://www.linkedin.com/in/ahmedjabusada/', 0, NULL, '2018-09-01 14:13:57', '2018-09-01 14:13:57', NULL),
(11, 'uploads/1535810853_66792.jpeg', NULL, NULL, NULL, '#', 0, NULL, '2018-09-01 14:07:33', '2018-09-01 14:07:33', NULL),
(12, 'uploads/1535963377_21393.jpeg', NULL, NULL, NULL, 'https://www.linkedin.com/in/mohamed-alijla-087700167/', 0, NULL, '2018-09-03 08:29:37', '2018-09-03 08:29:37', NULL),
(13, 'uploads/1536580433_37370.jpeg', NULL, NULL, NULL, 'https://www.linkedin.com/in/ala-n-fsifes/', 0, NULL, '2018-09-10 11:53:53', '2018-09-10 11:53:53', NULL),
(14, 'uploads/1536663142_35798.jpg', NULL, NULL, NULL, 'https://www.linkedin.com/in/rasha-alawar-94821099/', 0, NULL, '2018-09-11 10:52:22', '2018-09-11 10:56:23', '2018-09-11 17:56:23'),
(15, 'uploads/1536663352_56031.jpeg', NULL, NULL, NULL, 'https://www.linkedin.com/in/mostafash/', 0, NULL, '2018-09-11 10:55:52', '2018-09-11 10:55:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team_translations`
--

CREATE TABLE `team_translations` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `position` varchar(191) CHARACTER SET utf8 NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_translations`
--

INSERT INTO `team_translations` (`id`, `team_id`, `locale`, `name`, `position`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ar', 'محمد نافذ فسيفس', 'المدير العام', NULL, '2018-08-30 15:37:40', NULL),
(2, 1, 'en', 'Mohammed N. Fsifes', 'General Manager', NULL, '2018-08-30 15:37:40', NULL),
(3, 2, 'ar', 'اياس تيسير الحرازين', 'قائد الفريق', NULL, '2018-09-01 14:46:46', NULL),
(4, 2, 'en', 'Iyass Taiseer', 'Team Leader', NULL, '2018-08-30 15:49:11', NULL),
(5, 3, 'ar', 'عماد عبد المنعم', 'مدير مشاريع', NULL, '2018-09-01 14:26:44', NULL),
(6, 3, 'en', 'Emad Abd Al Moniem', 'Project Manager', NULL, '2018-08-30 15:51:21', NULL),
(7, 4, 'ar', 'طارق زياد الزعيم', 'مدير ضبط الجودة', '2018-08-26 14:15:54', '2018-08-30 15:54:11', NULL),
(8, 4, 'en', 'Tarik Zaeem', 'Quality Assurance Manager', '2018-08-26 14:15:54', '2018-08-30 15:54:11', NULL),
(9, 5, 'ar', 'اشرف حسين', 'مصمم المنتجات الرقمية', '2018-09-01 13:51:41', '2018-09-01 14:50:48', NULL),
(10, 5, 'en', 'Ashraf Hussain', 'Digital Product Designer', '2018-09-01 13:51:41', '2018-09-01 14:50:48', NULL),
(11, 11, 'ar', 'محمد خليل قلجة', 'خدمات لوجستية', '2018-09-01 14:07:33', '2018-09-01 14:07:33', NULL),
(12, 11, 'en', 'Mohammed Qalaja', 'logistic services', '2018-09-01 14:07:33', '2018-09-01 14:07:33', NULL),
(13, 7, 'ar', 'عبدالله اسلام ابو جمعة', 'مطور ويب', '2018-09-01 14:09:20', '2018-09-01 14:09:20', NULL),
(14, 7, 'en', 'abdallah islam abu joma', 'web developer', '2018-09-01 14:09:20', '2018-09-01 14:09:20', NULL),
(15, 8, 'ar', 'اسامة قنوع', 'مطور اندرويد', '2018-09-01 14:10:48', '2018-09-01 14:10:48', NULL),
(16, 8, 'en', 'Osama Qunoo', 'Android developer', '2018-09-01 14:10:48', '2018-09-01 14:10:48', NULL),
(17, 9, 'ar', 'احمد الخطيب', 'مطور IOS', '2018-09-01 14:12:37', '2018-09-01 14:12:37', NULL),
(18, 9, 'en', 'Ahmed  El khateeb', 'IOS Developer', '2018-09-01 14:12:37', '2018-09-01 14:12:37', NULL),
(19, 10, 'ar', 'احمد ابوسعدة', 'مطور اندرويد', '2018-09-01 14:13:57', '2018-09-01 14:13:57', NULL),
(20, 10, 'en', 'Ahmed  AbuSada', 'Android Developer', '2018-09-01 14:13:57', '2018-09-01 14:13:57', NULL),
(21, 6, 'ar', 'احمد عطاالله', 'مطور ويب', '2018-09-01 14:21:53', '2018-09-01 14:21:53', NULL),
(22, 6, 'en', 'Ahmed Atallah', 'Web Developer', '2018-09-01 14:21:53', '2018-09-01 14:21:53', NULL),
(23, 12, 'ar', 'محمد صبري العجلة', 'مطور ويب', '2018-09-03 08:29:37', '2018-09-03 08:29:37', NULL),
(24, 12, 'en', 'Mohamed Sabri Al ijla', 'Web Developer', '2018-09-03 08:29:37', '2018-09-03 08:29:37', NULL),
(25, 13, 'ar', 'علاء فسيفس', 'مطور واجهات خلفية', '2018-09-10 11:53:53', '2018-09-11 09:18:42', NULL),
(26, 13, 'en', 'Ala\'a Fsifes', 'front end developer', '2018-09-10 11:53:53', '2018-09-10 11:53:53', NULL),
(27, 14, 'ar', 'رشا وجيه الأعور', 'مدير محتوى', '2018-09-11 10:52:22', '2018-09-11 10:52:22', NULL),
(28, 14, 'en', 'Rasha Wajeh Alawar', 'Content Manager', '2018-09-11 10:52:22', '2018-09-11 10:52:22', NULL),
(29, 15, 'ar', 'مصطفى أبو شمالة', 'مطور ios', '2018-09-11 10:55:52', '2018-09-11 10:55:52', NULL),
(30, 15, 'en', 'Mostafa Abu Shammala', 'iOS Developer', '2018-09-11 10:55:52', '2018-09-11 10:55:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/1535829070_97506.png', '2018-09-01 14:42:04', '2018-09-01 19:11:10', NULL),
(2, NULL, '2018-09-01 14:42:39', '2018-09-01 14:44:16', '2018-09-01 21:44:16'),
(3, 'uploads/1535832857_25279.png', '2018-09-01 20:14:17', '2018-09-01 20:14:17', NULL),
(4, 'uploads/1536066228_73525.jpeg', '2018-09-04 12:06:53', '2018-09-04 13:03:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_translations`
--

CREATE TABLE `testimonial_translations` (
  `id` int(11) NOT NULL,
  `testimonial_id` int(11) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial_translations`
--

INSERT INTO `testimonial_translations` (`id`, `testimonial_id`, `locale`, `name`, `text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ar', 'تركي الزامل', '“سعداء بما قدمته شركة  اب ركس لنا الفرصة بالوصول إلى افضل النتائج  من خلال تعاملنا معهم في موقع صبايا هوم هذا بالاضافة الى التزام  بتنفيذ المشروع على اكمل وجه  حسب  اتفاقنا معهم ,, كل الشكر لكم  “', '2018-09-01 14:42:04', '2018-09-02 15:35:01', NULL),
(2, 1, 'en', 'Turky Ezamel', '\"We are delighted that AppWrix company has given us the opportunity to reach the best results by dealing with them in the site and app. of Sabaya home, as well as the commitment to implement the project to the fullest, as we agree with them, all thanks to you.\"', '2018-09-01 14:42:04', '2018-09-02 15:35:01', NULL),
(3, 2, 'ar', 'تجريب تجريب', 'تجريب تجريب تجريب تجريب تجريب تجريب تجريب تجريب تجريب فقط', '2018-09-01 14:42:39', '2018-09-01 14:42:39', NULL),
(4, 2, 'en', 'test test', 'test test test test test test test test test test just', '2018-09-01 14:42:39', '2018-09-01 14:42:39', NULL),
(5, 3, 'ar', 'نواف عسيري', 'شركة اب ركس من افضل الشركات التي تعاملنا  معها لتنفيذ عدد من المشاريع لمكتبنا في جدة والحمد لله  طاقات بمهارات عالية، واقول ان من اهم مميزات اي شركة ان تقوم بتقديم الاحترافية في العمل وهو مايميز الاخوة في هكسا شكرا لكم احبتي ابدعتم ..', '2018-09-01 20:14:17', '2018-09-02 15:37:20', NULL),
(6, 3, 'en', 'Nawaf Asiri', 'AppWrix Company is one of the best companies that we have been dealing with to implement a number of projects for our office in Jeddah and praise God with high skills, and I say that one of the most important advantages of any company is to provide professionalism in the work which is what distinguish the brothers in thank you my loved ones you created..', '2018-09-01 20:14:17', '2018-09-02 15:37:20', NULL),
(7, 4, 'ar', 'خضر سابا', 'بإسمي وباسم إخواني أعضاء الإتحاد الفلسطيني لكرة السلة وأعضاء اللجان السلوية في فلسطين نشكر وبكل فخر شركة هكسا الرائده والمميزه بتصميم موقع الاتحاد. نرفع القبعه لهم ولطاقم شركتهم المبدع، وهذا بداية العمل معهم وليست النهاية، احترماتي لهم وللعاملين في شركتهم المميزه في الابداع', '2018-09-04 12:06:53', '2018-09-04 12:06:53', NULL),
(8, 4, 'en', 'Khader Saba', 'In my name and my friends the members of the Palestinian Basketball Association and the members of the Basket Committees in Palestine, we proudly thank the leading HEXA company for the design of the Federation website. We raise the hat for them and for their creative company, and this is the beginning of work with them. My respect for them and the employees in their company distinctive in creativity.', '2018-09-04 12:06:53', '2018-09-04 12:06:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(30) NOT NULL,
  `ip_address` varchar(300) NOT NULL,
  `type` int(2) NOT NULL,
  `target_id` int(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `ip_address`, `type`, `target_id`, `created_at`, `updated_at`) VALUES
(291, '185.6.17.152', 1, 4, '2019-07-03 15:38:53', '2019-07-03 15:38:53'),
(290, '185.6.17.152', 1, 4, '2019-07-03 15:38:28', '2019-07-03 15:38:28'),
(289, '185.6.17.152', 1, 4, '2019-07-03 15:37:53', '2019-07-03 15:37:53'),
(288, '185.6.17.152', 1, 4, '2019-07-03 15:37:46', '2019-07-03 15:37:46'),
(287, '185.6.17.152', 1, 4, '2019-07-03 15:36:38', '2019-07-03 15:36:38'),
(286, '185.6.17.152', 1, 4, '2019-07-03 15:35:41', '2019-07-03 15:35:41'),
(285, '185.6.17.152', 1, 4, '2019-07-03 15:33:12', '2019-07-03 15:33:12'),
(284, '185.6.17.152', 1, 6, '2019-07-02 17:38:09', '2019-07-02 17:38:09'),
(283, '185.6.17.152', 1, 6, '2019-07-02 17:37:26', '2019-07-02 17:37:26'),
(282, '185.6.17.152', 1, 8, '2019-07-02 17:35:22', '2019-07-02 17:35:22'),
(281, '185.6.17.152', 1, 8, '2019-07-02 17:34:10', '2019-07-02 17:34:10'),
(280, '185.6.17.152', 1, 3, '2019-07-02 17:12:58', '2019-07-02 17:12:58'),
(279, '185.6.17.152', 1, 5, '2019-07-02 15:05:21', '2019-07-02 15:05:21'),
(278, '185.6.17.152', 1, 5, '2019-07-02 15:03:30', '2019-07-02 15:03:30'),
(277, '185.6.17.152', 1, 6, '2019-07-02 13:30:35', '2019-07-02 13:30:35'),
(276, '185.6.17.152', 1, 9, '2019-07-02 12:13:30', '2019-07-02 12:13:30'),
(275, '185.6.17.152', 1, 9, '2019-07-02 12:10:29', '2019-07-02 12:10:29'),
(274, '185.6.17.152', 1, 9, '2019-07-02 11:36:16', '2019-07-02 11:36:16'),
(273, '185.6.17.152', 1, 9, '2019-07-02 11:33:01', '2019-07-02 11:33:01'),
(272, '185.6.17.152', 1, 6, '2019-07-02 11:18:15', '2019-07-02 11:18:15'),
(271, '185.6.17.152', 1, 6, '2019-07-02 11:04:24', '2019-07-02 11:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `cover` varchar(300) NOT NULL,
  `mockup` varchar(300) NOT NULL,
  `color1` varchar(10) NOT NULL,
  `color2` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `dribbble` varchar(300) DEFAULT NULL,
  `behance` varchar(300) DEFAULT NULL,
  `ios` varchar(300) DEFAULT NULL,
  `android` varchar(300) DEFAULT NULL,
  `site` varchar(300) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `cover`, `mockup`, `color1`, `color2`, `status`, `dribbble`, `behance`, `ios`, `android`, `site`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uploads/1535790773_41116.png', 'uploads/153536.png', '#d10a4b', '#7a1b3b', 1, 'https://dribbble.com/shots/5265407-Sabaya-Home', NULL, NULL, 'https://play.google.com/store/apps/details?id=com.hexa.sabayahome', 'http://www.sabayahome.com', NULL, '2018-09-24 14:02:04', NULL),
(2, 'uploads/1535793280_10058.png', 'uploads/1535793280_40634.png', '#A3D398', '#00C8FF', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-01 09:14:40', NULL),
(3, 'uploads/1535801410_28266.png', 'uploads/1535801410_52600.png', '#c78900', '#e9c100', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-01 11:30:10', NULL),
(4, 'uploads/sp6.png', 'uploads/p4.png', '#00caf5', '#7240de', 1, '#', '#', '#', '#', '#', '2018-08-26 12:52:24', '2018-09-01 13:06:26', NULL),
(5, 'uploads/ty2.png', 'uploads/ty1.png', '#58bcd1', '#58bcd1', 0, '#', '#', '#', '#', 'https://twitter.com/tayseer_tech/status/842649100059361281', '2018-09-01 13:25:28', '2018-09-01 13:25:28', NULL),
(6, 'uploads/gcc.png', 'uploads/gcc.png', '#444', '#444', 0, '#', '#', '#', '#', 'http://deploy.wingcc.co', '2018-09-02 13:45:46', '2018-09-02 14:00:32', NULL),
(7, 'uploads/1535976988_82693.jpg', 'uploads/1535976988_14646.jpg', '#555555', '#444444', 0, NULL, NULL, NULL, NULL, NULL, '2018-09-03 12:16:28', '2018-09-03 12:16:36', '2018-09-03 19:16:36'),
(8, 'uploads/en2.png', 'uploads/en1.png', '#e6b013', '#e6b013', 0, NULL, NULL, NULL, 'https://play.google.com/store/apps/details?id=com.trkolaylar', 'http://turkish.hexalab.co/en', '2018-09-03 12:25:33', '2018-09-24 14:03:05', NULL),
(9, 'uploads/mini.png', 'uploads/mini.png', '#01bca2', '#01bca2', 0, '@', '@', '@', '@', 'https://mostadam.sa', '2018-09-03 14:59:28', '2018-09-03 14:59:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_translations`
--

CREATE TABLE `work_translations` (
  `id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `feature` text CHARACTER SET utf8,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_translations`
--

INSERT INTO `work_translations` (`id`, `work_id`, `locale`, `name`, `title`, `description`, `feature`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'ar', 'صبايا هوم', 'تطبيق وموقع الكتروني للمرأة العربية', '<p>تطبيق وموقع الكتروني للمرأة العربية تطبيق وموقع الكتروني للمرأة العربية تطبيق وموقع الكتروني للمرأة العربية</p>', '<ul>\r\n	<li>مطبخك ووصفاتك</li>\r\n	<li>الصحة والجمال</li>\r\n	<li>الأم والطفل</li>\r\n	<li>الموظة</li>\r\n	<li>الازياء</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', NULL, '2018-09-24 14:02:04', NULL),
(2, 1, 'en', 'Sabaya Home', 'App and web application for the arabian woman', '<p>App and web application for the arabian woman App and web application for the arabian woman App and web application for the arabian woman</p>', '<ul>\r\n	<li>Kitchen</li>\r\n	<li>fashion</li>\r\n	<li>Health</li>\r\n	<li>Buaty</li>\r\n	<li>Mothers and kids</li>\r\n</ul>', NULL, '2018-09-24 14:02:04', NULL),
(3, 2, 'ar', 'تطبيق المناظرات', 'تطبيق متخصص بالمناظرات بين الأشخاص', '<p>تطبيق هاتف ذكي اجتماعي يمكن الأشخاص من النقاشات والمناظرات بين بعضهم البعض للتعمق اجتماعيا بالأفكار ورؤية الطرف الآخر وبامكان الجمهور مشاهدة المناظرة مباشرة وتسجيل الاعجابات على النقاشات في المناظرة</p>', '<ol>\r\n	<li>يوفر منصة خاصة بالمناظرين</li>\r\n	<li>يحفظ الخصوصية في المحادثات.</li>\r\n	<li>تقنية عالية من الجودة.</li>\r\n	<li>يمكن مشاركته عبر وسائل التواصل الاجتماعي.</li>\r\n</ol>', NULL, '2018-09-01 11:04:47', NULL),
(4, 2, 'en', 'Debates App', 'mobile app makes any two persons have a debate', '<p>a social mobile application&nbsp; that allows&nbsp; people to discuss and have a debate with each other for social development with ideas and seeing the other side. and&nbsp;The audience can watch the debate live&nbsp;and like or dislike the sayes&nbsp;in the debate</p>', '<ol>\r\n	<li>Provides a special platform for the spectators</li>\r\n	<li>Saves privacy in conversations.</li>\r\n	<li>High-quality technique.</li>\r\n	<li>Can be shared via social media.</li>\r\n</ol>', NULL, '2018-09-01 11:04:47', NULL),
(5, 3, 'ar', 'تطبيق جو بوك', 'تطبيق اجتماعي يحتوي على مجموعة كبيرة من فئات الكتب', '<p>تطبيق اجتماعي يهدف الى خلق حلقة من التواصل الاجتماعي بين الاشخاص المهتمين بمشاركة و بيع الكتب الرقمية حيث يسمح التطبيق بمشاركة الملفات وبما يتخلله من اعجابات و تعليقات و تواصل بين الافراد</p>', '<ul>\r\n	<li>تصميم سهل و جذاب</li>\r\n	<li>سهولة الوصول الى الكتب الرقمية</li>\r\n	<li>محرك بحث قوي</li>\r\n	<li>قراءة الملفات الرقمية من خلال التطبيق</li>\r\n</ul>', NULL, '2018-09-01 11:30:10', NULL),
(6, 3, 'en', 'Go Book App.', 'A social application that contains a wide range of book categories', '<p>Social application aims to create a social communication between people interested in the participation and sale of digital books where the application allows the participation of files and through the interpersonal and interpersonal feedback and communication</p>', '<ul>\r\n	<li>Easy and attractive design</li>\r\n	<li>Easy access to digital books</li>\r\n	<li>Powerful search engine</li>\r\n	<li>Read the digital files through the application</li>\r\n</ul>', NULL, '2018-09-01 11:30:10', NULL),
(7, 4, 'ar', 'موقع سبريديا', 'موقع سبريديا لجدولة نشر كاملة بوقت وزمن معين على كافة وسائل السوشال ميديا', '<p>موقع سبريديا لجدولة نشر كاملة بوقت وزمن معين على كافة وسائل السوشال ميديا\r\n</p>', '<ul>\r\n	<li>سهولة الاستخدام لكل فئات المجتمع&nbsp;</li>\r\n	<li>تصميم سهل و جذاب</li>\r\n	<li>ادخال المعلومات بكل سهولة</li>\r\n	<li>ادارة جميع صفحات السشال ميديا بدون عناء\r\n</li>\r\n</ul>', '2018-08-26 12:52:24', '2018-09-01 13:06:26', NULL),
(8, 4, 'en', 'Spreadya website', 'Spreadya site to schedule a complete deployment time and time on all means of media media', '<p>Spridia site to schedule a complete deployment time and time on all means of media media\r\n</p>', '<ul>\r\n<li> Ease of use for all community groups & nbsp; </ li>\r\n<li> Easy and attractive design </ li>\r\n<li> Easily enter information </ li>\r\n<li> Manage all social Media pages without bothering\r\n</ li>\r\n</ ul>', '2018-08-26 12:52:24', '2018-09-01 13:06:26', NULL),
(9, 5, 'ar', 'موقع تيسير التقنية', 'موقع تيسير التقنية', '<p>موقع تيسير التقنية &nbsp; موقع تجاري لبيع انظمة ERP Application لادارة المؤسسات والوزارات والشركات الكبيرة\r\n&nbsp;</p>', '<ul>\r\n	<li>تصميم عصري&nbsp;</li>\r\n	<li>سهولة الاستخدام&nbsp;</li>\r\n	<li>سهولة البحث و الوصول الى المعلومات</li>\r\n	<li>اضافة فعاليات الى المفضلة للوصول اليها&nbsp; لاحقا</li>\r\n</ul>', '2018-09-01 13:25:28', '2018-09-01 13:25:28', NULL),
(10, 5, 'en', 'Tayseer Tech', 'Tayseer Tech Business site for the sale of ERP application systems for the management of institutions and ministries and large companies', '<p> Tayseer Tech & nbsp; Business site for the sale of ERP application systems for the management of institutions and ministries and large companies\r\n& nbsp; </ p>', '<ul>\r\n	<li>Fashionable design</li>\r\n	<li>Ease of use</li>\r\n	<li>Ease of searching and accessing information</li>\r\n	<li>Add events to favorites for later access</li>\r\n</ul>', '2018-09-01 13:25:28', '2018-09-01 13:25:28', NULL),
(11, 6, 'ar', 'شركة ارامكو -للبترول اتحاد المقاولون العرب', 'موقع ادارة المشاريع ارامكو', 'يعتبر موقع ادارة المشاريع في ارامكو اهم خطوة في عمليه بناء مشروع جديد لتسهيل العملية وحفظ مخرجاتها بتقنية عالية', '<ul>\r\n	<li>سهولة الاستخدام</li>\r\n	<li>تصميم مميز</li>\r\n	<li>سرعة التنقل بين الصفحاات</li>\r\n</ul>', '2018-09-02 13:45:46', '2018-09-02 14:02:32', NULL),
(12, 6, 'en', 'Arabian-American Oil Company', 'Arabian-American Oil Company\r\n', 'The project management site at Aramco is the most important step in the process of building a new project to facilitate the process and save its outputs with high technology', '<ul>\r\n	<li>Ease of use</li>\r\n	<li>Distinctive design</li>\r\n	<li>The speed of navigation between pages</li>\r\n</ul>', '2018-09-02 13:45:46', '2018-09-02 14:02:32', NULL),
(13, 7, 'ar', 'صلصثق', 'ثصفبصث', '<p>صثبثص</p>', '<p>ثق</p>', '2018-09-03 12:16:28', '2018-09-03 12:16:28', NULL),
(14, 7, 'en', 'صث', 'صثفب', '<p>صثفق2</p>', '<p>23ق</p>', '2018-09-03 12:16:28', '2018-09-03 12:16:28', NULL),
(15, 8, 'ar', 'موقع وتطبيق انجاز', 'موقع وتطبيق انجاز- تبادل الخدمة بين مزود وطالب الخدمة', '<p>موقع وتطبيق انجاز- تبادل الخدمة بين مزود وطالب الخدمة.</p>', '<ol>\r\n	<li>&nbsp;البحث حسب المدينة والمكان</li>\r\n	<li>&nbsp;طلب الخدمة والرد بعمليات سريعة ومباشرة .</li>\r\n	<li>نزودك بافضل التقييمات لمزودي الخدمة </li>\r\n	<li>تتبع مزود الخدمة عبر خرائط جوجل</li>\r\n</ol>\r\n', '2018-09-03 12:25:33', '2018-09-03 12:25:33', NULL),
(16, 8, 'en', 'Enjaz Website and App', 'Enjaz Website and App - the exchange of service between the provider and the service applicant.', '<p> Enjaz Website and App - the exchange of service between the provider and the service applicant. </ p>', '<ol>\r\n<li> & nbsp; Search by city and location </ li>\r\n<li> & nbsp; Request service and respond quickly and directly. </ li>\r\n<li> We provide you with the best ratings for service providers </ li>\r\n<li> Tracking your service provider via Google Maps </ li>\r\n</ ol>\r\n', '2018-09-03 12:25:33', '2018-09-03 12:25:33', NULL),
(17, 9, 'ar', 'مستدامة - وزارة الاسكان السعودية', 'مستدامة للتواصل مع الزبائن والمهندسين لاتمام عقارات سكنية', '<p>مستدامة للتواصل مع الزبائن والمهندسين لاتمام عقارات سكنية\r\n</p>', '<ul>\r\n	<li>سهولة التنقل بين الاقسام</li>\r\n	<li>سهولة الاستخدام</li>\r\n</ul>', '2018-09-03 14:59:28', '2018-09-03 14:59:28', NULL),
(18, 9, 'en', 'mostadam - Saudi Ministry of Housing', 'mostadam - communication with customers and engineers to complete residential properties', '<p>Apply mostadam\r\n from applications that are interested in displaying and leasing various cars through pre-booking</p>', '<ul>\r\n	<li>Ease of movement between sections</li>\r\n	<li>Ease of use</li>\r\n</ul>', '2018-09-03 14:59:28', '2018-09-03 14:59:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `attatchments`
--
ALTER TABLE `attatchments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_translations`
--
ALTER TABLE `client_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderFiles`
--
ALTER TABLE `orderFiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_translations`
--
ALTER TABLE `team_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`,`cover`);

--
-- Indexes for table `work_translations`
--
ALTER TABLE `work_translations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attatchments`
--
ALTER TABLE `attatchments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client_translations`
--
ALTER TABLE `client_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderFiles`
--
ALTER TABLE `orderFiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `team_translations`
--
ALTER TABLE `team_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `work_translations`
--
ALTER TABLE `work_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
