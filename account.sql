-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2022 at 02:26 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `account`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_number` int(11) DEFAULT NULL,
  `balance` float NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `account_route_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `number`, `name`, `parent_number`, `balance`, `account_type_id`, `account_route_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(14, 100004, 'الصين', 0, -227.5, 1, 4, '2020-09-19 15:33:16', '2020-09-19 18:37:23', 1, NULL),
(15, 200005, 'اسليم', 0, 50, 2, 4, '2020-09-19 15:41:18', '2020-09-19 18:41:55', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_route`
--

CREATE TABLE `account_route` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_route`
--

INSERT INTO `account_route` (`id`, `name`) VALUES
(1, 'ميزان المراجعة'),
(2, 'حساب متاجرة'),
(3, 'الارباح والخسائر'),
(4, 'الميزانية العمومية');

-- --------------------------------------------------------

--
-- Table structure for table `account_transaction`
--

CREATE TABLE `account_transaction` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `account_transaction_type_id` int(11) DEFAULT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_transaction`
--

INSERT INTO `account_transaction` (`id`, `account_id`, `voucher_id`, `account_transaction_type_id`, `description`, `amount`, `created_at`, `updated_at`) VALUES
(1, 3, 57, 2, 'مشتريات', 169.5, '2020-09-19 00:00:00', NULL),
(2, 7, 57, 1, 'مشتريات', 2, '2020-09-19 00:00:00', NULL),
(3, 14, 57, 1, 'مشتريات', 167.5, '2020-09-19 00:00:00', NULL),
(4, 3, 58, 2, 'مشتريات', 60, '2020-09-19 00:00:00', NULL),
(5, 14, 58, 1, 'مشتريات', 60, '2020-09-19 00:00:00', NULL),
(6, 2, 59, 1, 'مبيعات', 50, '2020-09-19 00:00:00', NULL),
(7, 15, 59, 2, 'مبيعات', 50, '2020-09-19 00:00:00', NULL);

--
-- Triggers `account_transaction`
--
DELIMITER $$
CREATE TRIGGER `account_transaction_ains` AFTER INSERT ON `account_transaction` FOR EACH ROW BEGIN
	update account set balance = balance + (new.account_transaction_type_id * 2 -3)*new.amount, updated_at = current_timestamp where id = new.account_id;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `account_transaction_type`
--

