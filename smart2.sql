-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2022 at 02:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart2`
--

-- --------------------------------------------------------

--
-- Table structure for table `smartend_analytics_pages`
--

CREATE TABLE `smartend_analytics_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `load_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_analytics_pages`
--

INSERT INTO `smartend_analytics_pages` (`id`, `visitor_id`, `ip`, `title`, `name`, `query`, `load_time`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', 'http://localhost:8888/smart2/smartend/login', 'unknown', 'http://localhost:8888/smart2/smartend/login', '0.66291904', '2020-08-26', '06:20:25', '2020-08-26 03:20:25', '2020-08-26 03:20:25'),
(2, 1, '::1', 'http://localhost:8888/smart2/smartend/admin', 'unknown', 'http://localhost:8888/smart2/smartend/admin', '1.39418793', '2020-08-26', '06:20:52', '2020-08-26 03:20:52', '2020-08-26 03:20:52'),
(3, 1, '::1', 'Site Title', 'unknown', 'http://localhost:8888/smart2/smartend/', '1.48972607', '2020-08-26', '06:20:59', '2020-08-26 03:20:59', '2020-08-26 03:20:59'),
(4, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/1/topics?_pjax=%23view', 'unknown', 'http://localhost:8888/smart2/smartend/admin/1/topics?_pjax=%23view', '4.13893104', '2020-08-26', '06:21:17', '2020-08-26 03:21:17', '2020-08-26 03:21:17'),
(5, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/1/topics', 'unknown', 'http://localhost:8888/smart2/smartend/admin/1/topics', '0.63517499', '2020-08-26', '06:21:46', '2020-08-26 03:21:46', '2020-08-26 03:21:46'),
(6, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/menus?_pjax=%23view', 'unknown', 'http://localhost:8888/smart2/smartend/admin/menus?_pjax=%23view', '1.45625496', '2020-08-26', '06:21:53', '2020-08-26 03:21:53', '2020-08-26 03:21:53'),
(7, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/menus/1', 'unknown', 'http://localhost:8888/smart2/smartend/admin/menus/1', '0.68400311', '2020-08-26', '06:22:11', '2020-08-26 03:22:11', '2020-08-26 03:22:11'),
(8, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/webmaster/sections?_pjax=%23view', 'unknown', 'http://localhost:8888/smart2/smartend/admin/webmaster/sections?_pjax=%23view', '0.64508104', '2020-08-26', '06:22:31', '2020-08-26 03:22:31', '2020-08-26 03:22:31'),
(9, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/webmaster/sections/1/edit', 'unknown', 'http://localhost:8888/smart2/smartend/admin/webmaster/sections/1/edit', '0.72061491', '2020-08-26', '06:22:35', '2020-08-26 03:22:35', '2020-08-26 03:22:35'),
(10, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/webmaster/sections', 'unknown', 'http://localhost:8888/smart2/smartend/admin/webmaster/sections', '0.41156983', '2020-08-26', '06:22:47', '2020-08-26 03:22:47', '2020-08-26 03:22:47'),
(11, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/menus/3/edit/1', 'unknown', 'http://localhost:8888/smart2/smartend/admin/menus/3/edit/1', '0.54047585', '2020-08-26', '06:22:58', '2020-08-26 03:22:58', '2020-08-26 03:22:58'),
(12, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/menus/1?id=3', 'unknown', 'http://localhost:8888/smart2/smartend/admin/menus/1?id=3', '1.34759307', '2020-08-26', '06:23:20', '2020-08-26 03:23:20', '2020-08-26 03:23:20'),
(13, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/1/topics/create', 'unknown', 'http://localhost:8888/smart2/smartend/admin/1/topics/create', '0.77196193', '2020-08-26', '06:23:46', '2020-08-26 03:23:46', '2020-08-26 03:23:46'),
(14, 1, '::1', 'http://localhost:8888/smart2/smartend/admin/1/topics/5/edit', 'unknown', 'http://localhost:8888/smart2/smartend/admin/1/topics/5/edit', '0.64801812', '2020-08-26', '06:23:54', '2020-08-26 03:23:54', '2020-08-26 03:23:54'),
(15, 2, '::1', 'Site Title', 'unknown', 'http://localhost:8888/smart2/smartend/', '5.70718694', '2020-08-27', '16:19:08', '2020-08-27 13:19:08', '2020-08-27 13:19:08'),
(16, 2, '::1', 'Site Title', 'unknown', 'http://localhost:8888/smart2/smartend/home', '0.51440501', '2020-08-27', '16:19:18', '2020-08-27 13:19:18', '2020-08-27 13:19:18'),
(17, 3, '::1', 'Site Title', 'unknown', 'http://localhost:8888/smartend_2/', '8.98772097', '2020-09-01', '14:55:57', '2020-09-01 11:55:57', '2020-09-01 11:55:57'),
(18, 3, '::1', 'http://localhost:8888/smartend_2/login', 'unknown', 'http://localhost:8888/smartend_2/login', '0.81633806', '2020-09-01', '14:56:13', '2020-09-01 11:56:13', '2020-09-01 11:56:13'),
(19, 3, '::1', 'http://localhost:8888/smartend_2/backEnd/assets/bootstrap/dist/css/bootstrap.min.css.map', 'unknown', 'http://localhost:8888/smartend_2/backEnd/assets/bootstrap/dist/css/bootstrap.min.css.map', '1.04193306', '2020-09-01', '14:56:15', '2020-09-01 11:56:15', '2020-09-01 11:56:15'),
(20, 3, '::1', 'http://localhost:8888/smartend_2/admin', 'unknown', 'http://localhost:8888/smartend_2/admin', '9.98075795', '2020-09-01', '14:57:42', '2020-09-01 11:57:42', '2020-09-01 11:57:42'),
(21, 3, '::1', 'http://localhost:8888/smartend_2/admin/1/topics?_pjax=%23view', 'unknown', 'http://localhost:8888/smartend_2/admin/1/topics?_pjax=%23view', '6.34560299', '2020-09-01', '14:59:05', '2020-09-01 11:59:05', '2020-09-01 11:59:05'),
(22, 3, '::1', 'http://localhost:8888/smartend_2/admin/1/topics?_pjax=%23view', 'unknown', 'http://localhost:8888/smartend_2/admin/1/topics?_pjax=%23view', '2.76726794', '2020-09-01', '14:59:05', '2020-09-01 11:59:05', '2020-09-01 11:59:05'),
(23, 3, '::1', 'http://localhost:8888/smartend_2/admin/2/topics?_pjax=%23view', 'unknown', 'http://localhost:8888/smartend_2/admin/2/topics?_pjax=%23view', '0.59358191', '2020-09-01', '14:59:09', '2020-09-01 11:59:09', '2020-09-01 11:59:09'),
(24, 3, '::1', 'http://localhost:8888/smartend_2/admin/3/topics?_pjax=%23view', 'unknown', 'http://localhost:8888/smartend_2/admin/3/topics?_pjax=%23view', '0.57129812', '2020-09-01', '14:59:10', '2020-09-01 11:59:10', '2020-09-01 11:59:10'),
(25, 3, '::1', 'http://localhost:8888/smartend_2/admin/4/topics?_pjax=%23view', 'unknown', 'http://localhost:8888/smartend_2/admin/4/topics?_pjax=%23view', '1.04510689', '2020-09-01', '14:59:12', '2020-09-01 11:59:12', '2020-09-01 11:59:12'),
(26, 3, '::1', 'http://localhost:8888/smartend_2/admin/9/topics?_pjax=%23view', 'unknown', 'http://localhost:8888/smartend_2/admin/9/topics?_pjax=%23view', '1.04355311', '2020-09-01', '14:59:17', '2020-09-01 11:59:17', '2020-09-01 11:59:17'),
(27, 3, '::1', 'http://localhost:8888/smartend_2/admin/7/topics?_pjax=%23view', 'unknown', 'http://localhost:8888/smartend_2/admin/7/topics?_pjax=%23view', '1.04481697', '2020-09-01', '14:59:22', '2020-09-01 11:59:22', '2020-09-01 11:59:22'),
(28, 3, '::1', 'http://localhost:8888/smartend_2/admin/contacts?_pjax=%23view', 'unknown', 'http://localhost:8888/smartend_2/admin/contacts?_pjax=%23view', '1.42144895', '2020-09-01', '14:59:29', '2020-09-01 11:59:29', '2020-09-01 11:59:29'),
(29, 3, '::1', 'http://localhost:8888/smartend_2/admin/contacts', 'unknown', 'http://localhost:8888/smartend_2/admin/contacts', '1.51276398', '2020-09-01', '15:00:02', '2020-09-01 12:00:02', '2020-09-01 12:00:02'),
(30, 3, '::1', 'http://localhost:8888/smartend_2/admin/contacts/1', 'unknown', 'http://localhost:8888/smartend_2/admin/contacts/1', '0.811203', '2020-09-01', '15:00:06', '2020-09-01 12:00:06', '2020-09-01 12:00:06'),
(31, 3, '::1', 'http://localhost:8888/smartend_2/admin/webmails/create/new/email/mohamed.alijla@gmail.com', 'unknown', 'http://localhost:8888/smartend_2/admin/webmails/create/new/email/mohamed.alijla@gmail.com', '6.13319206', '2020-09-01', '15:00:54', '2020-09-01 12:00:54', '2020-09-01 12:00:54'),
(32, 4, '::1', 'Site Title', 'unknown', 'http://localhost/smartend_2/', '5.96633911', '2020-09-22', '14:41:25', '2020-09-22 11:41:25', '2020-09-22 11:41:25'),
(33, 4, '::1', 'Site Title', 'unknown', 'http://localhost/smartend_2/home', '0.55026484', '2020-09-22', '14:41:40', '2020-09-22 11:41:40', '2020-09-22 11:41:40'),
(34, 4, '::1', 'http://localhost/smartend_2/login', 'unknown', 'http://localhost/smartend_2/login', '0.50490403', '2020-09-22', '14:41:47', '2020-09-22 11:41:47', '2020-09-22 11:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_analytics_visitors`
--

CREATE TABLE `smartend_analytics_visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_cor1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_cor2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_analytics_visitors`
--

INSERT INTO `smartend_analytics_visitors` (`id`, `ip`, `city`, `country_code`, `country`, `region`, `full_address`, `location_cor1`, `location_cor2`, `os`, `browser`, `resolution`, `referrer`, `hostname`, `org`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, '::1', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown, unknown, unknown', 'unknown', 'unknown', 'Mac OS X', 'Chrome', 'unknown', 'http://localhost:8888/smart2/smartend/install/final', 'No Hostname', 'unknown', '2020-08-26', '06:20:25', '2020-08-26 03:20:25', '2020-08-26 03:20:25'),
(2, '::1', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown, unknown, unknown', 'unknown', 'unknown', 'Mac OS X', 'Chrome', 'unknown', 'http://localhost:8888/smart2/', 'No Hostname', 'unknown', '2020-08-27', '16:19:08', '2020-08-27 13:19:08', '2020-08-27 13:19:08'),
(3, '::1', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown, unknown, unknown', 'unknown', 'unknown', 'Mac OS X', 'Chrome', 'unknown', 'unknown', 'No Hostname', 'unknown', '2020-09-01', '14:55:57', '2020-09-01 11:55:57', '2020-09-01 11:55:57'),
(4, '::1', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown, unknown, unknown', 'unknown', 'unknown', 'Mac OS X', 'Chrome', 'unknown', 'http://localhost/', 'No Hostname', 'unknown', '2020-09-22', '14:41:25', '2020-09-22 11:41:25', '2020-09-22 11:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_attach_files`
--

CREATE TABLE `smartend_attach_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row_no` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_banners`
--

CREATE TABLE `smartend_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` int(11) NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci,
  `details_en` text COLLATE utf8mb4_unicode_ci,
  `code` text COLLATE utf8mb4_unicode_ci,
  `file_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_type` tinyint(4) DEFAULT NULL,
  `youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `visits` int(11) NOT NULL,
  `row_no` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_banners`
--

INSERT INTO `smartend_banners` (`id`, `section_id`, `title_ar`, `title_en`, `details_ar`, `details_en`, `code`, `file_ar`, `file_en`, `video_type`, `youtube_link`, `link_url`, `icon`, `status`, `visits`, `row_no`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'بنر رقم ١', 'Banner #1', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص.', 'It is a long established fact that a reader will be distracted by the readable content of a page.', NULL, 'noimg.png', 'noimg.png', NULL, NULL, '#', NULL, 1, 0, 1, 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(2, 1, 'بنر رقم ٢', 'Banner #2', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص.', 'It is a long established fact that a reader will be distracted by the readable content of a page.', NULL, 'noimg.png', 'noimg.png', NULL, NULL, '#', NULL, 1, 0, 2, 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(3, 2, 'تصميم ريسبونسف', 'Responsive Design', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص.', 'It is a long established fact that a reader will be distracted by the readable content of a page.', NULL, '', '', NULL, NULL, '#', 'fa-object-group', 1, 0, 1, 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(4, 2, ' احدث التقنيات', 'HTML5 & CSS3', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص.', 'It is a long established fact that a reader will be distracted by the readable content of a page.', NULL, '', '', NULL, NULL, '#', 'fa-html5', 1, 0, 2, 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(5, 2, 'باستخدام بوتستراب', 'Bootstrap Used', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص.', 'It is a long established fact that a reader will be distracted by the readable content of a page.', NULL, '', '', NULL, NULL, '#', 'fa-code', 1, 0, 3, 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(6, 2, 'تصميم كلاسيكي', 'Classic Design', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص.', 'It is a long established fact that a reader will be distracted by the readable content of a page.', NULL, '', '', NULL, NULL, '#', 'fa-laptop', 1, 0, 4, 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_comments`
--

CREATE TABLE `smartend_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `row_no` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_contacts`
--

CREATE TABLE `smartend_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_contacts`
--

INSERT INTO `smartend_contacts` (`id`, `group_id`, `first_name`, `last_name`, `company`, `email`, `password`, `phone`, `country_id`, `city`, `address`, `photo`, `notes`, `last_login`, `last_login_ip`, `facebook_id`, `twitter_id`, `google_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'mohamed', NULL, NULL, 'mohamed.alijla@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-09-01 11:59:57', '2020-09-01 11:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_contacts_groups`
--

CREATE TABLE `smartend_contacts_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_contacts_groups`
--

INSERT INTO `smartend_contacts_groups` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Newsletter Emails', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_countries`
--

CREATE TABLE `smartend_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_countries`
--

INSERT INTO `smartend_countries` (`id`, `code`, `title_ar`, `title_en`, `tel`, `created_at`, `updated_at`) VALUES
(1, 'AL', 'ألبانيا', 'Albania', '355', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(2, 'DZ', 'الجزائر', 'Algeria', '213', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(3, 'AS', 'ساموا الأمريكية', 'American Samoa', '1-684', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(4, 'AD', 'أندورا', 'Andorra', '376', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(5, 'AO', 'أنغولا', 'Angola', '244', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(6, 'AI', 'أنغيلا', 'Anguilla', '1-264', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(7, 'AR', 'الأرجنتين', 'Argentina', '54', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(8, 'AM', 'أرمينيا', 'Armenia', '374', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(9, 'AW', 'أروبا', 'Aruba', '297', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(10, 'AU', 'أستراليا', 'Australia', '61', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(11, 'AT', 'النمسا', 'Austria', '43', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(12, 'AZ', 'أذربيجان', 'Azerbaijan', '994', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(13, 'BS', 'جزر البهاما', 'Bahamas', '1-242', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(14, 'BH', 'البحرين', 'Bahrain', '973', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(15, 'BD', 'بنغلاديش', 'Bangladesh', '880', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(16, 'BB', 'بربادوس', 'Barbados', '1-246', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(17, 'BY', 'روسيا البيضاء', 'Belarus', '375', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(18, 'BE', 'بلجيكا', 'Belgium', '32', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(19, 'BZ', 'بليز', 'Belize', '501', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(20, 'BJ', 'بنين', 'Benin', '229', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(21, 'BM', 'برمودا', 'Bermuda', '1-441', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(22, 'BT', 'بوتان', 'Bhutan', '975', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(23, 'BO', 'بوليفيا', 'Bolivia', '591', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(24, 'BA', 'البوسنة والهرسك', 'Bosnia and Herzegovina', '387', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(25, 'BW', 'بوتسوانا', 'Botswana', '267', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(26, 'BR', 'البرازيل', 'Brazil', '55', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(27, 'VG', 'جزر فيرجن البريطانية', 'British Virgin Islands', '1-284', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(28, 'IO', 'إقليم المحيط الهندي البريطاني', 'British Indian Ocean Territory', '246', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(29, 'BN', 'بروناي دار السلام', 'Brunei Darussalam', '673', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(30, 'BG', 'بلغاريا', 'Bulgaria', '359', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(31, 'BF', 'بوركينا فاسو', 'Burkina Faso', '226', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(32, 'BI', 'بوروندي', 'Burundi', '257', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(33, 'KH', 'كمبوديا', 'Cambodia', '855', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(34, 'CM', 'الكاميرون', 'Cameroon', '237', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(35, 'CA', 'كندا', 'Canada', '1', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(36, 'CV', 'الرأس الأخضر', 'Cape Verde', '238', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(37, 'KY', 'جزر كايمان', 'Cayman Islands', '1-345', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(38, 'CF', 'افريقيا الوسطى', 'Central African Republic', '236', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(39, 'TD', 'تشاد', 'Chad', '235', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(40, 'CL', 'تشيلي', 'Chile', '56', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(41, 'CN', 'الصين', 'China', '86', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(42, 'HK', 'هونغ كونغ', 'Hong Kong', '852', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(43, 'MO', 'ماكاو', 'Macao', '853', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(44, 'CX', 'جزيرة الكريسماس', 'Christmas Island', '61', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(45, 'CC', 'جزر كوكوس (كيلينغ)', 'Cocos (Keeling) Islands', '61', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(46, 'CO', 'كولومبيا', 'Colombia', '57', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(47, 'KM', 'جزر القمر', 'Comoros', '269', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(48, 'CK', 'جزر كوك', 'Cook Islands', '682', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(49, 'CR', 'كوستا ريكا', 'Costa Rica', '506', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(50, 'HR', 'كرواتيا', 'Croatia', '385', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(51, 'CU', 'كوبا', 'Cuba', '53', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(52, 'CY', 'قبرص', 'Cyprus', '357', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(53, 'CZ', 'الجمهورية التشيكية', 'Czech Republic', '420', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(54, 'DK', 'الدنمارك', 'Denmark', '45', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(55, 'DJ', 'جيبوتي', 'Djibouti', '253', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(56, 'DM', 'دومينيكا', 'Dominica', '1-767', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(57, 'DO', 'جمهورية الدومينيكان', 'Dominican Republic', '1-809', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(58, 'EC', 'الاكوادور', 'Ecuador', '593', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(59, 'EG', 'مصر', 'Egypt', '20', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(60, 'SV', 'السلفادور', 'El Salvador', '503', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(61, 'GQ', 'غينيا الاستوائية', 'Equatorial Guinea', '240', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(62, 'ER', 'إريتريا', 'Eritrea', '291', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(63, 'EE', 'استونيا', 'Estonia', '372', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(64, 'ET', 'أثيوبيا', 'Ethiopia', '251', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(65, 'FO', 'جزر فارو', 'Faroe Islands', '298', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(66, 'FJ', 'فيجي', 'Fiji', '679', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(67, 'FI', 'فنلندا', 'Finland', '358', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(68, 'FR', 'فرنسا', 'France', '33', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(69, 'GF', 'جيانا الفرنسية', 'French Guiana', '689', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(70, 'GA', 'الغابون', 'Gabon', '241', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(71, 'GM', 'غامبيا', 'Gambia', '220', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(72, 'GE', 'جورجيا', 'Georgia', '995', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(73, 'DE', 'ألمانيا', 'Germany', '49', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(74, 'GH', 'غانا', 'Ghana', '233', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(75, 'GI', 'جبل طارق', 'Gibraltar', '350', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(76, 'GR', 'يونان', 'Greece', '30', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(77, 'GL', 'غرينلاند', 'Greenland', '299', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(78, 'GD', 'غرينادا', 'Grenada', '1-473', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(79, 'GU', 'غوام', 'Guam', '1-671', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(80, 'GT', 'غواتيمالا', 'Guatemala', '502', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(81, 'GN', 'غينيا', 'Guinea', '224', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(82, 'GW', 'غينيا-بيساو', 'Guinea-Bissau', '245', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(83, 'GY', 'غيانا', 'Guyana', '592', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(84, 'HT', 'هايتي', 'Haiti', '509', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(85, 'HN', 'هندوراس', 'Honduras', '504', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(86, 'HU', 'هنغاريا', 'Hungary', '36', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(87, 'IS', 'أيسلندا', 'Iceland', '354', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(88, 'IN', 'الهند', 'India', '91', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(89, 'ID', 'أندونيسيا', 'Indonesia', '62', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(90, 'IR', 'جمهورية إيران الإسلامية', 'Iran, Islamic Republic of', '98', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(91, 'IQ', 'العراق', 'Iraq', '964', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(92, 'IE', 'أيرلندا', 'Ireland', '353', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(93, 'IM', 'جزيرة مان', 'Isle of Man', '44-1624', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(94, 'IL', 'إسرائيل', 'Israel', '972', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(95, 'IT', 'إيطاليا', 'Italy', '39', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(96, 'JM', 'جامايكا', 'Jamaica', '1-876', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(97, 'JP', 'اليابان', 'Japan', '81', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(98, 'JE', 'جيرسي', 'Jersey', '44-1534', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(99, 'JO', 'الأردن', 'Jordan', '962', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(100, 'KZ', 'كازاخستان', 'Kazakhstan', '7', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(101, 'KE', 'كينيا', 'Kenya', '254', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(102, 'KI', 'كيريباس', 'Kiribati', '686', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(103, 'KW', 'الكويت', 'Kuwait', '965', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(104, 'KG', 'قيرغيزستان', 'Kyrgyzstan', '996', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(105, 'LV', 'لاتفيا', 'Latvia', '371', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(106, 'LB', 'لبنان', 'Lebanon', '961', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(107, 'LS', 'ليسوتو', 'Lesotho', '266', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(108, 'LR', 'ليبيريا', 'Liberia', '231', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(109, 'LY', 'ليبيا', 'Libya', '218', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(110, 'LI', 'ليشتنشتاين', 'Liechtenstein', '423', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(111, 'LT', 'ليتوانيا', 'Lithuania', '370', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(112, 'LU', 'لوكسمبورغ', 'Luxembourg', '352', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(113, 'MK', 'مقدونيا، جمهورية', 'Macedonia', '389', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(114, 'MG', 'مدغشقر', 'Madagascar', '261', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(115, 'MW', 'ملاوي', 'Malawi', '265', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(116, 'MY', 'ماليزيا', 'Malaysia', '60', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(117, 'MV', 'جزر المالديف', 'Maldives', '960', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(118, 'ML', 'مالي', 'Mali', '223', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(119, 'MT', 'مالطا', 'Malta', '356', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(120, 'MH', 'جزر مارشال', 'Marshall Islands', '692', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(121, 'MR', 'موريتانيا', 'Mauritania', '222', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(122, 'MU', 'موريشيوس', 'Mauritius', '230', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(123, 'YT', 'مايوت', 'Mayotte', '262', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(124, 'MX', 'المكسيك', 'Mexico', '52', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(125, 'FM', 'ولايات ميكرونيزيا الموحدة', 'Micronesia', '691', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(126, 'MD', 'مولدوفا', 'Moldova', '373', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(127, 'MC', 'موناكو', 'Monaco', '377', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(128, 'MN', 'منغوليا', 'Mongolia', '976', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(129, 'ME', 'الجبل الأسود', 'Montenegro', '382', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(130, 'MS', 'مونتسيرات', 'Montserrat', '1-664', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(131, 'MA', 'المغرب', 'Morocco', '212', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(132, 'MZ', 'موزمبيق', 'Mozambique', '258', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(133, 'MM', 'ميانمار', 'Myanmar', '95', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(134, 'NA', 'ناميبيا', 'Namibia', '264', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(135, 'NR', 'ناورو', 'Nauru', '674', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(136, 'NP', 'نيبال', 'Nepal', '977', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(137, 'NL', 'هولندا', 'Netherlands', '31', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(138, 'AN', 'جزر الأنتيل الهولندية', 'Netherlands Antilles', '599', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(139, 'NC', 'كاليدونيا الجديدة', 'New Caledonia', '687', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(140, 'NZ', 'نيوزيلندا', 'New Zealand', '64', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(141, 'NI', 'نيكاراغوا', 'Nicaragua', '505', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(142, 'NE', 'النيجر', 'Niger', '227', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(143, 'NG', 'نيجيريا', 'Nigeria', '234', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(144, 'NU', 'نيوي', 'Niue', '683', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(145, 'NO', 'النرويج', 'Norway', '47', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(146, 'OM', 'عمان', 'Oman', '968', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(147, 'PK', 'باكستان', 'Pakistan', '92', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(148, 'PW', 'بالاو', 'Palau', '680', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(149, 'PS', 'فلسطين', 'Palestinian', '972', '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(150, 'PA', 'بناما', 'Panama', '507', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(151, 'PY', 'باراغواي', 'Paraguay', '595', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(152, 'PE', 'بيرو', 'Peru', '51', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(153, 'PH', 'الفلبين', 'Philippines', '63', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(154, 'PN', 'بيتكيرن', 'Pitcairn', '870', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(155, 'PL', 'بولندا', 'Poland', '48', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(156, 'PT', 'البرتغال', 'Portugal', '351', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(157, 'PR', 'بويرتو ريكو', 'Puerto Rico', '1-787', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(158, 'QA', 'قطر', 'Qatar', '974', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(159, 'RO', 'رومانيا', 'Romania', '40', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(160, 'RU', 'الفيدرالية الروسية', 'Russian Federation', '7', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(161, 'RW', 'رواندا', 'Rwanda', '250', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(162, 'SH', 'سانت هيلينا', 'Saint Helena', '290', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(163, 'KN', 'سانت كيتس ونيفيس', 'Saint Kitts and Nevis', '1-869', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(164, 'LC', 'سانت لوسيا', 'Saint Lucia', '1-758', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(165, 'PM', 'سان بيار وميكلون', 'Saint Pierre and Miquelon', '508', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(166, 'VC', 'سانت فنسنت وجزر غرينادين', 'Saint Vincent and Grenadines', '1-784', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(167, 'WS', 'ساموا', 'Samoa', '685', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(168, 'SM', 'سان مارينو', 'San Marino', '378', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(169, 'ST', 'ساو تومي وبرينسيبي', 'Sao Tome and Principe', '239', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(170, 'SA', 'المملكة العربية السعودية', 'Saudi Arabia', '966', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(171, 'SN', 'السنغال', 'Senegal', '221', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(172, 'RS', 'صربيا', 'Serbia', '381', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(173, 'SC', 'سيشيل', 'Seychelles', '248', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(174, 'SL', 'سيرا ليون', 'Sierra Leone', '232', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(175, 'SG', 'سنغافورة', 'Singapore', '65', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(176, 'SK', 'سلوفاكيا', 'Slovakia', '421', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(177, 'SI', 'سلوفينيا', 'Slovenia', '386', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(178, 'SB', 'جزر سليمان', 'Solomon Islands', '677', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(179, 'SO', 'الصومال', 'Somalia', '252', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(180, 'ZA', 'جنوب أفريقيا', 'South Africa', '27', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(181, 'ES', 'إسبانيا', 'Spain', '34', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(182, 'LK', 'سيريلانكا', 'Sri Lanka', '94', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(183, 'SD', 'السودان', 'Sudan', '249', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(184, 'SR', 'سورينام', 'Suriname', '597', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(185, 'SJ', 'جزر سفالبارد وجان ماين', 'Svalbard and Jan Mayen Islands', '47', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(186, 'SZ', 'سوازيلاند', 'Swaziland', '268', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(187, 'SE', 'السويد', 'Sweden', '46', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(188, 'CH', 'سويسرا', 'Switzerland', '41', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(189, 'SY', 'سوريا', 'Syrian Arab Republic', '963', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(190, 'TW', 'تايوان، جمهورية الصين', 'Taiwan, Republic of China', '886', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(191, 'TJ', 'طاجيكستان', 'Tajikistan', '992', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(192, 'TZ', 'تنزانيا', 'Tanzania', '255', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(193, 'TH', 'تايلاند', 'Thailand', '66', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(194, 'TG', 'توغو', 'Togo', '228', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(195, 'TK', 'توكيلاو', 'Tokelau', '690', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(196, 'TO', 'تونغا', 'Tonga', '676', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(197, 'TT', 'ترينداد وتوباغو', 'Trinidad and Tobago', '1-868', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(198, 'TN', 'تونس', 'Tunisia', '216', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(199, 'TR', 'تركيا', 'Turkey', '90', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(200, 'TM', 'تركمانستان', 'Turkmenistan', '993', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(201, 'TC', 'جزر تركس وكايكوس', 'Turks and Caicos Islands', '1-649', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(202, 'TV', 'توفالو', 'Tuvalu', '688', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(203, 'UG', 'أوغندا', 'Uganda', '256', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(204, 'UA', 'أوكرانيا', 'Ukraine', '380', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(205, 'AE', 'الإمارات العربية المتحدة', 'United Arab Emirates', '971', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(206, 'GB', 'المملكة المتحدة', 'United Kingdom', '44', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(207, 'US', 'الولايات المتحدة الأمريكية', 'United States of America', '1', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(208, 'UY', 'أوروغواي', 'Uruguay', '598', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(209, 'UZ', 'أوزبكستان', 'Uzbekistan', '998', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(210, 'VU', 'فانواتو', 'Vanuatu', '678', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(211, 'VE', 'فنزويلا', 'Venezuela', '58', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(212, 'VN', 'فيتنام', 'Viet Nam', '84', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(213, 'WF', 'واليس وفوتونا', 'Wallis and Futuna Islands', '681', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(214, 'YE', 'اليمن', 'Yemen', '967', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(215, 'ZM', 'زامبيا', 'Zambia', '260', '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(216, 'ZW', 'زيمبابوي', 'Zimbabwe', '263', '2020-08-26 03:20:12', '2020-08-26 03:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_events`
--

CREATE TABLE `smartend_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_failed_jobs`
--

CREATE TABLE `smartend_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_languages`
--

CREATE TABLE `smartend_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_status` tinyint(4) DEFAULT '1',
  `status` tinyint(4) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_languages`
--

INSERT INTO `smartend_languages` (`id`, `title`, `code`, `direction`, `left`, `right`, `icon`, `box_status`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'ltr', 'left', 'right', 'us', 1, 1, 1, NULL, '2020-08-26 03:20:10', '2020-08-26 03:20:10'),
(2, 'العربية', 'ar', 'rtl', 'right', 'left', 'sa', 1, 1, 1, NULL, '2020-08-26 03:20:10', '2020-08-26 03:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_ltm_translations`
--

CREATE TABLE `smartend_ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_maps`
--

CREATE TABLE `smartend_maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci,
  `details_en` text COLLATE utf8mb4_unicode_ci,
  `icon` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `row_no` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_menus`
--

CREATE TABLE `smartend_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `row_no` int(11) NOT NULL,
  `father_id` int(11) NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_menus`
--

INSERT INTO `smartend_menus` (`id`, `row_no`, `father_id`, `title_ar`, `title_en`, `status`, `type`, `cat_id`, `link`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'القائمة الرئيسية', 'Main Menu', 1, 0, 0, '', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(2, 2, 0, 'روابط سريعة', 'Quick Links', 1, 0, 0, '', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(3, 1, 1, 'من نحن', 'about', 1, 3, 1, 'home', 1, 1, '2020-08-26 03:20:12', '2020-08-26 03:26:07'),
(4, 2, 1, 'من نحن', 'About', 1, 1, 0, 'topic/about', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(5, 3, 1, 'خدماتنا', 'Services', 1, 3, 2, '', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(13, 1, 2, 'الرئيسية', 'Home', 1, 1, 0, 'home', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(14, 2, 2, 'من نحن', 'About Us', 1, 1, 0, 'topic/about', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(15, 3, 2, 'المدونة', 'Blog', 1, 2, 7, '', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(16, 4, 2, 'الخصوصية', 'Privacy', 1, 1, 0, 'topic/privacy', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(17, 5, 2, 'الشروط والأحكام', 'Terms & Conditions', 1, 1, 0, 'topic/terms', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(18, 6, 2, 'اتصل بنا', 'Contact Us', 1, 1, 0, 'contact', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_migrations`
--

CREATE TABLE `smartend_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_migrations`
--

INSERT INTO `smartend_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_03_08_163552_create_webmaster_settings_table', 1),
(6, '2020_03_08_163554_create_webmaster_sections_table', 1),
(7, '2020_03_08_163617_create_webmaster_banners_table', 1),
(8, '2020_03_08_163618_create_webmails_groups_table', 1),
(9, '2020_03_08_163620_create_webmails_files_table', 1),
(10, '2020_03_08_163621_create_webmails_table', 1),
(11, '2020_03_08_163622_create_topics_table', 1),
(12, '2020_03_08_163624_create_settings_table', 1),
(13, '2020_03_08_163625_create_sections_table', 1),
(14, '2020_03_08_163626_create_photos_table', 1),
(15, '2020_03_08_163628_create_permissions_table', 1),
(16, '2020_03_08_163629_create_menus_table', 1),
(17, '2020_03_08_163631_create_maps_table', 1),
(18, '2020_03_08_163632_create_events_table', 1),
(19, '2020_03_08_163633_create_countries_table', 1),
(20, '2020_03_08_163635_create_contacts_groups_table', 1),
(21, '2020_03_08_163636_create_contacts_table', 1),
(22, '2020_03_08_163637_create_comments_table', 1),
(23, '2020_03_08_163639_create_banners_table', 1),
(24, '2020_03_08_163640_create_attach_files_table', 1),
(25, '2020_03_08_163642_create_analytics_visitors_table', 1),
(26, '2020_03_08_163643_create_analytics_pages_table', 1),
(27, '2020_03_08_163656_create_related_topics_table', 1),
(28, '2020_03_08_163657_create_topic_categories_table', 1),
(29, '2020_03_08_163659_create_topic_fields_table', 1),
(30, '2020_03_08_163700_create_webmaster_section_fields_table', 1),
(31, '2020_03_09_174739_create_languages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smartend_password_resets`
--

CREATE TABLE `smartend_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_permissions`
--

CREATE TABLE `smartend_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_status` tinyint(4) NOT NULL DEFAULT '0',
  `add_status` tinyint(4) NOT NULL DEFAULT '0',
  `edit_status` tinyint(4) NOT NULL DEFAULT '0',
  `delete_status` tinyint(4) NOT NULL DEFAULT '0',
  `analytics_status` tinyint(4) NOT NULL DEFAULT '0',
  `inbox_status` tinyint(4) NOT NULL DEFAULT '0',
  `newsletter_status` tinyint(4) NOT NULL DEFAULT '0',
  `calendar_status` tinyint(4) NOT NULL DEFAULT '0',
  `banners_status` tinyint(4) NOT NULL DEFAULT '0',
  `settings_status` tinyint(4) NOT NULL DEFAULT '0',
  `webmaster_status` tinyint(4) NOT NULL DEFAULT '0',
  `data_sections` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_permissions`
--

INSERT INTO `smartend_permissions` (`id`, `name`, `view_status`, `add_status`, `edit_status`, `delete_status`, `analytics_status`, `inbox_status`, `newsletter_status`, `calendar_status`, `banners_status`, `settings_status`, `webmaster_status`, `data_sections`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Webmaster', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1,2,3,4,5,6,7,8,9', 1, 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(2, 'Website Manager', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '1,2,3,4,5,6,7,8,9', 1, 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(3, 'Limited User', 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, '1,2,3,4,5,6,7,8,9', 1, 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_photos`
--

CREATE TABLE `smartend_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row_no` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_related_topics`
--

CREATE TABLE `smartend_related_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `topic2_id` int(11) NOT NULL,
  `row_no` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_sections`
--

CREATE TABLE `smartend_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `visits` int(11) NOT NULL,
  `webmaster_id` int(11) NOT NULL,
  `father_id` int(11) NOT NULL,
  `row_no` int(11) NOT NULL,
  `seo_title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url_slug_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_settings`
--

CREATE TABLE `smartend_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_desc_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_desc_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_keywords_ar` text COLLATE utf8mb4_unicode_ci,
  `site_keywords_en` text COLLATE utf8mb4_unicode_ci,
  `site_webmails` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_messages_status` tinyint(4) DEFAULT NULL,
  `notify_comments_status` tinyint(4) DEFAULT NULL,
  `notify_orders_status` tinyint(4) DEFAULT NULL,
  `site_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_status` tinyint(4) NOT NULL,
  `close_msg` text COLLATE utf8mb4_unicode_ci,
  `social_link1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link8` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link9` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link10` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_t1_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_t1_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_t3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_t4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_t5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_t6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_t7_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_t7_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_logo_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_logo_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_fav` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_apple` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_color1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_color2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_type` tinyint(4) DEFAULT NULL,
  `style_bg_type` tinyint(4) DEFAULT NULL,
  `style_bg_pattern` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_bg_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_subscribe` tinyint(4) DEFAULT NULL,
  `style_footer` tinyint(4) DEFAULT NULL,
  `style_header` tinyint(4) DEFAULT NULL,
  `style_footer_bg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_preload` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_settings`
--

INSERT INTO `smartend_settings` (`id`, `site_title_ar`, `site_title_en`, `site_desc_ar`, `site_desc_en`, `site_keywords_ar`, `site_keywords_en`, `site_webmails`, `notify_messages_status`, `notify_comments_status`, `notify_orders_status`, `site_url`, `site_status`, `close_msg`, `social_link1`, `social_link2`, `social_link3`, `social_link4`, `social_link5`, `social_link6`, `social_link7`, `social_link8`, `social_link9`, `social_link10`, `contact_t1_ar`, `contact_t1_en`, `contact_t3`, `contact_t4`, `contact_t5`, `contact_t6`, `contact_t7_ar`, `contact_t7_en`, `style_logo_ar`, `style_logo_en`, `style_fav`, `style_apple`, `style_color1`, `style_color2`, `style_type`, `style_bg_type`, `style_bg_pattern`, `style_bg_color`, `style_bg_image`, `style_subscribe`, `style_footer`, `style_header`, `style_footer_bg`, `style_preload`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'اسم الموقع', 'Site Title', 'وصف الموقع الإلكتروني ونبذة قصيره عنه', 'Website description and some little information about it', 'كلمات، دلالية، موقع، موقع إلكتروني', 'key, words, website, web', 'info@sitename.com', 1, 1, 1, 'http://www.sitename.com/', 1, 'Website under maintenance \n<h1>Comming SOON</h1>', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', 'المبني - اسم الشارع - المدينة - الدولة', 'Building, Street name, City, Country', '+(xxx) 0xxxxxxx', '+(xxx) 0xxxxxxx', '+(xxx) 0xxxxxxx', 'info@sitename.com', 'من الأحد إلى الخميس 08:00 ص - 05:00 م', 'Sunday to Thursday 08:00 AM to 05:00 PM', NULL, NULL, NULL, NULL, '#0cbaa4', '#2e3e4e', 0, 0, NULL, NULL, NULL, 1, 1, 0, NULL, 0, 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_topics`
--

CREATE TABLE `smartend_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` longtext COLLATE utf8mb4_unicode_ci,
  `details_en` longtext COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `video_type` tinyint(4) DEFAULT NULL,
  `photo_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_file` text COLLATE utf8mb4_unicode_ci,
  `audio_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `visits` int(11) NOT NULL,
  `webmaster_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `row_no` int(11) NOT NULL,
  `seo_title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url_slug_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_topics`
--

INSERT INTO `smartend_topics` (`id`, `title_ar`, `title_en`, `details_ar`, `details_en`, `date`, `expire_date`, `video_type`, `photo_file`, `attach_file`, `video_file`, `audio_file`, `icon`, `status`, `visits`, `webmaster_id`, `section_id`, `row_no`, `seo_title_ar`, `seo_title_en`, `seo_description_ar`, `seo_description_en`, `seo_keywords_ar`, `seo_keywords_en`, `seo_url_slug_ar`, `seo_url_slug_en`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'vv', 'dvdf', '<div dir=\"rtl\">sdv</div>', '<div dir=\"ltr\">sdv</div>', '2020-08-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, 'vv', 'dvdf', 'sdv', 'sdv', NULL, NULL, 'vv', 'dvdf', 1, NULL, '2020-08-26 03:23:53', '2020-08-26 03:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_topic_categories`
--

CREATE TABLE `smartend_topic_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_topic_fields`
--

CREATE TABLE `smartend_topic_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_users`
--

CREATE TABLE `smartend_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `connect_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connect_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_users`
--

INSERT INTO `smartend_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `permissions_id`, `status`, `connect_email`, `connect_password`, `provider`, `provider_id`, `access_token`, `created_by`, `updated_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@site.com', NULL, '$2y$10$YGHlPnnE2hyw6drRfLUTIuAQuPeOick90hij0dc8Fhr/dvSmBpxGe', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_webmails`
--

CREATE TABLE `smartend_webmails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `father_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `date` datetime NOT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_cc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_bcc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `flag` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_webmails_files`
--

CREATE TABLE `smartend_webmails_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webmail_id` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_webmails_groups`
--

CREATE TABLE `smartend_webmails_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_webmails_groups`
--

INSERT INTO `smartend_webmails_groups` (`id`, `name`, `color`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Support', '#00bcd4', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(2, 'Orders', '#f44336', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12'),
(3, 'Queries', '#8bc34a', 1, NULL, '2020-08-26 03:20:12', '2020-08-26 03:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_webmaster_banners`
--

CREATE TABLE `smartend_webmaster_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `row_no` int(11) NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `desc_status` tinyint(4) NOT NULL,
  `link_status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `icon_status` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_webmaster_banners`
--

INSERT INTO `smartend_webmaster_banners` (`id`, `row_no`, `title_ar`, `title_en`, `width`, `height`, `desc_status`, `link_status`, `type`, `icon_status`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'بنرات الرئيسية', 'Home Banners', 1600, 500, 1, 1, 1, 0, 1, 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(2, 2, 'بنرات نصية', 'Text Banners', 330, 330, 1, 1, 0, 1, 1, 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(3, 3, 'بنرات جانبية', 'Side Banners', 330, 330, 0, 1, 1, 0, 1, 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_webmaster_sections`
--

CREATE TABLE `smartend_webmaster_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `row_no` int(11) NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `sections_status` tinyint(4) NOT NULL DEFAULT '0',
  `comments_status` tinyint(4) NOT NULL DEFAULT '0',
  `date_status` tinyint(4) NOT NULL DEFAULT '0',
  `expire_date_status` tinyint(4) NOT NULL DEFAULT '0',
  `longtext_status` tinyint(4) NOT NULL DEFAULT '0',
  `editor_status` tinyint(4) NOT NULL DEFAULT '0',
  `attach_file_status` tinyint(4) NOT NULL DEFAULT '0',
  `extra_attach_file_status` tinyint(4) NOT NULL DEFAULT '0',
  `multi_images_status` tinyint(4) NOT NULL DEFAULT '0',
  `section_icon_status` tinyint(4) NOT NULL DEFAULT '0',
  `icon_status` tinyint(4) NOT NULL DEFAULT '0',
  `maps_status` tinyint(4) NOT NULL DEFAULT '0',
  `order_status` tinyint(4) NOT NULL DEFAULT '0',
  `related_status` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `seo_title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url_slug_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_webmaster_sections`
--

INSERT INTO `smartend_webmaster_sections` (`id`, `row_no`, `title_ar`, `title_en`, `type`, `sections_status`, `comments_status`, `date_status`, `expire_date_status`, `longtext_status`, `editor_status`, `attach_file_status`, `extra_attach_file_status`, `multi_images_status`, `section_icon_status`, `icon_status`, `maps_status`, `order_status`, `related_status`, `status`, `seo_title_ar`, `seo_title_en`, `seo_description_ar`, `seo_description_en`, `seo_keywords_ar`, `seo_keywords_en`, `seo_url_slug_ar`, `seo_url_slug_en`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'من نحن', 'about', 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 'صفحات الموقع', 'Site pages', NULL, NULL, NULL, NULL, 'sitepages', 'sitepages', 1, 1, '2020-08-26 03:20:11', '2020-08-26 03:24:52'),
(2, 2, 'الخدمات', 'Services', 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 'الخدمات', 'Services', NULL, NULL, NULL, NULL, 'services', 'services', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(3, 3, 'الأخبار', 'News', 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 'الأخبار', 'News', NULL, NULL, NULL, NULL, 'news', 'news', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(4, 4, 'الصور', 'Photos', 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 'الصور', 'Photos', NULL, NULL, NULL, NULL, 'photos', 'photos', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(5, 5, 'الفيديو', 'Videos', 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 'الفيديو', 'Videos', NULL, NULL, NULL, NULL, 'videos', 'videos', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(6, 6, 'الصوتيات', 'Audio', 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 'الصوتيات', 'Audio', NULL, NULL, NULL, NULL, 'audio', 'audio', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(7, 7, 'المدونة', 'Blog', 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 'المدونة', 'Blog', NULL, NULL, NULL, NULL, 'blog', 'blog', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(8, 8, 'المنتجات', 'Products', 0, 2, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 'المنتجات', 'Products', NULL, NULL, NULL, NULL, 'products', 'products', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11'),
(9, 9, 'العملاء', 'Partners', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'العملاء', 'Partners', NULL, NULL, NULL, NULL, 'partners', 'partners', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `smartend_webmaster_section_fields`
--

CREATE TABLE `smartend_webmaster_section_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webmaster_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci,
  `details_en` text COLLATE utf8mb4_unicode_ci,
  `row_no` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `required` tinyint(4) NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smartend_webmaster_settings`
--

CREATE TABLE `smartend_webmaster_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ar_box_status` tinyint(4) NOT NULL,
  `en_box_status` tinyint(4) NOT NULL,
  `seo_status` tinyint(4) NOT NULL,
  `analytics_status` tinyint(4) NOT NULL,
  `banners_status` tinyint(4) NOT NULL,
  `inbox_status` tinyint(4) NOT NULL,
  `calendar_status` tinyint(4) NOT NULL,
  `settings_status` tinyint(4) NOT NULL,
  `newsletter_status` tinyint(4) NOT NULL,
  `members_status` tinyint(4) NOT NULL,
  `orders_status` tinyint(4) NOT NULL,
  `shop_status` tinyint(4) NOT NULL,
  `shop_settings_status` tinyint(4) NOT NULL,
  `default_currency_id` int(11) NOT NULL,
  `languages_by_default` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_news_section_id` int(11) NOT NULL,
  `header_menu_id` int(11) NOT NULL,
  `footer_menu_id` int(11) NOT NULL,
  `home_banners_section_id` int(11) NOT NULL,
  `home_text_banners_section_id` int(11) NOT NULL,
  `side_banners_section_id` int(11) NOT NULL,
  `contact_page_id` int(11) NOT NULL,
  `newsletter_contacts_group` int(11) NOT NULL,
  `new_comments_status` tinyint(4) NOT NULL,
  `links_status` tinyint(4) NOT NULL,
  `register_status` tinyint(4) NOT NULL,
  `permission_group` int(11) NOT NULL,
  `api_status` tinyint(4) NOT NULL,
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_content1_section_id` int(11) NOT NULL,
  `home_content2_section_id` int(11) NOT NULL,
  `home_content3_section_id` int(11) NOT NULL,
  `home_contents_per_page` int(11) NOT NULL,
  `mail_driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_no_replay` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nocaptcha_status` tinyint(4) NOT NULL,
  `nocaptcha_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nocaptcha_sitekey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_tags_status` tinyint(4) NOT NULL,
  `google_tags_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_facebook_status` tinyint(4) NOT NULL,
  `login_facebook_client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_facebook_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_twitter_status` tinyint(4) NOT NULL,
  `login_twitter_client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_twitter_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_google_status` tinyint(4) NOT NULL,
  `login_google_client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_google_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_linkedin_status` tinyint(4) NOT NULL,
  `login_linkedin_client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_linkedin_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_github_status` tinyint(4) NOT NULL,
  `login_github_client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_github_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_bitbucket_status` tinyint(4) NOT NULL,
  `login_bitbucket_client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_bitbucket_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dashboard_link_status` tinyint(4) NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_webmaster_settings`
--

INSERT INTO `smartend_webmaster_settings` (`id`, `ar_box_status`, `en_box_status`, `seo_status`, `analytics_status`, `banners_status`, `inbox_status`, `calendar_status`, `settings_status`, `newsletter_status`, `members_status`, `orders_status`, `shop_status`, `shop_settings_status`, `default_currency_id`, `languages_by_default`, `latest_news_section_id`, `header_menu_id`, `footer_menu_id`, `home_banners_section_id`, `home_text_banners_section_id`, `side_banners_section_id`, `contact_page_id`, `newsletter_contacts_group`, `new_comments_status`, `links_status`, `register_status`, `permission_group`, `api_status`, `api_key`, `home_content1_section_id`, `home_content2_section_id`, `home_content3_section_id`, `home_contents_per_page`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_no_replay`, `nocaptcha_status`, `nocaptcha_secret`, `nocaptcha_sitekey`, `google_tags_status`, `google_tags_id`, `google_analytics_code`, `login_facebook_status`, `login_facebook_client_id`, `login_facebook_client_secret`, `login_twitter_status`, `login_twitter_client_id`, `login_twitter_client_secret`, `login_google_status`, `login_google_client_id`, `login_google_client_secret`, `login_linkedin_status`, `login_linkedin_client_id`, `login_linkedin_client_secret`, `login_github_status`, `login_github_client_id`, `login_github_client_secret`, `login_bitbucket_status`, `login_bitbucket_client_id`, `login_bitbucket_client_secret`, `dashboard_link_status`, `timezone`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 'en', 3, 1, 2, 1, 2, 3, 2, 1, 1, 0, 0, 3, 0, '402784613679330', 7, 4, 9, 20, 'smtp', '', '', '', '', '', 'noreplay@site.com', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 0, '', '', 1, 'UTC', 1, NULL, '2020-08-26 03:20:11', '2020-08-26 03:20:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `smartend_analytics_pages`
--
ALTER TABLE `smartend_analytics_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_analytics_visitors`
--
ALTER TABLE `smartend_analytics_visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_attach_files`
--
ALTER TABLE `smartend_attach_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_banners`
--
ALTER TABLE `smartend_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_comments`
--
ALTER TABLE `smartend_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_contacts`
--
ALTER TABLE `smartend_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_contacts_groups`
--
ALTER TABLE `smartend_contacts_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_countries`
--
ALTER TABLE `smartend_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_events`
--
ALTER TABLE `smartend_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_failed_jobs`
--
ALTER TABLE `smartend_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_languages`
--
ALTER TABLE `smartend_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_ltm_translations`
--
ALTER TABLE `smartend_ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_maps`
--
ALTER TABLE `smartend_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_menus`
--
ALTER TABLE `smartend_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_migrations`
--
ALTER TABLE `smartend_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_password_resets`
--
ALTER TABLE `smartend_password_resets`
  ADD KEY `smartend_password_resets_email_index` (`email`);

--
-- Indexes for table `smartend_permissions`
--
ALTER TABLE `smartend_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_photos`
--
ALTER TABLE `smartend_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_related_topics`
--
ALTER TABLE `smartend_related_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_sections`
--
ALTER TABLE `smartend_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_settings`
--
ALTER TABLE `smartend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_topics`
--
ALTER TABLE `smartend_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_topic_categories`
--
ALTER TABLE `smartend_topic_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_topic_fields`
--
ALTER TABLE `smartend_topic_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_users`
--
ALTER TABLE `smartend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `smartend_users_email_unique` (`email`);

--
-- Indexes for table `smartend_webmails`
--
ALTER TABLE `smartend_webmails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_webmails_files`
--
ALTER TABLE `smartend_webmails_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_webmails_groups`
--
ALTER TABLE `smartend_webmails_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_webmaster_banners`
--
ALTER TABLE `smartend_webmaster_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_webmaster_sections`
--
ALTER TABLE `smartend_webmaster_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_webmaster_section_fields`
--
ALTER TABLE `smartend_webmaster_section_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartend_webmaster_settings`
--
ALTER TABLE `smartend_webmaster_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `smartend_analytics_pages`
--
ALTER TABLE `smartend_analytics_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `smartend_analytics_visitors`
--
ALTER TABLE `smartend_analytics_visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `smartend_attach_files`
--
ALTER TABLE `smartend_attach_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_banners`
--
ALTER TABLE `smartend_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `smartend_comments`
--
ALTER TABLE `smartend_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_contacts`
--
ALTER TABLE `smartend_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smartend_contacts_groups`
--
ALTER TABLE `smartend_contacts_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smartend_countries`
--
ALTER TABLE `smartend_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `smartend_events`
--
ALTER TABLE `smartend_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_failed_jobs`
--
ALTER TABLE `smartend_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_languages`
--
ALTER TABLE `smartend_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `smartend_ltm_translations`
--
ALTER TABLE `smartend_ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_maps`
--
ALTER TABLE `smartend_maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_menus`
--
ALTER TABLE `smartend_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `smartend_migrations`
--
ALTER TABLE `smartend_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `smartend_permissions`
--
ALTER TABLE `smartend_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smartend_photos`
--
ALTER TABLE `smartend_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_related_topics`
--
ALTER TABLE `smartend_related_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_sections`
--
ALTER TABLE `smartend_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_settings`
--
ALTER TABLE `smartend_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smartend_topics`
--
ALTER TABLE `smartend_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `smartend_topic_categories`
--
ALTER TABLE `smartend_topic_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_topic_fields`
--
ALTER TABLE `smartend_topic_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_users`
--
ALTER TABLE `smartend_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smartend_webmails`
--
ALTER TABLE `smartend_webmails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_webmails_files`
--
ALTER TABLE `smartend_webmails_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_webmails_groups`
--
ALTER TABLE `smartend_webmails_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smartend_webmaster_banners`
--
ALTER TABLE `smartend_webmaster_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smartend_webmaster_sections`
--
ALTER TABLE `smartend_webmaster_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `smartend_webmaster_section_fields`
--
ALTER TABLE `smartend_webmaster_section_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smartend_webmaster_settings`
--
ALTER TABLE `smartend_webmaster_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
