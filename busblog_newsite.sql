-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2025 at 11:26 AM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busblog_newsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint DEFAULT NULL,
  `is_owner` tinyint NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `last_login` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `is_owner`, `name`, `username`, `email`, `password`, `image`, `image_driver`, `phone`, `address`, `last_login`, `last_seen`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '12345admin', '1234admin', 'jubayer@bug.test.test', '$2y$10$GE9Bm5eLhkYAXzEkt9w6/u7bvxCTFdnpMANW3NZufhpbE0d2bx7a.', 'adminProfileImage/jGjHP0Nm2mq1iQ3p86558SkH3wQb8m.webp', 'local', '', 'Dhaka, Bangladesh', '2025-01-06 10:33:56', '2025-03-14 10:51:45', 1, '', NULL, '2025-03-13 23:51:45'),
(2, NULL, 1, 'admin', 'super', 'accounts@businesslocal.com.au', '$2y$10$M7f3UElElVU.jrN/p1d/quuOySu5nCnONodvQVPKjYLsOfJzpGtaq', 'adminProfileImage/9Io7A4HMXs3thMlmjG2qxGeiMs8Pkc.webp', 'local', '+61408587332', 'Australia', '2025-03-26 10:11:50', '2025-03-26 10:31:21', 1, '7BCAVn7Dd4EilHs3zGPLESFbiqwUWJFSQq8lIMHiie3LUk2OYay5PA4LgFna', NULL, '2025-03-25 23:31:21'),
(3, 2, 0, 'Ridge Tagala', 'Riidgyy', 'riidgyy@gmail.com', '$2y$10$.U2jz5eSQtcMr1OkvZGgDenXpGKRe.5Kdj.9dcnZiMxr087lo3kqe', NULL, NULL, '0444583122', 'Melbourne, Victoria', '2025-03-14 17:00:51', '2025-03-14 17:36:39', 1, NULL, '2025-03-13 23:57:42', '2025-03-14 06:36:39'),
(4, 2, 0, 'Menura', 'vishmiththejan@gmail.com', 'vishmiththejan@gmail.com', '$2y$10$IGCZBNkPmn4t5eXKZJU.E.LFdcuYAO8OjGQRjN5q./o2euo2F6TSq', NULL, NULL, NULL, NULL, '2025-03-24 12:28:40', '2025-03-24 12:38:45', 1, NULL, '2025-03-14 00:01:29', '2025-03-24 01:38:45'),
(5, 2, 0, 'Goncalo Silva', 'goncalohgs@gmail.com', 'goncalohgs@gmail.com', '$2y$10$QV7b1YH8v47Q.8Je5VdCEORhYawQQgyThe58zac1LeSriBBntFH.y', NULL, NULL, NULL, NULL, '2025-03-18 15:26:25', '2025-03-18 15:28:21', 1, NULL, '2025-03-14 00:04:02', '2025-03-18 04:28:21'),
(6, 2, 0, 'Harneesh', 'harneesh.makkar@gmail.com', 'harneesh.makkar@gmail.com', '$2y$10$/RlrpG0Wet6Y99NIz44nq.iV1LIRuU6kZMQ3ooOCXRGPQdIHRQbJ6', NULL, NULL, NULL, NULL, '2025-03-18 11:38:58', '2025-03-18 15:19:33', 1, 'ljJojwH18iBFVjZznKLhRki2HU6LRb2RBvYS630vJWbhGrxSf6ZqYVq1GPTD', '2025-03-14 00:05:20', '2025-03-18 04:19:33'),
(7, 2, 0, 'Maninder', 'maninderkaur408@gmail.com', 'maninderkaur408@gmail.com', '$2y$10$kHdojNsmnWLZT8XsRWzAke0qYlOwbrFhoZSMdFI6OIyhzjsD/9d9.', NULL, NULL, NULL, NULL, '2025-03-21 09:58:21', '2025-03-21 13:12:41', 1, NULL, '2025-03-14 00:07:32', '2025-03-21 02:12:41'),
(8, 2, 0, 'Sebastian', 'Sebastian', 'sebastianjose0334@gmail.com', '$2y$10$4CTJOkkRnFit0DLzCoQOT.FYhXHkTngMKGFzq3ZllX7iRKA7haJUO', NULL, NULL, NULL, NULL, '2025-03-18 15:19:47', '2025-03-18 15:32:49', 1, NULL, '2025-03-14 02:25:27', '2025-03-18 04:32:49'),
(10, 2, 0, 'Long Nguyen', 'Long', 'philong170101@gmail.com', '$2y$10$4CTJOkkRnFit0DLzCoQOT.FYhXHkTngMKGFzq3ZllX7iRKA7haJUO', NULL, NULL, NULL, NULL, '2025-03-16 01:33:19', '2025-03-26 01:49:02', 1, 'pGiw6R5kMoNk7WPJoUxOFA1QM7PxFCAZttxqYTX2ip7vB3Yzv7AgLZNgMyPv', '2025-03-14 02:25:27', '2025-03-25 14:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(4, 'bi bi-server', 1, '2024-09-23 08:48:11', '2024-09-23 08:48:11'),
(6, 'bi bi-caret-right-square', 1, '2024-09-23 08:49:12', '2024-09-23 08:49:12'),
(7, 'bi bi-exclamation-octagon', 1, '2024-09-23 08:50:06', '2024-09-24 02:04:39'),
(12, 'bi bi-arrow-up-circle', 1, '2024-12-29 07:35:53', '2024-12-29 07:35:53'),
(13, 'bi bi-calendar-minus', 1, '2024-12-29 09:28:24', '2024-12-29 09:28:24'),
(14, 'bi bi-gender-trans', 1, '2024-12-29 10:12:47', '2024-12-29 10:12:47'),
(15, 'bi bi-cloud-fog2', 1, '2024-12-29 10:13:11', '2024-12-29 10:13:11'),
(16, 'bi bi-box-seam', 1, '2024-12-30 01:46:57', '2024-12-30 01:46:57'),
(17, 'bi bi-file-earmark-medical', 1, '2025-01-02 02:01:46', '2025-01-02 02:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `amenity_details`
--

CREATE TABLE `amenity_details` (
  `id` bigint UNSIGNED NOT NULL,
  `amenity_id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_details`
--

INSERT INTO `amenity_details` (`id`, `amenity_id`, `language_id`, `title`, `created_at`, `updated_at`) VALUES
(3, 4, 1, 'Hotel Room', '2024-09-23 08:48:11', '2024-12-29 10:12:04'),
(5, 6, 1, 'Entertainment', '2024-09-23 08:49:12', '2024-09-23 08:49:12'),
(6, 7, 1, 'Swimming Pool', '2024-09-23 08:50:06', '2024-09-23 08:50:06'),
(13, 12, 1, 'Pet', '2024-12-29 07:35:53', '2024-12-29 10:12:18'),
(14, 13, 1, 'Beauty', '2024-12-29 09:28:24', '2024-12-29 09:28:24'),
(15, 14, 1, 'Travel', '2024-12-29 10:12:47', '2024-12-29 10:12:47'),
(16, 15, 1, 'Food', '2024-12-29 10:13:11', '2024-12-29 10:13:11'),
(17, 16, 1, 'Electrictronic', '2024-12-30 01:46:57', '2024-12-30 01:46:57'),
(18, 17, 1, 'Medical', '2025-01-02 02:01:46', '2025-01-02 02:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint UNSIGNED NOT NULL,
  `listing_owner_id` bigint UNSIGNED DEFAULT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `visitor_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os_platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basic_controls`
--

CREATE TABLE `basic_controls` (
  `id` bigint UNSIGNED NOT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left' COMMENT 'left, right',
  `has_space_between_currency_and_amount` tinyint(1) NOT NULL DEFAULT '0',
  `is_force_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `is_google_map` tinyint NOT NULL DEFAULT '0',
  `google_map_app_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_maintenance_mode` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` int DEFAULT NULL,
  `strong_password` tinyint(1) NOT NULL DEFAULT '0',
  `registration` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 => disable, 1 => enable',
  `fraction_number` int DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_email_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_description` text COLLATE utf8mb4_unicode_ci,
  `push_notification` tinyint(1) NOT NULL DEFAULT '0',
  `in_app_notification` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 => inactive, 1 => active',
  `email_notification` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_notification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_verification` tinyint(1) NOT NULL DEFAULT '0',
  `tawk_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_status` tinyint(1) NOT NULL DEFAULT '0',
  `fb_messenger_status` tinyint(1) NOT NULL DEFAULT '0',
  `fb_app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_page_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_recaptcha` tinyint(1) DEFAULT '0' COMMENT '0 =>inactive, 1 => active ',
  `google_recaptcha` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>inactive, 1 =>active',
  `manual_recaptcha_admin_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 => inactive, 1 => active ',
  `manual_recaptcha_login` tinyint(1) DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `manual_recaptcha_register` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `google_recaptcha_admin_login` tinyint(1) DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `google_recaptcha_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `google_recaptcha_register` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `measurement_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analytic_status` tinyint(1) DEFAULT NULL,
  `error_log` tinyint(1) DEFAULT NULL,
  `is_active_cron_notification` tinyint(1) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_driver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon_driver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_logo_driver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_dark_mode_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_dark_mode_logo_driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_layer_access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_layer_auto_update_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_layer_auto_update` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin_market_cap_app_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin_market_cap_auto_update_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_market_cap_auto_update` tinyint(1) DEFAULT NULL,
  `automatic_payout_permission` tinyint(1) NOT NULL DEFAULT '0',
  `date_time_format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_approval` tinyint NOT NULL DEFAULT '0',
  `cookie_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_sub_title` text COLLATE utf8mb4_unicode_ci,
  `cookie_description` text COLLATE utf8mb4_unicode_ci,
  `cookie_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_image_driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_status` tinyint NOT NULL DEFAULT '1' COMMENT '0 => Inactive, 1 => Active	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_controls`
--

INSERT INTO `basic_controls` (`id`, `theme`, `site_title`, `primary_color`, `secondary_color`, `time_zone`, `base_currency`, `currency_symbol`, `admin_prefix`, `is_currency_position`, `has_space_between_currency_and_amount`, `is_force_ssl`, `is_google_map`, `google_map_app_key`, `google_map_id`, `is_maintenance_mode`, `paginate`, `strong_password`, `registration`, `fraction_number`, `sender_email`, `sender_email_name`, `email_description`, `push_notification`, `in_app_notification`, `email_notification`, `email_verification`, `sms_notification`, `sms_verification`, `tawk_id`, `tawk_status`, `fb_messenger_status`, `fb_app_id`, `fb_page_id`, `manual_recaptcha`, `google_recaptcha`, `manual_recaptcha_admin_login`, `manual_recaptcha_login`, `manual_recaptcha_register`, `google_recaptcha_admin_login`, `google_recaptcha_login`, `google_recaptcha_register`, `measurement_id`, `analytic_status`, `error_log`, `is_active_cron_notification`, `logo`, `logo_driver`, `favicon`, `favicon_driver`, `admin_logo`, `admin_logo_driver`, `admin_dark_mode_logo`, `admin_dark_mode_logo_driver`, `currency_layer_access_key`, `currency_layer_auto_update_at`, `currency_layer_auto_update`, `coin_market_cap_app_key`, `coin_market_cap_auto_update_at`, `coin_market_cap_auto_update`, `automatic_payout_permission`, `date_time_format`, `listing_approval`, `cookie_title`, `cookie_sub_title`, `cookie_description`, `cookie_image`, `cookie_image_driver`, `cookie_status`, `created_at`, `updated_at`) VALUES
(1, 'directory', 'Business Local Directory', '#fdd21f', '#fdd21e', 'Australia/Melbourne', 'AUD', '$', 'admin', 'left', 0, 1, 0, '', '', 0, 10, 1, 1, 2, 'support@example.com', 'Bug Admin', '<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n<meta name=\"viewport\" content=\"width=device-width\">\r\n<style type=\"text/css\">\r\n    @media only screen and (min-width: 620px) {\r\n        * [lang=x-wrapper] h1 {\r\n        }\r\n\r\n        * [lang=x-wrapper] h1 {\r\n            font-size: 26px !important;\r\n            line-height: 34px !important\r\n        }\r\n\r\n        * [lang=x-wrapper] h2 {\r\n        }\r\n\r\n        * [lang=x-wrapper] h2 {\r\n            font-size: 20px !important;\r\n            line-height: 28px !important\r\n        }\r\n\r\n        * [lang=x-wrapper] h3 {\r\n        }\r\n\r\n        * [lang=x-layout__inner] p,\r\n        * [lang=x-layout__inner] ol,\r\n        * [lang=x-layout__inner] ul {\r\n        }\r\n\r\n        * div [lang=x-size-8] {\r\n            font-size: 8px !important;\r\n            line-height: 14px !important\r\n        }\r\n\r\n        * div [lang=x-size-9] {\r\n            font-size: 9px !important;\r\n            line-height: 16px !important\r\n        }\r\n\r\n        * div [lang=x-size-10] {\r\n            font-size: 10px !important;\r\n            line-height: 18px !important\r\n        }\r\n\r\n        * div [lang=x-size-11] {\r\n            font-size: 11px !important;\r\n            line-height: 19px !important\r\n        }\r\n\r\n        * div [lang=x-size-12] {\r\n            font-size: 12px !important;\r\n            line-height: 19px !important\r\n        }\r\n\r\n        * div [lang=x-size-13] {\r\n            font-size: 13px !important;\r\n            line-height: 21px !important\r\n        }\r\n\r\n        * div [lang=x-size-14] {\r\n            font-size: 14px !important;\r\n            line-height: 21px !important\r\n        }\r\n\r\n        * div [lang=x-size-15] {\r\n            font-size: 15px !important;\r\n            line-height: 23px !important\r\n        }\r\n\r\n        * div [lang=x-size-16] {\r\n            font-size: 16px !important;\r\n            line-height: 24px !important\r\n        }\r\n\r\n        * div [lang=x-size-17] {\r\n            font-size: 17px !important;\r\n            line-height: 26px !important\r\n        }\r\n\r\n        * div [lang=x-size-18] {\r\n            font-size: 18px !important;\r\n            line-height: 26px !important\r\n        }\r\n\r\n        * div [lang=x-size-18] {\r\n            font-size: 18px !important;\r\n            line-height: 26px !important\r\n        }\r\n\r\n        * div [lang=x-size-20] {\r\n            font-size: 20px !important;\r\n            line-height: 28px !important\r\n        }\r\n\r\n        * div [lang=x-size-22] {\r\n            font-size: 22px !important;\r\n            line-height: 31px !important\r\n        }\r\n\r\n        * div [lang=x-size-24] {\r\n            font-size: 24px !important;\r\n            line-height: 32px !important\r\n        }\r\n\r\n        * div [lang=x-size-26] {\r\n            font-size: 26px !important;\r\n            line-height: 34px !important\r\n        }\r\n\r\n        * div [lang=x-size-28] {\r\n            font-size: 28px !important;\r\n            line-height: 36px !important\r\n        }\r\n\r\n        * div [lang=x-size-30] {\r\n            font-size: 30px !important;\r\n            line-height: 38px !important\r\n        }\r\n\r\n        * div [lang=x-size-32] {\r\n            font-size: 32px !important;\r\n            line-height: 40px !important\r\n        }\r\n\r\n        * div [lang=x-size-34] {\r\n            font-size: 34px !important;\r\n            line-height: 43px !important\r\n        }\r\n\r\n        * div [lang=x-size-36] {\r\n            font-size: 36px !important;\r\n            line-height: 43px !important\r\n        }\r\n\r\n        * div [lang=x-size-40] {\r\n            font-size: 40px !important;\r\n            line-height: 47px !important\r\n        }\r\n\r\n        * div [lang=x-size-44] {\r\n            font-size: 44px !important;\r\n            line-height: 50px !important\r\n        }\r\n\r\n        * div [lang=x-size-48] {\r\n            font-size: 48px !important;\r\n            line-height: 54px !important\r\n        }\r\n\r\n        * div [lang=x-size-56] {\r\n            font-size: 56px !important;\r\n            line-height: 60px !important\r\n        }\r\n\r\n        * div [lang=x-size-64] {\r\n            font-size: 64px !important;\r\n            line-height: 63px !important\r\n        }\r\n    }\r\n</style>\r\n<style type=\"text/css\">\r\n    body {\r\n        margin: 0;\r\n        padding: 0;\r\n    }\r\n\r\n    table {\r\n        border-collapse: collapse;\r\n        table-layout: fixed;\r\n    }\r\n\r\n    * {\r\n        line-height: inherit;\r\n    }\r\n\r\n    [x-apple-data-detectors],\r\n    [href^=\"tel\"],\r\n    [href^=\"sms\"] {\r\n        color: inherit !important;\r\n        text-decoration: none !important;\r\n    }\r\n\r\n    .wrapper .footer__share-button a:hover,\r\n    .wrapper .footer__share-button a:focus {\r\n        color: #ffffff !important;\r\n    }\r\n\r\n    .btn a:hover,\r\n    .btn a:focus,\r\n    .footer__share-button a:hover,\r\n    .footer__share-button a:focus,\r\n    .email-footer__links a:hover,\r\n    .email-footer__links a:focus {\r\n        opacity: 0.8;\r\n    }\r\n\r\n    .preheader,\r\n    .header,\r\n    .layout,\r\n    .column {\r\n        transition: width 0.25s ease-in-out, max-width 0.25s ease-in-out;\r\n    }\r\n\r\n    .layout,\r\n    .header {\r\n        max-width: 400px !important;\r\n        -fallback-width: 95% !important;\r\n        width: calc(100% - 20px) !important;\r\n    }\r\n\r\n    div.preheader {\r\n        max-width: 360px !important;\r\n        -fallback-width: 90% !important;\r\n        width: calc(100% - 60px) !important;\r\n    }\r\n\r\n    .snippet,\r\n    .webversion {\r\n        Float: none !important;\r\n    }\r\n\r\n    .column {\r\n        max-width: 400px !important;\r\n        width: 100% !important;\r\n    }\r\n\r\n    .fixed-width.has-border {\r\n        max-width: 402px !important;\r\n    }\r\n\r\n    .fixed-width.has-border .layout__inner {\r\n        box-sizing: border-box;\r\n    }\r\n\r\n    .snippet,\r\n    .webversion {\r\n        width: 50% !important;\r\n    }\r\n\r\n    .ie .btn {\r\n        width: 100%;\r\n    }\r\n\r\n    .ie .column,\r\n    [owa] .column,\r\n    .ie .gutter,\r\n    [owa] .gutter {\r\n        display: table-cell;\r\n        float: none !important;\r\n        vertical-align: top;\r\n    }\r\n\r\n    .ie div.preheader,\r\n    [owa] div.preheader,\r\n    .ie .email-footer,\r\n    [owa] .email-footer {\r\n        max-width: 560px !important;\r\n        width: 560px !important;\r\n    }\r\n\r\n    .ie .snippet,\r\n    [owa] .snippet,\r\n    .ie .webversion,\r\n    [owa] .webversion {\r\n        width: 280px !important;\r\n    }\r\n\r\n    .ie .header,\r\n    [owa] .header,\r\n    .ie .layout,\r\n    [owa] .layout,\r\n    .ie .one-col .column,\r\n    [owa] .one-col .column {\r\n        max-width: 600px !important;\r\n        width: 600px !important;\r\n    }\r\n\r\n    .ie .fixed-width.has-border,\r\n    [owa] .fixed-width.has-border,\r\n    .ie .has-gutter.has-border,\r\n    [owa] .has-gutter.has-border {\r\n        max-width: 602px !important;\r\n        width: 602px !important;\r\n    }\r\n\r\n    .ie .two-col .column,\r\n    [owa] .two-col .column {\r\n        width: 300px !important;\r\n    }\r\n\r\n    .ie .three-col .column,\r\n    [owa] .three-col .column,\r\n    .ie .narrow,\r\n    [owa] .narrow {\r\n        width: 200px !important;\r\n    }\r\n\r\n    .ie .wide,\r\n    [owa] .wide {\r\n        width: 400px !important;\r\n    }\r\n\r\n    .ie .two-col.has-gutter .column,\r\n    [owa] .two-col.x_has-gutter .column {\r\n        width: 290px !important;\r\n    }\r\n\r\n    .ie .three-col.has-gutter .column,\r\n    [owa] .three-col.x_has-gutter .column,\r\n    .ie .has-gutter .narrow,\r\n    [owa] .has-gutter .narrow {\r\n        width: 188px !important;\r\n    }\r\n\r\n    .ie .has-gutter .wide,\r\n    [owa] .has-gutter .wide {\r\n        width: 394px !important;\r\n    }\r\n\r\n    .ie .two-col.has-gutter.has-border .column,\r\n    [owa] .two-col.x_has-gutter.x_has-border .column {\r\n        width: 292px !important;\r\n    }\r\n\r\n    .ie .three-col.has-gutter.has-border .column,\r\n    [owa] .three-col.x_has-gutter.x_has-border .column,\r\n    .ie .has-gutter.has-border .narrow,\r\n    [owa] .has-gutter.x_has-border .narrow {\r\n        width: 190px !important;\r\n    }\r\n\r\n    .ie .has-gutter.has-border .wide,\r\n    [owa] .has-gutter.x_has-border .wide {\r\n        width: 396px !important;\r\n    }\r\n\r\n    .ie .fixed-width .layout__inner {\r\n        border-left: 0 none white !important;\r\n        border-right: 0 none white !important;\r\n    }\r\n\r\n    .ie .layout__edges {\r\n        display: none;\r\n    }\r\n\r\n    .mso .layout__edges {\r\n        font-size: 0;\r\n    }\r\n\r\n    .layout-fixed-width,\r\n    .mso .layout-full-width {\r\n        background-color: #ffffff;\r\n    }\r\n\r\n    @media only screen and (min-width: 620px) {\r\n\r\n        .column,\r\n        .gutter {\r\n            display: table-cell;\r\n            Float: none !important;\r\n            vertical-align: top;\r\n        }\r\n\r\n        div.preheader,\r\n        .email-footer {\r\n            max-width: 560px !important;\r\n            width: 560px !important;\r\n        }\r\n\r\n        .snippet,\r\n        .webversion {\r\n            width: 280px !important;\r\n        }\r\n\r\n        .header,\r\n        .layout,\r\n        .one-col .column {\r\n            max-width: 600px !important;\r\n            width: 600px !important;\r\n        }\r\n\r\n        .fixed-width.has-border,\r\n        .fixed-width.ecxhas-border,\r\n        .has-gutter.has-border,\r\n        .has-gutter.ecxhas-border {\r\n            max-width: 602px !important;\r\n            width: 602px !important;\r\n        }\r\n\r\n        .two-col .column {\r\n            width: 300px !important;\r\n        }\r\n\r\n        .three-col .column,\r\n        .column.narrow {\r\n            width: 200px !important;\r\n        }\r\n\r\n        .column.wide {\r\n            width: 400px !important;\r\n        }\r\n\r\n        .two-col.has-gutter .column,\r\n        .two-col.ecxhas-gutter .column {\r\n            width: 290px !important;\r\n        }\r\n\r\n        .three-col.has-gutter .column,\r\n        .three-col.ecxhas-gutter .column,\r\n        .has-gutter .narrow {\r\n            width: 188px !important;\r\n        }\r\n\r\n        .has-gutter .wide {\r\n            width: 394px !important;\r\n        }\r\n\r\n        .two-col.has-gutter.has-border .column,\r\n        .two-col.ecxhas-gutter.ecxhas-border .column {\r\n            width: 292px !important;\r\n        }\r\n\r\n        .three-col.has-gutter.has-border .column,\r\n        .three-col.ecxhas-gutter.ecxhas-border .column,\r\n        .has-gutter.has-border .narrow,\r\n        .has-gutter.ecxhas-border .narrow {\r\n            width: 190px !important;\r\n        }\r\n\r\n        .has-gutter.has-border .wide,\r\n        .has-gutter.ecxhas-border .wide {\r\n            width: 396px !important;\r\n        }\r\n    }\r\n\r\n    @media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min--moz-device-pixel-ratio: 2), only screen and (-o-min-device-pixel-ratio: 2/1), only screen and (min-device-pixel-ratio: 2), only screen and (min-resolution: 192dpi), only screen and (min-resolution: 2dppx) {\r\n        .fblike {\r\n            background-image: url(https://i3.createsend1.com/static/eb/customise/13-the-blueprint-3/images/fblike@2x.png) !important;\r\n        }\r\n\r\n        .tweet {\r\n            background-image: url(https://i4.createsend1.com/static/eb/customise/13-the-blueprint-3/images/tweet@2x.png) !important;\r\n        }\r\n\r\n        .linkedinshare {\r\n            background-image: url(https://i6.createsend1.com/static/eb/customise/13-the-blueprint-3/images/lishare@2x.png) !important;\r\n        }\r\n\r\n        .forwardtoafriend {\r\n            background-image: url(https://i5.createsend1.com/static/eb/customise/13-the-blueprint-3/images/forward@2x.png) !important;\r\n        }\r\n    }\r\n\r\n    @media (max-width: 321px) {\r\n        .fixed-width.has-border .layout__inner {\r\n            border-width: 1px 0 !important;\r\n        }\r\n\r\n        .layout,\r\n        .column {\r\n            min-width: 320px !important;\r\n            width: 320px !important;\r\n        }\r\n\r\n        .border {\r\n            display: none;\r\n        }\r\n    }\r\n\r\n    .mso div {\r\n        border: 0 none white !important;\r\n    }\r\n\r\n    .mso .w560 .divider {\r\n        margin-left: 260px !important;\r\n        margin-right: 260px !important;\r\n    }\r\n\r\n    .mso .w360 .divider {\r\n        margin-left: 160px !important;\r\n        margin-right: 160px !important;\r\n    }\r\n\r\n    .mso .w260 .divider {\r\n        margin-left: 110px !important;\r\n        margin-right: 110px !important;\r\n    }\r\n\r\n    .mso .w160 .divider {\r\n        margin-left: 60px !important;\r\n        margin-right: 60px !important;\r\n    }\r\n\r\n    .mso .w354 .divider {\r\n        margin-left: 157px !important;\r\n        margin-right: 157px !important;\r\n    }\r\n\r\n    .mso .w250 .divider {\r\n        margin-left: 105px !important;\r\n        margin-right: 105px !important;\r\n    }\r\n\r\n    .mso .w148 .divider {\r\n        margin-left: 54px !important;\r\n        margin-right: 54px !important;\r\n    }\r\n\r\n    .mso .font-avenir,\r\n    .mso .font-cabin,\r\n    .mso .font-open-sans,\r\n    .mso .font-ubuntu {\r\n        font-family: sans-serif !important;\r\n    }\r\n\r\n    .mso .font-bitter,\r\n    .mso .font-merriweather,\r\n    .mso .font-pt-serif {\r\n        font-family: Georgia, serif !important;\r\n    }\r\n\r\n    .mso .font-lato,\r\n    .mso .font-roboto {\r\n        font-family: Tahoma, sans-serif !important;\r\n    }\r\n\r\n    .mso .font-pt-sans {\r\n        font-family: \"Trebuchet MS\", sans-serif !important;\r\n    }\r\n\r\n    .mso .footer__share-button p {\r\n        margin: 0;\r\n    }\r\n\r\n    @media only screen and (min-width: 620px) {\r\n        .wrapper .size-8 {\r\n            font-size: 8px !important;\r\n            line-height: 14px !important;\r\n        }\r\n\r\n        .wrapper .size-9 {\r\n            font-size: 9px !important;\r\n            line-height: 16px !important;\r\n        }\r\n\r\n        .wrapper .size-10 {\r\n            font-size: 10px !important;\r\n            line-height: 18px !important;\r\n        }\r\n\r\n        .wrapper .size-11 {\r\n            font-size: 11px !important;\r\n            line-height: 19px !important;\r\n        }\r\n\r\n        .wrapper .size-12 {\r\n            font-size: 12px !important;\r\n            line-height: 19px !important;\r\n        }\r\n\r\n        .wrapper .size-13 {\r\n            font-size: 13px !important;\r\n            line-height: 21px !important;\r\n        }\r\n\r\n        .wrapper .size-14 {\r\n            font-size: 14px !important;\r\n            line-height: 21px !important;\r\n        }\r\n\r\n        .wrapper .size-15 {\r\n            font-size: 15px !important;\r\n            line-height: 23px !important;\r\n        }\r\n\r\n        .wrapper .size-16 {\r\n            font-size: 16px !important;\r\n            line-height: 24px !important;\r\n        }\r\n\r\n        .wrapper .size-17 {\r\n            font-size: 17px !important;\r\n            line-height: 26px !important;\r\n        }\r\n\r\n        .wrapper .size-18 {\r\n            font-size: 18px !important;\r\n            line-height: 26px !important;\r\n        }\r\n\r\n        .wrapper .size-20 {\r\n            font-size: 20px !important;\r\n            line-height: 28px !important;\r\n        }\r\n\r\n        .wrapper .size-22 {\r\n            font-size: 22px !important;\r\n            line-height: 31px !important;\r\n        }\r\n\r\n        .wrapper .size-24 {\r\n            font-size: 24px !important;\r\n            line-height: 32px !important;\r\n        }\r\n\r\n        .wrapper .size-26 {\r\n            font-size: 26px !important;\r\n            line-height: 34px !important;\r\n        }\r\n\r\n        .wrapper .size-28 {\r\n            font-size: 28px !important;\r\n            line-height: 36px !important;\r\n        }\r\n\r\n        .wrapper .size-30 {\r\n            font-size: 30px !important;\r\n            line-height: 38px !important;\r\n        }\r\n\r\n        .wrapper .size-32 {\r\n            font-size: 32px !important;\r\n            line-height: 40px !important;\r\n        }\r\n\r\n        .wrapper .size-34 {\r\n            font-size: 34px !important;\r\n            line-height: 43px !important;\r\n        }\r\n\r\n        .wrapper .size-36 {\r\n            font-size: 36px !important;\r\n            line-height: 43px !important;\r\n        }\r\n\r\n        .wrapper .size-40 {\r\n            font-size: 40px !important;\r\n            line-height: 47px !important;\r\n        }\r\n\r\n        .wrapper .size-44 {\r\n            font-size: 44px !important;\r\n            line-height: 50px !important;\r\n        }\r\n\r\n        .wrapper .size-48 {\r\n            font-size: 48px !important;\r\n            line-height: 54px !important;\r\n        }\r\n\r\n        .wrapper .size-56 {\r\n            font-size: 56px !important;\r\n            line-height: 60px !important;\r\n        }\r\n\r\n        .wrapper .size-64 {\r\n            font-size: 64px !important;\r\n            line-height: 63px !important;\r\n        }\r\n    }\r\n\r\n    .mso .size-8,\r\n    .ie .size-8 {\r\n        font-size: 8px !important;\r\n        line-height: 14px !important;\r\n    }\r\n\r\n    .mso .size-9,\r\n    .ie .size-9 {\r\n        font-size: 9px !important;\r\n        line-height: 16px !important;\r\n    }\r\n\r\n    .mso .size-10,\r\n    .ie .size-10 {\r\n        font-size: 10px !important;\r\n        line-height: 18px !important;\r\n    }\r\n\r\n    .mso .size-11,\r\n    .ie .size-11 {\r\n        font-size: 11px !important;\r\n        line-height: 19px !important;\r\n    }\r\n\r\n    .mso .size-12,\r\n    .ie .size-12 {\r\n        font-size: 12px !important;\r\n        line-height: 19px !important;\r\n    }\r\n\r\n    .mso .size-13,\r\n    .ie .size-13 {\r\n        font-size: 13px !important;\r\n        line-height: 21px !important;\r\n    }\r\n\r\n    .mso .size-14,\r\n    .ie .size-14 {\r\n        font-size: 14px !important;\r\n        line-height: 21px !important;\r\n    }\r\n\r\n    .mso .size-15,\r\n    .ie .size-15 {\r\n        font-size: 15px !important;\r\n        line-height: 23px !important;\r\n    }\r\n\r\n    .mso .size-16,\r\n    .ie .size-16 {\r\n        font-size: 16px !important;\r\n        line-height: 24px !important;\r\n    }\r\n\r\n    .mso .size-17,\r\n    .ie .size-17 {\r\n        font-size: 17px !important;\r\n        line-height: 26px !important;\r\n    }\r\n\r\n    .mso .size-18,\r\n    .ie .size-18 {\r\n        font-size: 18px !important;\r\n        line-height: 26px !important;\r\n    }\r\n\r\n    .mso .size-20,\r\n    .ie .size-20 {\r\n        font-size: 20px !important;\r\n        line-height: 28px !important;\r\n    }\r\n\r\n    .mso .size-22,\r\n    .ie .size-22 {\r\n        font-size: 22px !important;\r\n        line-height: 31px !important;\r\n    }\r\n\r\n    .mso .size-24,\r\n    .ie .size-24 {\r\n        font-size: 24px !important;\r\n        line-height: 32px !important;\r\n    }\r\n\r\n    .mso .size-26,\r\n    .ie .size-26 {\r\n        font-size: 26px !important;\r\n        line-height: 34px !important;\r\n    }\r\n\r\n    .mso .size-28,\r\n    .ie .size-28 {\r\n        font-size: 28px !important;\r\n        line-height: 36px !important;\r\n    }\r\n\r\n    .mso .size-30,\r\n    .ie .size-30 {\r\n        font-size: 30px !important;\r\n        line-height: 38px !important;\r\n    }\r\n\r\n    .mso .size-32,\r\n    .ie .size-32 {\r\n        font-size: 32px !important;\r\n        line-height: 40px !important;\r\n    }\r\n\r\n    .mso .size-34,\r\n    .ie .size-34 {\r\n        font-size: 34px !important;\r\n        line-height: 43px !important;\r\n    }\r\n\r\n    .mso .size-36,\r\n    .ie .size-36 {\r\n        font-size: 36px !important;\r\n        line-height: 43px !important;\r\n    }\r\n\r\n    .mso .size-40,\r\n    .ie .size-40 {\r\n        font-size: 40px !important;\r\n        line-height: 47px !important;\r\n    }\r\n\r\n    .mso .size-44,\r\n    .ie .size-44 {\r\n        font-size: 44px !important;\r\n        line-height: 50px !important;\r\n    }\r\n\r\n    .mso .size-48,\r\n    .ie .size-48 {\r\n        font-size: 48px !important;\r\n        line-height: 54px !important;\r\n    }\r\n\r\n    .mso .size-56,\r\n    .ie .size-56 {\r\n        font-size: 56px !important;\r\n        line-height: 60px !important;\r\n    }\r\n\r\n    .mso .size-64,\r\n    .ie .size-64 {\r\n        font-size: 64px !important;\r\n        line-height: 63px !important;\r\n    }\r\n\r\n    .footer__share-button p {\r\n        margin: 0;\r\n    }\r\n</style>\r\n\r\n<title></title>\r\n<!--[if !mso]><!-->\r\n<style type=\"text/css\">\r\n    @import url(https://fonts.googleapis.com/css?family=Bitter:400,700,400italic|Cabin:400,700,400italic,700italic|Open+Sans:400italic,700italic,700,400);\r\n</style>\r\n<link href=\"https://fonts.googleapis.com/css?family=Bitter:400,700,400italic|Cabin:400,700,400italic,700italic|Open+Sans:400italic,700italic,700,400\" rel=\"stylesheet\" type=\"text/css\">\r\n<!--<![endif]-->\r\n<style type=\"text/css\">\r\n    body {\r\n        background-color: #f5f7fa\r\n    }\r\n\r\n    .mso h1 {\r\n    }\r\n\r\n    .mso h1 {\r\n        font-family: sans-serif !important\r\n    }\r\n\r\n    .mso h2 {\r\n    }\r\n\r\n    .mso h3 {\r\n    }\r\n\r\n    .mso .column,\r\n    .mso .column__background td {\r\n    }\r\n\r\n    .mso .column,\r\n    .mso .column__background td {\r\n        font-family: sans-serif !important\r\n    }\r\n\r\n    .mso .btn a {\r\n    }\r\n\r\n    .mso .btn a {\r\n        font-family: sans-serif !important\r\n    }\r\n\r\n    .mso .webversion,\r\n    .mso .snippet,\r\n    .mso .layout-email-footer td,\r\n    .mso .footer__share-button p {\r\n    }\r\n\r\n    .mso .webversion,\r\n    .mso .snippet,\r\n    .mso .layout-email-footer td,\r\n    .mso .footer__share-button p {\r\n        font-family: sans-serif !important\r\n    }\r\n\r\n    .mso .logo {\r\n    }\r\n\r\n    .mso .logo {\r\n        font-family: Tahoma, sans-serif !important\r\n    }\r\n\r\n    .logo a:hover,\r\n    .logo a:focus {\r\n        color: #859bb1 !important\r\n    }\r\n\r\n    .mso .layout-has-border {\r\n        border-top: 1px solid #b1c1d8;\r\n        border-bottom: 1px solid #b1c1d8\r\n    }\r\n\r\n    .mso .layout-has-bottom-border {\r\n        border-bottom: 1px solid #b1c1d8\r\n    }\r\n\r\n    .mso .border,\r\n    .ie .border {\r\n        background-color: #b1c1d8\r\n    }\r\n\r\n    @media only screen and (min-width: 620px) {\r\n        .wrapper h1 {\r\n        }\r\n\r\n        .wrapper h1 {\r\n            font-size: 26px !important;\r\n            line-height: 34px !important\r\n        }\r\n\r\n        .wrapper h2 {\r\n        }\r\n\r\n        .wrapper h2 {\r\n            font-size: 20px !important;\r\n            line-height: 28px !important\r\n        }\r\n\r\n        .wrapper h3 {\r\n        }\r\n\r\n        .column p,\r\n        .column ol,\r\n        .column ul {\r\n        }\r\n    }\r\n\r\n    .mso h1,\r\n    .ie h1 {\r\n    }\r\n\r\n    .mso h1,\r\n    .ie h1 {\r\n        font-size: 26px !important;\r\n        line-height: 34px !important\r\n    }\r\n\r\n    .mso h2,\r\n    .ie h2 {\r\n    }\r\n\r\n    .mso h2,\r\n    .ie h2 {\r\n        font-size: 20px !important;\r\n        line-height: 28px !important\r\n    }\r\n\r\n    .mso h3,\r\n    .ie h3 {\r\n    }\r\n\r\n    .mso .layout__inner p,\r\n    .ie .layout__inner p,\r\n    .mso .layout__inner ol,\r\n    .ie .layout__inner ol,\r\n    .mso .layout__inner ul,\r\n    .ie .layout__inner ul {\r\n    }\r\n</style>\r\n<meta name=\"robots\" content=\"noindex,nofollow\">\r\n\r\n<meta property=\"og:title\" content=\"Just One More Step\">\r\n\r\n<link href=\"https://css.createsend1.com/css/social.min.css?h=0ED47CE120160920\" media=\"screen,projection\" rel=\"stylesheet\" type=\"text/css\">\r\n\r\n\r\n<div class=\"wrapper\" style=\"min-width: 320px;background-color: #f5f7fa;\" lang=\"x-wrapper\">\r\n    <div class=\"preheader\" style=\"margin: 0 auto;max-width: 560px;min-width: 280px; width: 280px;\">\r\n        <div style=\"border-collapse: collapse;display: table;width: 100%;\">\r\n            <div class=\"snippet\" style=\"display: table-cell;Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 140px; width: 140px;padding: 10px 0 5px 0;color: #b9b9b9;\">\r\n            </div>\r\n            <div class=\"webversion\" style=\"display: table-cell;Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 139px; width: 139px;padding: 10px 0 5px 0;text-align: right;color: #b9b9b9;\">\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"layout one-col fixed-width\" style=\"margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;\">\r\n            <div class=\"layout__inner\" style=\"border-collapse: collapse;display: table;width: 100%;background-color: #c4e5dc;\" lang=\"x-layout__inner\">\r\n                <div class=\"column\" style=\"text-align: left;color: #60666d;font-size: 14px;line-height: 21px;max-width:600px;min-width:320px;\">\r\n                    <div style=\"margin-left: 20px;margin-right: 20px;margin-top: 24px;margin-bottom: 24px;\">\r\n                        <h1 style=\"margin-top: 0;margin-bottom: 0;font-style: normal;font-weight: normal;color: #44a8c7;font-size: 36px;line-height: 43px;font-family: bitter,georgia,serif;text-align: center;\">\r\n                            <img style=\"width: 200px;\" src=\"https://bug-finder.s3.ap-southeast-1.amazonaws.com/assets/logo/header-logo.svg\" data-filename=\"imageedit_76_3542310111.png\"></h1>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"layout one-col fixed-width\" style=\"margin: 0 auto;max-width: 600px;min-width: 320px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;\">\r\n                <div class=\"layout__inner\" style=\"border-collapse: collapse;display: table;width: 100%;background-color: #ffffff;\" lang=\"x-layout__inner\">\r\n                    <div class=\"column\" style=\"text-align: left; background: rgb(237, 241, 235); line-height: 21px; max-width: 600px; min-width: 320px; width: 320px;\">\r\n\r\n                        <div style=\"color: rgb(96, 102, 109); font-size: 14px; margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n                            <div style=\"line-height:10px;font-size:1px\">&nbsp;</div>\r\n                        </div>\r\n\r\n                        <div style=\"margin-left: 20px; margin-right: 20px;\">\r\n\r\n                            <p style=\"color: rgb(96, 102, 109); font-size: 14px; margin-top: 16px; margin-bottom: 0px;\"><strong>Hello [[name]],</strong></p>\r\n                            <p style=\"color: rgb(96, 102, 109); font-size: 14px; margin-top: 20px; margin-bottom: 20px;\"><strong>[[message]]</strong></p>\r\n                            <p style=\"margin-top: 20px; margin-bottom: 20px;\"><strong style=\"color: rgb(96, 102, 109); font-size: 14px;\">Sincerely,<br>Team&nbsp;</strong><font color=\"#60666d\"><b>Bug Finder</b></font></p>\r\n                        </div>\r\n\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"layout__inner\" style=\"border-collapse: collapse;display: table;width: 100%;background-color: #2c3262; margin-bottom: 20px\" lang=\"x-layout__inner\">\r\n                <div class=\"column\" style=\"text-align: left;color: #60666d;font-size: 14px;line-height: 21px;max-width:600px;min-width:320px;\">\r\n                    <div style=\"margin-top: 5px;margin-bottom: 5px;\">\r\n                        <p style=\"margin-top: 0;margin-bottom: 0;font-style: normal;font-weight: normal;color: #ffffff;font-size: 16px;line-height: 35px;font-family: bitter,georgia,serif;text-align: center;\">\r\n                            2024 ©  All Right Reserved</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n\r\n\r\n        <div style=\"border-collapse: collapse;display: table;width: 100%;\">\r\n            <div class=\"snippet\" style=\"display: table-cell;Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 140px; width: 140px;padding: 10px 0 5px 0;color: #b9b9b9;\">\r\n            </div>\r\n            <div class=\"webversion\" style=\"display: table-cell;Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 139px; width: 139px;padding: 10px 0 5px 0;text-align: right;color: #b9b9b9;\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 0, 0, 0, 0, 0, 0, '0', 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 'aaaaaa', 0, 0, 0, 'logo/3VfkCJw6Vc3Qi8vFA6vsQHBsQ7IWFt.webp', 'local', 'logo/JfmmfSBoKoaa0lm7uGZr0JSulhphS3.webp', 'local', 'logo/LNHcPkuzNkZPEle6BHI5NIEvEZx7TS.webp', 'local', 'logo/ZYC8ynCtcEeWXjQV1T4ngxSakf9GJA.webp', 'local', 'c4d1082c39633125a67a2b9dd979f7ce', 'everyMinute', '0', '726ffba5-8523-4071-92d4-1775dbc481c4', 'everyMinute', 1, 0, 'd m y', 1, 'Cookies &amp; Privacy', 'This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our', '<p><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our </span><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our </span><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to ourv</span><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our </span><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our </span><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our </span><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our </span><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our </span><span style=\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\">This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our</span><br></p>', 'cookie/t4ioh7Jztr6DXwU5U3d6iyugMtRkGQ.webp', 'local', 1, '2023-06-13 18:35:41', '2025-03-17 02:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int DEFAULT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_image_driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image_driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image_driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `blog_image`, `blog_image_driver`, `breadcrumb_status`, `breadcrumb_image`, `breadcrumb_image_driver`, `status`, `page_title`, `meta_title`, `meta_keywords`, `meta_description`, `meta_image`, `meta_image_driver`, `created_at`, `updated_at`) VALUES
(5, 7, 'blog/p7pANZBj9IzNga1FZnulo3aL0z2xoO.webp', 'local', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 03:43:37', '2024-10-23 02:33:15'),
(6, 4, 'blog/Dkh4ZAfKnqZgyHbzBx4zBR7rzpKhta.webp', 'local', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 03:45:02', '2024-10-23 02:34:42'),
(7, 4, 'blog/NNmzlzUVaEoy6tQgBmZbAFIdh4Q5dU.webp', 'local', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 03:45:44', '2024-10-23 02:35:27'),
(8, 7, 'blog/JUJQKonFY9nvnh5OdWfh03jP03LEb2.webp', 'local', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 03:47:08', '2024-10-23 02:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'COLLECTIONS', 'collections', '2024-09-26 03:38:16', '2024-09-26 03:38:16'),
(5, 'BEAUTY', 'beauty', '2024-09-26 03:38:23', '2024-09-26 03:38:23'),
(6, 'CULTURE', 'culture', '2024-09-26 03:38:30', '2024-09-26 03:38:30'),
(7, 'CREATIVE', 'creative', '2024-09-26 03:38:35', '2024-09-26 03:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `blog_details`
--

CREATE TABLE `blog_details` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_details`
--

INSERT INTO `blog_details` (`id`, `blog_id`, `language_id`, `title`, `slug`, `author`, `description`, `created_at`, `updated_at`) VALUES
(5, 5, 1, 'The Benefits of Listing Your Business on Multiple Directories', 'the-benefits-of-listing-your-business-on-multiple-directories', 'Admin', '<p>Listing your business on multiple directories offers several valuable benefits. First, it significantly enhances your online visibility, making it easier for potential customers to find you across different platforms. This widespread presence can improve search engine rankings, as search engines favor businesses that are consistently listed and linked across reputable sites. Furthermore, directories often provide backlinks to your website, which boosts your site\'s SEO performance. Being listed on various platforms also helps establish credibility and trust, as customers are more likely to engage with businesses that appear reliable and have consistent, accurate information.</p><p>Additionally, appearing in local search results can increase foot traffic to physical locations or drive more visitors to your website. It\'s a cost-effective marketing strategy that expands your reach, attracts a broader audience, and ultimately contributes to business growth. Regular updates to directory listings ensure your information is accurate, helping maintain a professional image while improving your chances of being found by potential customers.</p>', '2024-09-26 03:43:37', '2024-10-22 05:01:08'),
(6, 6, 1, 'The Pros and Cons of Free and Paid Business Listings', 'the-pros-and-cons-of-free-and-paid-business-listings', 'Admin', '<p>Using free and paid business listings comes with distinct advantages and limitations for business owners. Free listings, first and foremost, provide an excellent way to increase your online presence without any financial investment. They allow you to reach potential customers across multiple platforms and improve your business’s visibility in search engine results. While free listings may help boost your SEO through backlinks, they also ensure a consistent online presence. However, these listings typically come with limitations in terms of features, such as analytics or premium placements, which might limit the overall impact and competitiveness of your business.</p><p>On the other hand, paid business listings offer enhanced visibility and control. By investing in paid options, businesses gain access to premium features like advanced analytics, priority placement, and lead generation tools, giving them a competitive edge. These listings are often displayed at the top of search results, ensuring more exposure to potential customers and a higher level of credibility. However, the cost of maintaining paid listings can be a drawback, especially for smaller businesses or startups with limited budgets. Additionally, while paid listings offer better visibility, the return on investment is not always guaranteed, making it crucial to carefully evaluate which directories align with your business goals for maximum benefit.</p>', '2024-09-26 03:45:02', '2024-10-22 05:01:03'),
(7, 7, 1, 'The Impact of Online Directories on Local Businesses', 'the-impact-of-online-directories-on-local-businesses', 'Admin', '<p>Online directories have a significant impact on local businesses, offering numerous advantages that help drive growth and visibility. First, being listed in local directories enhances a business\'s online presence, making it easier for potential customers in the area to discover them. Local directories, like Google My Business or Yelp, are often among the first results in search engines when users look for specific services or products in their vicinity. This increased visibility helps attract more foot traffic to physical locations and generates valuable leads for businesses.</p><p>In addition to visibility, online directories improve SEO by providing backlinks to the business\'s website, which helps increase search engine rankings. Consistently accurate information across these platforms builds trust with customers, establishing the business as a reliable option. Customer reviews on local directories also contribute to a business\'s reputation, allowing potential customers to make informed decisions based on previous experiences. Moreover, many directories offer tools for businesses to engage with their audience, respond to reviews, and track performance metrics, helping improve customer satisfaction and loyalty.</p>', '2024-09-26 03:45:44', '2024-10-22 05:00:58'),
(8, 8, 1, 'How to Optimize Your Business Listing for Local SEO', 'how-to-optimize-your-business-listing-for-local-seo', 'Admin', '<p>Optimizing your business listing for local SEO is essential for improving visibility and attracting nearby customers. First, ensure that you claim and complete your business profile on platforms like Google My Business, Bing Places, and Yelp. A complete listing includes your business name, address, phone number, website, and hours of operation. Consistency in this information across all directories is vital, as discrepancies can confuse search engines and customers alike.</p><p>Additionally, leverage relevant keywords in your business description and services offered to improve search rankings. Incorporating local keywords—such as your city or neighborhood—can help position your business more favorably in local search results. High-quality images showcasing your products or services also enhance your listing, making it more appealing to potential customers. Encouraging satisfied customers to leave positive reviews not only boosts your reputation but also signals to search engines that your business is credible and trustworthy.</p>', '2024-09-26 03:47:08', '2024-12-11 09:30:39'),
(10, 8, 2, 'Cómo optimizar la ficha de su empresa para el SEO local', 'how-to-optimize-your-business-listing-for-local-seo', 'Administrador', '<p>Optimizar la ficha de su empresa para el SEO local es esencial para mejorar la visibilidad y atraer clientes cercanos. Primero, asegúrese de reclamar y completar su perfil comercial en plataformas como Google My Business, Bing Places y Yelp. Una lista completa incluye el nombre de su empresa, dirección, número de teléfono, sitio web y horario de atención. La coherencia en esta información en todos los directorios es vital, ya que las discrepancias pueden confundir tanto a los motores de búsqueda como a los clientes.</p><p>Además, aproveche las palabras clave relevantes en la descripción de su empresa y los servicios ofrecidos para mejorar la clasificación de búsqueda. La incorporación de palabras clave locales, como su ciudad o vecindario, puede ayudar a posicionar su empresa de manera más favorable en los resultados de búsqueda locales. Las imágenes de alta calidad que muestran sus productos o servicios también mejoran su listado, haciéndolo más atractivo para los clientes potenciales. Alentar a los clientes satisfechos a dejar críticas positivas no sólo mejora su reputación, sino que también indica a los motores de búsqueda que su empresa es creíble y digna de confianza.</p>', '2024-12-22 03:27:30', '2024-12-22 03:29:05'),
(11, 7, 2, 'El impacto de los directorios en línea en las empresas locales', 'the-impact-of-online-directories-on-local-businesses', 'Administrador', '<p>Los directorios en línea tienen un impacto significativo en las empresas locales y ofrecen numerosas ventajas que ayudan a impulsar el crecimiento y la visibilidad. En primer lugar, estar incluido en directorios locales mejora la presencia en línea de una empresa, lo que facilita que los clientes potenciales de la zona los descubran. Los directorios locales, como Google My Business o Yelp, suelen estar entre los primeros resultados en los motores de búsqueda cuando los usuarios buscan servicios o productos específicos en su zona. Esta mayor visibilidad ayuda a atraer más tráfico peatonal a las ubicaciones físicas y genera clientes potenciales valiosos para las empresas.</p><p>Además de la visibilidad, los directorios en línea mejoran el SEO al proporcionar vínculos de retroceso al sitio web de la empresa, lo que ayuda a aumentar la clasificación en los motores de búsqueda. La información consistentemente precisa en estas plataformas genera confianza con los clientes, lo que convierte al negocio en una opción confiable. Las opiniones de los clientes en los directorios locales también contribuyen a la reputación de una empresa, permitiendo a los clientes potenciales tomar decisiones informadas basadas en experiencias previas. Además, muchos directorios ofrecen herramientas para que las empresas interactúen con su audiencia, respondan a reseñas y realicen un seguimiento de las métricas de desempeño, lo que ayuda a mejorar la satisfacción y la lealtad del cliente.</p>', '2024-12-22 03:35:59', '2024-12-22 03:35:59'),
(12, 6, 2, 'Los pros y los contras de los listados de empresas gratuitos y de pago', 'the-pros-and-cons-of-free-and-paid-business-listings', 'Administrador', '<p>El uso de listados de empresas gratuitos y de pago tiene distintas ventajas y limitaciones para los propietarios de empresas. Los listados gratuitos, ante todo, brindan una excelente manera de aumentar su presencia en línea sin ninguna inversión financiera. Le permiten llegar a clientes potenciales a través de múltiples plataformas y mejorar la visibilidad de su empresa en los resultados de los motores de búsqueda. Si bien los listados gratuitos pueden ayudar a impulsar su SEO a través de vínculos de retroceso, también garantizan una presencia en línea constante. Sin embargo, estos listados suelen tener limitaciones en términos de funciones, como análisis o ubicaciones premium, que pueden limitar el impacto general y la competitividad de su negocio.</p><p>Por otro lado, los listados de empresas pagas ofrecen mayor visibilidad y control. Al invertir en opciones pagas, las empresas obtienen acceso a funciones premium como análisis avanzados, colocación de prioridades y herramientas de generación de leads, lo que les brinda una ventaja competitiva. Estos listados suelen aparecer en la parte superior de los resultados de búsqueda, lo que garantiza una mayor exposición a clientes potenciales y un mayor nivel de credibilidad. Sin embargo, el costo de mantener listados pagos puede ser un inconveniente, especialmente para empresas más pequeñas o nuevas con presupuestos limitados. Además, si bien los listados pagos ofrecen una mejor visibilidad, el retorno de la inversión no siempre está garantizado, por lo que es fundamental evaluar cuidadosamente qué directorios se alinean con sus objetivos comerciales para obtener el máximo beneficio.</p>', '2024-12-22 03:36:42', '2024-12-22 03:36:42'),
(13, 5, 2, 'Los beneficios de incluir su empresa en varios directorios', 'the-benefits-of-listing-your-business-on-multiple-directories', 'Administrador', '<p>Incluir su empresa en varios directorios ofrece varios beneficios valiosos. En primer lugar, mejora significativamente su visibilidad en línea, lo que facilita que los clientes potenciales lo encuentren en diferentes plataformas. Esta presencia generalizada puede mejorar la clasificación en los motores de búsqueda, ya que los motores de búsqueda favorecen a las empresas que figuran y enlazan constantemente en sitios de buena reputación. Además, los directorios suelen proporcionar vínculos de retroceso a su sitio web, lo que mejora el rendimiento SEO de su sitio. Estar incluido en varias plataformas también ayuda a establecer credibilidad y confianza, ya que es más probable que los clientes interactúen con empresas que parecen confiables y tienen información consistente y precisa.</p><p>Además, aparecer en los resultados de búsqueda locales puede aumentar el tráfico presencial a ubicaciones físicas o atraer más visitantes a su sitio web. Es una estrategia de marketing rentable que amplía su alcance, atrae a una audiencia más amplia y, en última instancia, contribuye al crecimiento empresarial. Las actualizaciones periódicas de los listados del directorio garantizan que su información sea precisa, lo que ayuda a mantener una imagen profesional y, al mismo tiempo, mejora sus posibilidades de ser encontrado por clientes potenciales.</p>', '2024-12-22 03:37:13', '2024-12-22 03:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `business_hours`
--

CREATE TABLE `business_hours` (
  `id` bigint UNSIGNED NOT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `purchase_package_id` bigint UNSIGNED DEFAULT NULL,
  `working_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `state_id`, `name`, `country_code`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(13, 3, 25, 'Melbourne', 'AU', '37.8136', '144.9631', 1, '2025-03-17 03:30:25', '2025-03-17 03:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `claim_businesses`
--

CREATE TABLE `claim_businesses` (
  `id` bigint UNSIGNED NOT NULL,
  `claim_by_id` bigint UNSIGNED DEFAULT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `listing_owner_id` bigint UNSIGNED DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_chat_enable` tinyint(1) NOT NULL DEFAULT '1',
  `is_chat_start` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0: pending, 1: approved, 2: rejected',
  `rejected_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `claim_business_chatings`
--

CREATE TABLE `claim_business_chatings` (
  `id` bigint UNSIGNED NOT NULL,
  `claim_business_id` bigint UNSIGNED DEFAULT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `userable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userable_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_read_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collect_dynamic_form_data`
--

CREATE TABLE `collect_dynamic_form_data` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `dynamic_forms_id` bigint UNSIGNED NOT NULL,
  `listing_id` bigint UNSIGNED NOT NULL,
  `form_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint UNSIGNED NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `theme`, `name`, `type`, `media`, `created_at`, `updated_at`) VALUES
(1, 'light', 'contact', 'single', NULL, '2024-09-25 07:31:26', '2024-09-25 07:31:26'),
(2, 'light', 'contact', 'multiple', NULL, '2024-09-25 07:32:07', '2024-09-25 07:32:07'),
(3, 'light', 'contact', 'multiple', NULL, '2024-09-25 07:33:00', '2024-09-25 07:33:00'),
(4, 'light', 'contact', 'multiple', NULL, '2024-09-25 07:33:13', '2024-09-25 07:33:13'),
(5, 'light', 'contact', 'multiple', NULL, '2024-09-25 07:33:29', '2024-09-25 07:33:29'),
(6, 'light', 'about', 'single', '{\"image\":{\"path\":\"contents\\/T7bS6fmmopj4M06AaBm8dYOKjVY6h4.webp\",\"driver\":\"local\"}}', '2024-09-25 07:34:07', '2024-09-25 07:34:07'),
(7, 'light', 'testimonial', 'single', NULL, '2024-09-25 07:34:23', '2024-09-25 07:34:23'),
(8, 'light', 'testimonial', 'multiple', '{\"image\":{\"path\":\"contents\\/i2HxarRvVOtLWHshAS1hRvdePJXFdF.webp\",\"driver\":\"local\"}}', '2024-09-25 07:36:03', '2024-09-25 07:36:04'),
(9, 'light', 'testimonial', 'multiple', '{\"image\":{\"path\":\"contents\\/WHYoonANqcjSQdLD9yXKY4nI2p4v4F.webp\",\"driver\":\"local\"}}', '2024-09-25 07:36:28', '2024-09-25 07:36:29'),
(10, 'light', 'testimonial', 'multiple', '{\"image\":{\"path\":\"contents\\/5dshfdzwUFXZTwGjNMokZjtbuoqH3C.webp\",\"driver\":\"local\"}}', '2024-09-25 07:36:56', '2024-09-25 07:36:57'),
(11, 'light', 'testimonial', 'multiple', '{\"image\":{\"path\":\"contents\\/sT3kDaOpajx3AhziQik7TIRrlNkMJw.webp\",\"driver\":\"local\"}}', '2024-09-25 07:37:20', '2024-09-25 07:37:21'),
(12, 'light', 'how_it_work', 'single', NULL, '2024-09-25 08:04:22', '2024-09-25 08:04:22'),
(13, 'light', 'how_it_work', 'multiple', '{\"image\":{\"path\":\"contents\\/yBEszTWYvjzZlsHowamMULWHQiViEp.webp\",\"driver\":\"local\"}}', '2024-09-25 08:05:22', '2024-09-25 08:05:22'),
(14, 'light', 'how_it_work', 'multiple', '{\"image\":{\"path\":\"contents\\/d0hWCKezKb3qaO8a2uFNCwBerHV9Ko.webp\",\"driver\":\"local\"}}', '2024-09-25 08:05:44', '2024-09-25 08:05:44'),
(15, 'light', 'how_it_work', 'multiple', '{\"image\":{\"path\":\"contents\\/bXc7YkebvNl8ySdcmdlyCmK8smIa7U.webp\",\"driver\":\"local\"}}', '2024-09-25 08:06:05', '2024-09-25 08:06:05'),
(17, 'light', 'terms_and_conditions', 'single', NULL, '2024-09-25 09:29:43', '2024-09-25 09:29:43'),
(18, 'light', 'privacy_policy', 'single', NULL, '2024-09-25 09:33:05', '2024-09-25 09:33:05'),
(19, 'light', 'faq', 'multiple', NULL, '2024-09-25 09:49:57', '2024-09-25 09:49:57'),
(20, 'light', 'faq', 'multiple', NULL, '2024-09-25 09:50:08', '2024-09-25 09:50:08'),
(21, 'light', 'faq', 'multiple', NULL, '2024-09-25 09:50:20', '2024-09-25 09:50:20'),
(22, 'light', 'faq', 'multiple', NULL, '2024-09-25 09:50:31', '2024-09-25 09:50:31'),
(23, 'light', 'faq', 'multiple', NULL, '2024-09-25 09:50:47', '2024-09-25 09:50:47'),
(24, 'light', 'faq', 'multiple', NULL, '2024-09-25 09:51:01', '2024-09-25 09:51:01'),
(25, 'light', 'faq', 'multiple', NULL, '2024-09-25 09:51:12', '2024-09-25 09:51:12'),
(26, 'light', 'faq', 'multiple', NULL, '2024-09-25 09:51:25', '2024-09-25 09:51:25'),
(27, 'light', 'pricing', 'single', NULL, '2024-09-26 06:16:22', '2024-09-26 06:16:22'),
(28, 'light', 'news_letter', 'single', NULL, '2024-10-22 03:37:51', '2024-10-22 03:37:51'),
(29, 'light', 'blog', 'single', NULL, '2024-10-22 03:55:40', '2024-10-22 03:55:40'),
(30, 'light', 'listing_categories', 'single', NULL, '2024-10-22 06:16:52', '2024-10-22 06:16:52'),
(31, 'light', 'listing', 'single', NULL, '2024-10-22 09:20:45', '2024-10-22 09:20:45'),
(32, 'light', 'hero', 'single', '{\"image\":{\"path\":\"contents\\/brB0z4Bee8txuAaDuzPP5rvXYI4dBn.webp\",\"driver\":\"local\"}}', '2024-10-22 09:50:41', '2024-10-22 09:50:42'),
(35, 'directory', 'hero', 'single', '{\"image\":{\"path\":\"contents\\/oRxGwruoVMUsCtshfAuhWD4hHmg6R0.webp\",\"driver\":\"local\"}}', '2024-10-24 04:34:07', '2024-10-24 04:34:08'),
(36, 'directory', 'listing_categories', 'single', NULL, '2024-10-24 04:38:42', '2024-10-24 04:38:42'),
(37, 'directory', 'listing', 'single', NULL, '2024-10-24 04:41:02', '2024-10-24 04:41:02'),
(38, 'directory', 'how_it_work', 'single', NULL, '2024-10-24 04:45:37', '2024-10-24 04:45:37'),
(39, 'directory', 'how_it_work', 'multiple', NULL, '2024-10-24 04:55:28', '2024-10-24 04:55:28'),
(40, 'directory', 'how_it_work', 'multiple', NULL, '2024-10-24 04:56:07', '2024-10-24 04:56:07'),
(41, 'directory', 'how_it_work', 'multiple', NULL, '2024-10-24 04:56:29', '2024-10-24 04:56:29'),
(42, 'directory', 'testimonial', 'single', NULL, '2024-10-24 05:05:03', '2024-10-24 05:05:03'),
(43, 'directory', 'testimonial', 'multiple', '{\"image\":{\"path\":\"contents\\/dwgsBc98QCbF3IPRDh1gxpQ4lKtllY.webp\",\"driver\":\"local\"}}', '2024-10-24 05:27:15', '2024-10-24 05:27:15'),
(44, 'directory', 'testimonial', 'multiple', '{\"image\":{\"path\":\"contents\\/1cEKvolpFEIhVp7q7TTYAhouJA9Pb7.webp\",\"driver\":\"local\"}}', '2024-10-24 05:28:17', '2024-10-24 05:28:17'),
(45, 'directory', 'testimonial', 'multiple', '{\"image\":{\"path\":\"contents\\/ANpv26NLbLMegV10BFzpslNNRrwKip.webp\",\"driver\":\"local\"}}', '2024-10-24 05:29:11', '2024-10-24 05:29:11'),
(46, 'directory', 'testimonial', 'multiple', '{\"image\":{\"path\":\"contents\\/3zmnIlLqi8HW50eMDjtFYSV6d38foc.webp\",\"driver\":\"local\"}}', '2024-10-24 05:29:39', '2024-10-24 05:29:39'),
(47, 'directory', 'faq', 'single', NULL, '2024-10-24 05:35:26', '2024-10-24 05:35:26'),
(48, 'directory', 'faq', 'multiple', NULL, '2024-10-24 05:35:55', '2024-10-24 05:35:55'),
(49, 'directory', 'faq', 'multiple', NULL, '2024-10-24 05:36:23', '2024-10-24 05:36:23'),
(50, 'directory', 'faq', 'multiple', NULL, '2024-10-24 05:36:46', '2024-10-24 05:36:46'),
(51, 'directory', 'faq', 'multiple', NULL, '2024-10-24 05:39:49', '2024-10-24 05:39:49'),
(52, 'directory', 'faq', 'multiple', NULL, '2024-10-24 05:40:09', '2024-10-24 05:40:09'),
(53, 'directory', 'faq', 'multiple', NULL, '2024-10-24 05:41:35', '2024-10-24 05:41:35'),
(54, 'directory', 'faq', 'multiple', NULL, '2024-10-24 05:41:59', '2024-10-24 05:41:59'),
(55, 'directory', 'faq', 'multiple', NULL, '2024-10-24 05:42:19', '2024-10-24 05:42:19'),
(56, 'directory', 'blog', 'single', NULL, '2024-10-24 05:47:19', '2024-10-24 05:47:19'),
(57, 'directory', 'news_letter', 'single', NULL, '2024-10-24 05:50:36', '2024-10-24 05:50:36'),
(58, 'directory', 'about', 'single', '{\"image\":{\"path\":\"contents\\/2X46ZBFCTcz4EFzDDmSavadRXt1NDc.webp\",\"driver\":\"local\"}}', '2024-10-24 08:08:08', '2024-11-28 02:33:52'),
(59, 'directory', 'pricing', 'single', NULL, '2024-10-24 08:10:56', '2024-10-24 08:10:56'),
(60, 'directory', 'contact', 'single', '{\"image\":{\"path\":\"contents\\/rq3XGrSoDQ36RP3nWq9Mm3zxpV5zAu.webp\",\"driver\":\"local\"}}', '2024-10-24 08:25:11', '2025-03-17 02:38:55'),
(61, 'directory', 'contact', 'multiple', NULL, '2024-10-24 08:25:57', '2024-10-24 08:25:57'),
(62, 'directory', 'contact', 'multiple', NULL, '2024-10-24 08:27:08', '2024-10-24 08:27:08'),
(63, 'directory', 'contact', 'multiple', NULL, '2024-10-24 08:27:30', '2024-10-24 08:27:30'),
(64, 'directory', 'contact', 'multiple', NULL, '2024-10-24 08:27:47', '2024-10-24 08:27:47'),
(66, 'directory', 'privacy_policy', 'single', NULL, '2024-10-28 07:34:38', '2024-10-28 07:34:38'),
(67, 'directory', 'terms_and_conditions', 'single', NULL, '2024-10-28 07:41:54', '2024-10-28 07:41:54'),
(69, 'light', 'testimonial', 'multiple', NULL, '2025-03-17 02:24:47', '2025-03-17 02:24:47'),
(70, 'directory', 'contact', 'multiple', NULL, '2025-03-17 02:40:28', '2025-03-17 02:40:28'),
(71, 'directory', 'how_it_work', 'multiple', NULL, '2025-03-17 04:28:48', '2025-03-17 04:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `content_details`
--

CREATE TABLE `content_details` (
  `id` bigint UNSIGNED NOT NULL,
  `content_id` bigint DEFAULT NULL,
  `language_id` bigint DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_details`
--

INSERT INTO `content_details` (`id`, `content_id`, `language_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '{\"left_heading\":\"Leave Us Your Info\",\"left_details\":\"Give us a call or drop by anytime, we endeavour to answer all enquiries within 24 hours on business days. We will be happy to answer your questions.\",\"right_heading\":\"Customer Support\",\"right_details\":\"Give us a call or drop by anytime, we endeavour to answer all enquiries within 24 hours on business days. We will be happy to answer your questions.\",\"phone\":\"1300 806 249\",\"email\":\"accounts@businesslocal.com.au\",\"address\":\"296 Bay Rd, Cheltenham VIC 3192\",\"footer_description\":\"Business Local connects businesses with customers. With both free and paid listings, Discover the convenience of our business directory and find what you need today.\"}', '2024-09-25 07:31:26', '2025-03-17 02:19:51'),
(2, 2, 1, '{\"social_icon\":\"fab fa-facebook-f\",\"social_link\":\"https:\\/\\/www.facebook.com\\/\"}', '2024-09-25 07:32:07', '2024-09-25 07:32:07'),
(3, 3, 1, '{\"social_icon\":\"fab fa-twitter\",\"social_link\":\"https:\\/\\/twitter.com\\/\"}', '2024-09-25 07:33:00', '2024-09-25 07:33:00'),
(4, 4, 1, '{\"social_icon\":\"fab fa-linkedin-in\",\"social_link\":\"https:\\/\\/bd.linkedin.com\\/\"}', '2024-09-25 07:33:13', '2024-09-25 07:33:13'),
(5, 5, 1, '{\"social_icon\":\"fab fa-instagram\",\"social_link\":\"https:\\/\\/www.instagram.com\\/\"}', '2024-09-25 07:33:29', '2024-09-25 07:33:29'),
(6, 6, 1, '{\"heading\":\"About Us\",\"title\":\"Connecting businesses worldwide\",\"description\":\"<p style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">Welcome to ListPlace, a comprehensive online directory for businesses of all types and sizes.<\\/p><p style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">At ListPlace, we believe that every business deserves to have a platform to showcase their products and services to a wider audience. Our mission is to provide a user-friendly platform where businesses can easily list their information and connect with potential customers.<\\/p><p style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">Our directory is designed to be easy to navigate and search, making it simple for users to find the businesses they need. We offer both free and paid listings to accommodate businesses with varying budgets and needs. Our paid listings offer additional features such as higher visibility and customization options to help businesses stand out from the crowd.<\\/p><p style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">At ListPlace, we take pride in providing exceptional customer service to our users. Our team is always ready to assist with any questions or concerns, and we strive to provide quick and efficient solutions.<\\/p><p style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;\\\">Thank you for choosing ListPlace as your go-to directory for businesses. We look forward to helping your business grow and succeed.<\\/p>\"}', '2024-09-25 07:34:07', '2024-09-25 07:34:07'),
(7, 7, 1, '{\"heading\":\"Customer Feedback\",\"sub_heading\":\"Explore the best listings in your city. You won\\u2019t be disappointed.\"}', '2024-09-25 07:34:23', '2024-09-25 07:34:23'),
(8, 8, 1, '{\"name\":\"Sarah Mitchell\",\"designation\":\"Great platform for local businesses!\",\"description\":\"<p>Business Local has been an incredible asset for my business. The AI-powered profile optimisation has boosted my Google rankings significantly, and I\'ve seen a steady increase in leads. The dashboard is easy to use, and the automated review management tool has made keeping up with customer feedback a breeze. I highly recommend Business Local for any small business looking to get noticed online.<\\/p>\"}', '2024-09-25 07:36:04', '2025-03-17 02:22:04'),
(9, 9, 1, '{\"name\":\"jim morison\",\"designation\":\"Excellent customer support and results!\",\"description\":\"<p>I signed up for the Premium Local Domination plan and couldn\\u2019t be happier with the results. The team at Business Local helped me get set up quickly, and the AI tools have really enhanced my Google Business profile. Plus, the Local Connect software has made communicating with customers so much easier. If you\'re serious about growing your local business online, Business Local is the way to go.<\\/p>\"}', '2024-09-25 07:36:29', '2025-03-17 02:22:42'),
(10, 10, 1, '{\"name\":\"Emma Robinson\",\"designation\":\"Affordable and effective marketing solution\",\"description\":\"<p>As a small business owner, I was looking for an affordable SEO solution that could deliver results. Business Local has exceeded my expectations. For a fraction of the cost of traditional advertising, I\\u2019m now getting more visibility on Google and connecting with potential customers. The reporting features are fantastic, and the support team is always ready to assist.<\\/p>\"}', '2024-09-25 07:36:57', '2025-03-17 02:23:25'),
(11, 11, 1, '{\"name\":\"Michael Foster\",\"designation\":\"A game-changer for our local business\",\"description\":\"<p>Business Local has completely transformed our online presence. With their AI-powered SEO tools, we\\u2019ve climbed to the top of local search results, and it has brought in more inquiries than ever before. We love how the platform continuously updates our profile and keeps our content fresh. It\'s hands down one of the best investments we\'ve made for our business.<\\/p>\"}', '2024-09-25 07:37:21', '2025-03-17 02:24:03'),
(12, 12, 1, '{\"heading\":\"Working Process\",\"sub_heading\":\"How It Works\"}', '2024-09-25 08:04:22', '2024-09-25 08:04:22'),
(13, 13, 1, '{\"title\":\"Registration\",\"description\":\"<p><span style=\\\"color:rgb(124,135,152);font-family:Rubik, sans-serif;font-size:16px;\\\">A user need to register in ListPlace by filling up very few details.<\\/span><br><\\/p>\"}', '2024-09-25 08:05:22', '2024-09-25 08:05:22'),
(14, 14, 1, '{\"title\":\"Buy Package\",\"description\":\"<p><span style=\\\"color:rgb(124,135,152);font-family:Rubik, sans-serif;font-size:16px;\\\">A user needs to purchase a package to add a listing<\\/span><br><\\/p>\"}', '2024-09-25 08:05:44', '2024-09-25 08:05:44'),
(15, 15, 1, '{\"title\":\"Add Listing\",\"description\":\"<p><span style=\\\"color:rgb(124,135,152);font-family:Rubik, sans-serif;font-size:16px;\\\">After purchasing a package users can enlist their business easily.\\u00a0<\\/span><br><\\/p>\"}', '2024-09-25 08:06:05', '2024-09-25 08:06:05'),
(17, 17, 1, '{\"title\":\"Terms &amp; Conditions\",\"description\":\"<p style=\\\"color:rgb(124,135,152);font-family:Rubik, sans-serif;font-size:16px;\\\">Welcome to ListPlace! By using our website, you agree to comply with and be bound by the following terms and conditions of use. Please read these terms carefully before using our website.<\\/p><ol><li>The content of the pages of this website is for general information and use only. It is subject to change without notice.<br><br><\\/li><li>This website may contain links to other websites that are not under the control of ListPlace. We have no control over the nature, content, and availability of those sites. The inclusion of any links does not necessarily imply a recommendation or endorsement of the views expressed within them.<br><br><\\/li><li>Unauthorized use of this website may give rise to a claim for damages and\\/or be a criminal offense.<br><br><\\/li><li>Your use of this website and any dispute arising out of such use of the website is subject to the laws of the United States.<br><br><\\/li><li>ListPlace reserves the right to modify, suspend or discontinue, temporarily or permanently, the website or any service to which it connects, with or without notice and without liability to you.<br><br><\\/li><li>ListPlace reserves the right to change these terms and conditions at any time without prior notice. It is your responsibility to check for updates and changes to these terms and conditions regularly.<br><br><\\/li><li>ListPlace is not responsible for any errors or omissions in any content, or for any loss or damage of any kind incurred as a result of the use of any content posted or otherwise transmitted via our website.<br><br><\\/li><li>\\u00a0All trademarks reproduced on this website which are not the property of, or licensed to the operator, are acknowledged on the website.<\\/li><li>Your use of this website and any dispute arising out of such use of the website is subject to the Privacy Policy available on our website.<br><br><br><\\/li><\\/ol><p style=\\\"color:rgb(124,135,152);font-family:Rubik, sans-serif;font-size:16px;\\\">By using ListPlace, you agree to comply with these terms and conditions of use. If you do not agree to these terms, please do not use our website.<\\/p>\"}', '2024-09-25 09:29:43', '2024-09-25 09:30:09'),
(18, 18, 1, '{\"title\":\"Privacy Policy\",\"description\":\"<p style=\\\"color:rgb(124,135,152);font-family:Rubik, sans-serif;font-size:16px;\\\">At ListPlace, we are committed to protecting your privacy and ensuring the security of your personal information. This privacy policy explains how we collect, use, and protect your personal information when you use our website.<\\/p><ol><li>Information We Collect: We may collect personal information that you voluntarily provide to us, such as your name, email address, and phone number, when you use our website. We may also collect non-personal information, such as your IP address, browser type, and operating system.<br><br><\\/li><li>Use of Your Information: We may use your personal information to provide you with the services and products you request, to communicate with you about our products and services, and to improve our website and services. We may also use your information for analytics and research purposes.<br><br><\\/li><li>Protection of Your Information: We take reasonable measures to protect your personal information from unauthorized access, use, or disclosure. We use industry-standard security technologies and procedures to help protect your information.<br><br><\\/li><li>Sharing Your Information: We do not sell or rent your personal information to third parties. However, we may share your information with third-party service providers that help us operate our website and provide our services to you. We may also share your information as required by law or to protect our legal rights.<br><br><\\/li><li>Cookies: We may use cookies to improve your experience on our website. Cookies are small text files that are placed on your device when you visit our website. You can set your browser to refuse cookies or to alert you when cookies are being sent.<br><br><\\/li><li>Links to Other Websites: Our website may contain links to other websites that are not under our control. We are not responsible for the privacy practices or content of these websites.<br><br><\\/li><li>Contact Us: If you have any questions or concerns about our privacy policy, please contact us.<br><br><\\/li><\\/ol><p style=\\\"color:rgb(124,135,152);font-family:Rubik, sans-serif;font-size:16px;\\\">By using our website, you agree to the terms of this privacy policy. If you do not agree to this privacy policy, please do not use our website.<\\/p>\"}', '2024-09-25 09:33:05', '2024-09-25 09:33:05'),
(19, 19, 1, '{\"question\":\"What is your directory listing website?\",\"answer\":\"Our directory listing website is a platform where businesses can list their products or services to increase their visibility and reach a wider audience.\"}', '2024-09-25 09:49:57', '2024-09-25 09:49:57'),
(20, 20, 1, '{\"question\":\"How do I submit my business to your directory listing website?\",\"answer\":\"To submit your business, simply go to our website and click on the \\\"Add Listing\\\" button. You will be prompted to fill out a form with your business information and upload relevant images.\"}', '2024-09-25 09:50:08', '2024-09-25 09:50:08'),
(21, 21, 1, '{\"question\":\"Is there a fee to submit my business to your directory listing website?\",\"answer\":\"We offer both free and paid listings on our website. The free listing allows you to list your business name, address, and phone number, while our paid listings offer additional features such as a custom description, photos, and higher visibility.\"}', '2024-09-25 09:50:20', '2024-09-25 09:50:20'),
(22, 22, 1, '{\"question\":\"How do I edit my business information on your directory listing website?\",\"answer\":\"To edit your business information, log in to your account and go to your listing. From there, you can make any necessary changes to your business information and click \\\"Save\\\" to update it.\"}', '2024-09-25 09:50:31', '2024-09-25 09:50:31'),
(23, 23, 1, '{\"question\":\"How do I claim ownership of my business listing on your directory listing website?\",\"answer\":\"If your business is already listed on our website, you can claim ownership by clicking the \\\"Claim Listing\\\" button on the listing page. You will be prompted to verify your ownership through email or phone verification.\"}', '2024-09-25 09:50:47', '2024-09-25 09:50:47'),
(24, 24, 1, '{\"question\":\"How long does it take for my business to appear on your directory listing website?\",\"answer\":\"Your business listing should appear on our website within 24-48 hours after submission. However, please note that our team manually reviews each submission to ensure accuracy and quality, which may cause a delay in the publication of your listing.\"}', '2024-09-25 09:51:01', '2024-09-25 09:51:01'),
(25, 25, 1, '{\"question\":\"Can I promote my business on your directory listing website?\",\"answer\":\"Yes, we offer various advertising and promotional options for businesses looking to increase their visibility on our website. Please contact us for more information on our advertising options.\"}', '2024-09-25 09:51:12', '2024-09-25 09:51:12'),
(26, 26, 1, '{\"question\":\"How do I contact customer support if I have any issues with my business listing?\",\"answer\":\"You can contact our customer support team by filling out the contact form on our website or by sending an email to our support email address. We aim to respond to all inquiries within 24-48 hours.\"}', '2024-09-25 09:51:25', '2024-09-25 09:51:25'),
(27, 27, 1, '{\"title\":\"Packages\",\"description\":\"<p><span style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;text-align:center;\\\">Here are the pricing plans for unlimited business directory listings from the free plan to the basic. You can buy whatever you like.<\\/span><br><\\/p>\"}', '2024-09-26 06:16:22', '2024-09-26 06:16:22'),
(28, 28, 1, '{\"title\":\"Join Our Newsletter\",\"description\":\"<p>Enter your email address to register to our newsletter subscription delivered on a regular basis!<br><\\/p>\"}', '2024-10-22 03:37:51', '2024-10-22 03:37:51'),
(29, 29, 1, '{\"title\":\"News &amp; Articles\",\"sub_title\":\"Popular Blog Post\",\"description\":\"<span style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;text-align:center;\\\">Explore the best listings near you. You won\\u2019t be disappointed.<\\/span><br>\"}', '2024-10-22 03:55:40', '2024-10-22 09:17:34'),
(30, 30, 1, '{\"title\":\"category\",\"sub_title\":\"popular categories\",\"description\":\"<span style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;text-align:center;\\\">Explore the best listing categories near you. You won\\u2019t be disappointed.<\\/span>\"}', '2024-10-22 06:16:52', '2024-10-22 09:17:55'),
(31, 31, 1, '{\"title\":\"listing\",\"sub_title\":\"Popular Listings\",\"description\":\"Explore the best listings near you. You won\\u2019t be disappointed.\"}', '2024-10-22 09:20:45', '2024-10-22 09:20:45'),
(32, 32, 1, '{\"title\":\"Track Down Your Best Listing\",\"sub_title\":\"You can get your desired listing items here by name, category or location.\"}', '2024-10-22 09:50:42', '2024-10-22 09:50:42'),
(35, 35, 1, '{\"title\":\"Find Anything What You Want\",\"sub_title\":\"Let\'s uncover the best places to eat, drink, and shop nearest to you.\"}', '2024-10-24 04:34:08', '2024-10-24 04:34:08'),
(36, 36, 1, '{\"title\":\"category\",\"sub_title\":\"popular categories\",\"description\":\"<p><span style=\\\"color:rgb(114,114,114);font-family:\'DM Sans\', sans-serif;font-size:15px;text-align:center;\\\">Explore the best listing categories near you. You won\\u2019t be disappointed.<\\/span><br><\\/p>\"}', '2024-10-24 04:38:42', '2024-10-24 04:38:42'),
(37, 37, 1, '{\"title\":\"listing\",\"sub_title\":\"Popular Listings\",\"description\":\"<p>Explore the best listings near you. You won\\u2019t be disappointed.<br><\\/p>\"}', '2024-10-24 04:41:02', '2024-10-24 04:41:02'),
(38, 38, 1, '{\"heading\":\"how it works\",\"sub_heading\":\"How It Works Step by Step\",\"description\":\"<p><br><\\/p>\"}', '2024-10-24 04:45:37', '2025-03-17 04:28:28'),
(39, 39, 1, '{\"title\":\"Registration\",\"fontawesome_icon_class\":\"fa-light fa-user\",\"description\":\"<p>A user need to register in ListPlace by filling up very few details.<br><\\/p>\"}', '2024-10-24 04:55:28', '2024-10-24 04:55:28'),
(40, 40, 1, '{\"title\":\"Buy Package\",\"fontawesome_icon_class\":\"fa-light fa-gift\",\"description\":\"<p>A user needs to purchase a package to add a listing<br><\\/p>\"}', '2024-10-24 04:56:07', '2024-10-24 04:56:07'),
(41, 41, 1, '{\"title\":\"Add Listing\",\"fontawesome_icon_class\":\"fa-light fa-list-timeline\",\"description\":\"<p>After purchasing a package users can enlist their business easily.<br><\\/p>\"}', '2024-10-24 04:56:29', '2024-10-24 04:56:29'),
(42, 42, 1, '{\"heading\":\"Google reviews\",\"sub_heading\":\"What Our Customers Are Saying\",\"description\":\"We aim to respond to all enquiries within 24 hours on business days and are always happy to assist with any questions you may have.\"}', '2024-10-24 05:05:03', '2025-03-17 03:12:51'),
(43, 43, 1, '{\"name\":\"John Davies\",\"address\":\"Perth, WA\",\"rating\":\"5\",\"description\":\"<p>I signed up for the Premium Local Domination plan and couldn\\u2019t be happier with the results. The team at Business Local helped me get set up quickly, and the AI tools have really enhanced my Google Business profile. Plus, the Local Connect software has made communicating with customers so much easier. If you\'re serious about growing your local business online, Business Local is the way to go.<\\/p>\"}', '2024-10-24 05:27:15', '2025-03-17 02:54:46'),
(44, 44, 1, '{\"name\":\"Michael Foster\",\"address\":\"Sydney, NSW\",\"rating\":\"5\",\"description\":\"<p>Business Local has completely transformed our online presence. With their AI-powered SEO tools, we\\u2019ve climbed to the top of local search results, and it has brought in more inquiries than ever before. We love how the platform continuously updates our profile and keeps our content fresh. It\'s hands down one of the best investments we\'ve made for our business.<\\/p>\"}', '2024-10-24 05:28:17', '2025-03-17 03:11:02'),
(45, 45, 1, '{\"name\":\"Sarah Mitchell\",\"address\":\"Melbourne, VIC\",\"rating\":\"5\",\"description\":\"<p>Business Local has been an incredible asset for my business. The AI-powered profile optimisation has boosted my Google rankings significantly, and I\'ve seen a steady increase in leads. The dashboard is easy to use, and the automated review management tool has made keeping up with customer feedback a breeze. I highly recommend Business Local for any small business looking to get noticed online.<\\/p>\"}', '2024-10-24 05:29:11', '2025-03-17 02:58:28'),
(46, 46, 1, '{\"name\":\"Richard Adams\",\"address\":\"Albury, NSW\",\"rating\":\"5\",\"description\":\"<p>I\'ve been using Business Local for several months now, and the results speak for themselves. The setup process was simple, and their AI-powered plans have significantly improved our search engine rankings. The Local Reviews software has made managing customer feedback effortless. Highly recommend it to any business looking to improve its online presence.<\\/p>\"}', '2024-10-24 05:29:39', '2025-03-17 03:00:07'),
(47, 47, 1, '{\"title\":\"FAQs\",\"sub_title\":\"Frequently Ask Question\",\"description\":\"<p>Feel free to adjust the content to better suit the theme of your\\r\\n                        website directory listing. If\\r\\n                        you\'d like more ideas, I can generate some additional suggestions.<br><\\/p>\"}', '2024-10-24 05:35:26', '2024-10-24 05:35:26'),
(48, 48, 1, '{\"question\":\"What is the purpose of this website directory?\",\"answer\":\"<p>This website directory is designed to help you find and connect with\\r\\n                                                [specific type of businesses, services, or organizations]. You can\\r\\n                                                easily browse through different categories and quickly locate the\\r\\n                                                information you need.\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<br><\\/p>\"}', '2024-10-24 05:35:55', '2024-10-24 05:35:55'),
(49, 49, 1, '{\"question\":\"What is the purpose of this website directory?\",\"answer\":\"<p>This website directory is designed to help you find and connect with\\r\\n                                                [specific type of businesses, services, or organizations]. You can\\r\\n                                                easily browse through different categories and quickly locate the\\r\\n                                                information you need.\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<br><\\/p>\"}', '2024-10-24 05:36:23', '2024-10-24 05:36:23'),
(50, 50, 1, '{\"question\":\"Is there a fee to list my business in the directory?\",\"answer\":\"<p>Some basic listings are free, but we also offer premium packages with\\r\\n                                                additional features, such as enhanced visibility, custom descriptions,\\r\\n                                                and highlighted listings. Visit our \\\"Pricing\\\" page to learn more about\\r\\n                                                the different options available.\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<br><\\/p>\"}', '2024-10-24 05:36:46', '2024-10-24 05:36:46'),
(51, 51, 1, '{\"question\":\"How do I list my business in the directory?\",\"answer\":\"<p>To list your business, click on the \\\"Add Your Business\\\" button on our\\r\\n                                                homepage. You\'ll need to provide basic information such as your business\\r\\n                                                name, contact details, category, and a brief description. After\\r\\n                                                submitting, our team will review your listing, and once approved, it\\r\\n                                                will appear in the directory.\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<br><\\/p>\"}', '2024-10-24 05:39:49', '2024-10-24 05:39:49'),
(52, 52, 1, '{\"question\":\"How can I search for businesses or services on the website?\",\"answer\":\"<p>Use the search bar at the top of our website to enter keywords, business\\r\\n                                                names, or categories. You can also filter results by location or other\\r\\n                                                criteria to narrow down your search. If you\'re not sure what you\'re\\r\\n                                                looking for, browse through our categories to discover new businesses or\\r\\n                                                services.\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<br><\\/p>\"}', '2024-10-24 05:40:09', '2024-10-24 05:40:09'),
(53, 53, 1, '{\"question\":\"How can I update or change my business listing?\",\"answer\":\"<p>To update your listing, log in to your account and navigate to \\\"My\\r\\n                                                Listings.\\\" From there, you can edit your information, change your\\r\\n                                                category, or add additional details. If you encounter any issues, feel\\r\\n                                                free to contact our support team for assistance.\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<br><\\/p>\"}', '2024-10-24 05:41:35', '2024-10-24 05:41:35'),
(54, 54, 1, '{\"question\":\"What should I do if I find incorrect information in a listing?\",\"answer\":\"<p>If you come across incorrect information, please report it to us by clicking\\r\\n                                            the \\\"Report\\\" button on the listing or contacting our support team directly.\\r\\n                                            We\'ll review the information and correct any errors as soon as possible.\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<br><\\/p>\"}', '2024-10-24 05:41:59', '2024-10-24 05:41:59'),
(55, 55, 1, '{\"question\":\"How can I search for businesses or services on the website?\",\"answer\":\"<p>Use the search bar at the top of our website to enter keywords, business\\r\\n                                            names, or categories. You can also filter results by location or other\\r\\n                                            criteria to narrow down your search. If you\'re not sure what you\'re looking\\r\\n                                            for, browse through our categories to discover new businesses or services.\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<br><\\/p>\"}', '2024-10-24 05:42:19', '2024-10-24 05:42:19'),
(56, 56, 1, '{\"title\":\"news &amp; blogs\",\"sub_title\":\"our news &amp; blogs\",\"description\":\"<p>Let\'s discover the best places to eat, drink, and shop nearest to you.<br><\\/p>\"}', '2024-10-24 05:47:19', '2024-10-28 06:16:25'),
(57, 57, 1, '{\"title\":\"For more listing offer\",\"description\":\"Join our community\"}', '2024-10-24 05:50:36', '2024-10-24 05:50:36'),
(58, 58, 1, '{\"heading\":\"About Us\",\"title\":\"AI Solutions That Drive Growth\",\"description\":\"<p><span style=\\\"color:rgb(41,41,41);font-family:Inter;font-size:15px;text-align:center;\\\">Our AI-powered platform ensures your business stands out in Google searches, making it easier for customers to find you.<\\/span><\\/p><p style=\\\"color:rgb(41,41,41);font-family:Inter;font-size:15px;\\\">Get started today and experience the simplicity and power of our AI-driven SEO plans.\\u00a0<\\/p><p style=\\\"color:rgb(41,41,41);font-family:Inter;font-size:15px;\\\">It\\u2019s time to let Business Local work for you.<\\/p><p style=\\\"color:rgb(41,41,41);font-family:Inter;font-size:15px;\\\"><br><\\/p>\"}', '2024-10-24 08:08:08', '2025-03-17 02:52:00'),
(59, 59, 1, '{\"title\":\"Pricing plan\",\"sub_title\":\"Pricing Plan for listing\",\"description\":\"<p>Here are the pricing plans for unlimited business car listings from\\r\\n                        the\\r\\n                        free\\r\\n                        plan to the\\r\\n                        Gold. You can buy whatever you like.<br><\\/p>\"}', '2024-10-24 08:10:56', '2024-10-24 08:10:56'),
(60, 60, 1, '{\"title\":\"We\\u2019re always here for you\",\"description\":\"<p>Feel free to give us a call or book a demo anytime. We strive to respond to all enquiries within 24 hours on business days. We\'re happy to assist with any questions you may have.<\\/p>\",\"phone\":\"1300 806 249\",\"email\":\"accounts@businesslocal.com.au\",\"address\":\"296 Bay Rd, Cheltenham VIC 3192\",\"footer_description\":\"Business Local connects businesses with customers. With both free and paid listings, Discover the convenience of our business directory and find what you need today.\"}', '2024-10-24 08:25:11', '2025-03-17 02:42:17'),
(61, 61, 1, '{\"fontawesome_social_icon_class\":\"fab fa-facebook-f\",\"social_link\":\"https:\\/\\/www.facebook.com\\/businesslocalaustralia\"}', '2024-10-24 08:25:57', '2025-03-17 02:39:33'),
(62, 62, 1, '{\"fontawesome_social_icon_class\":\"fab fa-twitter\",\"social_link\":\"https:\\/\\/x.com\\/BusinesslocalV\"}', '2024-10-24 08:27:08', '2025-03-17 02:39:54'),
(63, 63, 1, '{\"fontawesome_social_icon_class\":\"fab fa-linkedin\",\"social_link\":\"https:\\/\\/www.linkedin.com\\/company\\/business-local\\/\"}', '2024-10-24 08:27:30', '2025-03-17 02:40:09'),
(64, 64, 1, '{\"fontawesome_social_icon_class\":\"fab fa-instagram\",\"social_link\":\"https:\\/\\/www.instagram.com\\/businesslocalau\\/\"}', '2024-10-24 08:27:47', '2025-03-17 02:40:54'),
(66, 66, 1, '{\"title\":\"Privacy Policy\",\"description\":\"<p style=\\\"color:rgb(41,41,41);font-family:Inter;font-size:15px;text-align:justify;\\\"><span style=\\\"font-size:16px;\\\">Business Local Directory respects the privacy of our users and has developed this Privacy Policy to demonstrate its commitment to protecting your privacy. This Privacy Policy is intended to describe for you, as an individual who is a user of Business Local Directory (and all websites and URL\'s controlled or operated by Business Local Directory which link to this policy, unless otherwise specified) or our services, or otherwise provide us with information through various means the information we collect, how that information may be used, with whom it may be shared, and your choices about such uses and disclosures.<br><br>We encourage you to read this Privacy Policy carefully when using our website or services or transacting business with us. By using our website, you are accepting the practices described in this Privacy Policy.<br><br>If you have any questions about our privacy practices, please refer to the end of this Privacy Policy for information on how to contact us.<\\/span><br><br><span style=\\\"font-weight:600;\\\"><span style=\\\"font-size:18px;\\\">Information we collect about you\\u00a0<\\/span><\\/span><br><br><span style=\\\"font-size:16px;\\\"><span style=\\\"font-weight:600;\\\">In General<\\/span><\\/span><span style=\\\"font-size:16px;\\\">. We may collect personal information that can identify you such as your name and email address and other information that does not identify you. When you provide personal information through our website, the information may be sent to servers located in the United States and other countries around the world.<\\/span><\\/p><ul><li><span style=\\\"font-weight:600;\\\">Information you provide.<\\/span>We may collect and store any personal information you enter on our website or provide to us in some other manner. This includes identifying information, such as your name, address, e-mail address, and telephone number, and in addition, for Professionals, your credit card number and other personally identifiable information. We also may request information about your interests and activities, your gender and age, and other demographic information<\\/li><li><span style=\\\"font-weight:600;\\\">Information from other sources.<\\/span>We may also periodically obtain both personal and non-personal information about you from other business partners, contractors and other third parties. Examples of information that we may receive include (but are not limited to): updated delivery and address information, purchase history, and additional demographic information.<\\/li><li><span style=\\\"font-weight:600;\\\">Information about others.<\\/span>We may also collect and store personal information about other people that you provide to us. If you use our website to send others (friends, relatives, colleagues, etc.) information that may interest them through our system, we may store your personal information, and the personal information of each such recipient<\\/li><\\/ul>\"}', '2024-10-28 07:34:38', '2025-03-17 04:26:44'),
(67, 67, 1, '{\"title\":\"Terms &amp; Conditions\",\"description\":\"<h3><span style=\\\"font-size:18px;\\\"><span style=\\\"font-weight:600;\\\"><span style=\\\"font-family:Quicksand;\\\">1. ACCEPTANCE OF TERMS<\\/span><\\/span><\\/span><\\/h3><p style=\\\"color:rgb(41,41,41);font-family:Inter;font-size:15px;text-align:justify;\\\"><span style=\\\"font-size:16px;font-family:Quicksand;\\\">Business Local Directory provides a collection of online resources, including classified ads, forums, catalogues, and various email services available on or through Business Local Directory (referred to hereafter as \\u201cthe Service\\u201d) subject to the following Terms of Use (\\u201cTOU\\u201d). By using the Service in any way, you are agreeing to comply with the TOU. In addition, when using particular Business Local Directory services, you agree to abide by any applicable posted guidelines for all Business Local Directory services, which may change from time to time. Should you object to any term or condition of the TOU, any guidelines, or any subsequent modifications thereto or become dissatisfied with the Service in any way,\\u00a0<span style=\\\"font-weight:600;\\\"><span>your only recourse is to immediately discontinue use of the Service<\\/span><\\/span>.<\\/span><\\/p>\"}', '2024-10-28 07:41:54', '2025-03-17 04:25:51'),
(132, 69, 1, '{\"name\":\"Rachel Adams\",\"designation\":\"Simple and effective, with excellent support\",\"description\":\"<p>I\'ve been using Business Local for several months now, and the results speak for themselves. The setup process was simple, and their AI-powered plans have significantly improved our search engine rankings. The Local Reviews software has made managing customer feedback effortless. Highly recommend it to any business looking to improve its online presence.<\\/p>\"}', '2025-03-17 02:24:47', '2025-03-17 02:24:47'),
(133, 70, 1, '{\"fontawesome_social_icon_class\":\"fab fa-youtube\",\"social_link\":\"https:\\/\\/www.youtube.com\\/@BusinessLocal-au\"}', '2025-03-17 02:40:28', '2025-03-17 02:41:09'),
(134, 71, 1, '{\"title\":\"4\",\"fontawesome_icon_class\":\"tt\",\"description\":\"<p>test<\\/p>\"}', '2025-03-17 04:28:48', '2025-03-17 04:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `iso2` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `phone_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subregion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso2`, `name`, `status`, `phone_code`, `iso3`, `region`, `subregion`, `latitude`, `longitude`, `image`, `created_at`, `updated_at`) VALUES
(3, 'AU', 'Australia', 1, '+61', 'AUS', 'Oceania', 'Australia and New Zealand', NULL, NULL, 'country/kKCKT1tM6hubBPXJqOR9FUNwbJ1HZ4.webp', '2025-03-17 02:48:01', '2025-03-17 02:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precision` tinyint NOT NULL DEFAULT '2',
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_native` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_first` tinyint NOT NULL DEFAULT '1',
  `decimal_mark` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.',
  `thousands_separator` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ','
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `depositable_id` int DEFAULT NULL,
  `depositable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `percentage_charge` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT '0.00000000',
  `payable_amount` decimal(18,8) NOT NULL DEFAULT '0.00000000' COMMENT 'Amount payed',
  `base_currency_charge` double(18,8) DEFAULT '0.00000000',
  `payable_amount_in_base_currency` double(18,8) NOT NULL DEFAULT '0.00000000',
  `btc_amount` decimal(18,8) DEFAULT NULL,
  `btc_wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `trx_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending, 1=success, 2=request, 3=rejected',
  `note` text COLLATE utf8mb4_unicode_ci,
  `purchase_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_forms`
--

CREATE TABLE `dynamic_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `package_id` bigint UNSIGNED DEFAULT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0: Inactive, 1: Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `purchase_package_id` bigint UNSIGNED DEFAULT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_storages`
--

CREATE TABLE `file_storages` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `driver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 => active, 0 => inactive',
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_storages`
--

INSERT INTO `file_storages` (`id`, `code`, `name`, `logo`, `driver`, `status`, `parameters`, `created_at`, `updated_at`) VALUES
(1, 's3', 'Amazon S3', 'driver/GJrBdvIxtnEprk0kHylgzNh6LcGcfOUcA205IIK5.png', 'local', 0, '{\"access_key_id\":\"xys6\",\"secret_access_key\":\"xys\",\"default_region\":\"xys5\",\"bucket\":\"xys6\",\"url\":\"xysds\"}', NULL, '2024-03-06 02:13:56'),
(2, 'sftp', 'SFTP', 'driver/q8E08YsobyRZGOLHHeKGhwysWsi25F186EbaNNRx.png', 'local', 0, '{\"sftp_username\":\"xys6\",\"sftp_password\":\"xys\"}', NULL, '2023-06-10 17:28:03'),
(3, 'do', 'Digitalocean Spaces', 'driver/iA8q685PBCnOAkmctLXZWhyqSoh7cJMOewpW4S8r.png', 'local', 0, '{\"spaces_key\":\"hj\",\"spaces_secret\":\"vh\",\"spaces_endpoint\":\"jk\",\"spaces_region\":\"sfo2\",\"spaces_bucket\":\"assets-coral\"}', NULL, '2023-06-10 17:45:21'),
(4, 'ftp', 'FTP', 'driver/wIwEOAJ45KgVGw0PL80WNfcbosB4IuUlxStfeHCX.png', 'local', 0, '{\"ftp_host\":\"xys6\",\"ftp_username\":\"xys\",\"ftp_password\":\"xys6\"}', NULL, '2023-06-10 17:27:43'),
(5, 'local', 'Local Storage', '', NULL, 1, NULL, NULL, '2024-03-06 02:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `fire_base_tokens`
--

CREATE TABLE `fire_base_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_id` int DEFAULT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `following_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: inactive, 1: active',
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `currencies` text COLLATE utf8mb4_unicode_ci,
  `extra_parameters` text COLLATE utf8mb4_unicode_ci,
  `supported_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivable_currencies` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `currency_type` tinyint(1) NOT NULL DEFAULT '1',
  `is_sandbox` tinyint(1) NOT NULL DEFAULT '0',
  `environment` enum('test','live') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'live',
  `is_manual` tinyint(1) DEFAULT '1',
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_subscription` tinyint NOT NULL DEFAULT '0' COMMENT '	subscription is allow this gateway',
  `subscription_on` tinyint NOT NULL DEFAULT '0' COMMENT '0=>off, 1=>on',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `name`, `sort_by`, `image`, `driver`, `status`, `parameters`, `currencies`, `extra_parameters`, `supported_currency`, `receivable_currencies`, `description`, `currency_type`, `is_sandbox`, `environment`, `is_manual`, `note`, `is_subscription`, `subscription_on`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'Paypal', 10, 'gateway/cCmKX4VMzHorJkQ9omsZdOLIZLXA56.avif', 'local', 0, '{\"cleint_id\":\"\",\"secret\":\"\"}', '{\"0\":{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"USD\"}}', NULL, '[\"USD\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'live', NULL, NULL, 1, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(2, 'stripe', 'Stripe ', 1, 'gateway/Fpn6DbOj8Kh0qEqmDcqzPLaYetzHdU.avif', 'local', 0, '{\"secret_key\":\"\",\"publishable_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}}', NULL, '[\"USD\",\"AUD\",\"GBP\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"1\",\"min_limit\":\"1\",\"max_limit\":\"100000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0.5\"},{\"name\":\"AUD\",\"currency_symbol\":\"AUD\",\"conversion_rate\":\"1.49\",\"min_limit\":\"1\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"},{\"name\":\"GBP\",\"currency_symbol\":\"GBP\",\"conversion_rate\":\"0.76\",\"min_limit\":\"1\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'live', NULL, NULL, 1, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(3, 'skrill', 'Skrill', 2, 'gateway/sFW8RqOtyTiIo8369MLJFmMsfHtYHX.avif', 'local', 0, '{\"pay_to_email\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}}', NULL, '[\"AUD\",\"USD\"]', '[{\"name\":\"AUD\",\"currency_symbol\":\"AUD\",\"conversion_rate\":\"0.014\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"},{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"15000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(4, 'perfectmoney', 'Perfect Money', 8, 'gateway/B1uwuCo5fk4FVyBSm8yxErDtezvo9R.avif', 'local', 0, '{\"passphrase\":\"\",\"payee_account\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\"}}', NULL, '[\"USD\",\"EUR\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0\"},{\"name\":\"EUR\",\"currency_symbol\":\"EUR\",\"conversion_rate\":\"0.0083\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(5, 'paytm', 'PayTM', 22, 'gateway/9OxY8ZDv4JGt3MS7zPEquDtQ9b1vWU.avif', 'local', 0, '{\"MID\":\"\",\"merchant_key\":\"\",\"WEBSITE\":\"\",\"INDUSTRY_TYPE_ID\":\"\",\"CHANNEL_ID\":\"\",\"environment_url\":\"\",\"process_transaction_url\":\"\"}', '{\"0\":{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}}', NULL, '[\"AUD\",\"CAD\"]', '[{\"name\":\"AUD\",\"currency_symbol\":\"AUD\",\"conversion_rate\":\"0.014\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"CAD\",\"currency_symbol\":\"CAD\",\"conversion_rate\":\"0.012\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(6, 'payeer', 'Payeer', 16, 'gateway/7HTCjJpFcRmHqM1kJSpaRuTA0MzNqG.avif', 'local', 0, '{\"merchant_id\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}}', '{\"status\":\"ipn\"}', '[\"USD\",\"RUB\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"1\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"RUB\",\"currency_symbol\":\"RUB\",\"conversion_rate\":\"0.81\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(7, 'paystack', 'PayStack', 5, 'gateway/Km8ogMTUmpEdjbHRvLma7enfvafO3N.avif', 'local', 0, '{\"public_key\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"NGN\":\"NGN\"}}', '{\"callback\":\"ipn\",\"webhook\":\"ipn\"}\r\n', '[\"USD\",\"NGN\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"NGN\",\"currency_symbol\":\"NGN\",\"conversion_rate\":\"7.40\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 1, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(8, 'voguepay', 'VoguePay', 33, 'gateway/x6HOsziQhmuJ7iu46zMKdBEewDSesm.avif', 'local', 0, '{\"merchant_id\":\"\"}', '{\"0\":{\"NGN\":\"NGN\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"ZAR\":\"ZAR\",\"JPY\":\"JPY\",\"INR\":\"INR\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PLN\":\"PLN\"}}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', NULL, '[\"NGN\",\"EUR\"]', '[{\"name\":\"NGN\",\"currency_symbol\":\"NGN\",\"conversion_rate\":\"7.40\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"EUR\",\"currency_symbol\":\"EUR\",\"conversion_rate\":\"0.0083\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(9, 'flutterwave', 'Flutterwave', 4, 'gateway/SUpub5TEkx7MOcetX340zn7LGSH0Sa.avif', 'local', 0, '{\"public_key\":\"\",\"secret_key\":\"\",\"encryption_key\":\"\"}', '{\"0\":{\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}}', NULL, '[\"GHS\",\"NGN\",\"USD\"]', '[{\"name\":\"GHS\",\"currency_symbol\":\"GHS\",\"conversion_rate\":\"0.11\",\"min_limit\":\".00001\",\"max_limit\":\"50000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"NGN\",\"currency_symbol\":\"NGN\",\"conversion_rate\":\"7.40\",\"min_limit\":\".00001\",\"max_limit\":\"50000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'test', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(10, 'razorpay', 'RazorPay', 6, 'gateway/HvTfH2WAQtw0pcN4ZzssUT5l86FMCZ.avif', 'local', 0, '{\"key_id\":\"\",\"key_secret\":\"\"}', '{\"0\":{\"INR\":\"INR\"}}', NULL, '[\"INR\"]', '[{\"name\":\"INR\",\"currency_symbol\":\"INR\",\"conversion_rate\":\"0.76\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 1, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(11, 'instamojo', 'instamojo', 13, 'gateway/rwXQ1P62ePQcvJBIUZRkHMumLbWF73.avif', 'local', 0, '{\"api_key\":\"\",\"auth_token\":\"\",\"salt\":\"\"}', '{\"0\":{\"INR\":\"INR\"}}', NULL, '[\"INR\"]', '[{\"name\":\"INR\",\"currency_symbol\":\"INR\",\"conversion_rate\":\"0.76\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(12, 'mollie', 'Mollie', 26, 'gateway/S83QZxmVtxCkvl8OGWFGgChxmUcQhc.avif', 'local', 0, '{\"api_key\":\"\"}', '{\"0\":{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}}', NULL, '[\"AUD\",\"BRL\"]', '[{\"name\":\"AUD\",\"currency_symbol\":\"AUD\",\"conversion_rate\":\"0.014\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"BRL\",\"currency_symbol\":\"BRL\",\"conversion_rate\":\"0.045\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(13, 'twocheckout', '2checkout', 11, 'gateway/bmAgQ5rUbx2rktlaztA89GEQCKYTxJ.avif', 'local', 0, '{\"merchant_code\":\"\",\"secret_key\":\"\"}', '{\"0\":{\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"DZD\":\"DZD\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AZN\":\"AZN\",\"BSD\":\"BSD\",\"BDT\":\"BDT\",\"BBD\":\"BBD\",\"BZD\":\"BZD\",\"BMD\":\"BMD\",\"BOB\":\"BOB\",\"BWP\":\"BWP\",\"BRL\":\"BRL\",\"GBP\":\"GBP\",\"BND\":\"BND\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"XCD\":\"XCD\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"GTQ\":\"GTQ\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JMD\":\"JMD\",\"JPY\":\"JPY\",\"KZT\":\"KZT\",\"KES\":\"KES\",\"LAK\":\"LAK\",\"MMK\":\"MMK\",\"LBP\":\"LBP\",\"LRD\":\"LRD\",\"MOP\":\"MOP\",\"MYR\":\"MYR\",\"MVR\":\"MVR\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PGK\":\"PGK\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"WST\":\"WST\",\"SAR\":\"SAR\",\"SCR\":\"SCR\",\"SGD\":\"SGD\",\"SBD\":\"SBD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"SYP\":\"SYP\",\"THB\":\"THB\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TRY\":\"TRY\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"USD\":\"USD\",\"VUV\":\"VUV\",\"VND\":\"VND\",\"XOF\":\"XOF\",\"YER\":\"YER\"}}', '{\"approved_url\":\"ipn\"}', '[\"AFN\",\"ARS\"]', '[{\"name\":\"AFN\",\"currency_symbol\":\"AFN\",\"conversion_rate\":\"0.63\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"ARS\",\"currency_symbol\":\"ARS\",\"conversion_rate\":\"3.24\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(14, 'authorizenet', 'Authorize.Net', 7, 'gateway/kY6uyYr0nPgU0SyM69Yy4ei7aAowCu.avif', 'local', 0, '{\"login_id\":\"\",\"current_transaction_key\":\"\"}', '{\"0\":{\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"USD\":\"USD\"}}', NULL, '[\"AUD\",\"CAD\"]', '[{\"name\":\"AUD\",\"currency_symbol\":\"AUD\",\"conversion_rate\":\"0.014\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0\"},{\"name\":\"CAD\",\"currency_symbol\":\"CAD\",\"conversion_rate\":\"0.012\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'test', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(16, 'payumoney', 'PayUmoney', 27, 'gateway/TjSy1hfABIV2RzIRECRJcwmN04sGEh.avif', 'local', 0, '{\"merchant_key\":\"\",\"salt\":\"\"}', '{\"0\":{\"INR\":\"INR\"}}', NULL, '[\"INR\"]', '[{\"name\":\"INR\",\"currency_symbol\":\"INR\",\"conversion_rate\":\"0.76\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'test', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(17, 'mercadopago', 'Mercado Pago', 17, 'gateway/2UlZWhhkfVSWQepk1uBKecw4FrepZx.avif', 'local', 0, '{\"access_token\":\"\"}', '{\"0\":{\"ARS\":\"ARS\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"DOP\":\"DOP\",\"EUR\":\"EUR\",\"GTQ\":\"GTQ\",\"HNL\":\"HNL\",\"MXN\":\"MXN\",\"NIO\":\"NIO\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PYG\":\"PYG\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"VEF\":\"VEF\",\"VES\":\"VES\"}}', NULL, '[\"ARS\"]', '[{\"name\":\"ARS\",\"currency_symbol\":\"ARS\",\"conversion_rate\":\"3.24\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(18, 'coingate', 'Coingate', 18, 'gateway/uxKFypl7GtiL0YnJhshsLKyGzf2YKt.avif', 'local', 0, '{\"api_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\"}}', NULL, '[\"USD\",\"EUR\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"EUR\",\"currency_symbol\":\"EUR\",\"conversion_rate\":\"0.0083\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'test', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(19, 'coinbasecommerce', 'Coinbase Commerce', 15, 'gateway/POaHQGEUctnNpM9YgAvIIwq0R9aXnw.avif', 'local', 0, '{\"api_key\":\"\",\"secret\":\"\"}', '{\"0\":{\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CHF\":\"CHF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GBP\":\"GBP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"INR\":\"INR\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RUB\":\"RUB\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TRY\":\"TRY\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZAR\":\"ZAR\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}}', '{\"webhook\":\"ipn\"}', '[\"AED\",\"ALL\"]', '[{\"name\":\"AED\",\"currency_symbol\":\"AED\",\"conversion_rate\":\"0.033\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"ALL\",\"currency_symbol\":\"ALL\",\"conversion_rate\":\"0.85\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(20, 'monnify', 'Monnify', 19, 'gateway/N9ZZ4F4YeYM4m78gZW0Gnm8HTu037v.avif', 'local', 0, '{\"api_key\":\"\",\"secret_key\":\"\",\"contract_code\":\"\"}', '{\"0\":{\"NGN\":\"NGN\"}}', NULL, '[\"NGN\"]', '[{\"name\":\"NGN\",\"currency_symbol\":\"NGN\",\"conversion_rate\":\"7.40\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(22, 'coinpayments', 'CoinPayments', 20, 'gateway/truY5ILTjTIFunGBf7Hn5vcWSxYw6Q.avif', 'local', 0, '{\"merchant_id\":\"\",\"private_key\":\"\",\"public_key\":\"\"}', '{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"},\"1\":{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}}', '{\"callback\":\"ipn\"}', '[\"USD\",\"AUD\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"100000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"AUD\",\"currency_symbol\":\"AUD\",\"conversion_rate\":\"0.014\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(23, 'blockchain', 'Blockchain', 23, 'gateway/20zn8YG4VPgOUSBQHvj0GeKMHwL4ZY.avif', 'local', 0, '{\"api_key\":\"\",\"xpub_code\":\"\"}', '{\"1\":{\"BTC\":\"BTC\"}}', NULL, '[\"BTC\"]', '[{\"name\":\"BTC\",\"currency_symbol\":\"BTC\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"500000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 0, 0, 'live', NULL, NULL, 0, 0, '2020-09-10 03:05:02', '2025-01-06 08:55:38'),
(25, 'cashmaal', 'cashmaal', 24, 'gateway/7Y3IZE7VY61XHwNxRzrgWVFZx8zUu0.avif', 'local', 0, '{\"web_id\":\"\",\"ipn_key\":\"\"}', '{\"0\":{\"PKR\":\"PKR\",\"USD\":\"USD\"}}', '{\"ipn_url\":\"ipn\"}', '[\"PKR\",\"USD\"]', '[{\"name\":\"PKR\",\"currency_symbol\":\"PKR\",\"conversion_rate\":\"2.56\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, NULL, '2025-01-06 08:55:38'),
(26, 'midtrans', 'Midtrans', 3, 'gateway/7fRFCClfGcMefCb35AVzgnEJevUi37.avif', 'local', 0, '{\"client_key\":\"\",\"server_key\":\"\"}', '{\"0\":{\"IDR\":\"IDR\"}}', '{\"payment_notification_url\":\"ipn\", \"finish redirect_url\":\"ipn\", \"unfinish redirect_url\":\"failed\",\"error redirect_url\":\"failed\"}', '[\"IDR\"]', '[{\"name\":\"IDR\",\"currency_symbol\":\"IDR\",\"conversion_rate\":\"141.38\",\"min_limit\":\".00001\",\"max_limit\":\"50000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'test', NULL, '', 0, 0, '2020-09-08 21:05:02', '2025-01-06 08:55:38'),
(27, 'peachpayments', 'peachpayments', 34, 'gateway/4aJggeZFR2SBLYMw9DewRUOByPaRez.avif', 'local', 0, '{\"Authorization_Bearer\":\"\",\"Entity_ID\":\"\",\"Recur_Channel\":\"\"}', '{\"0\":{\"AED\":\"AED\",\"AFA\":\"AFA\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AWG\":\"AWG\",\"AZM\":\"AZM\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYR\":\"BYR\",\"BZD\":\"BZD\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CYP\":\"CYP\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EEK\":\"EEK\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GBP\":\"GBP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHC\":\"GHC\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"INR\":\"INR\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LTL\":\"LTL\",\"LVL\":\"LVL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MTL\":\"MTL\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"MZM\":\"MZM\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PTS\":\"PTS\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDD\":\"SDD\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"SHP\":\"SHP\",\"SIT\":\"SIT\",\"SKK\":\"SKK\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SPL\":\"SPL\",\"SRD\":\"SRD\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMM\":\"TMM\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TRL\":\"TRL\",\"TRY\":\"TRY\",\"TTD\":\"TTD\",\"TVD\":\"TVD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZAR\":\"ZAR\",\"ZMK\":\"ZMK\",\"ZWD\":\"ZWD\"}}', NULL, '[\"AED\",\"CAD\"]', '[{\"name\":\"AED\",\"currency_symbol\":\"CAD\",\"conversion_rate\":\"0.012\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"CAD\",\"currency_symbol\":\"AED\",\"conversion_rate\":\"0.033\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'live', NULL, '', 0, 0, '2020-09-09 03:05:02', '2025-01-06 08:55:38'),
(28, 'nowpayments', 'Nowpayments', 25, 'gateway/Z5wvvbRZN7nZUC6GgPTqMyf1lM2WBf.avif', 'local', 0, '{\"api_key\":\"\"}', '{\"1\":{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}}', '{\"cron\":\"ipn\"}', '[\"ETH\",\"XEM\"]', '[{\"name\":\"ETH\",\"currency_symbol\":\"ETH\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"500000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"},{\"name\":\"XEM\",\"currency_symbol\":\"XEM\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"500000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 0, 1, 'live', NULL, '', 0, 0, '2020-09-08 21:05:02', '2025-01-06 08:55:38'),
(29, 'khalti', 'Khalti Payment', 28, 'gateway/x4BeAPBkYuM494NvWfAkrxTfk1tbUt.avif', 'local', 0, '{\"secret_key\":\"\",\"public_key\":\"\"}', '{\"0\":{\"NPR\":\"NPR\"}}', NULL, '[\"NPR\"]', '[{\"name\":\"NPR\",\"currency_symbol\":\"NPR\",\"conversion_rate\":\"1.21\",\"min_limit\":\".00001\",\"max_limit\":\"50000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, '', 0, 0, '2020-09-08 21:05:02', '2025-01-06 08:55:38'),
(30, 'swagger', 'MAGUA PAY', 21, 'gateway/j8bFL5e5LOn6YkquKQiy6com8w1uj2.avif', 'local', 0, '{\"MAGUA_PAY_ACCOUNT\":\"\",\"MerchantKey\":\"\",\"Secret\":\"\"}', '{\"0\":{\"EUR\":\"EUR\"}}', NULL, '[\"EUR\"]', '[{\"name\":\"EUR\",\"currency_symbol\":\"EUR\",\"conversion_rate\":\"0.0083\",\"min_limit\":\".00001\",\"max_limit\":\"50000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, '', 0, 0, '2020-09-08 21:05:02', '2025-01-06 08:55:38'),
(31, 'freekassa', 'Free kassa', 35, 'gateway/VqJR12ZLuhmisIpUbpm6p2OCqm4hHC.avif', 'local', 0, '{\"merchant_id\":\"\",\"merchant_key\":\"\",\"secret_word\":\"\",\"secret_word2\":\"\"}', '{\"0\":{\"RUB\":\"RUB\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"UAH\":\"UAH\",\"KZT\":\"KZT\"}}', '{\"ipn_url\":\"ipn\"}', '[\"RUB\",\"USD\"]', '[{\"name\":\"RUB\",\"currency_symbol\":\"RUB\",\"conversion_rate\":\"0.81\",\"min_limit\":\".00001\",\"max_limit\":\"15000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"50000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, '', 0, 0, '2020-09-08 21:05:02', '2025-01-06 08:55:38'),
(32, 'konnect', 'Konnect', 29, 'gateway/DIWitJin1UBjkwTLrSPcstnUDGmTz3.avif', 'local', 0, '{\"api_key\":\"\",\"receiver_wallet_Id\":\"\"}', '{\"0\":{\"TND\":\"TND\",\"EUR\":\"EUR\",\"USD\":\"USD\"}}', '{\"webhook\":\"ipn\"}', '[\"TND\",\"EUR\",\"USD\"]', '[{\"name\":\"TND\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"15000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"name\":\"EUR\",\"currency_symbol\":\"TND\",\"conversion_rate\":\"0.028\",\"min_limit\":\".00001\",\"max_limit\":\"20000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"},{\"name\":\"USD\",\"currency_symbol\":\"EUR\",\"conversion_rate\":\"0.0083\",\"min_limit\":\".00001\",\"max_limit\":\"60000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'live', NULL, '', 0, 0, '2020-09-08 21:05:02', '2025-01-06 08:55:38'),
(33, 'mypay', 'Mypay Np', 31, 'gateway/kkBeSnA5MFdlLrrSOpF3dJp1JwMxIB.avif', 'local', 0, '{\"merchant_username\":\"\",\"merchant_api_password\":\"\",\"merchant_id\":\"\",\"api_key\":\"\"}', '{\"0\":{\"NPR\":\"NPR\"}}', NULL, '[\"NPR\"]', '[{\"name\":\"NPR\",\"currency_symbol\":\"NPR\",\"conversion_rate\":\"1.21\",\"min_limit\":\".00001\",\"max_limit\":\"15000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'live', NULL, '', 0, 0, '2020-09-08 21:05:02', '2025-01-06 08:55:38'),
(35, 'imepay', 'IME PAY', 9, 'gateway/YuBFrsBWuxf17sqB6z8y039xgdxyat.avif', 'local', 0, '{\"MerchantModule\":\"\",\"MerchantCode\":\"\",\"username\":\"\",\"password\":\"\"}', '{\"0\":{\"NPR\":\"NPR\"}}', NULL, '[\"NPR\"]', '[{\"name\":\"NPR\",\"currency_symbol\":\"NPR\",\"conversion_rate\":\"1.21\",\"min_limit\":\".00001\",\"max_limit\":\"15000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"1.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, '', 0, 0, '2020-09-08 21:05:02', '2025-01-06 08:55:38'),
(36, 'cashonexHosted', 'Cashonex Hosted', 14, 'gateway/GAcL1CamWpPaeDGaD6aSInqXknXK50.avif', 'local', 0, '{\"idempotency_key\":\"\",\"salt\":\"\"}', '{\"0\":{\"USD\":\"USD\"}}', NULL, '[\"USD\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"15000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2023-04-02 18:31:33', '2025-01-06 08:55:38'),
(37, 'cashonex', 'cashonex', 30, 'gateway/rbbey8zLDMKdNPftwRdOSY79eVEGLi.avif', 'local', 0, '{\"idempotency_key\":\"\",\"salt\":\"\"}', '{\"0\":{\"USD\":\"USD\"}}', NULL, '[\"USD\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".00001\",\"max_limit\":\"15000\",\"percentage_charge\":\"0.0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, NULL, 0, 0, '2023-04-02 18:34:54', '2025-01-06 08:55:38'),
(38, 'binance', 'Binance', 12, 'gateway/bZ7w2koAzATHG9gp8k6JzRhhusXTpH.avif', 'local', 0, '{\"mercent_api_key\":\"\",\"mercent_secret\":\"\"}', '{\"1\":{\"ADA\":\"ADA\",\"ATOM\":\"ATOM\",\"AVA\":\"AVA\",\"BCH\":\"BCH\",\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"BUSD\":\"BUSD\",\"CTSI\":\"CTSI\",\"DASH\":\"DASH\",\"DOGE\":\"DOGE\",\"DOT\":\"DOT\",\"EGLD\":\"EGLD\",\"EOS\":\"EOS\",\"ETC\":\"ETC\",\"ETH\":\"ETH\",\"FIL\":\"FIL\",\"FRONT\":\"FRONT\",\"FTM\":\"FTM\",\"GRS\":\"GRS\",\"HBAR\":\"HBAR\",\"IOTX\":\"IOTX\",\"LINK\":\"LINK\",\"LTC\":\"LTC\",\"MANA\":\"MANA\",\"MATIC\":\"MATIC\",\"NEO\":\"NEO\",\"OM\":\"OM\",\"ONE\":\"ONE\",\"PAX\":\"PAX\",\"QTUM\":\"QTUM\",\"STRAX\":\"STRAX\",\"SXP\":\"SXP\",\"TRX\":\"TRX\",\"TUSD\":\"TUSD\",\"UNI\":\"UNI\",\"USDC\":\"USDC\",\"USDT\":\"USDT\",\"WRX\":\"WRX\",\"XLM\":\"XLM\",\"XMR\":\"XMR\",\"XRP\":\"XRP\",\"XTZ\":\"XTZ\",\"XVS\":\"XVS\",\"ZEC\":\"ZEC\",\"ZIL\":\"ZIL\"}}', NULL, '[\"BTC\"]', '[{\"name\":\"BTC\",\"currency_symbol\":\"BTC\",\"conversion_rate\":\"0.000027\",\"min_limit\":\".00001\",\"max_limit\":\"5\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 0, 0, 'live', NULL, NULL, 0, 0, '2023-04-02 19:36:14', '2025-01-06 08:55:38'),
(39, 'cinetpay', 'CinetPay ', 36, 'gateway/9WCd4Kn4EvlDX8y4V3bEV7eazCTlla.avif', 'local', 0, '{\"apiKey\":\"\",\"site_id\":\"\"}', '{\"0\":{\"XOF\":\"XOF\",\"XAF\":\"XAF\",\"CDF\":\"CDF\",\"GNF\":\"GNF\",\"USD\":\"USD\"}}', 'NULL', '[\"XOF\"]', '[{\"name\":\"XOF\",\"currency_symbol\":\"XOF\",\"conversion_rate\":\"5.45\",\"min_limit\":\".00001\",\"max_limit\":\"50000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'test', NULL, NULL, 0, 0, '2023-04-02 19:36:14', '2025-01-06 08:55:38'),
(40, 'square', 'Square', 37, 'gateway/tgnUjnfjA20JYs8kNffP2YDSw7LVoI.avif', 'local', 0, '{\"application_id\":\"\",\"access_token\":\"\",\"location_id\":\"\"}', '{\"0\":{\r\n  \"USD\": \"USD\",\r\n  \"AED\": \"AED\",\r\n  \"AFN\": \"AFN\",\r\n  \"ALL\": \"ALL\",\r\n  \"AMD\": \"AMD\",\r\n  \"ANG\": \"ANG\",\r\n  \"AOA\": \"AOA\",\r\n  \"ARS\": \"ARS\",\r\n  \"AUD\": \"AUD\",\r\n  \"AWG\": \"AWG\",\r\n  \"AZN\": \"AZN\",\r\n  \"BAM\": \"BAM\",\r\n  \"BBD\": \"BBD\",\r\n  \"BDT\": \"BDT\",\r\n  \"BGN\": \"BGN\",\r\n  \"BHD\": \"BHD\",\r\n  \"BIF\": \"BIF\",\r\n  \"BMD\": \"BMD\",\r\n  \"BND\": \"BND\",\r\n  \"BOB\": \"BOB\",\r\n  \"BOV\": \"BOV\",\r\n  \"BRL\": \"BRL\",\r\n  \"BSD\": \"BSD\",\r\n  \"BTN\": \"BTN\",\r\n  \"BWP\": \"BWP\",\r\n  \"BYR\": \"BYR\",\r\n  \"BZD\": \"BZD\",\r\n  \"CAD\": \"CAD\",\r\n  \"CDF\": \"CDF\",\r\n  \"CHE\": \"CHE\",\r\n  \"CHF\": \"CHF\",\r\n  \"CHW\": \"CHW\",\r\n  \"CLF\": \"CLF\",\r\n  \"CLP\": \"CLP\",\r\n  \"CNY\": \"CNY\",\r\n  \"COP\": \"COP\",\r\n  \"COU\": \"COU\",\r\n  \"CRC\": \"CRC\",\r\n  \"CUC\": \"CUC\",\r\n  \"CUP\": \"CUP\",\r\n  \"CVE\": \"CVE\",\r\n  \"CZK\": \"CZK\",\r\n  \"DJF\": \"DJF\",\r\n  \"DKK\": \"DKK\",\r\n  \"DOP\": \"DOP\",\r\n  \"DZD\": \"DZD\",\r\n  \"EGP\": \"EGP\",\r\n  \"ERN\": \"ERN\",\r\n  \"ETB\": \"ETB\",\r\n  \"EUR\": \"EUR\",\r\n  \"FJD\": \"FJD\",\r\n  \"FKP\": \"FKP\",\r\n  \"GBP\": \"GBP\",\r\n  \"GEL\": \"GEL\",\r\n  \"GHS\": \"GHS\",\r\n  \"GIP\": \"GIP\",\r\n  \"GMD\": \"GMD\",\r\n  \"GNF\": \"GNF\",\r\n  \"GTQ\": \"GTQ\",\r\n  \"GYD\": \"GYD\",\r\n  \"HKD\": \"HKD\",\r\n  \"HNL\": \"HNL\",\r\n  \"HRK\": \"HRK\",\r\n  \"HTG\": \"HTG\",\r\n  \"HUF\": \"HUF\",\r\n  \"IDR\": \"IDR\",\r\n  \"ILS\": \"ILS\",\r\n  \"INR\": \"INR\",\r\n  \"IQD\": \"IQD\",\r\n  \"IRR\": \"IRR\",\r\n  \"ISK\": \"ISK\",\r\n  \"JMD\": \"JMD\",\r\n  \"JOD\": \"JOD\",\r\n  \"JPY\": \"JPY\",\r\n  \"KES\": \"KES\",\r\n  \"KGS\": \"KGS\",\r\n  \"KHR\": \"KHR\",\r\n  \"KMF\": \"KMF\",\r\n  \"KPW\": \"KPW\",\r\n  \"KRW\": \"KRW\",\r\n  \"KWD\": \"KWD\",\r\n  \"KYD\": \"KYD\",\r\n  \"KZT\": \"KZT\",\r\n  \"LAK\": \"LAK\",\r\n  \"LBP\": \"LBP\",\r\n  \"LKR\": \"LKR\",\r\n  \"LRD\": \"LRD\",\r\n  \"LSL\": \"LSL\",\r\n  \"LTL\": \"LTL\",\r\n  \"LVL\": \"LVL\",\r\n  \"LYD\": \"LYD\",\r\n  \"MAD\": \"MAD\",\r\n  \"MDL\": \"MDL\",\r\n  \"MGA\": \"MGA\",\r\n  \"MKD\": \"MKD\",\r\n  \"MMK\": \"MMK\",\r\n  \"MNT\": \"MNT\",\r\n  \"MOP\": \"MOP\",\r\n  \"MRO\": \"MRO\",\r\n  \"MUR\": \"MUR\",\r\n  \"MVR\": \"MVR\",\r\n  \"MWK\": \"MWK\",\r\n  \"MXN\": \"MXN\",\r\n  \"MXV\": \"MXV\",\r\n  \"MYR\": \"MYR\",\r\n  \"MZN\": \"MZN\",\r\n  \"NAD\": \"NAD\",\r\n  \"NGN\": \"NGN\",\r\n  \"NIO\": \"NIO\",\r\n  \"NOK\": \"NOK\",\r\n  \"NPR\": \"NPR\",\r\n  \"NZD\": \"NZD\",\r\n  \"OMR\": \"OMR\",\r\n  \"PAB\": \"PAB\",\r\n  \"PEN\": \"PEN\",\r\n  \"PGK\": \"PGK\",\r\n  \"PHP\": \"PHP\",\r\n  \"PKR\": \"PKR\",\r\n  \"PLN\": \"PLN\",\r\n  \"PYG\": \"PYG\",\r\n  \"QAR\": \"QAR\",\r\n  \"RON\": \"RON\",\r\n  \"RSD\": \"RSD\",\r\n  \"RUB\": \"RUB\",\r\n  \"RWF\": \"RWF\",\r\n  \"SAR\": \"SAR\",\r\n  \"SBD\": \"SBD\",\r\n  \"SCR\": \"SCR\",\r\n  \"SDG\": \"SDG\",\r\n  \"SEK\": \"SEK\",\r\n  \"SGD\": \"SGD\",\r\n  \"SHP\": \"SHP\",\r\n  \"SLL\": \"SLL\",\r\n  \"SOS\": \"SOS\",\r\n  \"SRD\": \"SRD\",\r\n  \"SSP\": \"SSP\",\r\n  \"STD\": \"STD\",\r\n  \"SVC\": \"SVC\",\r\n  \"SYP\": \"SYP\",\r\n  \"SZL\": \"SZL\",\r\n  \"THB\": \"THB\",\r\n  \"TJS\": \"TJS\",\r\n  \"TMT\": \"TMT\",\r\n  \"TND\": \"TND\",\r\n  \"TOP\": \"TOP\",\r\n  \"TRY\": \"TRY\",\r\n  \"TTD\": \"TTD\",\r\n  \"TWD\": \"TWD\",\r\n  \"TZS\": \"TZS\",\r\n  \"UAH\": \"UAH\",\r\n  \"UGX\": \"UGX\",\r\n  \"USN\": \"USN\",\r\n  \"USS\": \"USS\",\r\n  \"UYI\": \"UYI\",\r\n  \"UYU\": \"UYU\",\r\n  \"UZS\": \"UZS\",\r\n  \"VEF\": \"VEF\",\r\n  \"VND\": \"VND\",\r\n  \"VUV\": \"VUV\",\r\n  \"WST\": \"WST\",\r\n  \"XAF\": \"XAF\",\r\n  \"XAG\": \"XAG\",\r\n  \"XAU\": \"XAU\",\r\n  \"XBA\": \"XBA\",\r\n  \"XBB\": \"XBB\",\r\n  \"XBC\": \"XBC\",\r\n  \"XBD\": \"XBD\",\r\n  \"XCD\": \"XCD\",\r\n  \"XDR\": \"XDR\",\r\n  \"XOF\": \"XOF\",\r\n  \"XPD\": \"XPD\",\r\n  \"XPF\": \"XPF\",\r\n  \"XPT\": \"XPT\"}}', '{\"payment_webhook_url\":\"ipn\",\"subscription_webhook_url\":\"subscription.ipn\"}', '[\"USD\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"1\",\"min_limit\":\"1\",\"max_limit\":\"10000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'test', NULL, NULL, 1, 0, '2023-04-02 19:36:14', '2024-11-16 03:48:32'),
(41, 'paddle', 'Paddle', 38, 'gateway/PheqRITEPKh5hnYPiDZ4YjsJzUe0Hb.webp', 'local', 0, '{\"api_key\":\"\",\"client_side_token\":\"\"}', '{\"0\":{\r\n  \"USD\": \"USD\",\r\n  \"EUR\": \"EUR\",\r\n  \"GBP\": \"GBP\",\r\n  \"ARS\": \"ARS\",\r\n  \"AUD\": \"AUD\",\r\n  \"BRL\": \"BRL\",\r\n  \"CAD\": \"CAD\",\r\n  \"CNY\": \"CNY\",\r\n  \"COP\": \"COP\",\r\n  \"CZK\": \"CZK\",\r\n  \"DKK\": \"DKK\",\r\n  \"HKD\": \"HKD\",\r\n  \"HUF\": \"HUF\",\r\n  \"ILS\": \"ILS\",\r\n  \"INR\": \"INR\",\r\n  \"JPY\": \"JPY\",\r\n  \"KRW\": \"KRW\",\r\n  \"MXN\": \"MXN\",\r\n  \"NOK\": \"NOK\",\r\n  \"NZD\": \"NZD\",\r\n  \"DKK\": \"DKK\",\r\n  \"PLN\": \"PLN\",\r\n  \"RUB\": \"RUB\",\r\n  \"SEK\": \"SEK\",\r\n  \"SGD\": \"SGD\",\r\n  \"THB\": \"THB\",\r\n  \"TRY\": \"TRY\",\r\n  \"TWD\": \"TWD\",\r\n  \"UAH\": \"UAH\",\r\n  \"ZAR\": \"ZAR\"}}', '{\"default_payment_link\":\"ipn\",\"subscription_webhook_url\":\"subscription.ipn\"}', '[\"USD\",\"GBP\"]', '[{\"name\":\"USD\",\"currency_symbol\":\"USD\",\"conversion_rate\":\"1\",\"min_limit\":\".00001\",\"max_limit\":\"10000\",\"percentage_charge\":\"0.5\",\"fixed_charge\":\"0.5\"},{\"name\":\"GBP\",\"currency_symbol\":\"GBP\",\"conversion_rate\":\"0.90\",\"min_limit\":\".00001\",\"max_limit\":\"100\",\"percentage_charge\":\"1\",\"fixed_charge\":\"1\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 1, 'test', NULL, NULL, 1, 1, '2023-04-02 19:36:14', '2025-01-06 08:55:38'),
(1000, 'bank-transfer', 'Bank Transfer', 1, 'gateway/A2zYpiPKpPWcByCCys7mpnCugQEHvv.avif', 'local', 1, '{\"AccountNumber\":{\"field_name\":\"AccountNumber\",\"field_label\":\"Account Number\",\"type\":\"text\",\"validation\":\"required\"},\"BeneficiaryName\":{\"field_name\":\"BeneficiaryName\",\"field_label\":\"Beneficiary Name\",\"type\":\"text\",\"validation\":\"required\"},\"NID\":{\"field_name\":\"NID\",\"field_label\":\"NID\",\"type\":\"file\",\"validation\":\"required\"},\"Address\":{\"field_name\":\"Address\",\"field_label\":\"Address\",\"type\":\"text\",\"validation\":\"required\"}}', NULL, NULL, '[\"USD\",\"EUR\"]', '[{\"currency\":\"USD\",\"conversion_rate\":\"0.0091\",\"min_limit\":\".0001\",\"max_limit\":\"1000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"},{\"currency\":\"EUR\",\"conversion_rate\":\"0.0086\",\"min_limit\":\".0001\",\"max_limit\":\"1000\",\"percentage_charge\":\"0\",\"fixed_charge\":\"0.5\"}]', 'Send form your payment gateway. your bank may charge you a cash advance fee.', 1, 0, 'live', NULL, 'Send form your payment gateway. your bank may charge you a cash advance fee.Send form your payment gateway. your bank may charge you a cash advance fee.Send form your payment gateway. your bank may charge you a cash advance fee.Send form your payment gateway. your bank may charge you a cash advance fee.Send form your payment gateway. your bank may charge you a cash advance fee.', 0, 0, NULL, '2024-11-28 07:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `in_app_notifications`
--

CREATE TABLE `in_app_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `in_app_notificationable_id` int NOT NULL,
  `in_app_notificationable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0' COMMENT '1 => Active, 0 => Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kycs`
--

INSERT INTO `kycs` (`id`, `name`, `slug`, `input_form`, `status`, `created_at`, `updated_at`) VALUES
(12, 'NID Vefication', 'nid-vefication', '{\"FullName\":{\"field_name\":\"FullName\",\"field_label\":\"Full Name\",\"type\":\"text\",\"validation\":\"required\"},\"NIDNumber\":{\"field_name\":\"NIDNumber\",\"field_label\":\"NID Number\",\"type\":\"text\",\"validation\":\"required\"}}', 0, '2023-09-26 20:53:50', '2025-01-05 10:46:24'),
(13, 'Address Verification', 'address-verification', '{\"Location\":{\"field_name\":\"Location\",\"field_label\":\"Location\",\"type\":\"file\",\"validation\":\"required\"}}', 0, '2023-10-22 02:35:17', '2024-12-28 09:01:25'),
(14, 'Passport Verification', 'passport-verification', '{\"Name\":{\"field_name\":\"Name\",\"field_label\":\"Name\",\"type\":\"text\",\"validation\":\"required\"},\"PN\":{\"field_name\":\"PN\",\"field_label\":\"PN\",\"type\":\"text\",\"validation\":\"required\"}}', 0, '2023-12-18 06:28:16', '2024-12-28 09:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_driver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 => Inactive, 1 => Active',
  `rtl` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 => Inactive, 1 => Active ',
  `default_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `flag`, `flag_driver`, `status`, `rtl`, `default_status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'language/SNs6mWuhm6lYq7Xc52P0Qz7GoOchTs.webp', 'local', 1, 0, 1, NULL, '2024-11-24 03:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` text COLLATE utf8mb4_unicode_ci,
  `purchase_package_id` bigint UNSIGNED DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_video_id` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 =>pending, 1=> approved, 2=> rejected',
  `is_active` tinyint NOT NULL DEFAULT '1' COMMENT '0=>deactive, 1=>active',
  `rejected_reason` longtext COLLATE utf8mb4_unicode_ci,
  `deactive_reason` longtext COLLATE utf8mb4_unicode_ci,
  `fb_app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_page_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replies_text` text COLLATE utf8mb4_unicode_ci,
  `body_text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listing_amenities`
--

CREATE TABLE `listing_amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `purchase_package_id` bigint UNSIGNED DEFAULT NULL,
  `amenity_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listing_categories`
--

CREATE TABLE `listing_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_categories`
--

INSERT INTO `listing_categories` (`id`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(21, 'bi bi-tree', 1, '2025-03-14 02:55:48', '2025-03-14 02:55:48'),
(22, 'bi bi-music-note-beamed', 1, '2025-03-14 02:56:43', '2025-03-14 02:56:43'),
(23, 'bi bi-truck', 1, '2025-03-14 02:57:04', '2025-03-14 02:57:04'),
(24, 'bi bi-cash-stack', 1, '2025-03-14 02:57:20', '2025-03-14 02:57:20'),
(25, 'bi bi-cone', 1, '2025-03-14 02:57:40', '2025-03-14 02:57:40'),
(26, 'bi bi-book', 1, '2025-03-14 02:57:51', '2025-03-14 02:57:51'),
(27, 'bi bi-calendar-check', 1, '2025-03-14 02:58:06', '2025-03-14 02:58:06'),
(28, 'bi bi-cash-coin', 1, '2025-03-14 02:58:27', '2025-03-14 02:58:27'),
(29, 'bi bi-cup-straw', 1, '2025-03-14 03:11:34', '2025-03-14 03:11:34'),
(30, 'bi bi-building', 1, '2025-03-14 03:16:09', '2025-03-14 03:16:09'),
(31, 'bi bi-suit-heart-fill', 1, '2025-03-14 03:16:51', '2025-03-14 03:16:51'),
(32, 'bi bi-house-door', 1, '2025-03-14 03:17:10', '2025-03-14 03:17:10'),
(33, 'bi bi-house-fill', 1, '2025-03-14 03:17:26', '2025-03-14 03:17:26'),
(34, 'bi bi-briefcase', 1, '2025-03-14 03:17:48', '2025-03-14 03:17:48'),
(35, 'bi bi-wrench', 1, '2025-03-14 03:18:02', '2025-03-14 03:18:02'),
(36, 'bi bi-broadcast-pin', 1, '2025-03-14 03:18:39', '2025-03-14 03:18:39'),
(37, 'bi bi-archive-fill', 1, '2025-03-14 03:19:10', '2025-03-14 03:19:10'),
(39, 'bi bi-heart-fill', 1, '2025-03-14 03:20:04', '2025-03-14 03:20:04'),
(40, 'bi bi-moon-stars-fill', 1, '2025-03-14 03:20:32', '2025-03-14 03:20:32'),
(41, 'bi bi-box-seam', 1, '2025-03-14 03:21:07', '2025-03-14 03:21:07'),
(42, 'bi bi-shop', 1, '2025-03-14 03:21:36', '2025-03-14 03:21:36'),
(43, 'bi bi-calculator-fill', 1, '2025-03-14 03:21:54', '2025-03-14 03:33:32'),
(44, 'bi bi-house', 1, '2025-03-14 03:22:22', '2025-03-14 03:22:22'),
(45, 'bi bi-house-door-fill', 1, '2025-03-14 03:22:35', '2025-03-14 03:22:35'),
(46, 'bi bi-bag-fill', 1, '2025-03-14 03:22:52', '2025-03-14 03:22:52'),
(47, 'bi bi-disc', 1, '2025-03-14 03:23:10', '2025-03-14 03:23:10'),
(48, 'bi bi-bicycle', 1, '2025-03-14 03:23:35', '2025-03-14 03:23:35'),
(49, 'bi bi-palette-fill', 1, '2025-03-14 03:23:47', '2025-03-14 03:23:47'),
(50, 'bi bi-signpost-split-fill', 1, '2025-03-14 03:24:01', '2025-03-14 03:24:01'),
(51, 'bi bi-droplet', 1, '2025-03-23 23:43:49', '2025-03-23 23:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `listing_category_details`
--

CREATE TABLE `listing_category_details` (
  `id` bigint UNSIGNED NOT NULL,
  `listing_category_id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_category_details`
--

INSERT INTO `listing_category_details` (`id`, `listing_category_id`, `language_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 21, 1, 'Agriculture', '2025-03-14 02:55:48', '2025-03-14 02:55:48'),
(2, 22, 1, 'Arts &amp; Entertainment', '2025-03-14 02:56:43', '2025-03-14 02:56:43'),
(3, 23, 1, 'Automotive', '2025-03-14 02:57:04', '2025-03-14 02:57:04'),
(4, 24, 1, 'Business', '2025-03-14 02:57:20', '2025-03-14 02:57:20'),
(5, 25, 1, 'Construction', '2025-03-14 02:57:40', '2025-03-14 02:57:40'),
(6, 26, 1, 'Education', '2025-03-14 02:57:51', '2025-03-14 02:57:51'),
(7, 27, 1, 'Event Services', '2025-03-14 02:58:06', '2025-03-14 02:58:06'),
(8, 28, 1, 'Financial Services', '2025-03-14 02:58:27', '2025-03-14 02:58:27'),
(9, 29, 1, 'Food &amp; Dining', '2025-03-14 03:11:34', '2025-03-14 03:11:34'),
(10, 30, 1, 'Government', '2025-03-14 03:16:09', '2025-03-14 03:16:09'),
(11, 31, 1, 'Health &amp; Beauty', '2025-03-14 03:16:51', '2025-03-14 03:16:51'),
(12, 32, 1, 'Home Improvement', '2025-03-14 03:17:10', '2025-03-14 03:17:10'),
(13, 33, 1, 'Home Services &amp; Trades', '2025-03-14 03:17:26', '2025-03-14 03:17:26'),
(14, 34, 1, 'Hotels &amp; Travel', '2025-03-14 03:17:48', '2025-03-14 03:17:48'),
(15, 35, 1, 'Industrial', '2025-03-14 03:18:02', '2025-03-14 03:18:02'),
(16, 36, 1, 'Internet Services', '2025-03-14 03:18:39', '2025-03-14 03:18:39'),
(17, 37, 1, 'Legal Services', '2025-03-14 03:19:10', '2025-03-14 03:19:10'),
(19, 39, 1, 'Medical', '2025-03-14 03:20:04', '2025-03-14 03:20:04'),
(20, 40, 1, 'Nightlife', '2025-03-14 03:20:32', '2025-03-14 03:20:32'),
(21, 41, 1, 'Office Equipment &amp; Supply', '2025-03-14 03:21:07', '2025-03-14 03:21:07'),
(22, 42, 1, 'Pet Service', '2025-03-14 03:21:36', '2025-03-14 03:21:36'),
(23, 43, 1, 'Professional Services', '2025-03-14 03:21:54', '2025-03-14 03:21:54'),
(24, 44, 1, 'Property Services', '2025-03-14 03:22:22', '2025-03-14 03:22:22'),
(25, 45, 1, 'Real Estate', '2025-03-14 03:22:35', '2025-03-14 03:22:35'),
(26, 46, 1, 'Shopping', '2025-03-14 03:22:52', '2025-03-14 03:22:52'),
(27, 47, 1, 'Software', '2025-03-14 03:23:10', '2025-03-14 03:23:10'),
(28, 48, 1, 'Sporting Clubs', '2025-03-14 03:23:35', '2025-03-14 03:23:35'),
(29, 49, 1, 'Things to Do', '2025-03-14 03:23:47', '2025-03-14 03:23:47'),
(30, 50, 1, 'Transport', '2025-03-14 03:24:01', '2025-03-14 03:24:01'),
(31, 51, 1, 'Plumber', '2025-03-23 23:43:49', '2025-03-23 23:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `listing_images`
--

CREATE TABLE `listing_images` (
  `id` bigint UNSIGNED NOT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `purchase_package_id` bigint UNSIGNED DEFAULT NULL,
  `listing_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listing_seos`
--

CREATE TABLE `listing_seos` (
  `id` bigint UNSIGNED NOT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `purchase_package_id` bigint UNSIGNED DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_robots` text COLLATE utf8mb4_unicode_ci,
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `seo_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_modes`
--

CREATE TABLE `maintenance_modes` (
  `id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintenance_modes`
--

INSERT INTO `maintenance_modes` (`id`, `heading`, `description`, `image`, `image_driver`, `created_at`, `updated_at`) VALUES
(1, 'The website under maintenance!', '<p>We are currently undergoing scheduled maintenance to improve our services and enhance your user experience. During this time, our website/system will be temporarily unavailable.\r\n</p><p><br></p><p>\r\nWe apologize for any inconvenience this may cause and appreciate your patience. Please rest assured that we are working diligently to complete the maintenance as quickly as possible.</p>', 'maintenanceMode/3jXAnm42OZuYy3kVDcHKUjW3gyiG8eSo96rlgg19.png', 'local', '2023-10-03 22:44:32', '2024-02-05 04:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `manage_menus`
--

CREATE TABLE `manage_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `template_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_items` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_menus`
--

INSERT INTO `manage_menus` (`id`, `template_name`, `menu_section`, `menu_items`, `created_at`, `updated_at`) VALUES
(3, 'light', 'header', '[\"home\",\"about us\",\"Pricing\",\"Listings\",\"Category\",\"Blogs\",\"contact\"]', '2023-10-15 20:54:10', '2024-12-24 01:33:50'),
(4, 'light', 'footer', '{\"useful_link\":[\"home\",\"about us\",\"blogs\"],\"support_link\":[\"terms_and_conditions\",\"privacy_policy\",\"faq\",\"contact\"]}', '2023-10-15 20:54:10', '2024-09-30 07:48:10'),
(5, 'directory', 'header', '[\"home\",\"about\",\"pricing\",\"listings\",\"category\",\"contact\"]', '2024-10-27 04:07:10', '2024-12-24 01:34:02'),
(6, 'directory', 'footer', '{\"useful_link\":[\"about\",\"blogs\",\"listing\"],\"support_link\":[\"terms and conditions\",\"privacy policy\",\"faq\"]}', '2024-10-27 04:10:24', '2024-10-27 09:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `manual_sms_configs`
--

CREATE TABLE `manual_sms_configs` (
  `id` bigint UNSIGNED NOT NULL,
  `action_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_data` text COLLATE utf8mb4_unicode_ci,
  `param_data` text COLLATE utf8mb4_unicode_ci,
  `form_data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manual_sms_configs`
--

INSERT INTO `manual_sms_configs` (`id`, `action_method`, `action_url`, `header_data`, `param_data`, `form_data`, `created_at`, `updated_at`) VALUES
(1, 'POST', 'https://rest.nexmo.com/sms/json', '{\"Content-Type\":\"application\\/x-www-form-urlencoded\"}', NULL, '{\"from\":\"Rownak\",\"text\":\"[[message]]\",\"to\":\"[[receiver]]\",\"api_key\":\"930cc608\",\"api_secret\":\"2pijsaMOUw5YKOK5\"}', NULL, '2023-10-19 03:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_07_064911_create_admins_table', 2),
(6, '2014_10_12_100000_create_password_resets_table', 3),
(7, '2023_06_10_061241_create_basic_controls_table', 4),
(8, '2023_06_10_123329_create_file_storages_table', 4),
(9, '2023_06_15_102426_create_firebase_notifies_table', 5),
(10, '2023_06_17_085447_create_languages_table', 6),
(11, '2023_06_19_082042_create_sms_controls_table', 7),
(12, '2023_06_20_080624_create_support_tickets_table', 8),
(13, '2023_06_20_080731_create_support_ticket_messages_table', 8),
(14, '2023_06_20_080833_create_support_ticket_attachments_table', 8),
(15, '2023_06_20_212143_create_fire_base_tokens_table', 9),
(16, '2023_06_21_124322_create_in_app_notifications_table', 10),
(17, '2023_06_22_084256_create_gateways_table', 11),
(18, '2023_07_15_162549_create_kycs_table', 12),
(19, '2023_07_17_094844_create_manage_pages_table', 13),
(20, '2023_07_17_101515_create_manage_sections_table', 14),
(21, '2023_07_18_084411_create_pages_table', 15),
(22, '2023_07_22_130913_create_manage_menus_table', 16),
(23, '2023_07_26_193156_create_email_controls_table', 17),
(24, '2023_08_10_153005_create_google_sheet_apis_table', 18),
(25, '2023_08_20_140757_create_contents_table', 19),
(26, '2023_08_20_140808_create_content_details_table', 19),
(27, '2023_08_20_140815_create_content_media_table', 19),
(28, '2023_09_07_151706_create_user_logins_table', 20),
(29, '2023_09_09_105217_create_transactions_table', 21),
(30, '2023_09_09_105305_create_payout_logs_table', 21),
(31, '2023_09_09_105353_create_funds_table', 21),
(32, '2023_09_19_131540_create_deposits_table', 22),
(33, '2023_09_20_093121_create_payouts_table', 23),
(34, '2023_09_21_085103_create_wallets_table', 24),
(35, '2023_10_01_125109_create_pages_table', 25),
(36, '2023_10_02_162152_create_page_details_table', 26),
(37, '2023_10_04_102054_create_maintenance_modes_table', 27),
(38, '2023_10_05_124404_create_email_templates_table', 28),
(39, '2023_10_05_124445_create_notify_templates_table', 28),
(40, '2023_10_05_132313_create_email_sms_templates_table', 29),
(41, '2023_10_05_145420_create_push_notification_templates_table', 30),
(42, '2023_10_05_150447_create_in_app_notification_templates_table', 31),
(43, '2023_10_19_140559_create_manual_sms_configs_table', 32),
(44, '2023_10_19_161530_create_jobs_table', 33),
(45, '2023_12_10_085818_create_blog_categories_table', 34),
(46, '2023_12_10_094858_create_blogs_table', 35),
(47, '2023_12_10_094925_create_blog_details_table', 35),
(48, '2024_09_21_153027_create_packages_table', 36),
(49, '2024_09_21_161512_create_package_details_table', 37),
(50, '2024_09_22_121645_create_purchase_packages_table', 38),
(51, '2024_09_22_155550_create_listing_categories_table', 39),
(52, '2024_09_22_155754_create_listing_category_details_table', 39),
(53, '2024_09_23_113727_create_listings_table', 40),
(54, '2024_09_23_120241_create_amenities_table', 41),
(55, '2024_09_23_120527_create_amenity_details_table', 41),
(56, '2024_09_23_151708_create_places_table', 42),
(57, '2024_09_23_151720_create_place_details_table', 42),
(59, '2024_09_24_102951_create_contact_messages_table', 44),
(60, '2024_09_24_105859_create_subscribers_table', 45),
(61, '2024_09_24_155854_create_package_expiry_crons_table', 46),
(62, '2024_10_01_134454_create_business_hours_table', 47),
(63, '2024_10_01_134745_create_website_and_socials_table', 47),
(64, '2024_10_01_135106_create_listing_images_table', 47),
(65, '2024_10_01_135419_create_listing_amenities_table', 47),
(66, '2024_10_01_135811_create_products_table', 47),
(67, '2024_10_01_140152_create_product_images_table', 47),
(68, '2024_10_01_140427_create_listing_seos_table', 47),
(69, '2024_10_09_140224_create_user_reviews_table', 48),
(70, '2024_10_16_074502_create_user_socials_table', 49),
(71, '2024_10_16_075138_create_followers_table', 50),
(72, '2024_10_16_075416_create_viewers_table', 51),
(73, '2024_10_16_082355_create_favourites_table', 52),
(74, '2024_10_17_051330_create_analytics_table', 53),
(75, '2024_10_21_102646_create_product_queries_table', 54),
(76, '2024_10_21_103044_create_product_replies_table', 54),
(77, '2024_09_24_100208_create_claim_businesses_table', 55),
(78, '2024_11_02_084423_create_claim_business_chatings_table', 56),
(79, '2024_11_03_142055_create_listing_sub_categories_table', 57),
(80, '2024_11_03_142158_create_listing_sub_category_details_table', 57),
(82, '2024_11_05_142735_create_dynamic_forms_table', 58),
(83, '2024_11_07_123206_create_collect_dynamic_form_data_table', 59),
(84, '2024_11_13_133700_create_roles_table', 60),
(96, '2020_07_07_055656_create_countries_table', 61),
(97, '2020_07_07_055725_create_cities_table', 61),
(98, '2020_07_07_055746_create_timezones_table', 61),
(99, '2021_10_19_071730_create_states_table', 61),
(100, '2024_11_24_095729_create_notification_permissions_table', 62),
(101, '2024_11_25_140926_create_visitors_table', 63),
(102, '2021_10_23_082414_create_currencies_table', 64),
(103, '2024_12_24_105734_add_socialite_columns_to_users_table', 65),
(104, '2022_01_22_034939_create_languages_table', 1),
(105, '2024_12_04_110818_drop_foreign_keys_from_multiple_tables', 66);

-- --------------------------------------------------------

--
-- Table structure for table `notification_permissions`
--

CREATE TABLE `notification_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `notifyable_id` int DEFAULT NULL,
  `notifyable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_email_key` text COLLATE utf8mb4_unicode_ci,
  `template_sms_key` text COLLATE utf8mb4_unicode_ci,
  `template_push_key` text COLLATE utf8mb4_unicode_ci,
  `template_in_app_key` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_permissions`
--

INSERT INTO `notification_permissions` (`id`, `notifyable_id`, `notifyable_type`, `template_email_key`, `template_sms_key`, `template_push_key`, `template_in_app_key`, `created_at`, `updated_at`) VALUES
(1, 3, 'App\\Models\\User', '[\"ADD_BALANCE\",\"KYC_APPROVED\"]', '[\"ADD_BALANCE\",\"KYC_APPROVED\"]', '[\"ADD_BALANCE\",\"KYC_APPROVED\"]', '[\"ADD_BALANCE\",\"KYC_APPROVED\"]', '2024-11-24 04:48:58', '2024-11-24 06:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `short_keys` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `sms` text COLLATE utf8mb4_unicode_ci,
  `in_app` text COLLATE utf8mb4_unicode_ci,
  `push` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mail = 0(inactive), mail = 1(active),\r\nsms = 0(inactive), sms = 1(active),\r\nin_app = 0(inactive), in_app = 1(active),\r\npush = 0(inactive), push = 1(active),\r\n ',
  `notify_for` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 => user, 1 => admin',
  `lang_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `language_id`, `name`, `email_from`, `template_key`, `subject`, `short_keys`, `email`, `sms`, `in_app`, `push`, `status`, `notify_for`, `lang_code`, `created_at`, `updated_at`) VALUES
(5, 1, 'Balance deducted by Admin', 'support@example.com', 'DEDUCTED_BALANCE', 'Your Account has been debited', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"main_balance\":\"Users Balance After this operation\"}', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"mail\":\"0\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2021-08-02 12:05:43', '2024-12-24 07:22:39'),
(6, 1, 'Support Ticket Replied', 'support@example.com', 'SUPPORT_TICKET_REPLIED', 'Support Ticket Replied', '{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}', '[[username]] replied  ticket\r\nTicket : [[ticket_id]]', '[[username]] replied  ticket\r\nTicket : [[ticket_id]]', '[[username]] replied  ticket\r\nTicket : [[ticket_id]]', '[[username]] replied  ticket\r\nTicket : [[ticket_id]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2021-08-02 12:05:43', '2024-12-24 07:22:39'),
(7, 1, 'Admin Support Ticket Replied', 'support@example.com', 'ADMIN_REPLIED_TICKET', 'Admin Support Ticket Replied', '{\"ticket_id\":\"Support Ticket ID\",\"ticket_subject\":\"Ticket Subject\",\"reply\":\"Reply Message\"}', 'Admin replied subject: [[ticket_subject]] message: [[reply]]\r\nTicket : [[ticket_id]]', 'Admin replied subject: [[ticket_subject]] message: [[reply]]\r\nTicket : [[ticket_id]]', 'Admin replied subject: [[ticket_subject]] message: [[reply]]\r\nTicket : [[ticket_id]]', 'Admin replied subject: [[ticket_subject]] message: [[reply]]\r\nTicket : [[ticket_id]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2021-08-02 12:05:43', '2024-12-24 07:22:39'),
(10, 1, 'Add Balance', 'support@example.com', 'ADD_BALANCE', 'Your Account has been credited', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"main_balance\":\"Users Balance After this operation\"}', '[[amount]] credited in your account. \n\n\nYour Current Balance [[main_balance]]\n\nTransaction: #[[transaction]]', '[[amount]] credited in your account. \n\n\nYour Current Balance [[main_balance]]\n\nTransaction: #[[transaction]]', '[[amount]] credited in your account. \n\n\nYour Current Balance [[main_balance]]\n\nTransaction: #[[transaction]]', '[[amount]] credited in your account. \n\n\nYour Current Balance [[main_balance]]\n\nTransaction: #[[transaction]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(11, 1, 'KYC Approved', 'support@example.com', 'KYC_APPROVED', 'Your KYC has been approved', '{\"username\":\"Username\"}', '[[username]] your kyc has been approved', 'Your KYC has been approved', 'Your KYC has been approved', 'Your KYC has been approved', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(12, 1, 'KYC Rejected', 'support@example.com', 'KYC_REJECTED', 'Your KYC has been rejected.', '{\"username\":\"Username\"}', '[[username]] your kyc has been rejected', 'Your KYC has been rejected', 'Your KYC has been rejected', 'Your KYC has been rejected', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(13, 1, 'Admin Replied Ticket', 'support@example.com', 'ADMIN_REPLIED_TICKET', 'Admin Replied Ticket', '{\"ticket_id\":\"Support Ticket ID\"}', 'Admin replied  \r\nTicket : [[ticket_id]]', 'Admin replied  \r\nTicket : [[ticket_id]]', 'Admin replied  \r\nTicket : [[ticket_id]]', 'Admin replied  \r\nTicket : [[ticket_id]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(15, 1, 'Payment Request', 'support@example.com', 'PAYMENT_REQUEST', 'Payment Request', '{\"gateway\":\"gateway\",\"currency\":\"currency\",\"username\":\"username\"}', '[[username]] deposit request [[amount]] via [[gateway]]\r\n', '[[username]] deposit request [[amount]] via [[gateway]]\r\n', '[[username]] deposit request [[amount]] via [[gateway]]\r\n', '[[username]] deposit request [[amount]] via [[gateway]]\r\n', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(16, 1, 'Payment Approved', 'support@example.com', 'PAYMENT_APPROVED', 'Payment Approved', '{\"amount\":\"amount\",\"feedback\":\"Admin feedback\",\"charge\":\"Payment Charge\",\"transaction\":\"Transaction Id\",\"gateway_name\":\"Gateway Name\"}', '[[username]] deposit request [[amount]] via [[gateway]] has been approved.', '[[username]] deposit request [[amount]] via [[gateway]] has been approved', '[[username]] deposit request [[amount]] via [[gateway]] has been approved', '[[username]] deposit request [[amount]] via [[gateway]] has been approved', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(17, 1, 'Payment Rejected', 'support@example.com', 'PAYMENT_REJECTED', 'Payment Rejected', '{\"amount\":\"amount\",\"feedback\":\"Admin feedback\",\"charge\",\"Payment Charge\",\"gateway_name\":\"Gateway Name\",\"transaction\":\"Transaction Id\"}', '[[username]] deposit request [[amount]] via [[gateway]] payment rejected', '[[username]] deposit request [[amount]] via [[gateway]] payment rejected', '[[username]] deposit request [[amount]] via [[gateway]] payment rejected', '[[username]] deposit request [[amount]] via [[gateway]] payment rejected', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(18, 1, 'Add Fund User', 'support@example.com', 'ADD_FUND_USER_USER', 'Add Fund User', '{\"amount\":\"Request Amount\",\"transaction\":\"Transaction Number\"}', 'you add fund money amount [[amount]] . Transaction: #[[transaction]]', 'you add fund money amount [[amount]] [[currency]] . Transaction: #[[transaction]]', 'you add fund money amount [[amount]]. Transaction: #[[transaction]]', 'you add fund money amount [[amount]] . Transaction: #[[transaction]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(19, 1, 'Add Fund User Admin', 'support@example.com', 'ADD_FUND_USER_ADMIN', 'Add Fund User Admin', '{\"amount\":\"Request Amount\",\"currency\":\"Request Currency\",\"transaction\":\"Transaction Number\"}', '[[user]] add fund money amount [[amount]] . Transaction: #[[transaction]]', '[[user]] add fund money amount [[amount]]. Transaction: #[[transaction]]', '[[user]] add fund money amount [[amount]] . Transaction: #[[transaction]]', '[[user]] add fund money amount [[amount]] . Transaction: #[[transaction]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(24, 1, 'Reset Password Notification', 'support@example.com', 'PASSWORD_RESET', 'Reset Password Notification', '{\"message\":\"message\"}', 'You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.', 'You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.', 'You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.', 'You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(25, 1, 'Verification Code', 'support@example.com', 'VERIFICATION_CODE', 'Verification Code', '{\"code\":\"code\"}', 'Your Email verification Code  [[code]]', 'Your SMS verification Code  [[code]]', 'Your Email verification Code  [[code]]', 'Your Email verification Code  [[code]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(26, 1, 'Two step enabled.', 'support@example.com', 'TWO_STEP_ENABLED', 'Two step enabled.', '{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\",\"code\":\"code\"}', 'Your verification code is: {{code}}', 'Your verification code is: {{code}}', 'Your verification code is: {{code}}', 'Your verification code is: {{code}}', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(27, 1, 'Two Step disabled', 'support@example.com', 'TWO_STEP_DISABLED', 'Two Step disabled', '{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\"}', 'Google two factor verification is disabled.', 'Google two factor verification is disabled.', 'Google two factor verification is disabled.', 'Google two factor verification is disabled.', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2023-10-07 22:18:47', '2024-12-24 07:22:39'),
(34, 1, 'Create linting by User', 'support@example.com', 'CREATE_LISTING_BY_USER', 'Create linting by User', '{\"from\":\"Which user create the listing\",\"title\":\"listing title\"}', '[[from]] create a listing. Listing Name [[title]]', '[[from]] create a listing. Listing Name [[title]]', '[[from]] create a listing. Listing Name [[title]]', '[[from]] create a listing. Listing Name [[title]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2024-03-07 06:41:23', '2024-12-24 07:22:39'),
(35, 1, 'Listing Approved by Admin', 'support@example.com', 'LISTING_APPROVED_BY_ADMIN', 'Listing Approved by Admin', '{\"from\":\"from\",\"userListing\":\"userListing\"}', '[[from]] has approved your [[userListing]] listing', '[[from]] has approved your [[userListing]] listing', '[[from]] has approved your [[userListing]] listing', '[[from]] create a listing. Listing Name [[title]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2024-03-07 06:41:23', '2024-12-24 07:22:39'),
(36, 1, 'Listing Rejected by Admin', 'support@example.com', 'LISTING_REJECTED_BY_ADMIN', 'Listing Rejected by Admin', '{\"from\":\"from\",\"userListing\":\"userListing\",\"rejectReason\":\"rejectReason\"}', '[[from]] has rejected your [[userListing]] listing Because [[rejectReason]]', '[[from]] has rejected your [[userListing]] listing Because [[rejectReason]]', '[[from]] has rejected your [[userListing]] listing Because [[rejectReason]]', '[[from]] has rejected your [[userListing]] listing Because [[rejectReason]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2024-03-07 06:41:23', '2024-12-24 07:22:39'),
(37, 1, 'Listing Activated by Admin', 'support@example.com', 'LISTING_ACTIVATED_BY_ADMIN', 'Listing Activated by Admin', '{\"from\":\"from\",\"userListing\":\"userListing\"}', '[[from]] has Activated your [[userListing]] listing', '[[from]] has Activated your [[userListing]] listing', '[[from]] has Activated your [[userListing]] listing', '[[from]] has Activated your [[userListing]] listing', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2024-03-07 06:41:23', '2024-12-24 07:22:39'),
(38, 1, 'Listing deactivated by Admin', 'support@example.com', 'LISTING_DEACTIVATED_BY_ADMIN', 'Listing deactivated by Admin', '{\"from\":\"from\",\"userListing\":\"userListing\",\"deactiveReason\":\"deactiveReason\"}', '[[from]] has deactivated your [[userListing]] listing. Because [[deactiveReason]]', '[[from]] has deactivated your [[userListing]] listing. Because [[deactiveReason]]', '[[from]] has deactivated your [[userListing]] listing. Because [[deactiveReason]]', '[[from]] has deactivated your [[userListing]] listing. Because [[deactiveReason]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2024-03-07 06:41:23', '2024-12-24 07:22:39'),
(43, 1, 'Support Ticket Create', 'support@example.com', 'SUPPORT_TICKET_CREATE', 'New Support Ticket', '{\"ticket_id\":\"Support Ticket ID\",\"user\":\"user\"}', '[[user]] create a ticket.\r\nTicket : [[ticket_id]]', '[[user]] create a ticket.\r\nTicket : [[ticket_id]]', '[[user]] create a ticket.\r\nTicket : [[ticket_id]]', '[[user]] create a ticket.\r\nTicket : [[ticket_id]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2021-08-02 12:05:43', '2024-12-24 07:22:39'),
(44, 1, 'Product Query for User', 'support@example.com', 'PRODUCT_QUERY_FOR_USER', 'New Product Query', '{\"from\":\"Who sent query\",\"productTitle\":\"product Title\"}', '[[from]] has sent a query on [[productTitle]] product', '[[from]] has sent a query on [[productTitle]] product', '[[from]] has sent a query on [[productTitle]] product', '[[from]] has sent a query on [[productTitle]] product', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2021-08-02 12:05:43', '2024-12-24 07:22:39'),
(45, 1, 'Product Query for Admin', 'support@example.com', 'PRODUCT_QUERY_FOR_ADMIN', 'New Product Query', '{\"from\":\"Who sent query\",\"productTitle\":\"product Title\"}', '[[from]] has sent a query on [[productTitle]] product', '[[from]] has sent a query on [[productTitle]] product', '[[from]] has sent a query on [[productTitle]] product', '[[from]] has sent a query on [[productTitle]] product', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 1, 'en', '2021-08-02 12:05:43', '2024-12-24 07:22:39'),
(47, 1, 'Claim Rejected by Admin', 'support@example.com', 'CLAIM_BUSINESS_REJECTED_BY_ADMIN', 'Claim Business Rejected by Admin', '{\"from\":\"from\",\"uuid\":\"Claim business Unique ID\",\"rejectReason\":\"rejectReason\"}', '[[from]] has been rejected your [[uuid]] Claim Because [[rejectReason]]', '[[from]] has been rejected your [[uuid]] Claim Because [[rejectReason]]', '[[from]] has been rejected your [[uuid]] Claim Because [[rejectReason]]', '[[from]] has been rejected your [[uuid]] Claim Because [[rejectReason]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2024-03-07 06:41:23', '2024-12-24 07:22:39'),
(48, 1, 'Claim Approved by Admin', 'support@example.com', 'CLAIM_BUSINESS_APPROVED_BY_ADMIN', 'Claim Business Approved by Admin', '{\"from\":\"from\",\"uuid\":\"Claim business Unique ID\",\"message\":\"claim approval message\"}', '[[from]] has been [[message]] \r\nClaim ID [[uuid]]', '[[from]] has been [[message]] \r\nClaim ID [[uuid]]', '[[from]] has been [[message]] \r\nClaim ID [[uuid]]', '[[from]] has been [[message]] \r\nClaim ID [[uuid]]', '{\"mail\":\"1\",\"sms\":\"1\",\"in_app\":\"1\",\"push\":\"1\"}', 0, 'en', '2024-03-07 06:41:23', '2024-12-24 07:22:39'),
(49, 1, 'EXPIRY DATE NOTIFICATION', 'support@example.com', 'EXPIRY_DATE_NOTIFICATION', 'EXPIRY DATE NOTIFICATION', '{\"message\":\"message\"}', '[[message]]\r\n', '[[message]]\r\n', '[[from]] has been [[message]] \r\nClaim ID [[uuid]]', '[[message]]\r\n', '{\"mail\":\"1\",\"sms\":\"0\",\"in_app\":\"0\",\"push\":\"0\"}', 0, 'en', '2024-03-07 06:41:23', '2024-12-24 07:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `price` float DEFAULT NULL,
  `is_multiple_time_purchase` tinyint NOT NULL DEFAULT '0',
  `is_renew` tinyint NOT NULL DEFAULT '0',
  `expiry_time` int DEFAULT NULL,
  `expiry_time_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_image` tinyint(1) NOT NULL DEFAULT '0',
  `is_video` tinyint(1) NOT NULL DEFAULT '0',
  `is_amenities` tinyint(1) NOT NULL DEFAULT '0',
  `is_product` tinyint(1) NOT NULL DEFAULT '0',
  `is_create_from` tinyint NOT NULL DEFAULT '0',
  `is_business_hour` tinyint(1) NOT NULL DEFAULT '0',
  `no_of_listing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_img_per_listing` int DEFAULT NULL,
  `no_of_categories_per_listing` int NOT NULL DEFAULT '1',
  `no_of_amenities_per_listing` int DEFAULT NULL,
  `no_of_product` int DEFAULT NULL,
  `no_of_img_per_product` int DEFAULT NULL,
  `seo` tinyint(1) NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint NOT NULL DEFAULT '0',
  `is_messenger` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_plan_id` text COLLATE utf8mb4_unicode_ci COMMENT '	for automatic sbscription',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `price`, `is_multiple_time_purchase`, `is_renew`, `expiry_time`, `expiry_time_type`, `is_image`, `is_video`, `is_amenities`, `is_product`, `is_create_from`, `is_business_hour`, `no_of_listing`, `no_of_img_per_listing`, `no_of_categories_per_listing`, `no_of_amenities_per_listing`, `no_of_product`, `no_of_img_per_product`, `seo`, `is_whatsapp`, `is_messenger`, `status`, `image`, `driver`, `gateway_plan_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 12, 'Months', 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, 1, 1, 'package/BnKZE7PRQ6PD4e48kGSFSzH3EsQN21.webp', 'local', '{\"paddle\":\"\"}', '2024-09-22 03:25:15', '2025-03-17 04:11:31'),
(2, 179, 0, 0, 1, 'Month', 1, 1, 1, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1, 0, 0, 1, 'package/LhWW5xswh0QZeNYcnjaKIPsqHq3Jst.webp', 'local', '{\"paddle\":\"\"}', '2024-09-22 03:26:47', '2025-03-17 02:54:03'),
(3, 299, 0, 0, 1, 'Month', 1, 1, 1, 1, 1, 1, '5', NULL, 5, NULL, 1, 1, 1, 0, 0, 1, 'package/dBcUhog807IhjwHX1ykiJ9qzUdusF0.webp', 'local', '{\"paddle\":\"\"}', '2024-09-22 03:27:52', '2025-03-17 02:56:53'),
(4, 499, 0, 0, 1, 'Month', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, 1, 1, 1, 0, 0, 1, 'package/nkNpWC6aRbRTOTuYA7sTVwEKif4Ilw.webp', 'local', '{\"paddle\":\"\"}', '2024-09-22 03:28:40', '2025-03-17 02:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE `package_details` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`id`, `package_id`, `language_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Free', '2024-09-22 03:25:15', '2024-09-22 03:25:15'),
(2, 2, 1, 'Essential Local Boost', '2024-09-22 03:26:47', '2025-03-17 01:48:36'),
(3, 3, 1, 'Advanced Growth Accelerator', '2024-09-22 03:27:52', '2025-03-17 02:17:16'),
(4, 4, 1, 'Premium Local Domination', '2024-09-22 03:28:40', '2025-03-17 02:34:00'),
(32, 1, 2, 'Gratis', '2024-12-22 01:25:16', '2024-12-22 01:25:16'),
(33, 2, 2, 'Básico', '2024-12-22 01:43:52', '2024-12-22 01:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `package_expiry_crons`
--

CREATE TABLE `package_expiry_crons` (
  `id` bigint UNSIGNED NOT NULL,
  `before_expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_expiry_crons`
--

INSERT INTO `package_expiry_crons` (`id`, `before_expiry_date`, `created_at`, `updated_at`) VALUES
(21, '30', '2024-12-21 03:47:01', '2024-12-21 03:47:01'),
(22, '15', '2024-12-21 03:47:01', '2024-12-21 03:47:01'),
(23, '7', '2024-12-21 03:47:01', '2024-12-21 03:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image_driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `meta_robots` text COLLATE utf8mb4_unicode_ci,
  `breadcrumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image_driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_status` tinyint(1) DEFAULT '1' COMMENT '0 => inactive, 1 => active',
  `status` tinyint(1) DEFAULT '1' COMMENT '0 => unpublish, 1 => publish',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 => admin create, 1 => developer create, 2 => create for menus, 3 => create custom link',
  `is_breadcrumb_img` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `template_name`, `custom_link`, `page_title`, `meta_title`, `meta_keywords`, `meta_description`, `meta_image`, `meta_image_driver`, `og_description`, `meta_robots`, `breadcrumb_image`, `breadcrumb_image_driver`, `breadcrumb_status`, `status`, `type`, `is_breadcrumb_img`, `created_at`, `updated_at`) VALUES
(26, 'home', '/', 'light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'local', 0, 1, 0, 1, '2023-11-23 02:24:26', '2023-12-17 10:01:03'),
(27, 'about us', 'about', 'light', NULL, 'About', 'About', '[\"About\"]', 'About', NULL, NULL, NULL, NULL, 'pagesImage/aS09aKOcUytu3lPxcsIe0fVyr4gyFf.webp', 'local', 1, 1, 0, 1, '2023-11-23 02:26:10', '2024-09-25 09:43:20'),
(49, 'contact', 'contact', 'light', NULL, 'Contact Us', 'Contact Us', '[\"Contact Us\"]', 'Contact Us', NULL, NULL, NULL, NULL, 'pagesImage/TO3tyRWzfumxcB5WhCyVAVVUze3gxG.webp', 'local', 1, 1, 0, 1, '2024-09-25 08:24:00', '2024-10-23 02:27:07'),
(50, 'terms_and_conditions', 'terms-and-conditions', 'light', NULL, 'Terms &amp; Condition', 'Terms &amp; Condition', '[\"Terms_&amp;_conditions\"]', 'Terms_&amp;_conditions', NULL, NULL, NULL, NULL, 'pagesImage/bPt7Oyv9Dx8Kv8fbGXuKxplcdXKbrJ.webp', 'local', 1, 1, 0, 1, '2024-09-25 09:10:11', '2024-10-27 09:20:36'),
(51, 'privacy_policy', 'privacy-policy', 'light', NULL, 'Privacy Policy', 'Privacy Policy', '[\"Privacy Policy\"]', 'Privacy Policy', NULL, NULL, NULL, NULL, 'pagesImage/biLRICCi6VnuSWZ9ROFUE3aacaAWDl.webp', 'local', 1, 1, 0, 1, '2024-09-25 09:11:14', '2024-10-27 09:20:19'),
(52, 'faq', 'faq', 'light', NULL, 'Faq', 'Faq', '[\"Faq\"]', 'Faq', NULL, NULL, NULL, NULL, 'pagesImage/5GPvb0X0MpxS31RmtkBqUjNUoAb5SN.webp', 'local', 1, 1, 0, 1, '2024-09-25 09:11:43', '2024-10-27 09:25:23'),
(53, 'Category', 'category', 'light', NULL, 'Category', 'Category', '[\"Category\"]', 'Category', NULL, NULL, NULL, NULL, 'pagesImage/9fwCdMWCiOhWl8FuIlMZnkQax5ryl6.webp', 'local', 1, 1, 2, 1, '2024-09-25 10:11:09', '2024-10-27 09:25:23'),
(54, 'Blogs', 'blogs', 'light', NULL, 'Blogs', 'Blogs', '[\"Blogs\"]', 'Blogs', NULL, NULL, NULL, NULL, 'pagesImage/h7dFttxXwsRyZQGZACioJacDnJwf5O.webp', 'local', 1, 1, 2, 1, '2024-09-26 03:14:38', '2024-10-27 09:25:23'),
(55, 'Blog Details', 'blog-details', 'light', NULL, 'Blog Details', 'Blog Details', '[\"Blog Details\"]', 'Blog Details', NULL, NULL, NULL, NULL, 'pagesImage/jcl90t8F51fL9lJtrPkR43rEyvSsFF.webp', 'local', 1, 1, 1, 1, '2024-09-26 05:31:51', '2024-10-27 09:25:23'),
(56, 'Pricing', 'pricing', 'light', NULL, 'Pricing Plan', 'Pricing Plan', '[\"Pricing Plan\"]', 'Pricing Plan', NULL, NULL, NULL, NULL, 'pagesImage/oT9rVl4ocnO3jc1B9P8zA5eMKdEIpw.webp', 'local', 1, 1, 2, 1, '2024-09-26 06:10:07', '2024-10-27 09:25:23'),
(57, 'Pricing Payment', 'pricing-payment', 'light', NULL, 'Pricing Payment', 'Pricing Payment', '[\"Pricing Payment\"]', 'Pricing Payment', NULL, NULL, NULL, NULL, 'pagesImage/qtLTqsIeU596gZ195ijkaqo9XcnVmL.webp', 'local', 1, 1, 1, 1, '2024-09-26 07:41:07', '2024-10-27 09:25:23'),
(58, 'Profile', 'profile', 'light', NULL, 'profile', 'profile', '[\"profile\"]', 'profile', NULL, NULL, NULL, NULL, 'pagesImage/P9mWHdCCjGXWfP3Bi87jsBuvKBiy5p.webp', 'local', 1, 1, 1, 1, '2024-10-16 02:57:24', '2024-10-27 09:25:23'),
(59, 'Listings', 'listings', 'light', NULL, 'Listings', 'listings', '[\"listings\"]', 'listings', NULL, NULL, NULL, NULL, 'pagesImage/1lVvZAcr8cIOYRDNRpi1WHsyJN6hbi.webp', 'local', 1, 1, 2, 1, '2024-10-17 00:40:30', '2024-10-27 09:25:23'),
(60, 'Listing Details', 'listing-details', 'light', NULL, 'Listing Details', 'Listing Details', '[\"Listing Details\"]', 'Listing Details', NULL, NULL, NULL, NULL, 'pagesImage/veKyXxgt7PBLYV5VGD1aixjIBgCeST.webp', 'local', 1, 1, 1, 1, '2024-10-20 03:30:47', '2024-10-27 09:25:23'),
(61, 'Cookie Policy', 'cookie-policy', 'light', NULL, 'Cookie Policy', 'cookie-policy', '[\"cookie-policy\"]', 'cookie-policy', NULL, NULL, NULL, NULL, 'pagesImage/INVuNE2EPYRBjBDWxHYUQAweTJk0PS.webp', 'local', 1, 1, 1, 1, '2024-10-21 03:43:58', '2024-10-27 09:25:23'),
(62, 'home', '/', 'directory', NULL, 'Home', 'Home', '[\"Home\"]', 'Home', NULL, NULL, 'Home', 'index', NULL, 'local', 0, 1, 0, 1, '2024-10-24 09:03:55', '2024-10-31 06:20:19'),
(63, 'about', 'about', 'directory', NULL, 'About', 'About', '[\"About\"]', 'About', NULL, NULL, 'About', 'follow', 'pagesImage/xocJIxVftgC9lfFvomSYuQqYFRhhKF.webp', 'local', 1, 1, 0, 1, '2024-10-27 09:01:52', '2025-03-17 02:44:09'),
(64, 'contact', 'contact', 'directory', NULL, 'Contact', 'Contact', '[\"Contact\"]', 'Contact', NULL, NULL, NULL, NULL, 'pagesImage/z7qCUkyJGGGP6r9ZhdAWRt2evX02SL.webp', 'local', 1, 1, 0, 1, '2024-10-27 09:07:42', '2025-03-17 02:43:19'),
(65, 'Privacy Policy', 'privacy-policy', 'directory', NULL, 'Privacy Policy', 'Privacy Policy', '[\"Privacy Policy\"]', 'Privacy Policy', NULL, NULL, NULL, NULL, 'pagesImage/HUTixbpAI1h76Tp57PAtyyoQ6dgqcn.webp', 'local', 1, 1, 0, 1, '2024-10-27 09:25:23', '2024-10-28 07:36:00'),
(66, 'Terms and Conditions', 'terms-and-conditions', 'directory', NULL, 'Terms And Conditions', 'Terms And Conditions', '[\"Terms And Conditions\"]', 'Terms And Conditions', NULL, NULL, NULL, NULL, 'pagesImage/xLKLJX9n7ceiQ69YkIPyelHgnGmACl.webp', 'local', 1, 1, 0, 1, '2024-10-27 09:25:23', '2024-10-28 07:36:42'),
(67, 'faq', 'faq', 'directory', NULL, 'FAQ', 'FAQ', '[\"FAQ\"]', 'FAQ', NULL, NULL, NULL, NULL, '/ji9AUi2PkUrr85C95qDjNBYEVCARml.webp', 'local', 1, 1, 0, 1, '2024-10-27 09:33:14', '2024-10-28 07:38:01'),
(68, 'category', 'category', 'directory', NULL, 'Category', 'Category', '[\"Category\"]', 'Category', NULL, NULL, NULL, NULL, '/PvnSfhnBINyzLWAza0idxDPyhU294Z.webp', 'local', 1, 1, 2, 1, '2024-10-27 09:34:29', '2024-10-28 07:38:15'),
(69, 'pricing', 'pricing', 'directory', NULL, 'Pricing', 'Pricing', '[\"Pricing\"]', 'Pricing', NULL, NULL, NULL, NULL, '/ONMyAuvZCe9LZWkyJT6t4dnDXk7wPn.webp', 'local', 1, 1, 2, 1, '2024-10-27 09:35:39', '2024-10-28 02:47:03'),
(70, 'pricing payment', 'pricing-payment', 'directory', NULL, 'Pricing Payment', 'Pricing Payment', '[\"Pricing Payment\"]', 'Pricing Payment', NULL, NULL, NULL, NULL, '/Y4pd7CtxcOoTdzk0gDQkXm9Xh5MoTc.webp', 'local', 1, 1, 1, 1, '2024-10-27 09:36:13', '2024-10-28 03:20:43'),
(71, 'listings', 'listings', 'directory', NULL, 'Listing', 'Listing', '[\"Listing\"]', 'Listing', NULL, NULL, NULL, NULL, '/9Y8Ie5tseKsJrTdIRCp0q6aLATuAIV.webp', 'local', 1, 1, 2, 1, '2024-10-27 09:37:06', '2024-10-28 07:38:35'),
(72, 'listing details', 'listing-details', 'directory', NULL, 'Listing Details', 'Listing Details', '[\"Listing Details\"]', 'Listing Details', NULL, NULL, NULL, NULL, '/Tq5JzN19xdHE40WJtRon2TLJNMhRXF.webp', 'local', 0, 1, 1, 1, '2024-10-27 09:37:43', '2024-10-29 02:19:31'),
(73, 'blogs', 'blogs', 'directory', NULL, 'Blogs', 'Blogs', '[\"Blogs\"]', 'Blogs', NULL, NULL, NULL, NULL, '/UD1S4kLrFd1RXx4tDSvKxMDRyH5ZA3.webp', 'local', 1, 1, 2, 1, '2024-10-27 09:38:31', '2024-10-28 04:58:49'),
(74, 'blog details', 'blog-details', 'directory', NULL, 'Blog Details', 'Blog Details', '[\"Blog Details\"]', 'Blog Details', NULL, NULL, NULL, NULL, '/pEjgJe8P0X0We9WK0Z5n2Qac8BKqns.webp', 'local', 1, 1, 1, 1, '2024-10-27 09:39:10', '2024-10-28 04:59:14'),
(75, 'profile', 'profile', 'directory', NULL, 'Profile', 'Profile', '[\"Profile\"]', 'Profile', NULL, NULL, NULL, NULL, '/prvRdLzSOzYz7jQUleRzAwyvj6xKW9.webp', 'local', 1, 1, 1, 1, '2024-10-27 09:40:25', '2024-10-28 07:39:16'),
(76, 'cookie policy', 'cookie-policy', 'directory', NULL, 'Cookie Policy', 'Cookie Policy', '[\"Cookie Policy\"]', 'Cookie Policy', NULL, NULL, NULL, NULL, '/OwD8EQzu32x89dVtX7GCw11mm9DXYs.webp', 'local', 1, 1, 1, 1, '2024-10-27 09:40:46', '2024-10-28 07:39:27'),
(77, 'login', 'login', 'light', NULL, 'Login', 'Login', '[\"Login\"]', 'Login', NULL, NULL, NULL, NULL, 'pagesImage/XFD0Isd8WyuYr4S3iOvSoO1grWtfLx.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:35:55'),
(78, 'register', 'register', 'light', NULL, 'Register', 'Register', '[\"Register\"]', 'Register', NULL, NULL, NULL, NULL, 'pagesImage/zwoDriOjUNY1uZ29T4znKvBtrms7Lm.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:36:18'),
(79, 'sms verification', 'sms-verification', 'light', NULL, 'Sms Verification', 'Sms Verification', '[\"Sms Verification\"]', 'Sms Verification', NULL, NULL, NULL, NULL, 'pagesImage/1l97S03BKCSOOGzjb3pxnmBkU8DUXf.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:36:42'),
(80, 'email verification', 'email-verification', 'light', NULL, 'Email Verification', 'Email Verification', '[\"Email Verification\"]', 'Email Verification', NULL, NULL, NULL, NULL, 'pagesImage/kbzTcUSYzCTgvplmd3CUEt7TdGPsm5.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:37:13'),
(81, '2FA verification', '2FA-verification', 'light', NULL, '2FA Verification', '2FA Verification', '[\"2FA Verification\"]', '2FA Verification', NULL, NULL, NULL, NULL, 'pagesImage/YTOhiG8tWbxYeVIfk8V5tqH1pQCTZL.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:37:40'),
(82, 'Reset Password', 'reset-password', 'light', NULL, 'Reset Password', 'Reset Password', '[\"Reset Password\"]', 'Reset Password', NULL, NULL, NULL, NULL, 'pagesImage/YnmW6qCywUDGywB9Tv0FsJdg40j5Ga.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:38:33'),
(83, 'login', 'login', 'directory', NULL, 'Login', 'Login', '[\"Login\"]', 'Login', NULL, NULL, NULL, NULL, 'pagesImage/pfsGI4IASN3NHKRPqKPyGwsqvA5PRM.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:43:10'),
(84, 'register', 'register', 'directory', NULL, 'Register', 'Register', '[\"Register\"]', 'Register', NULL, NULL, NULL, NULL, 'pagesImage/CfEefbLfdV2pFoj2YE6uvRBXGrEzAg.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:43:55'),
(85, 'sms verification', 'sms-verification', 'directory', NULL, 'Sms Verification', 'Sms Verification', '[\"Sms Verification\"]', 'Sms Verification', NULL, NULL, NULL, NULL, 'pagesImage/1reAf5hVH7qGoUUO5cGTEAyuFML9j6.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:44:09'),
(86, 'email verification', 'email-verification', 'directory', NULL, 'Email Verification', 'Email Verification', '[\"Email Verification\"]', 'Email Verification', NULL, NULL, NULL, NULL, 'pagesImage/2YZ1FRMeI6EF2q4k6UPm45OHchs1Qw.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:44:31'),
(87, '2FA verification', '2FA-verification', 'directory', NULL, '2FA Verification', '2FA Verification', '[\"2FA Verification\"]', '2FA Verification', NULL, NULL, NULL, NULL, 'pagesImage/AC9gEKU2wQ41UUj3HhrjbcnYeKeh2d.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:44:47'),
(88, 'Reset Password', 'reset-password', 'directory', NULL, 'Reset Password', 'Reset Password', '[\"Reset Password\"]', 'Reset Password', NULL, NULL, NULL, NULL, 'pagesImage/EnFG8INFH7zFuHvbSm6eGW7laC9FTJ.webp', 'local', 1, 1, 1, 1, '2024-10-30 01:35:00', '2024-10-30 01:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_details`
--

CREATE TABLE `page_details` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `sections` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_details`
--

INSERT INTO `page_details` (`id`, `page_id`, `language_id`, `name`, `content`, `sections`, `created_at`, `updated_at`) VALUES
(21, 26, 1, 'Home', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[hero]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[listing_categories]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[listing]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[how_it_work]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[testimonial]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[blog]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[news_letter]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"hero\",\"listing_categories\",\"listing\",\"how_it_work\",\"testimonial\",\"blog\",\"news_letter\"]', '2023-11-23 02:24:26', '2024-10-27 03:47:03'),
(47, 27, 1, 'About', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[about]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[testimonial]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[how_it_work]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"about\",\"testimonial\",\"how_it_work\"]', '2024-09-25 06:17:59', '2024-09-25 08:11:00'),
(48, 49, 1, 'Contact', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[contact]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"contact\"]', '2024-09-25 08:24:00', '2024-09-25 08:24:00'),
(49, 50, 1, 'Terms &amp; Condition', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[terms_and_conditions]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"terms_and_conditions\"]', '2024-09-25 09:10:11', '2024-09-25 09:15:46'),
(50, 51, 1, 'Privacy Policy', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[privacy_policy]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"privacy_policy\"]', '2024-09-25 09:11:14', '2024-09-25 09:15:30'),
(51, 52, 1, 'FAQ', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[faq]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"faq\"]', '2024-09-25 09:11:43', '2024-10-27 09:25:53'),
(52, 53, 1, 'Category', NULL, NULL, '2024-09-25 10:12:08', '2024-09-25 10:12:08'),
(53, 54, 1, 'Blogs', NULL, NULL, '2024-09-26 03:15:00', '2024-09-26 03:15:00'),
(54, 55, 1, 'Blog Details', NULL, NULL, '2024-09-26 05:32:19', '2024-09-26 05:32:19'),
(55, 56, 1, 'Pricing', NULL, NULL, '2024-09-26 06:10:53', '2024-09-26 06:10:53'),
(56, 57, 1, 'Pricing Payment', NULL, NULL, '2024-09-26 07:41:27', '2024-09-26 07:41:27'),
(57, 58, 1, 'Profile', NULL, NULL, '2024-10-16 02:58:15', '2024-10-16 02:58:15'),
(58, 59, 1, 'Listing', NULL, NULL, '2024-10-19 08:11:23', '2024-10-19 08:11:23'),
(59, 60, 1, 'Listing Details', NULL, NULL, '2024-10-20 03:31:12', '2024-10-20 03:31:12'),
(60, 61, 1, 'Cookie Policy', NULL, NULL, '2024-10-21 03:44:16', '2024-10-21 03:44:16'),
(61, 62, 1, 'Home', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[hero]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[listing_categories]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[listing]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[how_it_work]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[testimonial]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[faq]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[blog]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"hero\",\"listing_categories\",\"listing\",\"how_it_work\",\"testimonial\",\"faq\",\"blog\"]', '2024-10-24 09:03:55', '2025-03-18 04:29:09'),
(62, 63, 1, 'About', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[about]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[testimonial]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p><div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[how_it_work]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"about\",\"testimonial\",\"how_it_work\"]', '2024-10-27 09:01:52', '2025-03-17 02:44:09'),
(63, 64, 1, 'Contact', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[contact]]</div>\n                    <span class=\"delete-block\">×</span>\n                    <span class=\"up-block\">↑</span>\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"contact\"]', '2024-10-27 09:07:42', '2024-10-27 09:07:42'),
(64, 67, 1, 'FAQ', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[faq]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"faq\"]', '2024-10-27 09:33:14', '2024-10-27 09:33:14'),
(65, 68, 1, 'Category', NULL, NULL, '2024-10-27 09:34:29', '2024-10-27 09:34:29'),
(66, 69, 1, 'Pricing', NULL, NULL, '2024-10-27 09:35:39', '2024-10-27 09:35:39'),
(67, 70, 1, 'Pricing Payment', NULL, NULL, '2024-10-27 09:36:13', '2024-10-27 09:36:13'),
(68, 71, 1, 'Listing', NULL, NULL, '2024-10-27 09:37:06', '2024-10-27 09:37:06'),
(69, 72, 1, 'Listing Details', NULL, NULL, '2024-10-27 09:37:43', '2024-10-27 09:37:43'),
(70, 73, 1, 'Blogs', NULL, NULL, '2024-10-27 09:38:31', '2024-10-27 09:38:31'),
(71, 74, 1, 'Blog Details', NULL, NULL, '2024-10-27 09:39:10', '2024-10-27 09:39:10'),
(72, 75, 1, 'Profile', NULL, NULL, '2024-10-27 09:40:25', '2024-10-27 09:40:25'),
(73, 76, 1, 'Cookie Policy', NULL, NULL, '2024-10-27 09:40:46', '2024-10-27 09:40:46'),
(74, 65, 1, 'Privacy Policy', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[privacy_policy]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"privacy_policy\"]', '2024-10-28 07:35:36', '2024-10-28 07:35:36'),
(75, 66, 1, 'Terms And Conditions', '<div class=\"custom-block\" contenteditable=\"false\"><div class=\"custom-block-content\">[[terms_and_conditions]]</div>\r\n                    <span class=\"delete-block\">×</span>\r\n                    <span class=\"up-block\">↑</span>\r\n                    <span class=\"down-block\">↓</span></div><p><br></p>', '[\"terms_and_conditions\"]', '2024-10-28 07:36:42', '2024-10-28 07:36:42'),
(76, 77, 1, 'Login', NULL, NULL, '2024-10-30 01:35:44', '2024-10-30 01:35:44'),
(77, 78, 1, 'Register', NULL, NULL, '2024-10-30 01:36:08', '2024-10-30 01:36:08'),
(78, 79, 1, 'Sms Verification', NULL, NULL, '2024-10-30 01:36:32', '2024-10-30 01:36:32'),
(79, 80, 1, 'Email Verification', NULL, NULL, '2024-10-30 01:36:58', '2024-10-30 01:36:58'),
(80, 81, 1, '2FA Verification', NULL, NULL, '2024-10-30 01:37:29', '2024-10-30 01:37:29'),
(81, 82, 1, 'Reset Password', NULL, NULL, '2024-10-30 01:38:22', '2024-10-30 01:38:22'),
(82, 83, 1, 'Login', NULL, NULL, '2024-10-30 01:43:10', '2024-10-30 01:43:10'),
(83, 84, 1, 'Register', NULL, NULL, '2024-10-30 01:43:55', '2024-10-30 01:43:55'),
(84, 85, 1, 'Sms Verification', NULL, NULL, '2024-10-30 01:44:09', '2024-10-30 01:44:09'),
(85, 86, 1, 'Email Verification', NULL, NULL, '2024-10-30 01:44:31', '2024-10-30 01:44:31'),
(86, 87, 1, '2FA Verification', NULL, NULL, '2024-10-30 01:44:47', '2024-10-30 01:44:47'),
(87, 88, 1, 'Reset Password', NULL, NULL, '2024-10-30 01:45:00', '2024-10-30 01:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `purchase_package_id` bigint UNSIGNED DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_description` longtext COLLATE utf8mb4_unicode_ci,
  `product_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_queries`
--

CREATE TABLE `product_queries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL COMMENT 'receiver',
  `client_id` bigint UNSIGNED DEFAULT NULL COMMENT 'sender',
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `customer_enquiry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `my_enquiry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_replies`
--

CREATE TABLE `product_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL COMMENT 'sender',
  `client_id` bigint UNSIGNED DEFAULT NULL COMMENT 'receiver',
  `product_query_id` bigint UNSIGNED DEFAULT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=> unseen, 1=> seen',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_packages`
--

CREATE TABLE `purchase_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `package_id` bigint UNSIGNED NOT NULL,
  `trx_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` int DEFAULT NULL,
  `api_subscription_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Api response id for subscription',
  `price` float DEFAULT NULL,
  `is_renew` tinyint NOT NULL DEFAULT '0',
  `is_image` tinyint NOT NULL DEFAULT '0',
  `is_video` tinyint NOT NULL DEFAULT '0',
  `is_amenities` tinyint NOT NULL DEFAULT '0',
  `is_product` tinyint NOT NULL DEFAULT '0',
  `is_create_from` tinyint NOT NULL DEFAULT '0',
  `is_business_hour` tinyint NOT NULL DEFAULT '0',
  `no_of_listing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_img_per_listing` int DEFAULT NULL,
  `no_of_categories_per_listing` int NOT NULL DEFAULT '1',
  `no_of_amenities_per_listing` int DEFAULT NULL,
  `no_of_product` int DEFAULT NULL,
  `no_of_img_per_product` int DEFAULT NULL,
  `seo` tinyint NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint NOT NULL DEFAULT '0',
  `is_messenger` tinyint NOT NULL DEFAULT '0',
  `purchase_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'WEBSITE' COMMENT 'WEBSITE = Purchase from Website, APP = Purchase from App',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=>pending, 1=>approved, 2=>cancel',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `last_reminder_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_packages`
--

INSERT INTO `purchase_packages` (`id`, `user_id`, `package_id`, `trx_id`, `deposit_id`, `api_subscription_id`, `price`, `is_renew`, `is_image`, `is_video`, `is_amenities`, `is_product`, `is_create_from`, `is_business_hour`, `no_of_listing`, `no_of_img_per_listing`, `no_of_categories_per_listing`, `no_of_amenities_per_listing`, `no_of_product`, `no_of_img_per_product`, `seo`, `is_whatsapp`, `is_messenger`, `purchase_from`, `status`, `type`, `purchase_date`, `expire_date`, `last_reminder_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, 1, 'WEBSITE', 1, 'Purchase', '2025-03-14', NULL, NULL, '2025-03-14 05:31:29', '2025-03-14 05:31:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_contacts`
--

CREATE TABLE `razorpay_contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `contact_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: deactive, 1: active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `name`, `permission`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Admin', '[\"admin.dashboard\",\"admin.package\",\"admin.package.create\",\"admin.package.edit\",\"admin.package.delete\",\"admin.purchase.package\",\"admin.purchase.package.subscription.cancel\",\"admin.purchase.package.delete.multiple\",\"admin.listing.category\",\"admin.listing.category.create\",\"admin.listing.category.edit\",\"admin.listing.category.delete\",\"admin.listing.category.delete.multiple\",\"admin.listings\",\"admin.listing.single.analytics\",\"admin.listing.edit\",\"admin.listing.setting\",\"admin.single.listing.approved\",\"admin.multi.listing.approved\",\"admin.single.listing.rejected\",\"admin.multi.listing.rejected\",\"admin.single.listing.active\",\"admin.single.listing.deactive\",\"admin.listing.delete\",\"admin.listing.delete.multiple\",\"admin.listing.analytics\",\"admin.listing.analytics.delete\",\"admin.listing.analytics.delete.multiple\",\"admin.listing.reviews\",\"admin.listing.reviews.delete\",\"admin.listing.reviews.delete.multiple\",\"admin.listing.form.data\",\"admin.listing.form.data.delete\",\"admin.listing.form.data.delete.multiple\",\"admin.wishList\",\"admin.wishList.delete\",\"admin.wishList.delete.multiple\",\"admin.amenities\",\"admin.amenities.create\",\"admin.amenities.edit\",\"admin.amenities.delete\",\"admin.amenities.delete.multiple\",\"admin.all.country\",\"admin.country.add\",\"admin.country.edit\",\"admin.country.delete\",\"admin.country.delete.multiple\",\"admin.country.all.state\",\"admin.country.add.state\",\"admin.country.state.edit\",\"admin.country.state.delete\",\"admin.country.delete.multiple.state\",\"admin.country.state.all.city\",\"admin.country.state.add.city\",\"admin.country.state.city.edit\",\"admin.country.state.city.delete\",\"admin.country.delete.multiple.state.city\",\"admin.claim.business\",\"admin.claim.business.start.chat\",\"admin.claim.business.enable.chat.status\",\"admin.claim.business.delete.multiple\",\"admin.claim.business.conversation\",\"admin.claim.business.conversation.push.chat.new.message\",\"admin.claim.chat.stage.change\",\"admin.contact.message\",\"admin.contact.message.delete.multiple\",\"admin.subscriber\",\"admin.subscriber.send.email.form\",\"admin.subscriber.delete.multiple\",\"admin.user.transaction\",\"admin.payment.log\",\"admin.payment.pending\",\"admin.payment.action\",\"admin.ticket\",\"admin.ticket.view\",\"admin.ticket.reply\",\"admin.ticket.closed\",\"admin.kyc.form.list\",\"admin.kyc.create\",\"admin.kyc.edit\",\"admin.kyc.list\",\"admin.kyc.action\",\"admin.users\",\"admin.user.payment\",\"admin.user.payout\",\"admin.user.view.profile\",\"admin.users.add\",\"admin.user.edit\",\"admin.login.as.user\",\"admin.user.email.update\",\"admin.user.username.update\",\"admin.user.update.balance\",\"admin.user.password.update\",\"admin.user.preferences.update\",\"admin.user.twoFa.update\",\"admin.user-balance-update\",\"admin.send.email\",\"admin.user.email.send\",\"admin.mail.all.user\",\"admin.email-send\",\"admin.email-send.store\",\"admin.user.delete.multiple\",\"admin.user.delete\",\"admin.settings\",\"admin.basic.control\",\"admin.storage.index\",\"admin.maintenance.index\",\"admin.logo.settings\",\"admin.firebase.config\",\"admin.pusher.config\",\"admin.email.control\",\"admin.currency.exchange.api.config\",\"admin.email.templates\",\"admin.sms.templates\",\"admin.in.app.notification.templates\",\"admin.push.notification.templates\",\"admin.sms.controls\",\"admin.plugin.config\",\"admin.translate.api.setting\",\"admin.language.index\",\"admin.language.keywords\",\"admin.gdpr.cookie\",\"admin.map.config\",\"admin.language.create\",\"admin.language.store\",\"admin.add.language.keyword\",\"admin.basic.control.update\",\"admin.basic.control.activity.update\",\"admin.currency.exchange.api.config.update\",\"admin.storage.edit\",\"admin.storage.update\",\"admin.storage.setDefault\",\"admin.maintenance.mode.update\",\"admin.logo.update\",\"admin.firebase.config.update\",\"admin.pusher.config.update\",\"admin.email.config.edit\",\"admin.email.config.update\",\"admin.email.set.default\",\"admin.email.template.default\",\"admin.email.template.edit\",\"admin.email.template.update\",\"admin.sms.template.edit\",\"admin.sms.template.update\",\"admin.in.app.notification.template.edit\",\"admin.in.app.notification.template.update\",\"admin.push.notification.template.edit\",\"admin.push.notification.template.update\",\"admin.sms.config.edit\",\"admin.sms.config.update\",\"admin.manual.sms.method.update\",\"admin.sms.set.default\",\"admin.tawk.configuration\",\"admin.tawk.configuration.update\",\"admin.fb.messenger.configuration\",\"admin.fb.messenger.configuration.update\",\"admin.google.recaptcha.configuration\",\"admin.google.recaptcha.Configuration.update\",\"admin.google.analytics.configuration\",\"admin.google.analytics.configuration.update\",\"admin.manual.recaptcha\",\"admin.manual.recaptcha.update\",\"admin.active.recaptcha\",\"admin.translate.api.config.edit\",\"admin.translate.api.setting.update\",\"admin.translate.set.default\",\"admin.language.edit\",\"admin.language.update\",\"admin.change.language.status\",\"admin.update.language.keyword\",\"admin.single.keyword.translate\",\"admin.all.keyword.translate\",\"admin.language.update.key\",\"admin.gdpr.cookie.update\",\"admin.map.config.update\",\"admin.delete.language.keyword\",\"admin.language.delete\",\"admin.payment.methods\",\"admin.deposit.manual.index\",\"admin.deposit.manual.create\",\"admin.deposit.manual.store\",\"admin.edit.payment.methods\",\"admin.update.payment.methods\",\"admin.deposit.manual.edit\",\"admin.deposit.manual.update\",\"admin.role\",\"admin.role.create\",\"admin.role.update\",\"admin.role.delete\",\"admin.role.staff\",\"admin.role.usersCreate\",\"role.statusChange\",\"admin.manage.theme\",\"admin.manage.theme.select\",\"admin.page.index\",\"admin.create.page\",\"admin.edit.page\",\"admin.edit.static.page\",\"admin.page.seo\",\"admin.page.delete\",\"admin.manage.menu\",\"admin.add.custom.link\",\"admin.header.menu.item.store\",\"admin.footer.menu.item.store\",\"admin.edit.custom.link\",\"admin.delete.custom.link\",\"admin.manage.content\",\"admin.manage.content.multiple\",\"admin.content.store\",\"admin.content.item.edit\",\"admin.content.item.delete\",\"admin.blogs.index\",\"admin.blog-category.index\",\"admin.blogs.create\",\"admin.blogs.store\",\"admin.blog-category.create\",\"admin.blog-category.store\",\"admin.blogs.edit*\",\"admin.blog-category.edit\",\"admin.blogs.destroy\",\"admin.blog-category.destroy\"]', 1, '2024-11-13 08:57:55', '2024-12-24 09:58:00'),
(4, 1, 'Staff', '[\"admin.dashboard\",\"admin.package\",\"admin.package.edit\",\"admin.package.delete\",\"admin.purchase.package\",\"admin.listing.category\",\"admin.listing.category.create\",\"admin.listing.category.edit\",\"admin.listing.category.delete\",\"admin.listing.category.delete.multiple\",\"admin.listings\",\"admin.listing.single.analytics\",\"admin.listing.edit\",\"admin.listing.setting\",\"admin.single.listing.approved\",\"admin.multi.listing.approved\",\"admin.single.listing.rejected\",\"admin.multi.listing.rejected\",\"admin.single.listing.active\",\"admin.single.listing.deactive\",\"admin.listing.delete\",\"admin.listing.delete.multiple\",\"admin.listing.analytics\",\"admin.listing.analytics.delete\",\"admin.listing.analytics.delete.multiple\",\"admin.listing.reviews\",\"admin.listing.form.data\",\"admin.wishList\",\"admin.amenities\",\"admin.amenities.create\",\"admin.amenities.edit\",\"admin.amenities.delete\",\"admin.amenities.delete.multiple\",\"admin.all.country\",\"admin.country.all.state\",\"admin.country.state.all.city\",\"admin.claim.business\",\"admin.claim.business.conversation\",\"admin.contact.message\",\"admin.contact.message.delete.multiple\",\"admin.subscriber\",\"admin.subscriber.send.email.form\",\"admin.subscriber.delete.multiple\",\"admin.user.transaction\",\"admin.payment.log\",\"admin.payment.pending\",\"admin.payment.action\",\"admin.ticket\",\"admin.ticket.view\",\"admin.ticket.reply\",\"admin.kyc.form.list\",\"admin.kyc.create\",\"admin.kyc.list\",\"admin.users\",\"admin.user.payment\",\"admin.user.payout\",\"admin.user.view.profile\",\"admin.users.add\",\"admin.user.edit\",\"admin.login.as.user\",\"admin.user.email.update\",\"admin.user.username.update\",\"admin.user.update.balance\",\"admin.user.password.update\",\"admin.user.preferences.update\",\"admin.user.twoFa.update\",\"admin.user-balance-update\",\"admin.send.email\",\"admin.user.email.send\",\"admin.mail.all.user\",\"admin.email-send\",\"admin.email-send.store\",\"admin.user.delete.multiple\",\"admin.user.delete\",\"admin.settings\",\"admin.basic.control\",\"admin.storage.index\",\"admin.maintenance.index\",\"admin.logo.settings\",\"admin.firebase.config\",\"admin.pusher.config\",\"admin.email.control\",\"admin.currency.exchange.api.config\",\"admin.email.templates\",\"admin.sms.templates\",\"admin.in.app.notification.templates\",\"admin.push.notification.templates\",\"admin.sms.controls\",\"admin.plugin.config\",\"admin.translate.api.setting\",\"admin.language.index\",\"admin.language.keywords\",\"admin.gdpr.cookie\",\"admin.map.config\",\"admin.language.create\",\"admin.language.store\",\"admin.add.language.keyword\",\"admin.basic.control.update\",\"admin.basic.control.activity.update\",\"admin.currency.exchange.api.config.update\",\"admin.storage.edit\",\"admin.storage.update\",\"admin.storage.setDefault\",\"admin.maintenance.mode.update\",\"admin.logo.update\",\"admin.firebase.config.update\",\"admin.pusher.config.update\",\"admin.email.config.edit\",\"admin.email.config.update\",\"admin.email.set.default\",\"admin.email.template.default\",\"admin.email.template.edit\",\"admin.email.template.update\",\"admin.sms.template.edit\",\"admin.sms.template.update\",\"admin.in.app.notification.template.edit\",\"admin.in.app.notification.template.update\",\"admin.push.notification.template.edit\",\"admin.push.notification.template.update\",\"admin.sms.config.edit\",\"admin.sms.config.update\",\"admin.manual.sms.method.update\",\"admin.sms.set.default\",\"admin.tawk.configuration\",\"admin.tawk.configuration.update\",\"admin.fb.messenger.configuration\",\"admin.fb.messenger.configuration.update\",\"admin.google.recaptcha.configuration\",\"admin.google.recaptcha.Configuration.update\",\"admin.google.analytics.configuration\",\"admin.google.analytics.configuration.update\",\"admin.manual.recaptcha\",\"admin.manual.recaptcha.update\",\"admin.active.recaptcha\",\"admin.translate.api.config.edit\",\"admin.translate.api.setting.update\",\"admin.translate.set.default\",\"admin.language.edit\",\"admin.language.update\",\"admin.change.language.status\",\"admin.update.language.keyword\",\"admin.single.keyword.translate\",\"admin.all.keyword.translate\",\"admin.language.update.key\",\"admin.gdpr.cookie.update\",\"admin.map.config.update\",\"admin.delete.language.keyword\",\"admin.language.delete\",\"admin.payment.methods\",\"admin.deposit.manual.index\",\"admin.deposit.manual.create\",\"admin.deposit.manual.store\",\"admin.edit.payment.methods\",\"admin.update.payment.methods\",\"admin.deposit.manual.edit\",\"admin.deposit.manual.update\",\"admin.role\",\"admin.role.staff\",\"admin.role.usersCreate\",\"admin.manage.theme\",\"admin.manage.theme.select\",\"admin.page.index\",\"admin.create.page\",\"admin.manage.menu\",\"admin.add.custom.link\",\"admin.header.menu.item.store\",\"admin.footer.menu.item.store\",\"admin.edit.custom.link\",\"admin.manage.content\",\"admin.blogs.index\",\"admin.blog-category.index\"]', 1, '2024-11-13 09:01:08', '2024-12-24 09:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `status`, `country_code`, `created_at`, `updated_at`) VALUES
(25, 3, 'Victoria', 1, 'AU', '2025-03-17 03:29:56', '2025-03-17 03:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(7, 'support@12three.com.au', '2025-03-17 02:42:39', '2025-03-17 02:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `ticket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0 =>  Open, 1 => Answered, 2 => Replied, 3 => Closed',
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_attachments`
--

CREATE TABLE `support_ticket_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `support_ticket_message_id` int DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_messages`
--

CREATE TABLE `support_ticket_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `support_ticket_id` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int UNSIGNED NOT NULL,
  `transactional_id` int DEFAULT NULL,
  `transactional_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `balance` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT '0.00',
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trx_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(11,2) DEFAULT '0.00',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image_driver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Zip Or Postal Code',
  `address_one` text COLLATE utf8mb4_unicode_ci,
  `address_two` text COLLATE utf8mb4_unicode_ci,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `identity_verify` tinyint NOT NULL DEFAULT '0' COMMENT '0 => Not Applied, 1=> Applied, 2=> Approved, 3 => Rejected	',
  `address_verify` tinyint NOT NULL DEFAULT '0' COMMENT '0 => Not Applied, 1=> Applied, 2=> Approved, 3 => Rejected	',
  `two_fa` tinyint(1) NOT NULL DEFAULT '0',
  `two_fa_verify` tinyint(1) NOT NULL DEFAULT '1',
  `two_fa_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT '1',
  `sms_verification` tinyint(1) NOT NULL DEFAULT '1',
  `verify_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `website`, `referral_id`, `language_id`, `email`, `country_code`, `country`, `phone_code`, `phone`, `balance`, `image`, `image_driver`, `cover_image`, `cover_image_driver`, `state`, `city`, `zip_code`, `address_one`, `address_two`, `bio`, `provider`, `provider_id`, `status`, `identity_verify`, `address_verify`, `two_fa`, `two_fa_verify`, `two_fa_code`, `email_verification`, `sms_verification`, `verify_code`, `sent_at`, `last_login`, `last_seen`, `time_zone`, `password`, `email_verified_at`, `remember_token`, `password_reset_token`, `google_id`, `facebook_id`, `github_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sebastian', 'Hartono', 'Sebastian', NULL, NULL, NULL, 'sebastianjose0334@gmail.com', 'AU', 'Australia', '+61', '431732755', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, 'GJEW3CCEB2GW4COM', 1, 1, NULL, NULL, '2025-03-18 10:26:36', '2025-03-18 12:08:50', NULL, '$2y$10$xMAmoiIdO8QEOmNHSEh79eichPhmNxl57fP836oOhu/nQGtfx8zwS', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-14 03:55:45', '2025-03-18 01:08:50', NULL),
(2, 'Matthew', 'Langford', '12Three', NULL, NULL, NULL, 'matt.langford@12three.com.au', 'AU', 'Australia', '+61', '408587332', 0.00, NULL, NULL, NULL, NULL, 'VIC', 'Melbourne', '3004', 'Level 3, 1 Queens Rd', 'Melbourne', NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 1, 1, NULL, NULL, '2025-03-14 16:30:32', '2025-03-14 17:41:13', NULL, '$2y$10$1ihGs6WrZ4kEnRxJ1bBNAe3R3M70UfQe42vfpI75BndPxfdZHrLTW', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-14 05:25:04', '2025-03-14 06:41:13', NULL),
(3, 'Ridge', 'Tagala', 'Ridgy_Test', NULL, NULL, NULL, 'Ridgetagala8@gmail.com', 'AU', 'Australia', '+61', '444531822', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 1, 1, NULL, NULL, '2025-03-21 09:49:37', '2025-03-26 10:31:21', NULL, '$2y$10$/qijxajQfqi9V3ndsAJDV.2sMgf5FS3nG9pOUCa3x2GKO9Wy9hGyu', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-20 22:49:37', '2025-03-25 23:31:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_kycs`
--

CREATE TABLE `user_kycs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `kyc_id` int DEFAULT NULL,
  `kyc_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_info` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=>pending , 1=> verified, 2=>rejected',
  `reason` longtext COLLATE utf8mb4_unicode_ci COMMENT 'rejected reason',
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `longitude`, `latitude`, `country_code`, `location`, `country`, `ip_address`, `browser`, `os`, `get_device`, `created_at`, `updated_at`) VALUES
(1, 1, '144.9669', '-37.8159', 'AU', 'Melbourne - - Australia - AU ', 'Australia', '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', '2025-03-14 03:55:46', '2025-03-14 03:55:46'),
(2, 2, '144.9669', '-37.8159', 'AU', 'Melbourne - - Australia - AU ', 'Australia', '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', '2025-03-14 05:25:05', '2025-03-14 05:25:05'),
(3, 2, '144.9669', '-37.8159', 'AU', 'Melbourne - - Australia - AU ', 'Australia', '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', '2025-03-14 05:30:32', '2025-03-14 05:30:32'),
(4, 1, '144.9669', '-37.8159', 'AU', 'Melbourne - - Australia - AU ', 'Australia', '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', '2025-03-17 23:26:37', '2025-03-17 23:26:37'),
(5, 3, '144.9669', '-37.8159', 'AU', 'Melbourne - - Australia - AU ', 'Australia', '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', '2025-03-20 22:49:38', '2025-03-20 22:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_reviews`
--

CREATE TABLE `user_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_socials`
--

CREATE TABLE `user_socials` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `social_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `viewers`
--

CREATE TABLE `viewers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `viewer_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `browser_info`, `os`, `device`, `user_agent`, `created_at`, `updated_at`) VALUES
(0, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-13 23:48:47', '2025-03-13 23:48:47'),
(1, '::1', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-06 08:29:57', '2025-01-06 08:29:57'),
(2, '::1', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-06 08:55:42', '2025-01-06 08:55:42'),
(3, '35.199.18.14', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-13 23:48:50', '2025-03-13 23:48:50'),
(4, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-13 23:51:40', '2025-03-13 23:51:40'),
(5, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-13 23:55:43', '2025-03-13 23:55:43'),
(6, '58.7.108.213', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 00:04:36', '2025-03-14 00:04:36'),
(7, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 00:16:26', '2025-03-14 00:16:26'),
(8, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 00:16:49', '2025-03-14 00:16:49'),
(9, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 00:46:43', '2025-03-14 00:46:43'),
(10, '58.7.108.213', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 00:54:10', '2025-03-14 00:54:10'),
(11, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 01:16:45', '2025-03-14 01:16:45'),
(12, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 01:46:46', '2025-03-14 01:46:46'),
(13, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 02:16:53', '2025-03-14 02:16:53'),
(14, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '2025-03-14 02:22:08', '2025-03-14 02:22:08'),
(15, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 02:40:05', '2025-03-14 02:40:05'),
(16, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '2025-03-14 02:44:27', '2025-03-14 02:44:27'),
(17, '157.55.39.15', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-14 02:45:24', '2025-03-14 02:45:24'),
(18, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 02:46:51', '2025-03-14 02:46:51'),
(19, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 03:16:52', '2025-03-14 03:16:52'),
(20, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '2025-03-13 19:35:37', '2025-03-13 19:35:37'),
(21, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '2025-03-14 03:38:23', '2025-03-14 03:38:23'),
(22, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '2025-03-14 03:38:45', '2025-03-14 03:38:45'),
(23, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 03:46:52', '2025-03-14 03:46:52'),
(24, '157.55.39.195', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-14 03:47:33', '2025-03-14 03:47:33'),
(25, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 04:16:47', '2025-03-14 04:16:47'),
(26, '207.46.13.6', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-14 04:21:22', '2025-03-14 04:21:22'),
(27, '58.7.108.213', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 04:35:53', '2025-03-14 04:35:53'),
(28, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 04:46:50', '2025-03-14 04:46:50'),
(29, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 05:16:52', '2025-03-14 05:16:52'),
(30, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 05:23:12', '2025-03-14 05:23:12'),
(31, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 05:29:23', '2025-03-14 05:29:23'),
(32, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 05:46:48', '2025-03-14 05:46:48'),
(33, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 06:06:21', '2025-03-14 06:06:21'),
(34, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 06:16:49', '2025-03-14 06:16:49'),
(35, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 06:46:53', '2025-03-14 06:46:53'),
(36, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 07:16:55', '2025-03-14 07:16:55'),
(37, '18.132.196.8', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 7.0; SM-G892A Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Mobile Safari/537.36', '2025-03-14 07:25:54', '2025-03-14 07:25:54'),
(38, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 07:46:51', '2025-03-14 07:46:51'),
(39, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 08:16:53', '2025-03-14 08:16:53'),
(40, '17.241.227.37', 'Safari', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', '2025-03-14 08:26:35', '2025-03-14 08:26:35'),
(41, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 08:46:54', '2025-03-14 08:46:54'),
(42, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 09:16:50', '2025-03-14 09:16:50'),
(43, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 09:46:50', '2025-03-14 09:46:50'),
(44, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 10:16:50', '2025-03-14 10:16:50'),
(45, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 10:46:50', '2025-03-14 10:46:50'),
(46, '117.102.154.186', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 10:59:58', '2025-03-14 10:59:58'),
(47, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 11:16:56', '2025-03-14 11:16:56'),
(48, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 11:46:50', '2025-03-14 11:46:50'),
(49, '157.245.118.225', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 (compatible)', '2025-03-14 11:48:02', '2025-03-14 11:48:02'),
(50, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 12:16:51', '2025-03-14 12:16:51'),
(51, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 12:46:55', '2025-03-14 12:46:55'),
(52, '149.57.180.99', 'Firefox', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '2025-03-14 13:11:34', '2025-03-14 13:11:34'),
(53, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 13:16:56', '2025-03-14 13:16:56'),
(54, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 13:46:58', '2025-03-14 13:46:58'),
(55, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 14:17:00', '2025-03-14 14:17:00'),
(56, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 14:46:54', '2025-03-14 14:46:54'),
(57, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 14:47:43', '2025-03-14 14:47:43'),
(58, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 14:47:44', '2025-03-14 14:47:44'),
(59, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 15:16:54', '2025-03-14 15:16:54'),
(60, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 15:46:54', '2025-03-14 15:46:54'),
(61, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 16:16:55', '2025-03-14 16:16:55'),
(62, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 16:45:21', '2025-03-14 16:45:21'),
(63, '35.225.82.182', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 16:45:22', '2025-03-14 16:45:22'),
(64, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 16:47:00', '2025-03-14 16:47:00'),
(65, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 17:17:00', '2025-03-14 17:17:00'),
(66, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 17:30:31', '2025-03-14 17:30:31'),
(67, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 17:30:33', '2025-03-14 17:30:33'),
(68, '35.225.82.182', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 17:38:58', '2025-03-14 17:38:58'),
(69, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 17:45:57', '2025-03-14 17:45:57'),
(70, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 17:46:58', '2025-03-14 17:46:58'),
(71, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 17:51:11', '2025-03-14 17:51:11'),
(72, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 17:51:14', '2025-03-14 17:51:14'),
(73, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 18:15:04', '2025-03-14 18:15:04'),
(74, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 18:15:06', '2025-03-14 18:15:06'),
(75, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 18:16:58', '2025-03-14 18:16:58'),
(76, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 18:17:48', '2025-03-14 18:17:48'),
(77, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 18:27:21', '2025-03-14 18:27:21'),
(78, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 18:31:25', '2025-03-14 18:31:25'),
(79, '66.249.68.66', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.6943.141 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2025-03-14 18:34:55', '2025-03-14 18:34:55'),
(80, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 18:43:47', '2025-03-14 18:43:47'),
(81, '35.199.18.14', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 18:43:48', '2025-03-14 18:43:48'),
(82, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 18:46:59', '2025-03-14 18:46:59'),
(83, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 19:02:17', '2025-03-14 19:02:17'),
(84, '35.245.188.175', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 19:03:29', '2025-03-14 19:03:29'),
(85, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 19:04:27', '2025-03-14 19:04:27'),
(86, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 19:06:27', '2025-03-14 19:06:27'),
(87, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 19:06:30', '2025-03-14 19:06:30'),
(88, '34.105.37.64', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 19:07:31', '2025-03-14 19:07:31'),
(89, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 19:11:20', '2025-03-14 19:11:20'),
(90, '34.86.21.151', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 19:16:25', '2025-03-14 19:16:25'),
(91, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 19:16:55', '2025-03-14 19:16:55'),
(92, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-14 19:30:49', '2025-03-14 19:30:49'),
(93, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-14 19:31:22', '2025-03-14 19:31:22'),
(94, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 19:46:58', '2025-03-14 19:46:58'),
(95, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 20:16:56', '2025-03-14 20:16:56'),
(96, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 20:46:56', '2025-03-14 20:46:56'),
(97, '66.249.68.68', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.6943.141 Mobile Safari/537.36 (compatible; GoogleOther)', '2025-03-14 21:00:02', '2025-03-14 21:00:02'),
(98, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 21:17:00', '2025-03-14 21:17:00'),
(99, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 21:46:57', '2025-03-14 21:46:57'),
(100, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 22:17:01', '2025-03-14 22:17:01'),
(101, '66.249.68.68', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.6943.141 Mobile Safari/537.36 (compatible; GoogleOther)', '2025-03-14 22:19:07', '2025-03-14 22:19:07'),
(102, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 22:47:04', '2025-03-14 22:47:04'),
(103, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 23:17:01', '2025-03-14 23:17:01'),
(104, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-14 23:46:58', '2025-03-14 23:46:58'),
(105, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 00:16:58', '2025-03-15 00:16:58'),
(106, '172.226.146.16', 'Safari Browser', 'iPhone', 'Mobile', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', '2025-03-15 00:33:04', '2025-03-15 00:33:04'),
(107, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 00:47:00', '2025-03-15 00:47:00'),
(108, '52.167.144.229', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-15 00:52:02', '2025-03-15 00:52:02'),
(109, '172.226.146.17', 'Safari Browser', 'iPhone', 'Mobile', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', '2025-03-15 00:56:28', '2025-03-15 00:56:28'),
(110, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 01:17:06', '2025-03-15 01:17:06'),
(111, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 01:46:59', '2025-03-15 01:46:59'),
(112, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 02:17:06', '2025-03-15 02:17:06'),
(113, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 02:47:07', '2025-03-15 02:47:07'),
(114, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 03:17:04', '2025-03-15 03:17:04'),
(115, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 03:47:01', '2025-03-15 03:47:01'),
(116, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 04:17:02', '2025-03-15 04:17:02'),
(117, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 04:47:04', '2025-03-15 04:47:04'),
(118, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 05:17:00', '2025-03-15 05:17:00'),
(119, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 05:47:01', '2025-03-15 05:47:01'),
(120, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 06:17:02', '2025-03-15 06:17:02'),
(121, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 06:47:04', '2025-03-15 06:47:04'),
(122, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 07:17:08', '2025-03-15 07:17:08'),
(123, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 07:47:05', '2025-03-15 07:47:05'),
(124, '144.91.110.164', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'python-requests/2.32.3', '2025-03-15 08:15:30', '2025-03-15 08:15:30'),
(125, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 08:17:04', '2025-03-15 08:17:04'),
(126, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 08:47:05', '2025-03-15 08:47:05'),
(127, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 09:17:06', '2025-03-15 09:17:06'),
(128, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 09:47:11', '2025-03-15 09:47:11'),
(129, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 10:17:04', '2025-03-15 10:17:04'),
(130, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 10:47:11', '2025-03-15 10:47:11'),
(131, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 11:17:06', '2025-03-15 11:17:06'),
(132, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 11:47:06', '2025-03-15 11:47:06'),
(133, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 12:17:13', '2025-03-15 12:17:13'),
(134, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 12:47:07', '2025-03-15 12:47:07'),
(135, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 13:17:07', '2025-03-15 13:17:07'),
(136, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 13:47:07', '2025-03-15 13:47:07'),
(137, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-15 14:12:38', '2025-03-15 14:12:38'),
(138, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 14:12:40', '2025-03-15 14:12:40'),
(139, '52.167.144.169', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-15 14:13:27', '2025-03-15 14:13:27'),
(140, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 14:17:09', '2025-03-15 14:17:09'),
(141, '23.27.145.62', 'Firefox', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '2025-03-15 14:33:48', '2025-03-15 14:33:48'),
(142, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-15 14:38:27', '2025-03-15 14:38:27'),
(143, '34.105.37.64', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 14:38:29', '2025-03-15 14:38:29'),
(144, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 14:38:30', '2025-03-15 14:38:30'),
(145, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 14:40:00', '2025-03-15 14:40:00'),
(146, '35.199.18.14', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 14:43:37', '2025-03-15 14:43:37'),
(147, '34.86.21.151', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 14:45:54', '2025-03-15 14:45:54'),
(148, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 14:47:10', '2025-03-15 14:47:10'),
(149, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 14:47:15', '2025-03-15 14:47:15'),
(150, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-15 15:03:56', '2025-03-15 15:03:56'),
(151, '35.225.82.182', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 15:03:58', '2025-03-15 15:03:58'),
(152, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 15:04:08', '2025-03-15 15:04:08'),
(153, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 15:10:39', '2025-03-15 15:10:39'),
(154, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 15:17:15', '2025-03-15 15:17:15'),
(155, '52.167.144.171', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-15 15:46:37', '2025-03-15 15:46:37'),
(156, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 15:47:15', '2025-03-15 15:47:15'),
(157, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-15 16:03:59', '2025-03-15 16:03:59'),
(158, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:04:01', '2025-03-15 16:04:01'),
(159, '35.245.188.175', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:04:24', '2025-03-15 16:04:24'),
(160, '34.145.165.227', 'Internet Explorer', 'Windows 7', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2025-03-15 16:04:28', '2025-03-15 16:04:28'),
(161, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:08:23', '2025-03-15 16:08:23'),
(162, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:14:50', '2025-03-15 16:14:50'),
(163, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-15 16:15:39', '2025-03-15 16:15:39'),
(164, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:15:40', '2025-03-15 16:15:40'),
(165, '34.105.37.64', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:16:23', '2025-03-15 16:16:23'),
(166, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 16:17:16', '2025-03-15 16:17:16'),
(167, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:17:28', '2025-03-15 16:17:28'),
(168, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:20:54', '2025-03-15 16:20:54'),
(169, '34.86.21.151', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:21:59', '2025-03-15 16:21:59'),
(170, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:22:22', '2025-03-15 16:22:22'),
(171, '35.245.188.175', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:32:38', '2025-03-15 16:32:38'),
(172, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-15 16:35:59', '2025-03-15 16:35:59'),
(173, '35.225.82.182', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:40:27', '2025-03-15 16:40:27'),
(174, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:41:05', '2025-03-15 16:41:05'),
(175, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:42:46', '2025-03-15 16:42:46'),
(176, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 16:47:18', '2025-03-15 16:47:18'),
(177, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:53:46', '2025-03-15 16:53:46'),
(178, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-15 16:56:10', '2025-03-15 16:56:10'),
(179, '35.199.18.14', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:56:11', '2025-03-15 16:56:11'),
(180, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 16:57:40', '2025-03-15 16:57:40'),
(181, '34.86.21.151', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 17:07:23', '2025-03-15 17:07:23'),
(182, '35.245.188.175', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 17:14:18', '2025-03-15 17:14:18'),
(183, '34.145.165.227', 'Internet Explorer', 'Windows 7', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2025-03-15 17:14:24', '2025-03-15 17:14:24'),
(184, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-15 17:16:24', '2025-03-15 17:16:24'),
(185, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 17:16:26', '2025-03-15 17:16:26'),
(186, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 17:17:14', '2025-03-15 17:17:14'),
(187, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 17:20:16', '2025-03-15 17:20:16'),
(188, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 17:26:28', '2025-03-15 17:26:28'),
(189, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 17:26:48', '2025-03-15 17:26:48'),
(190, '34.105.37.64', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-15 17:27:58', '2025-03-15 17:27:58'),
(191, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 17:47:15', '2025-03-15 17:47:15'),
(192, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 18:17:15', '2025-03-15 18:17:15'),
(193, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 18:47:15', '2025-03-15 18:47:15'),
(194, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 19:17:11', '2025-03-15 19:17:11'),
(195, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 19:47:17', '2025-03-15 19:47:17'),
(196, '138.128.153.24', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 OPR/89.0.4447.51', '2025-03-15 20:01:32', '2025-03-15 20:01:32'),
(197, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 20:17:16', '2025-03-15 20:17:16'),
(198, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 20:47:14', '2025-03-15 20:47:14'),
(199, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 21:17:15', '2025-03-15 21:17:15'),
(200, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 21:47:13', '2025-03-15 21:47:13'),
(201, '47.128.59.178', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', '2025-03-15 22:08:02', '2025-03-15 22:08:02'),
(202, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 22:17:20', '2025-03-15 22:17:20'),
(203, '47.128.116.253', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', '2025-03-15 22:36:04', '2025-03-15 22:36:04'),
(204, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 22:47:13', '2025-03-15 22:47:13'),
(205, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 23:17:13', '2025-03-15 23:17:13'),
(206, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-15 23:47:19', '2025-03-15 23:47:19'),
(207, '52.167.144.216', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-16 00:11:53', '2025-03-16 00:11:53'),
(208, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 00:17:15', '2025-03-16 00:17:15'),
(209, '66.249.68.68', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.6943.141 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2025-03-16 00:39:35', '2025-03-16 00:39:35'),
(210, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 00:47:21', '2025-03-16 00:47:21'),
(211, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 01:17:21', '2025-03-16 01:17:21'),
(212, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 01:47:17', '2025-03-16 01:47:17'),
(213, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 02:17:16', '2025-03-16 02:17:16'),
(214, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 02:47:16', '2025-03-16 02:47:16'),
(215, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 03:17:23', '2025-03-16 03:17:23'),
(216, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 03:47:21', '2025-03-16 03:47:21'),
(217, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 04:17:17', '2025-03-16 04:17:17'),
(218, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 04:47:22', '2025-03-16 04:47:22'),
(219, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 05:17:23', '2025-03-16 05:17:23'),
(220, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 05:47:18', '2025-03-16 05:47:18'),
(221, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 06:17:19', '2025-03-16 06:17:19'),
(222, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 06:47:24', '2025-03-16 06:47:24'),
(223, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 07:17:19', '2025-03-16 07:17:19'),
(224, '206.168.34.212', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2025-03-16 07:39:33', '2025-03-16 07:39:33'),
(225, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 07:47:20', '2025-03-16 07:47:20'),
(226, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 08:17:20', '2025-03-16 08:17:20'),
(227, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 08:47:24', '2025-03-16 08:47:24'),
(228, '18.222.252.142', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'curl/8.3.0', '2025-03-16 09:00:12', '2025-03-16 09:00:12'),
(229, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 09:17:21', '2025-03-16 09:17:21'),
(230, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 09:47:20', '2025-03-16 09:47:20'),
(231, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 10:17:28', '2025-03-16 10:17:28'),
(232, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 10:47:21', '2025-03-16 10:47:21'),
(233, '117.102.154.186', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-16 10:56:55', '2025-03-16 10:56:55'),
(234, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 11:17:26', '2025-03-16 11:17:26'),
(235, '40.77.167.151', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-16 11:37:17', '2025-03-16 11:37:17'),
(236, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 11:47:23', '2025-03-16 11:47:23'),
(237, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 12:17:25', '2025-03-16 12:17:25'),
(238, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 12:47:23', '2025-03-16 12:47:23'),
(239, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 13:17:26', '2025-03-16 13:17:26'),
(240, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 13:47:23', '2025-03-16 13:47:23'),
(241, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 14:17:27', '2025-03-16 14:17:27'),
(242, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 14:47:27', '2025-03-16 14:47:27'),
(243, '149.57.180.136', 'Firefox', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '2025-03-16 15:06:15', '2025-03-16 15:06:15'),
(244, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 15:17:29', '2025-03-16 15:17:29'),
(245, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-16 15:39:33', '2025-03-16 15:39:33'),
(246, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 15:39:35', '2025-03-16 15:39:35'),
(247, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 15:44:13', '2025-03-16 15:44:13'),
(248, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 15:46:39', '2025-03-16 15:46:39'),
(249, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 15:47:25', '2025-03-16 15:47:25'),
(250, '34.105.37.64', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 15:49:44', '2025-03-16 15:49:44'),
(251, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-16 16:00:13', '2025-03-16 16:00:13'),
(252, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:00:14', '2025-03-16 16:00:14'),
(253, '34.86.21.151', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:02:43', '2025-03-16 16:02:43'),
(254, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:07:51', '2025-03-16 16:07:51'),
(255, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:15:20', '2025-03-16 16:15:20'),
(256, '35.225.82.182', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:16:54', '2025-03-16 16:16:54'),
(257, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 16:17:29', '2025-03-16 16:17:29'),
(258, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-16 16:21:25', '2025-03-16 16:21:25'),
(259, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:21:27', '2025-03-16 16:21:27'),
(260, '34.105.37.64', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:22:10', '2025-03-16 16:22:10'),
(261, '34.86.21.151', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:25:43', '2025-03-16 16:25:43'),
(262, '34.145.165.227', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:26:25', '2025-03-16 16:26:25'),
(263, '35.245.188.175', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:27:08', '2025-03-16 16:27:08');
INSERT INTO `visitors` (`id`, `ip_address`, `browser_info`, `os`, `device`, `user_agent`, `created_at`, `updated_at`) VALUES
(264, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:31:25', '2025-03-16 16:31:25'),
(265, '35.225.82.182', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:39:03', '2025-03-16 16:39:03'),
(266, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:40:37', '2025-03-16 16:40:37'),
(267, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-16 16:42:35', '2025-03-16 16:42:35'),
(268, '34.86.21.151', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:46:39', '2025-03-16 16:46:39'),
(269, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 16:47:25', '2025-03-16 16:47:25'),
(270, '35.199.18.14', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-16 16:47:33', '2025-03-16 16:47:33'),
(271, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 17:17:25', '2025-03-16 17:17:25'),
(272, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 17:47:26', '2025-03-16 17:47:26'),
(273, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 18:17:30', '2025-03-16 18:17:30'),
(274, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 18:47:29', '2025-03-16 18:47:29'),
(275, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 19:17:27', '2025-03-16 19:17:27'),
(276, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 19:47:27', '2025-03-16 19:47:27'),
(277, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 20:17:33', '2025-03-16 20:17:33'),
(278, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 20:47:27', '2025-03-16 20:47:27'),
(279, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 21:17:28', '2025-03-16 21:17:28'),
(280, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 21:47:34', '2025-03-16 21:47:34'),
(281, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 22:17:27', '2025-03-16 22:17:27'),
(282, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 22:47:28', '2025-03-16 22:47:28'),
(283, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 23:17:36', '2025-03-16 23:17:36'),
(284, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-16 23:47:29', '2025-03-16 23:47:29'),
(285, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 00:17:30', '2025-03-17 00:17:30'),
(286, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 00:31:55', '2025-03-17 00:31:55'),
(287, '3.101.154.65', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'BasicOps-LinkPreview', '2025-03-17 00:37:45', '2025-03-17 00:37:45'),
(288, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 00:47:36', '2025-03-17 00:47:36'),
(289, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 00:49:42', '2025-03-17 00:49:42'),
(290, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 01:17:33', '2025-03-17 01:17:33'),
(291, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 01:40:33', '2025-03-17 01:40:33'),
(292, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 01:43:25', '2025-03-17 01:43:25'),
(293, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 01:47:34', '2025-03-17 01:47:34'),
(294, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 02:17:38', '2025-03-17 02:17:38'),
(295, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 02:17:56', '2025-03-17 02:17:56'),
(296, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 02:28:07', '2025-03-17 02:28:07'),
(297, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 02:47:35', '2025-03-17 02:47:35'),
(298, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 02:49:23', '2025-03-17 02:49:23'),
(299, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 03:06:49', '2025-03-17 03:06:49'),
(300, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 03:11:10', '2025-03-17 03:11:10'),
(301, '47.128.122.122', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; TikTokSpider; ttspider-feedback@tiktok.com)', '2025-03-17 03:15:40', '2025-03-17 03:15:40'),
(302, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 03:17:31', '2025-03-17 03:17:31'),
(303, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 03:25:12', '2025-03-17 03:25:12'),
(304, '35.225.82.182', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 03:25:15', '2025-03-17 03:25:15'),
(305, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 03:26:46', '2025-03-17 03:26:46'),
(306, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 03:30:31', '2025-03-17 03:30:31'),
(307, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 03:47:06', '2025-03-17 03:47:06'),
(308, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 03:47:09', '2025-03-17 03:47:09'),
(309, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 03:47:36', '2025-03-17 03:47:36'),
(310, '34.168.171.29', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 03:47:45', '2025-03-17 03:47:45'),
(311, '34.86.21.151', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 03:49:14', '2025-03-17 03:49:14'),
(312, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 04:17:35', '2025-03-17 04:17:35'),
(313, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 04:24:47', '2025-03-17 04:24:47'),
(314, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 04:27:30', '2025-03-17 04:27:30'),
(315, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 04:47:32', '2025-03-17 04:47:32'),
(316, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 04:57:39', '2025-03-17 04:57:39'),
(317, '118.139.77.225', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '2025-03-17 05:02:06', '2025-03-17 05:02:06'),
(318, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 05:17:38', '2025-03-17 05:17:38'),
(319, '66.249.68.67', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2025-03-17 05:27:57', '2025-03-17 05:27:57'),
(320, '66.249.68.67', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2025-03-17 05:27:57', '2025-03-17 05:27:57'),
(321, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 05:47:39', '2025-03-17 05:47:39'),
(322, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 06:17:34', '2025-03-17 06:17:34'),
(323, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 06:47:34', '2025-03-17 06:47:34'),
(324, '149.57.191.91', 'Chrome', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-03-17 07:04:09', '2025-03-17 07:04:09'),
(325, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 07:17:40', '2025-03-17 07:17:40'),
(326, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 07:47:34', '2025-03-17 07:47:34'),
(327, '106.219.163.23', 'Chrome', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Vivaldi/5.3.2679.68', '2025-03-17 08:06:48', '2025-03-17 08:06:48'),
(328, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 08:17:34', '2025-03-17 08:17:34'),
(329, '51.195.34.242', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', '2025-03-17 08:34:40', '2025-03-17 08:34:40'),
(330, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 08:47:40', '2025-03-17 08:47:40'),
(331, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 09:17:41', '2025-03-17 09:17:41'),
(332, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 09:47:41', '2025-03-17 09:47:41'),
(333, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 10:17:35', '2025-03-17 10:17:35'),
(334, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 10:47:39', '2025-03-17 10:47:39'),
(335, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 11:17:37', '2025-03-17 11:17:37'),
(336, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 11:47:41', '2025-03-17 11:47:41'),
(337, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 12:17:38', '2025-03-17 12:17:38'),
(338, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 12:47:42', '2025-03-17 12:47:42'),
(339, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 13:17:37', '2025-03-17 13:17:37'),
(340, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 13:47:44', '2025-03-17 13:47:44'),
(341, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 14:17:39', '2025-03-17 14:17:39'),
(342, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 14:36:33', '2025-03-17 14:36:33'),
(343, '35.245.188.175', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 14:36:35', '2025-03-17 14:36:35'),
(344, '35.199.18.14', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-17 14:36:39', '2025-03-17 14:36:39'),
(345, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 14:47:38', '2025-03-17 14:47:38'),
(346, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 15:17:39', '2025-03-17 15:17:39'),
(347, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 15:47:43', '2025-03-17 15:47:43'),
(348, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 16:17:42', '2025-03-17 16:17:42'),
(349, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 16:47:40', '2025-03-17 16:47:40'),
(350, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 17:17:41', '2025-03-17 17:17:41'),
(351, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 17:47:43', '2025-03-17 17:47:43'),
(352, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 18:17:43', '2025-03-17 18:17:43'),
(353, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 18:47:47', '2025-03-17 18:47:47'),
(354, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 19:17:47', '2025-03-17 19:17:47'),
(355, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 19:47:41', '2025-03-17 19:47:41'),
(356, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 20:17:47', '2025-03-17 20:17:47'),
(357, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 20:47:46', '2025-03-17 20:47:46'),
(358, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 21:17:46', '2025-03-17 21:17:46'),
(359, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 21:47:42', '2025-03-17 21:47:42'),
(360, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 22:17:47', '2025-03-17 22:17:47'),
(361, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-17 22:35:09', '2025-03-17 22:35:09'),
(362, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 22:47:49', '2025-03-17 22:47:49'),
(363, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 23:17:49', '2025-03-17 23:17:49'),
(364, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', '2025-03-17 23:25:59', '2025-03-17 23:25:59'),
(365, '207.46.13.124', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-17 23:40:17', '2025-03-17 23:40:17'),
(366, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-17 23:47:51', '2025-03-17 23:47:51'),
(367, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 00:17:46', '2025-03-18 00:17:46'),
(368, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 00:47:45', '2025-03-18 00:47:45'),
(369, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 01:17:50', '2025-03-18 01:17:50'),
(370, '52.167.144.235', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-18 01:23:08', '2025-03-18 01:23:08'),
(371, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 01:47:46', '2025-03-18 01:47:46'),
(372, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 02:17:49', '2025-03-18 02:17:49'),
(373, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 02:47:52', '2025-03-18 02:47:52'),
(374, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 03:17:52', '2025-03-18 03:17:52'),
(375, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 03:47:47', '2025-03-18 03:47:47'),
(376, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 04:17:50', '2025-03-18 04:17:50'),
(377, '58.7.108.213', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-18 04:23:43', '2025-03-18 04:23:43'),
(378, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 04:47:48', '2025-03-18 04:47:48'),
(379, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 05:17:48', '2025-03-18 05:17:48'),
(380, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 05:47:54', '2025-03-18 05:47:54'),
(381, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 06:17:50', '2025-03-18 06:17:50'),
(382, '93.158.90.69', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; U; Android 13; sk-sk; Xiaomi 11T Pro Build/TKQ1.220829.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.136 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.4.0-g', '2025-03-18 06:29:24', '2025-03-18 06:29:24'),
(383, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 06:47:52', '2025-03-18 06:47:52'),
(384, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 07:17:52', '2025-03-18 07:17:52'),
(385, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 07:47:51', '2025-03-18 07:47:51'),
(386, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 08:17:53', '2025-03-18 08:17:53'),
(387, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 08:47:52', '2025-03-18 08:47:52'),
(388, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 09:17:53', '2025-03-18 09:17:53'),
(389, '117.102.154.254', 'Firefox', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:137.0) Gecko/20100101 Firefox/137.0', '2025-03-18 09:30:43', '2025-03-18 09:30:43'),
(390, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 09:47:49', '2025-03-18 09:47:49'),
(391, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 10:17:54', '2025-03-18 10:17:54'),
(392, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 10:47:57', '2025-03-18 10:47:57'),
(393, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 11:17:56', '2025-03-18 11:17:56'),
(394, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 11:47:51', '2025-03-18 11:47:51'),
(395, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 12:17:55', '2025-03-18 12:17:55'),
(396, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 12:47:53', '2025-03-18 12:47:53'),
(397, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 13:17:52', '2025-03-18 13:17:52'),
(398, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 13:47:55', '2025-03-18 13:47:55'),
(399, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 14:17:59', '2025-03-18 14:17:59'),
(400, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 14:47:56', '2025-03-18 14:47:56'),
(401, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 15:17:54', '2025-03-18 15:17:54'),
(402, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 15:47:54', '2025-03-18 15:47:54'),
(403, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 16:17:58', '2025-03-18 16:17:58'),
(404, '149.57.180.23', 'Firefox', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '2025-03-18 16:34:42', '2025-03-18 16:34:42'),
(405, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 16:48:01', '2025-03-18 16:48:01'),
(406, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 17:17:55', '2025-03-18 17:17:55'),
(407, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 17:48:00', '2025-03-18 17:48:00'),
(408, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 18:18:01', '2025-03-18 18:18:01'),
(409, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 18:48:01', '2025-03-18 18:48:01'),
(410, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 19:17:59', '2025-03-18 19:17:59'),
(411, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 19:47:59', '2025-03-18 19:47:59'),
(412, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 20:18:01', '2025-03-18 20:18:01'),
(413, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 20:47:57', '2025-03-18 20:47:57'),
(414, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 21:17:58', '2025-03-18 21:17:58'),
(415, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 21:47:57', '2025-03-18 21:47:57'),
(416, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 22:18:01', '2025-03-18 22:18:01'),
(417, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 22:48:04', '2025-03-18 22:48:04'),
(418, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 23:18:04', '2025-03-18 23:18:04'),
(419, '116.255.53.46', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-18 23:23:11', '2025-03-18 23:23:11'),
(420, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-18 23:47:57', '2025-03-18 23:47:57'),
(421, '101.115.129.152', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-18 23:52:15', '2025-03-18 23:52:15'),
(422, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 00:18:05', '2025-03-19 00:18:05'),
(423, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-19 00:38:23', '2025-03-19 00:38:23'),
(424, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 00:48:05', '2025-03-19 00:48:05'),
(425, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 01:17:59', '2025-03-19 01:17:59'),
(426, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 01:47:59', '2025-03-19 01:47:59'),
(427, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-19 02:06:24', '2025-03-19 02:06:24'),
(428, '34.86.239.201', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-19 02:06:26', '2025-03-19 02:06:26'),
(429, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 02:18:00', '2025-03-19 02:18:00'),
(430, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 02:48:00', '2025-03-19 02:48:00'),
(431, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-19 02:56:04', '2025-03-19 02:56:04'),
(432, '34.83.221.62', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.197 Safari/537.36', '2025-03-19 02:56:06', '2025-03-19 02:56:06'),
(433, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 03:18:02', '2025-03-19 03:18:02'),
(434, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 03:48:01', '2025-03-19 03:48:01'),
(435, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 04:18:02', '2025-03-19 04:18:02'),
(436, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 04:48:02', '2025-03-19 04:48:02'),
(437, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 05:18:02', '2025-03-19 05:18:02'),
(438, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 05:48:03', '2025-03-19 05:48:03'),
(439, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 06:18:01', '2025-03-19 06:18:01'),
(440, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 06:48:04', '2025-03-19 06:48:04'),
(441, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 07:18:04', '2025-03-19 07:18:04'),
(442, '106.219.164.55', 'Chrome', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2025-03-19 07:44:37', '2025-03-19 07:44:37'),
(443, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 07:48:03', '2025-03-19 07:48:03'),
(444, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 08:18:04', '2025-03-19 08:18:04'),
(445, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 08:48:06', '2025-03-19 08:48:06'),
(446, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 09:18:05', '2025-03-19 09:18:05'),
(447, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 09:48:05', '2025-03-19 09:48:05'),
(448, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 10:18:07', '2025-03-19 10:18:07'),
(449, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 10:48:06', '2025-03-19 10:48:06'),
(450, '138.197.132.49', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 (compatible)', '2025-03-19 11:02:00', '2025-03-19 11:02:00'),
(451, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 11:18:07', '2025-03-19 11:18:07'),
(452, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 11:48:06', '2025-03-19 11:48:06'),
(453, '170.64.185.190', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4859.172 Safari/537.36', '2025-03-19 12:05:23', '2025-03-19 12:05:23'),
(454, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 12:18:06', '2025-03-19 12:18:06'),
(455, '34.168.123.105', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2025-03-19 12:38:33', '2025-03-19 12:38:33'),
(456, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 12:48:08', '2025-03-19 12:48:08'),
(457, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 13:18:08', '2025-03-19 13:18:08'),
(458, '223.233.81.38', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'axios/1.8.1', '2025-03-19 13:20:28', '2025-03-19 13:20:28'),
(459, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 13:48:08', '2025-03-19 13:48:08'),
(460, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 14:18:09', '2025-03-19 14:18:09'),
(461, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 14:48:10', '2025-03-19 14:48:10'),
(462, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 15:18:09', '2025-03-19 15:18:09'),
(463, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 15:48:10', '2025-03-19 15:48:10'),
(464, '104.152.52.68', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'curl/7.61.1', '2025-03-19 16:05:55', '2025-03-19 16:05:55'),
(465, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 16:18:10', '2025-03-19 16:18:10'),
(466, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 16:48:10', '2025-03-19 16:48:10'),
(467, '54.68.150.15', 'Safari', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', '2025-03-19 17:01:07', '2025-03-19 17:01:07'),
(468, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 17:18:10', '2025-03-19 17:18:10'),
(469, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 17:48:10', '2025-03-19 17:48:10'),
(470, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 18:18:11', '2025-03-19 18:18:11'),
(471, '40.77.167.156', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-19 18:38:46', '2025-03-19 18:38:46'),
(472, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 18:48:11', '2025-03-19 18:48:11'),
(473, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 19:18:12', '2025-03-19 19:18:12'),
(474, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 19:48:11', '2025-03-19 19:48:11'),
(475, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 20:18:12', '2025-03-19 20:18:12'),
(476, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 20:48:11', '2025-03-19 20:48:11'),
(477, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 21:18:12', '2025-03-19 21:18:12'),
(478, '47.128.21.188', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', '2025-03-19 21:33:29', '2025-03-19 21:33:29'),
(479, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 21:48:13', '2025-03-19 21:48:13'),
(480, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 22:18:13', '2025-03-19 22:18:13'),
(481, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-19 22:43:06', '2025-03-19 22:43:06'),
(482, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 22:48:14', '2025-03-19 22:48:14'),
(483, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 23:18:14', '2025-03-19 23:18:14'),
(484, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-19 23:48:14', '2025-03-19 23:48:14'),
(485, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-20 00:14:12', '2025-03-20 00:14:12'),
(486, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 00:18:14', '2025-03-20 00:18:14'),
(487, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-20 00:44:02', '2025-03-20 00:44:02'),
(488, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 00:48:15', '2025-03-20 00:48:15'),
(489, '101.115.129.152', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2025-03-20 00:48:22', '2025-03-20 00:48:22'),
(490, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 01:18:15', '2025-03-20 01:18:15'),
(491, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 01:48:15', '2025-03-20 01:48:15'),
(492, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 02:18:17', '2025-03-20 02:18:17'),
(493, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 02:48:17', '2025-03-20 02:48:17'),
(494, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 03:18:17', '2025-03-20 03:18:17'),
(495, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-20 03:46:05', '2025-03-20 03:46:05'),
(496, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 03:48:17', '2025-03-20 03:48:17'),
(497, '101.115.129.152', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2025-03-20 04:05:18', '2025-03-20 04:05:18'),
(498, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-20 04:13:42', '2025-03-20 04:13:42'),
(499, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 04:18:17', '2025-03-20 04:18:17'),
(500, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 04:48:18', '2025-03-20 04:48:18'),
(501, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 05:18:17', '2025-03-20 05:18:17'),
(502, '101.115.129.152', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-20 05:46:45', '2025-03-20 05:46:45'),
(503, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 05:48:18', '2025-03-20 05:48:18'),
(504, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 06:18:18', '2025-03-20 06:18:18'),
(505, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 06:48:18', '2025-03-20 06:48:18'),
(506, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 07:18:18', '2025-03-20 07:18:18'),
(507, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 07:48:19', '2025-03-20 07:48:19'),
(508, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 08:18:20', '2025-03-20 08:18:20'),
(509, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 08:48:23', '2025-03-20 08:48:23'),
(510, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 09:18:19', '2025-03-20 09:18:19'),
(511, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 09:48:20', '2025-03-20 09:48:20'),
(512, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 10:18:21', '2025-03-20 10:18:21'),
(513, '5.133.192.138', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2025-03-20 10:19:20', '2025-03-20 10:19:20'),
(514, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 10:48:21', '2025-03-20 10:48:21'),
(515, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 11:18:21', '2025-03-20 11:18:21'),
(516, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 11:48:22', '2025-03-20 11:48:22'),
(517, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 12:18:22', '2025-03-20 12:18:22'),
(518, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 12:48:22', '2025-03-20 12:48:22'),
(519, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 13:18:22', '2025-03-20 13:18:22'),
(520, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 13:48:23', '2025-03-20 13:48:23'),
(521, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 14:18:25', '2025-03-20 14:18:25'),
(522, '199.244.88.218', 'Chrome', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2025-03-20 14:35:53', '2025-03-20 14:35:53'),
(523, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 14:48:24', '2025-03-20 14:48:24'),
(524, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 15:18:25', '2025-03-20 15:18:25'),
(525, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 15:48:25', '2025-03-20 15:48:25'),
(526, '52.167.144.137', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-20 16:02:04', '2025-03-20 16:02:04'),
(527, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 16:18:25', '2025-03-20 16:18:25'),
(528, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 16:48:25', '2025-03-20 16:48:25'),
(529, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 17:18:25', '2025-03-20 17:18:25'),
(530, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 17:48:25', '2025-03-20 17:48:25'),
(531, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 18:18:25', '2025-03-20 18:18:25'),
(532, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 18:48:26', '2025-03-20 18:48:26'),
(533, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 19:18:26', '2025-03-20 19:18:26'),
(534, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 19:48:27', '2025-03-20 19:48:27'),
(535, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 20:18:27', '2025-03-20 20:18:27'),
(536, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 20:48:28', '2025-03-20 20:48:28'),
(537, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 21:18:28', '2025-03-20 21:18:28'),
(538, '47.128.113.198', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', '2025-03-20 21:19:42', '2025-03-20 21:19:42'),
(539, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 21:48:28', '2025-03-20 21:48:28'),
(540, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 22:18:29', '2025-03-20 22:18:29'),
(541, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-20 22:41:38', '2025-03-20 22:41:38'),
(542, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 22:48:28', '2025-03-20 22:48:28'),
(543, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 23:18:28', '2025-03-20 23:18:28'),
(544, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-20 23:45:14', '2025-03-20 23:45:14'),
(545, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-20 23:48:30', '2025-03-20 23:48:30'),
(546, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-20 23:57:48', '2025-03-20 23:57:48'),
(547, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 00:18:30', '2025-03-21 00:18:30'),
(548, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-21 00:36:53', '2025-03-21 00:36:53'),
(549, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 00:48:29', '2025-03-21 00:48:29'),
(550, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 01:18:30', '2025-03-21 01:18:30'),
(551, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-21 01:35:16', '2025-03-21 01:35:16'),
(552, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 01:48:31', '2025-03-21 01:48:31'),
(553, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 02:18:30', '2025-03-21 02:18:30'),
(554, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-21 02:25:13', '2025-03-21 02:25:13');
INSERT INTO `visitors` (`id`, `ip_address`, `browser_info`, `os`, `device`, `user_agent`, `created_at`, `updated_at`) VALUES
(555, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 02:48:31', '2025-03-21 02:48:31'),
(556, '101.115.129.152', 'Firefox', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:137.0) Gecko/20100101 Firefox/137.0', '2025-03-21 03:18:10', '2025-03-21 03:18:10'),
(557, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 03:18:32', '2025-03-21 03:18:32'),
(558, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 03:48:31', '2025-03-21 03:48:31'),
(559, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 04:18:32', '2025-03-21 04:18:32'),
(560, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 04:48:33', '2025-03-21 04:48:33'),
(561, '24.199.96.200', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 (compatible)', '2025-03-21 04:51:22', '2025-03-21 04:51:22'),
(562, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 05:18:32', '2025-03-21 05:18:32'),
(563, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 05:48:34', '2025-03-21 05:48:34'),
(564, '104.28.108.10', 'Safari Browser', 'iPhone', 'Mobile', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Mobile/15E148 Safari/604.1', '2025-03-21 05:51:21', '2025-03-21 05:51:21'),
(565, '3.89.232.158', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', '2025-03-21 06:10:53', '2025-03-21 06:10:53'),
(566, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 06:18:34', '2025-03-21 06:18:34'),
(567, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 06:48:35', '2025-03-21 06:48:35'),
(568, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 07:18:34', '2025-03-21 07:18:34'),
(569, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 07:48:35', '2025-03-21 07:48:35'),
(570, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 08:18:35', '2025-03-21 08:18:35'),
(571, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 08:48:34', '2025-03-21 08:48:34'),
(572, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 09:18:35', '2025-03-21 09:18:35'),
(573, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 09:48:36', '2025-03-21 09:48:36'),
(574, '35.245.26.190', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 (compatible; Orbbot/1.1;)', '2025-03-21 10:09:08', '2025-03-21 10:09:08'),
(575, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 10:18:35', '2025-03-21 10:18:35'),
(576, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 10:48:36', '2025-03-21 10:48:36'),
(577, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 11:18:37', '2025-03-21 11:18:37'),
(578, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 11:48:36', '2025-03-21 11:48:36'),
(579, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 12:18:38', '2025-03-21 12:18:38'),
(580, '18.218.216.60', 'Safari', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15', '2025-03-21 12:21:41', '2025-03-21 12:21:41'),
(581, '52.167.144.150', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-21 12:26:18', '2025-03-21 12:26:18'),
(582, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 12:48:37', '2025-03-21 12:48:37'),
(583, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 13:18:37', '2025-03-21 13:18:37'),
(584, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 13:48:37', '2025-03-21 13:48:37'),
(585, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 14:18:38', '2025-03-21 14:18:38'),
(586, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 14:48:39', '2025-03-21 14:48:39'),
(587, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 15:18:39', '2025-03-21 15:18:39'),
(588, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 15:48:39', '2025-03-21 15:48:39'),
(589, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-21 16:14:32', '2025-03-21 16:14:32'),
(590, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 16:18:40', '2025-03-21 16:18:40'),
(591, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 16:48:39', '2025-03-21 16:48:39'),
(592, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 17:18:39', '2025-03-21 17:18:39'),
(593, '23.27.145.132', 'Firefox', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '2025-03-21 17:28:55', '2025-03-21 17:28:55'),
(594, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 17:48:41', '2025-03-21 17:48:41'),
(595, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 18:18:41', '2025-03-21 18:18:41'),
(596, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 18:48:41', '2025-03-21 18:48:41'),
(597, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 19:18:42', '2025-03-21 19:18:42'),
(598, '85.208.96.200', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', '2025-03-21 19:25:06', '2025-03-21 19:25:06'),
(599, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 19:48:43', '2025-03-21 19:48:43'),
(600, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 20:18:43', '2025-03-21 20:18:43'),
(601, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 20:48:42', '2025-03-21 20:48:42'),
(602, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 21:18:42', '2025-03-21 21:18:42'),
(603, '47.128.117.8', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', '2025-03-21 21:28:04', '2025-03-21 21:28:04'),
(604, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 21:48:43', '2025-03-21 21:48:43'),
(605, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 22:18:43', '2025-03-21 22:18:43'),
(606, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 22:48:43', '2025-03-21 22:48:43'),
(607, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 23:18:44', '2025-03-21 23:18:44'),
(608, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-21 23:48:44', '2025-03-21 23:48:44'),
(609, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 00:18:45', '2025-03-22 00:18:45'),
(610, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 00:48:45', '2025-03-22 00:48:45'),
(611, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 01:18:45', '2025-03-22 01:18:45'),
(612, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 01:48:45', '2025-03-22 01:48:45'),
(613, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 02:18:45', '2025-03-22 02:18:45'),
(614, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 02:48:47', '2025-03-22 02:48:47'),
(615, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 03:18:47', '2025-03-22 03:18:47'),
(616, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 03:48:47', '2025-03-22 03:48:47'),
(617, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 04:18:47', '2025-03-22 04:18:47'),
(618, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 04:48:47', '2025-03-22 04:48:47'),
(619, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 05:18:47', '2025-03-22 05:18:47'),
(620, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 05:48:48', '2025-03-22 05:48:48'),
(621, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 06:18:48', '2025-03-22 06:18:48'),
(622, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 06:48:48', '2025-03-22 06:48:48'),
(623, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 07:18:48', '2025-03-22 07:18:48'),
(624, '117.102.154.230', 'Firefox', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:137.0) Gecko/20100101 Firefox/137.0', '2025-03-22 07:25:45', '2025-03-22 07:25:45'),
(625, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 07:48:48', '2025-03-22 07:48:48'),
(626, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 08:18:50', '2025-03-22 08:18:50'),
(627, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 08:48:49', '2025-03-22 08:48:49'),
(628, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 09:18:50', '2025-03-22 09:18:50'),
(629, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 09:48:51', '2025-03-22 09:48:51'),
(630, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 10:18:52', '2025-03-22 10:18:52'),
(631, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 10:48:51', '2025-03-22 10:48:51'),
(632, '192.104.34.34', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-22 10:55:52', '2025-03-22 10:55:52'),
(633, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 11:18:52', '2025-03-22 11:18:52'),
(634, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 11:48:52', '2025-03-22 11:48:52'),
(635, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 12:18:52', '2025-03-22 12:18:52'),
(636, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 12:48:53', '2025-03-22 12:48:53'),
(637, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 13:18:53', '2025-03-22 13:18:53'),
(638, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 13:48:53', '2025-03-22 13:48:53'),
(639, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 14:18:53', '2025-03-22 14:18:53'),
(640, '52.167.144.225', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-22 14:36:51', '2025-03-22 14:36:51'),
(641, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 14:48:54', '2025-03-22 14:48:54'),
(642, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 15:18:53', '2025-03-22 15:18:53'),
(643, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 15:48:55', '2025-03-22 15:48:55'),
(644, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 16:18:55', '2025-03-22 16:18:55'),
(645, '45.148.10.237', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/121.0.0.0', '2025-03-22 16:41:00', '2025-03-22 16:41:00'),
(646, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 16:48:54', '2025-03-22 16:48:54'),
(647, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 17:18:56', '2025-03-22 17:18:56'),
(648, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 17:48:55', '2025-03-22 17:48:55'),
(649, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 18:18:57', '2025-03-22 18:18:57'),
(650, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 18:48:58', '2025-03-22 18:48:58'),
(651, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 19:18:57', '2025-03-22 19:18:57'),
(652, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 19:48:57', '2025-03-22 19:48:57'),
(653, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 20:18:56', '2025-03-22 20:18:56'),
(654, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 20:48:56', '2025-03-22 20:48:56'),
(655, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 21:18:58', '2025-03-22 21:18:58'),
(656, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 21:48:58', '2025-03-22 21:48:58'),
(657, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 22:18:58', '2025-03-22 22:18:58'),
(658, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 22:48:58', '2025-03-22 22:48:58'),
(659, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 23:18:58', '2025-03-22 23:18:58'),
(660, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-22 23:48:59', '2025-03-22 23:48:59'),
(661, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 00:18:59', '2025-03-23 00:18:59'),
(662, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 00:48:59', '2025-03-23 00:48:59'),
(663, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 01:19:01', '2025-03-23 01:19:01'),
(664, '15.204.182.106', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-03-23 01:39:21', '2025-03-23 01:39:21'),
(665, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 01:49:01', '2025-03-23 01:49:01'),
(666, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 02:19:01', '2025-03-23 02:19:01'),
(667, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 02:49:02', '2025-03-23 02:49:02'),
(668, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 03:19:01', '2025-03-23 03:19:01'),
(669, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 03:49:02', '2025-03-23 03:49:02'),
(670, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 04:19:01', '2025-03-23 04:19:01'),
(671, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 04:49:02', '2025-03-23 04:49:02'),
(672, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 05:19:02', '2025-03-23 05:19:02'),
(673, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 05:49:03', '2025-03-23 05:49:03'),
(674, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 06:19:05', '2025-03-23 06:19:05'),
(675, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 06:49:04', '2025-03-23 06:49:04'),
(676, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 07:19:04', '2025-03-23 07:19:04'),
(677, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 07:49:06', '2025-03-23 07:49:06'),
(678, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 08:19:05', '2025-03-23 08:19:05'),
(679, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 08:49:07', '2025-03-23 08:49:07'),
(680, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 09:19:06', '2025-03-23 09:19:06'),
(681, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 09:49:07', '2025-03-23 09:49:07'),
(682, '40.77.167.7', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-23 10:04:50', '2025-03-23 10:04:50'),
(683, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 10:19:07', '2025-03-23 10:19:07'),
(684, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 10:49:06', '2025-03-23 10:49:06'),
(685, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 11:19:06', '2025-03-23 11:19:06'),
(686, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 11:49:06', '2025-03-23 11:49:06'),
(687, '82.0.239.85', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-03-23 12:13:32', '2025-03-23 12:13:32'),
(688, '82.1.220.2', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-03-23 12:16:15', '2025-03-23 12:16:15'),
(689, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 12:19:06', '2025-03-23 12:19:06'),
(690, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 12:49:07', '2025-03-23 12:49:07'),
(691, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 13:19:08', '2025-03-23 13:19:08'),
(692, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 13:49:08', '2025-03-23 13:49:08'),
(693, '94.247.172.129', 'Unknown Browser', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2)', '2025-03-23 14:02:45', '2025-03-23 14:02:45'),
(694, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 14:19:09', '2025-03-23 14:19:09'),
(695, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 14:49:09', '2025-03-23 14:49:09'),
(696, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 15:19:10', '2025-03-23 15:19:10'),
(697, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 15:49:10', '2025-03-23 15:49:10'),
(698, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 16:19:10', '2025-03-23 16:19:10'),
(699, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 16:49:10', '2025-03-23 16:49:10'),
(700, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 17:19:11', '2025-03-23 17:19:11'),
(701, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 17:49:11', '2025-03-23 17:49:11'),
(702, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 18:19:11', '2025-03-23 18:19:11'),
(703, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 18:49:11', '2025-03-23 18:49:11'),
(704, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 19:19:11', '2025-03-23 19:19:11'),
(705, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 19:49:11', '2025-03-23 19:49:11'),
(706, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 20:19:12', '2025-03-23 20:19:12'),
(707, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 20:49:12', '2025-03-23 20:49:12'),
(708, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 21:19:12', '2025-03-23 21:19:12'),
(709, '47.128.51.170', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', '2025-03-23 21:28:05', '2025-03-23 21:28:05'),
(710, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 21:49:12', '2025-03-23 21:49:12'),
(711, '34.60.143.185', 'Chrome', 'Windows 8.1', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2225.0 Safari/537.36', '2025-03-23 21:59:31', '2025-03-23 21:59:31'),
(712, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 22:19:13', '2025-03-23 22:19:13'),
(713, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 22:49:12', '2025-03-23 22:49:12'),
(714, '1.136.106.137', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-23 22:59:37', '2025-03-23 22:59:37'),
(715, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 23:19:14', '2025-03-23 23:19:14'),
(716, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-23 23:49:14', '2025-03-23 23:49:14'),
(717, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-24 00:18:33', '2025-03-24 00:18:33'),
(718, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 00:19:15', '2025-03-24 00:19:15'),
(719, '58.7.108.213', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2025-03-24 00:29:29', '2025-03-24 00:29:29'),
(720, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 00:49:15', '2025-03-24 00:49:15'),
(721, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 01:19:15', '2025-03-24 01:19:15'),
(722, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 01:49:16', '2025-03-24 01:49:16'),
(723, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 02:19:15', '2025-03-24 02:19:15'),
(724, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 02:49:15', '2025-03-24 02:49:15'),
(725, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 03:19:16', '2025-03-24 03:19:16'),
(726, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 03:49:16', '2025-03-24 03:49:16'),
(727, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 04:19:16', '2025-03-24 04:19:16'),
(728, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 04:49:16', '2025-03-24 04:49:16'),
(729, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 05:19:17', '2025-03-24 05:19:17'),
(730, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 05:49:17', '2025-03-24 05:49:17'),
(731, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 06:19:18', '2025-03-24 06:19:18'),
(732, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 06:49:18', '2025-03-24 06:49:18'),
(733, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 07:19:20', '2025-03-24 07:19:20'),
(734, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 07:49:19', '2025-03-24 07:49:19'),
(735, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 08:19:20', '2025-03-24 08:19:20'),
(736, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 08:49:19', '2025-03-24 08:49:19'),
(737, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 09:19:19', '2025-03-24 09:19:19'),
(738, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 09:49:21', '2025-03-24 09:49:21'),
(739, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 10:19:20', '2025-03-24 10:19:20'),
(740, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 10:49:20', '2025-03-24 10:49:20'),
(741, '93.158.90.12', 'Safari Browser', 'iPhone', 'Mobile', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604', '2025-03-24 11:08:40', '2025-03-24 11:08:40'),
(742, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 11:19:21', '2025-03-24 11:19:21'),
(743, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 11:49:21', '2025-03-24 11:49:21'),
(744, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 12:19:22', '2025-03-24 12:19:22'),
(745, '52.167.144.235', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-24 12:26:07', '2025-03-24 12:26:07'),
(746, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 12:49:23', '2025-03-24 12:49:23'),
(747, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 13:19:22', '2025-03-24 13:19:22'),
(748, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 13:49:25', '2025-03-24 13:49:25'),
(749, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 14:19:23', '2025-03-24 14:19:23'),
(750, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 14:49:23', '2025-03-24 14:49:23'),
(751, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 15:19:24', '2025-03-24 15:19:24'),
(752, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 15:49:24', '2025-03-24 15:49:24'),
(753, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-24 16:16:59', '2025-03-24 16:16:59'),
(754, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 16:19:23', '2025-03-24 16:19:23'),
(755, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 16:49:24', '2025-03-24 16:49:24'),
(756, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 17:19:25', '2025-03-24 17:19:25'),
(757, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 17:49:24', '2025-03-24 17:49:24'),
(758, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 18:19:25', '2025-03-24 18:19:25'),
(759, '23.27.145.243', 'Firefox', 'Linux', 'Computer', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', '2025-03-24 18:46:56', '2025-03-24 18:46:56'),
(760, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 18:49:26', '2025-03-24 18:49:26'),
(761, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 19:19:27', '2025-03-24 19:19:27'),
(762, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 19:49:26', '2025-03-24 19:49:26'),
(763, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 20:19:26', '2025-03-24 20:19:26'),
(764, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 20:49:27', '2025-03-24 20:49:27'),
(765, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 21:19:27', '2025-03-24 21:19:27'),
(766, '47.128.114.77', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', '2025-03-24 21:32:00', '2025-03-24 21:32:00'),
(767, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 21:49:27', '2025-03-24 21:49:27'),
(768, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 22:19:27', '2025-03-24 22:19:27'),
(769, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 22:49:27', '2025-03-24 22:49:27'),
(770, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 23:19:28', '2025-03-24 23:19:28'),
(771, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-24 23:49:29', '2025-03-24 23:49:29'),
(772, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 00:19:28', '2025-03-25 00:19:28'),
(773, '58.7.108.213', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-25 00:45:14', '2025-03-25 00:45:14'),
(774, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 00:49:28', '2025-03-25 00:49:28'),
(775, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 01:19:30', '2025-03-25 01:19:30'),
(776, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 01:49:31', '2025-03-25 01:49:31'),
(777, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 02:19:31', '2025-03-25 02:19:31'),
(778, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 02:49:29', '2025-03-25 02:49:29'),
(779, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 03:19:30', '2025-03-25 03:19:30'),
(780, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 03:49:32', '2025-03-25 03:49:32'),
(781, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 04:19:31', '2025-03-25 04:19:31'),
(782, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 04:49:32', '2025-03-25 04:49:32'),
(783, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 05:19:32', '2025-03-25 05:19:32'),
(784, '54.191.137.17', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Symfony BrowserKit', '2025-03-25 05:38:00', '2025-03-25 05:38:00'),
(785, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 05:49:32', '2025-03-25 05:49:32'),
(786, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 06:19:33', '2025-03-25 06:19:33'),
(787, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 06:49:34', '2025-03-25 06:49:34'),
(788, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 07:19:34', '2025-03-25 07:19:34'),
(789, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 07:49:33', '2025-03-25 07:49:33'),
(790, '40.77.167.8', 'Chrome', 'Unknown OS Platform', 'Computer', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2025-03-25 07:59:38', '2025-03-25 07:59:38'),
(791, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 08:19:33', '2025-03-25 08:19:33'),
(792, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 08:49:33', '2025-03-25 08:49:33'),
(793, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 09:19:34', '2025-03-25 09:19:34'),
(794, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 09:49:33', '2025-03-25 09:49:33'),
(795, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 10:19:35', '2025-03-25 10:19:35'),
(796, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 10:49:35', '2025-03-25 10:49:35'),
(797, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 11:19:35', '2025-03-25 11:19:35'),
(798, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 11:49:35', '2025-03-25 11:49:35'),
(799, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 12:19:38', '2025-03-25 12:19:38'),
(800, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 12:49:37', '2025-03-25 12:49:37'),
(801, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 13:19:38', '2025-03-25 13:19:38'),
(802, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 13:49:37', '2025-03-25 13:49:37'),
(803, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 14:19:37', '2025-03-25 14:19:37'),
(804, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 14:49:38', '2025-03-25 14:49:38'),
(805, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 15:19:39', '2025-03-25 15:19:39'),
(806, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 15:49:39', '2025-03-25 15:49:39'),
(807, '122.151.10.4', 'Chrome', 'Windows 10', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-25 16:11:05', '2025-03-25 16:11:05'),
(808, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 16:19:39', '2025-03-25 16:19:39'),
(809, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 16:49:40', '2025-03-25 16:49:40'),
(810, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 17:19:39', '2025-03-25 17:19:39'),
(811, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 17:49:40', '2025-03-25 17:49:40'),
(812, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 18:19:40', '2025-03-25 18:19:40'),
(813, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 18:49:41', '2025-03-25 18:49:41'),
(814, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 19:19:41', '2025-03-25 19:19:41'),
(815, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 19:49:42', '2025-03-25 19:49:42'),
(816, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 20:19:41', '2025-03-25 20:19:41'),
(817, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 20:49:43', '2025-03-25 20:49:43'),
(818, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 21:19:42', '2025-03-25 21:19:42'),
(819, '47.128.21.52', 'Safari Browser', 'Android', 'Mobile', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', '2025-03-25 21:41:43', '2025-03-25 21:41:43'),
(820, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 21:49:41', '2025-03-25 21:49:41'),
(821, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 22:19:43', '2025-03-25 22:19:43'),
(822, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 22:49:43', '2025-03-25 22:49:43'),
(823, '58.7.108.213', 'Chrome', 'Mac OS X', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '2025-03-25 23:14:29', '2025-03-25 23:14:29'),
(824, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 23:19:42', '2025-03-25 23:19:42'),
(825, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-25 23:49:44', '2025-03-25 23:49:44'),
(826, '18.202.17.16', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', '2025-03-26 00:08:46', '2025-03-26 00:08:46'),
(827, '139.99.149.224', 'Unknown Browser', 'Unknown OS Platform', 'Computer', 'Python/3.11 aiohttp/3.9.2', '2025-03-26 00:19:43', '2025-03-26 00:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `website_and_socials`
--

CREATE TABLE `website_and_socials` (
  `id` bigint UNSIGNED NOT NULL,
  `listing_id` bigint UNSIGNED DEFAULT NULL,
  `purchase_package_id` bigint UNSIGNED DEFAULT NULL,
  `social_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenity_details`
--
ALTER TABLE `amenity_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amenity_details_amenity_id_index` (`amenity_id`);

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytics_listing_owner_id_index` (`listing_owner_id`),
  ADD KEY `analytics_listing_id_index` (`listing_id`);

--
-- Indexes for table `basic_controls`
--
ALTER TABLE `basic_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_details`
--
ALTER TABLE `blog_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_hours`
--
ALTER TABLE `business_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_hours_listing_id_index` (`listing_id`),
  ADD KEY `business_hours_purchase_package_id_index` (`purchase_package_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claim_businesses`
--
ALTER TABLE `claim_businesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `claim_businesses_claim_by_id_index` (`claim_by_id`),
  ADD KEY `claim_businesses_listing_id_index` (`listing_id`),
  ADD KEY `claim_businesses_listing_owner_id_index` (`listing_owner_id`),
  ADD KEY `claim_businesses_uuid_index` (`uuid`);

--
-- Indexes for table `claim_business_chatings`
--
ALTER TABLE `claim_business_chatings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `claim_business_chatings_userable_type_userable_id_index` (`userable_type`,`userable_id`),
  ADD KEY `claim_business_chatings_claim_business_id_index` (`claim_business_id`),
  ADD KEY `claim_business_chatings_listing_id_index` (`listing_id`);

--
-- Indexes for table `collect_dynamic_form_data`
--
ALTER TABLE `collect_dynamic_form_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collect_dynamic_form_data_user_id_index` (`user_id`),
  ADD KEY `collect_dynamic_form_data_dynamic_forms_index` (`dynamic_forms_id`),
  ADD KEY `collect_dynamic_form_data_listing_id_index` (`listing_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_messages_user_id_index` (`user_id`),
  ADD KEY `contact_messages_client_id_index` (`client_id`),
  ADD KEY `contact_messages_listing_id_index` (`listing_id`),
  ADD KEY `contact_messages_message_index` (`message`(768));

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_details`
--
ALTER TABLE `content_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_foreign` (`user_id`),
  ADD KEY `deposits_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `dynamic_forms`
--
ALTER TABLE `dynamic_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dynamic_forms_user_id_index` (`user_id`),
  ADD KEY `dynamic_forms_package_id_index` (`package_id`),
  ADD KEY `dynamic_forms_listing_id_index` (`listing_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_user_id_index` (`user_id`),
  ADD KEY `favourites_client_id_index` (`client_id`),
  ADD KEY `favourites_purchase_package_id_index` (`purchase_package_id`),
  ADD KEY `favourites_listing_id_index` (`listing_id`);

--
-- Indexes for table `file_storages`
--
ALTER TABLE `file_storages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_base_tokens`
--
ALTER TABLE `fire_base_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_user_id_index` (`user_id`),
  ADD KEY `followers_following_id_index` (`following_id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_code_unique` (`code`);

--
-- Indexes for table `in_app_notifications`
--
ALTER TABLE `in_app_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_index` (`user_id`),
  ADD KEY `listings_purchase_package_id_index` (`purchase_package_id`),
  ADD KEY `listings_place_id_index` (`country_id`),
  ADD KEY `category_id` (`category_id`(768)),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `listing_amenities`
--
ALTER TABLE `listing_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_amenities_listing_id_index` (`listing_id`),
  ADD KEY `listing_amenities_purchase_package_id_index` (`purchase_package_id`),
  ADD KEY `listing_amenities_amenity_id_index` (`amenity_id`);

--
-- Indexes for table `listing_categories`
--
ALTER TABLE `listing_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_category_details`
--
ALTER TABLE `listing_category_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_category_details_listing_category_id_index` (`listing_category_id`);

--
-- Indexes for table `listing_images`
--
ALTER TABLE `listing_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_images_listing_id_index` (`listing_id`),
  ADD KEY `listing_images_purchase_package_id_index` (`purchase_package_id`);

--
-- Indexes for table `listing_seos`
--
ALTER TABLE `listing_seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_seos_listing_id_index` (`listing_id`),
  ADD KEY `listing_seos_purchase_package_id_index` (`purchase_package_id`);

--
-- Indexes for table `maintenance_modes`
--
ALTER TABLE `maintenance_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_menus`
--
ALTER TABLE `manage_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_sms_configs`
--
ALTER TABLE `manual_sms_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_permissions`
--
ALTER TABLE `notification_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_details`
--
ALTER TABLE `package_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_details_package_id_index` (`package_id`);

--
-- Indexes for table `package_expiry_crons`
--
ALTER TABLE `package_expiry_crons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_details`
--
ALTER TABLE `page_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`),
  ADD KEY `products_listing_id_index` (`listing_id`),
  ADD KEY `products_purchase_package_id_index` (`purchase_package_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_index` (`product_id`);

--
-- Indexes for table `product_queries`
--
ALTER TABLE `product_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_queries_user_id_index` (`user_id`),
  ADD KEY `product_queries_client_id_index` (`client_id`),
  ADD KEY `product_queries_listing_id_index` (`listing_id`),
  ADD KEY `product_queries_product_id_index` (`product_id`);

--
-- Indexes for table `product_replies`
--
ALTER TABLE `product_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_replies_user_id_index` (`user_id`),
  ADD KEY `product_replies_client_id_index` (`client_id`),
  ADD KEY `product_replies_product_query_id_index` (`product_query_id`);

--
-- Indexes for table `purchase_packages`
--
ALTER TABLE `purchase_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_packages_user_id_index` (`user_id`),
  ADD KEY `purchase_packages_package_id_index` (`package_id`);

--
-- Indexes for table `razorpay_contacts`
--
ALTER TABLE `razorpay_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_attachments`
--
ALTER TABLE `support_ticket_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_kycs`
--
ALTER TABLE `user_kycs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_kycs_user_id_index` (`user_id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reviews_listing_id_index` (`listing_id`),
  ADD KEY `user_reviews_user_id_index` (`user_id`);

--
-- Indexes for table `user_socials`
--
ALTER TABLE `user_socials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_socials_user_id_index` (`user_id`);

--
-- Indexes for table `viewers`
--
ALTER TABLE `viewers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viewers_user_id_index` (`user_id`),
  ADD KEY `viewers_listing_id_index` (`listing_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_and_socials`
--
ALTER TABLE `website_and_socials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_and_socials_listing_id_index` (`listing_id`),
  ADD KEY `website_and_socials_purchase_package_id_index` (`purchase_package_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `amenity_details`
--
ALTER TABLE `amenity_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basic_controls`
--
ALTER TABLE `basic_controls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_details`
--
ALTER TABLE `blog_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `business_hours`
--
ALTER TABLE `business_hours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `claim_businesses`
--
ALTER TABLE `claim_businesses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claim_business_chatings`
--
ALTER TABLE `claim_business_chatings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collect_dynamic_form_data`
--
ALTER TABLE `collect_dynamic_form_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `content_details`
--
ALTER TABLE `content_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dynamic_forms`
--
ALTER TABLE `dynamic_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_storages`
--
ALTER TABLE `file_storages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fire_base_tokens`
--
ALTER TABLE `fire_base_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `in_app_notifications`
--
ALTER TABLE `in_app_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing_amenities`
--
ALTER TABLE `listing_amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing_categories`
--
ALTER TABLE `listing_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `listing_category_details`
--
ALTER TABLE `listing_category_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `listing_images`
--
ALTER TABLE `listing_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing_seos`
--
ALTER TABLE `listing_seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance_modes`
--
ALTER TABLE `maintenance_modes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_menus`
--
ALTER TABLE `manage_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manual_sms_configs`
--
ALTER TABLE `manual_sms_configs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `notification_permissions`
--
ALTER TABLE `notification_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `package_expiry_crons`
--
ALTER TABLE `package_expiry_crons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `page_details`
--
ALTER TABLE `page_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_queries`
--
ALTER TABLE `product_queries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_replies`
--
ALTER TABLE `product_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_packages`
--
ALTER TABLE `purchase_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `razorpay_contacts`
--
ALTER TABLE `razorpay_contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_attachments`
--
ALTER TABLE `support_ticket_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_kycs`
--
ALTER TABLE `user_kycs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_reviews`
--
ALTER TABLE `user_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_socials`
--
ALTER TABLE `user_socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `viewers`
--
ALTER TABLE `viewers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT for table `website_and_socials`
--
ALTER TABLE `website_and_socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD CONSTRAINT `notification_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