CREATE TABLE `account_transaction_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`id`, `name`) VALUES
(1, 'دائن'),
(2, 'مدين'),
(3, 'دائن أو مدين');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `active`, `users_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'mohamed.alijla', 'basel1090@yahoo.com', '0599888877', 1, 1, '2018-03-06 13:39:59', 1, '2020-09-19 13:36:57', 1),
(3, 'نعيم الحسنات', 'naeem@hassanat.com', '0599626262', 1, 3, '2018-03-29 12:46:54', 1, '2018-03-29 12:50:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_link`
--

CREATE TABLE `admin_link` (
  `admin_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_link`
--

INSERT INTO `admin_link` (`admin_id`, `link_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(9, 'الحنفيات', NULL, '2020-09-19 14:03:46', 1, '2020-09-19 14:03:46', NULL),
(10, 'شطافات', NULL, '2020-09-19 14:04:02', 1, '2020-09-19 14:04:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type_id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobile`, `phone`, `address`, `email`, `customer_type_id`, `account_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(4, 'الصين', '7856747585', '89798678565', 'الصين', 'ch@ch.com', 1, 14, '2020-09-19 15:33:16', 1, '2020-09-19 15:33:16', NULL),
(5, 'اسليم', '98796969', '124124124124', 'غزة', 'm.ijla@apex.ps', 2, 15, '2020-09-19 15:41:18', 1, '2020-09-19 15:41:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`id`, `name`) VALUES
(1, 'تاجر'),
(2, 'زبون');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `buy_price` float NOT NULL,
  `created_at` datetime NOT NULL,
  `balance` float NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `category_id`, `unit_id`, `sell_price`, `buy_price`, `created_at`, `balance`, `updated_at`, `created_by`, `updated_by`) VALUES
(6, 'حنفية جل نص انش', 9, 1, 6, 10, '2020-09-19 14:05:24', 0, '2020-09-19 14:05:24', 1, NULL),
(7, 'حنفية ثلاث ارباع انش', 9, 1, 10, 14, '2020-09-19 14:09:43', 0, '2020-09-19 14:09:43', 1, NULL),
(8, 'بربيش نقارة ١م', 10, 4, 3, 4, '2020-09-24 06:51:59', 0, '2020-09-24 06:51:59', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_in_menu` tinyint(1) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `title`, `url`, `parent_id`, `icon`, `show_in_menu`, `order_id`) VALUES
(1, 'الاصناف', '', 0, 'icon-list', 1, 1),
(2, 'ادارة التصنيفات', '/category', 1, 'fa fa-list', 1, 1),
(3, 'ادارة الاصناف', '/item', 1, 'icon-list', 1, 1),
(4, 'اضافة صنف جديد', '/item/create', 1, 'icon-plus', 1, 1),
(5, 'الزبائن', NULL, 0, 'icon-users', 1, 1),
(6, 'ادارة الزبائن', '/customer', 5, 'fa fa-list', 1, 1),
(7, 'اضافة زبون جديد', '/customer/create', 5, 'fa fa-plus', 1, 1),
(8, 'الحسابات', NULL, 0, 'fa fa-tv', 1, 1),
(9, 'الحسابات', '/account', 8, 'fa fa-list', 1, 1),
(10, 'اضافة حساب جديد', '/account/create', 8, 'fa fa-plus', 1, 1),
(11, 'العمليات', NULL, 0, 'fa fa-ticket', 1, 1),
(12, 'المشتريات', '/operation?type_id=2', 11, 'fa fa-list', 1, 1),
(13, 'مردود المشتريات', '/operation?type_id=4', 11, 'fa fa-list', 1, 1),
(14, 'المبيعات', '/operation?type_id=1', 11, 'fa fa-list', 1, 1),
(15, 'مردود المبيعات', '/operation?type_id=3', 11, 'fa fa-list', 1, 1),
(16, 'القيود', NULL, 0, 'icon-user', 1, 1),
(17, 'ادارة القيود', '/voucher', 16, 'icon-list', 1, 1),
(18, 'اضافة قيد جديد', '/voucher/create', 16, 'icon-plus', 1, 1),
(19, 'التقارير', NULL, 0, 'fa fa-file', 1, 1),
(20, 'تقرير الاستاذ', '/report/ledger', 19, 'fa fa-list', 1, 1),
(21, 'تقرير الاصناف', 'report/item', 19, 'fa fa-list', 1, 1),
(22, 'تقرير الزبائن', '/report/customer', 19, 'fa fa-list', 1, 1),
(23, 'تقرير القيود', '/report/voucher', 19, 'fa fa-list', 1, 1),
(24, 'المستخدمون', NULL, 0, 'fa fa-user', 1, 20),
(25, 'ادارة المستخدمين', '/admin', 24, 'fa fa-list', 1, 1),
(26, 'اضافة مستخدم', '/admin/create', 24, 'fa fa-plus', 1, 1),
(27, 'السندات', '#', 0, 'fa fa-list', 1, 1),
(28, 'عرض السندات', '/payment', 27, 'fa fa-list', 1, 1),
(29, 'اضافة سند', '/payment/create', 27, 'fa fa-plus', 1, 1);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `serial` int(11) DEFAULT '0',
  `operation_type_id` int(11) DEFAULT NULL,
  `operation_date` datetime DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT '0',
  `price` float DEFAULT '0',
  `discount` float DEFAULT '0',
  `amount` float DEFAULT '0',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`id`, `serial`, `operation_type_id`, `operation_date`, `account_id`, `customer_id`, `price`, `discount`, `amount`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 0, 2, '2020-09-19 00:00:00', 14, 0, 169.5, 2, 167.5, 'لا يوجد ملاحظات', 1, '2020-09-19 15:34:52', '2020-09-19 15:34:52'),
(2, 0, 2, '2020-09-19 00:00:00', 14, 0, 60, 0, 60, 'فش', 1, '2020-09-19 15:37:23', '2020-09-19 15:37:23'),
(3, 0, 1, '2020-09-19 00:00:00', 15, 0, 50, NULL, 50, NULL, 1, '2020-09-19 15:41:55', '2020-09-19 15:41:55');

--
-- Triggers `operation`
--
DELIMITER $$
CREATE TRIGGER `operation_ains` AFTER UPDATE ON `operation` FOR EACH ROW begin
	declare lvoucher_no,ldiscount_account,loperation_factor,laccount_id,laccount_type bigint;
	declare loperation_factor_type int;
	declare ldescription,laccount_name varchar(50);
	select name,account_id,discount_account,operation_factor into ldescription,laccount_id,ldiscount_account,loperation_factor from operation_type where id=new.operation_type_id ;
    
    select name into laccount_name from account where id=new.account_id;
    
	insert into voucher (description,voucher_date,vouture_value) values (concat(ldescription, ' - ', laccount_name ) ,new.operation_date,new.`price`);
	set lvoucher_no = last_insert_id();
	
	set loperation_factor_type = (loperation_factor+3)/2;
	
	if new.price > 0 then
		INSERT INTO `account_transaction` (`account_id`, `voucher_id`, `account_transaction_type_id`, `description`, `amount`, `created_at`) VALUES
		( laccount_id, lvoucher_no, loperation_factor_type, ldescription, new.price, new.operation_date);
	end if;

	set loperation_factor_type = (loperation_factor*-1+3)/2;
	if new.discount > 0 then
		INSERT INTO `account_transaction` (`account_id`, `voucher_id`, `account_transaction_type_id`, `description`, `amount`, `created_at`) VALUES
		( ldiscount_account, lvoucher_no, loperation_factor_type, ldescription, new.discount, new.operation_date);
	end if;
	if new.amount > 0 then
    
		INSERT INTO `account_transaction` (`account_id`, `voucher_id`, `account_transaction_type_id`, `description`, `amount`, `created_at`) VALUES
		( new.account_id, lvoucher_no, loperation_factor_type, ldescription, new.amount, new.operation_date);
	end if;
	
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `operation_details`
--

CREATE TABLE `operation_details` (
  `id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `unit_price` float NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `amount` float NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operation_details`
--

INSERT INTO `operation_details` (`id`, `operation_id`, `item_id`, `unit_id`, `quantity`, `unit_price`, `price`, `discount`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 1, 20, 6, 120, 0.5, 119.5, '2020-09-19 15:34:52', '2020-09-19 15:34:52'),
(2, 1, 7, 1, 5, 10, 50, 0, 50, '2020-09-19 15:34:52', '2020-09-19 15:34:52'),
(3, 2, 6, 1, 10, 6, 60, 0, 60, '2020-09-19 15:37:23', '2020-09-19 15:37:23'),
(4, 3, 6, 1, 5, 10, 50, 0, 50, '2020-09-19 15:41:55', '2020-09-19 15:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `operation_type`
--

CREATE TABLE `operation_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `discount_account` bigint(20) NOT NULL DEFAULT '0',
  `operation_factor` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operation_type`
--

INSERT INTO `operation_type` (`id`, `name`, `account_id`, `discount_account`, `operation_factor`) VALUES
(1, 'مبيعات', 2, 8, -1),
(2, 'مشتريات', 3, 7, 1),
(3, 'مردود مبيعات', 4, 0, 1),
(4, 'مردود مشتريات', 5, 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('basel1090@yahoo.com', '$2y$10$pptkUAwDfwzro/629H3Ny.s6UdfzBGitwSyEEpprlZsxU9r7UFE0e', '2018-03-29 10:41:35'),
('naeem@hassanat.com', '$2y$10$0to/gCBxTJW/QdCLLxQ8e.hJtFnASSoA/RnKBRVqvmcxtUO0eyhA2', '2018-03-29 10:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `value_type_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `serial` int(11) DEFAULT NULL,
  `comment` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `account_id`, `value`, `value_type_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `serial`, `comment`) VALUES
(1, 11, 250, 1, 1, '2018-03-25 13:40:36', NULL, '2018-03-25 13:40:36', 1, NULL),
(2, 11, 200, 1, 1, '2018-03-25 13:54:12', NULL, '2018-03-25 13:54:12', 1, NULL),
(3, 11, 2000, 1, 1, '2018-03-25 13:57:44', NULL, '2018-03-25 13:57:44', 3, NULL),
(4, 11, 9540, 1, 1, '2018-03-25 13:58:51', NULL, '2018-03-25 13:58:51', 4, NULL),
(5, 9, 7000, 2, 1, '2018-03-25 13:59:25', NULL, '2018-03-25 13:59:25', 1, NULL),
(6, 9, 10000, 2, 1, '2018-03-25 14:02:27', NULL, '2018-03-25 14:02:27', 2, NULL),
(7, 11, 10000, 1, 1, '2018-03-25 14:03:01', NULL, '2018-03-25 14:03:01', 5, NULL),
(8, 9, 8000, 2, 1, '2018-03-25 14:03:29', NULL, '2018-03-25 14:03:29', 3, NULL);

--
-- Triggers `payment`
--
DELIMITER $$
CREATE TRIGGER `payment_insert` AFTER INSERT ON `payment` FOR EACH ROW begin
	declare lvoucher_no,loperation_factor,laccount_id bigint;
	declare loperation_factor_type int;
	declare ldescription,laccount_name varchar(50);
	
    
    select name into ldescription from payment_value_type where id=new.value_type_id;
    
    select name into laccount_name from account where id=new.account_id;
    
	insert into voucher (description,voucher_date,vouture_value) values (concat(ldescription, ' - ', laccount_name ) ,new.created_at,new.`value`);
	set lvoucher_no = last_insert_id();
	
	set loperation_factor_type = (new.value_type_id-3)/2;
    /*if new.value_type_id=1 THEN
    set loperation_factor=1;
    ELSE
    set loperation_factor=-1;
    END IF;*/
	
		INSERT INTO `account_transaction` (`account_id`, `voucher_id`, `account_transaction_type_id`, `description`, `amount`, `created_at`) VALUES
		( new.account_id, lvoucher_no, New.value_type_id, ldescription, new.value, new.created_at);

	
		INSERT INTO `account_transaction` (`account_id`, `voucher_id`, `account_transaction_type_id`, `description`, `amount`, `created_at`) VALUES
		( 1, lvoucher_no, 3-New.value_type_id, ldescription, new.value, new.created_at);
	
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `payment_value_type`
--

CREATE TABLE `payment_value_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_value_type`
--

INSERT INTO `payment_value_type` (`id`, `name`) VALUES
(1, 'سند قبض'),
(2, 'سند صرف');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name`) VALUES
(1, 'وحدة'),
(2, 'غرام'),
(3, 'لتر'),
(4, 'متر');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'mohamed.alijla', 'm@yahoo.com', '$2y$10$H2j34EcCEPJI7wPK.i3zROQzesO6Zhs3.oehT342qvkrhOdnImvdq', 'rkBdVaLLv0ECF3uHBZX1qjsfKtC5ZU5cfxlVWp4TWKRjvGcb6lvGt1TFdK3P', '2018-03-29 09:30:51', '2020-09-19 10:36:57', 'PAShFgowTUzQd7ZjQyB1WT7tAaNGFMuq9OkBu8L0ZbrMYQ56mLv3qG3SKDxBFM4iR3NJoLF4XViCgvs7LSMUd2Z1hNa1fCbpqXqz'),
(3, 'mohamed', 'mohamed.alijla@gmail.com', '$2y$10$.Jk6EzdO5VZqiIZ90xn8s.peFfk0EUArbXYhD0S3mX7iMmmXcJur.', '42Yu1jugcIUU41N4w4eMvgIwMmi4BgVDRmfDIIiQUR2as1Qlv5El07FzJBLh', '2018-03-29 09:46:54', '2018-03-29 09:50:14', '');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vouture_value` float DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `voucher_date` datetime DEFAULT NULL,
  `test` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `description`, `vouture_value`, `created_at`, `created_by`, `voucher_date`, `test`) VALUES
(29, 'مبيعات', 10000, '2018-03-24 00:21:44', 0, '2018-03-23 00:00:00', '10000'),
(30, 'مبيعات', 10000, '2018-03-24 00:31:16', 0, '2018-03-23 00:00:00', '10000'),
(31, 'مبيعات', 10000, '2018-03-24 00:31:53', 0, '2018-03-23 00:00:00', '10000'),
(32, 'مشتريات', 0, '2018-03-24 00:49:16', 0, '2018-03-22 00:00:00', '0'),
(33, 'مبيعات', 10000, '2018-03-24 00:52:35', 0, '2018-03-23 00:00:00', '10000'),
(34, 'مشتريات', 99999, '2018-03-24 01:05:50', 0, '2018-03-23 00:00:00', '99999'),
(35, 'مبيعات', 0, '2018-03-24 01:12:37', 0, '2018-03-23 00:00:00', '0'),
(36, 'مشتريات', 0, '2018-03-24 01:22:32', 0, '2018-03-16 00:00:00', '0'),
(37, 'مشتريات', 0, '2018-03-24 20:06:15', 0, '2018-03-24 00:00:00', '0'),
(38, 'مبيعات', 0, '2018-03-24 20:54:12', 0, '2018-03-24 00:00:00', '0'),
(39, 'مشتريات', 110000, '2018-03-24 21:33:12', 0, '2018-03-24 00:00:00', '110000'),
(43, 'مشتريات', 900, '2018-03-24 22:57:53', 0, '2018-03-24 00:00:00', '900'),
(44, 'مبيعات', 120000, '2018-03-24 23:01:09', 0, '2018-03-24 00:00:00', '120000'),
(45, 'مشتريات', 55000, '2018-03-24 23:06:11', 0, '2018-03-24 00:00:00', '55000'),
(46, 'مبيعات', 70240, '2018-03-25 15:48:23', 0, '2018-03-25 00:00:00', '70240'),
(47, 'مشترياتالمشتريات', 33000, '2018-03-25 15:54:17', 0, '2018-03-25 00:00:00', NULL),
(48, 'مشتريات - المشتريات', 60000, '2018-03-25 15:55:05', 0, '2018-03-14 00:00:00', NULL),
(49, 'مبيعات - محمد سعدي الاغا', 35000, '2018-03-25 15:55:48', 0, '2018-03-18 00:00:00', NULL),
(50, 'سند قبض - محمد سعدي الاغا', 200, '2018-03-25 16:54:12', 0, '2018-03-25 13:54:12', NULL),
(51, 'سند قبض - محمد سعدي الاغا', 2000, '2018-03-25 16:57:44', 0, '2018-03-25 13:57:44', NULL),
(52, 'سند قبض - محمد سعدي الاغا', 9540, '2018-03-25 16:58:51', 0, '2018-03-25 13:58:51', NULL),
(53, 'سند صرف - نعيم الحسنات (ابو أحمد)', 7000, '2018-03-25 16:59:25', 0, '2018-03-25 13:59:25', NULL),
(54, 'سند صرف - نعيم الحسنات (ابو أحمد)', 10000, '2018-03-25 17:02:27', 0, '2018-03-25 14:02:27', NULL),
(55, 'سند قبض - محمد سعدي الاغا', 10000, '2018-03-25 17:03:01', 0, '2018-03-25 14:03:01', NULL),
(56, 'سند صرف - نعيم الحسنات (ابو أحمد)', 8000, '2018-03-25 17:03:29', 0, '2018-03-25 14:03:29', NULL),
(57, 'مشتريات - الصين', 169.5, '2020-09-19 18:34:52', 0, '2020-09-19 00:00:00', NULL),
(58, 'مشتريات - الصين', 60, '2020-09-19 18:37:23', 0, '2020-09-19 00:00:00', NULL),
(59, 'مبيعات - اسليم', 50, '2020-09-19 18:41:55', 0, '2020-09-19 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `account_route`
--
ALTER TABLE `account_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_transaction`
--
ALTER TABLE `account_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_transaction_type`
--
ALTER TABLE `account_transaction_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_details`
--
ALTER TABLE `operation_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_type`
--
ALTER TABLE `operation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_value_type`
--
ALTER TABLE `payment_value_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `account_route`
--
ALTER TABLE `account_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_transaction`
--
ALTER TABLE `account_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `account_transaction_type`
--
ALTER TABLE `account_transaction_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `operation_details`
--
ALTER TABLE `operation_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `operation_type`
--
ALTER TABLE `operation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_value_type`
--
ALTER TABLE `payment_value_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
