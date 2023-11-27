-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2023 at 04:32 AM
-- Server version: 5.7.43-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fish2corals`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uninstall_files` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `email_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1556780563user.png', '$2y$10$bvMVG9qQG2H90HfR3Wj8aeyTTK4t1lypd1.1PgP/At8qdEDYThI3O', 1, 'IIaOrblOXiDqESZSX4undRGxfSPA8eQFmeDMkdCOlT6ja2yzzsF4nyNWBpPB', NULL, '2018-02-28 23:27:08', '2023-07-08 02:08:06', 'Fish 2 Corals');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(3, 'Order Confirmation', 13, 'sdf', '2019-08-19 23:17:51', '2019-08-19 23:17:51', 'Dispute', 'adasd423423'),
(9, 'TEST', 22, 'tes', '2020-03-30 05:03:37', '2020-03-30 05:03:37', 'Ticket', NULL),
(10, 'leave application', 13, 'werewr', '2020-08-11 02:17:13', '2020-08-11 02:17:13', NULL, NULL),
(12, 'hi', 36, 'hi', '2021-12-12 17:14:26', '2021-12-12 17:14:26', NULL, NULL),
(13, 'we', 36, 'qer', '2021-12-12 17:18:38', '2021-12-12 17:18:38', NULL, NULL),
(14, 'qwe', 36, 'qwer', '2021-12-12 17:19:05', '2021-12-12 17:19:05', NULL, NULL),
(15, 'sda', 22, 'fghj', '2021-12-12 17:21:01', '2021-12-12 17:21:01', NULL, NULL),
(16, 'iyuiyui', 36, 'yuiyuiyu', '2021-12-14 12:50:30', '2021-12-14 12:50:30', NULL, NULL),
(17, 'gfgfg', 22, 'fgfgfg', '2021-12-14 12:52:32', '2021-12-14 12:52:32', NULL, NULL),
(18, 'dsghte', 22, 'fgjdfgjdfj', '2022-02-05 23:34:52', '2022-02-05 23:34:52', NULL, NULL),
(19, 'Helleo', 22, 'jyjtyurtyi', '2022-02-05 23:35:14', '2022-02-05 23:35:14', 'Ticket', NULL),
(21, 'Helleo', 22, 'etrwy', '2022-02-21 00:32:01', '2022-02-21 00:32:01', 'Dispute', 'jtcWfaomu8');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 3, 'sdf', 13, '2019-08-19 23:17:51', '2019-08-19 23:17:51'),
(15, 9, 'tes', 22, '2020-03-30 05:03:38', '2020-03-30 05:03:38'),
(16, 10, 'werewr', NULL, '2020-08-11 02:17:13', '2020-08-11 02:17:13'),
(18, 12, 'hi', NULL, '2021-12-12 17:14:26', '2021-12-12 17:14:26'),
(19, 13, 'qer', NULL, '2021-12-12 17:18:38', '2021-12-12 17:18:38'),
(20, 14, 'qwer', NULL, '2021-12-12 17:19:06', '2021-12-12 17:19:06'),
(21, 15, 'fghj', NULL, '2021-12-12 17:21:01', '2021-12-12 17:21:01'),
(22, 16, 'yuiyuiyu', NULL, '2021-12-14 12:50:30', '2021-12-14 12:50:30'),
(23, 17, 'fgfgfg', NULL, '2021-12-14 12:52:32', '2021-12-14 12:52:32'),
(24, 18, 'fgjdfgjdfj', NULL, '2022-02-05 23:34:52', '2022-02-05 23:34:52'),
(25, 19, 'jyjtyurtyi', 22, '2022-02-05 23:35:14', '2022-02-05 23:35:14'),
(26, 19, 'ghdfghdgh', NULL, '2022-02-05 23:35:26', '2022-02-05 23:35:26'),
(27, 19, 'hgjgjuh', 22, '2022-02-05 23:58:50', '2022-02-05 23:58:50'),
(28, 19, 'gjyfu', 22, '2022-02-05 23:58:58', '2022-02-05 23:58:58'),
(30, 21, 'etrwy', 22, '2022-02-21 00:32:01', '2022-02-21 00:32:01'),
(31, 21, 'tuyrir', 22, '2022-02-21 00:32:34', '2022-02-21 00:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `arrival_sections`
--

CREATE TABLE `arrival_sections` (
  `id` int(5) NOT NULL,
  `title` varchar(500) NOT NULL,
  `header` varchar(500) NOT NULL,
  `details_text` text,
  `link` text,
  `photo` varchar(300) NOT NULL,
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `position` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arrival_sections`
--

INSERT INTO `arrival_sections` (`id`, `title`, `header`, `details_text`, `link`, `photo`, `status`, `position`, `created_at`, `updated_at`) VALUES
(3, '50% Discount', 'Bubble Tip Anemone: Green - Central Pacif', NULL, 'https://fish.besthr.in/category', '169261415224jpg.jpg', 1, '1', '2022-02-01 03:03:51.000000', '2023-08-24 09:00:44.000000'),
(4, '50% Discount', 'Cleaner Shrimp - South Asia', NULL, 'https://fish.besthr.in/category', '169261386366jpg.jpg', 1, '1', '2022-02-01 04:08:01.000000', '2023-08-24 09:00:30.000000'),
(5, '50% Discount', 'Solar Fairy Wrasse', NULL, 'https://fish.besthr.in/category', '169261423451jpg.jpg', 1, '1', '2023-08-21 05:07:14.000000', '2023-08-24 09:00:17.000000'),
(6, '50% Discount', 'Cleaner Wrasse', NULL, 'https://fish.besthr.in/category', '169261435233jpg.jpg', 1, '1', '2023-08-21 05:09:12.000000', '2023-08-24 09:00:00.000000'),
(7, 'Special hot sale', 'Golden Fish With Bowl', 'Choose a Nutritious & Healthy Breakfast.', 'https://fish.besthr.in/category', '169261899061jpg.jpg', 1, '2', '2023-08-21 06:26:30.000000', '2023-08-24 08:59:39.000000'),
(8, 'Special hot sale', 'Fighter Fish With Bowl', 'Choose a Nutritious & Healthy Breakfast.', 'https://fish.besthr.in/category', '16926191017jpg.jpg', 1, '2', '2023-08-21 06:28:21.000000', '2023-08-24 08:59:10.000000'),
(9, '70% OFF', 'FREE GIFT ANY ORDER', NULL, 'https://fish.besthr.in/category', '1697528482169261928110png1png.png', 1, '3', '2023-08-21 06:31:21.000000', '2023-10-17 14:41:22.000000'),
(10, 'Special hot sale', 'Fighter Fish With Bowl', 'Choose a Nutritious & Healthy Breakfast.', 'https://fish.besthr.in/category', '169261933661jpg.jpg', 1, '4', '2023-08-21 06:32:16.000000', '2023-08-24 08:58:20.000000'),
(11, 'Special hot sale', 'Fighter Fish With Bowl', 'Choose a Nutritious & Healthy Breakfast.', 'https://fish.besthr.in/category', '16926193677jpg.jpg', 1, '4', '2023-08-21 06:32:47.000000', '2023-08-24 08:57:50.000000');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(1, 28, 'App\\Models\\Category', 'test', 'test', 1, 1, '2023-09-11 22:39:57', '2023-09-11 22:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'option1', '2023-09-11 22:39:57', '2023-09-11 22:39:57'),
(2, 1, 'option2', '2023-09-11 22:39:57', '2023-09-11 22:39:57'),
(3, 1, 'option3', '2023-09-11 22:39:57', '2023-09-11 22:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL,
  `language_id` int(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`, `language_id`) VALUES
(3, '16340212841632390083Topsmall.jpg', 'https://www.google.com/', 'Large', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `language_id`) VALUES
(9, 2, 'How to design effective arts?', 'how-to-design-effective-artsckwR', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1697527502164543362116423090481560403334beautiful-cellphone-cute-761963jpgjpgjpg.jpg', 'www.geniusocean.com', 103, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41', 1),
(10, 3, 'How to design effective arts?', 'how-to-design-effective-artsoY54', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1697527544164543363216423090781560403521afro-attractive-beautiful-2253065jpgjpgjpg.jpg', 'www.geniusocean.com', 67, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21', 1),
(44, 2, 'mg', 'mgn485', 'mfty', '169752771216851733454jpg1jpg.jpg', 'jty', 49, 1, NULL, NULL, 'ry', '2023-05-27 02:12:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `language_id`) VALUES
(2, 'Web Services', 'web-services', 1),
(3, 'Business Philosophy', 'business-philosophy', 1),
(4, 'Business Help', 'business-help', 1),
(5, 'Random Thoughts', 'random-thoughts', 1),
(6, 'Mechanical', 'mechanical', 1),
(7, 'Entrepreneurs', 'entrepreneurs', 1),
(8, 'Technology', 'technology', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(191) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `photo`, `link`, `status`) VALUES
(1, 'SONY', '16857815021571289614p4jpg.jpg', NULL, 1),
(2, 'Tests', '16857855351571289614p4jpg.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `image`, `language_id`) VALUES
(22, 'WYSIWYG', 'WYSIWYG', 1, '1692804450WYSIWYG1png.png', '1692804450WYSIWYG1png.png', 1),
(23, 'Supplies', 'supplies', 1, '1692804552Suppliespng.png', '1692804552Suppliespng.png', 1),
(24, 'Live Rock', 'live-rock', 1, '16928046675png.png', '16928046675png.png', 1),
(25, 'Clean Up Crews', 'clean-up-crews', 1, '16928048394png.png', '16928048394png.png', 1),
(26, 'Corals', 'corals', 1, '16928048903png.png', '16928048903png.png', 1),
(27, 'Invertebrates', 'invertebrates', 1, '16928049242png.png', '16928049242png.png', 1),
(28, 'Fish', 'Fish', 1, '16928049591png.png', '16928049591png.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(25, 22, 163, 'Let me see how the comments works', '2021-12-23 21:48:43', '2021-12-23 21:48:43'),
(26, 22, 163, 'I think it nice', '2021-12-23 21:48:54', '2021-12-23 21:48:54'),
(27, 22, 170, 'Hello world!', '2021-12-26 12:00:56', '2021-12-26 12:00:56'),
(28, 22, 178, 'fjhdfgt890', '2022-02-07 05:07:05', '2022-02-07 05:42:32'),
(29, 22, 169, 'ghdduery', '2022-03-07 22:35:34', '2022-03-07 22:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `created_at`, `updated_at`) VALUES
(7, 'lkk', 22, 13, 'klklklk', '2021-12-22 17:00:14', '2021-12-22 17:00:14'),
(10, 'Helleo', 22, 22, 'fgdghdfg', '2022-03-07 21:30:35', '2022-03-07 21:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 926, 0, NULL),
(3, 'browser', 'Windows 10', 8869, 0, NULL),
(4, 'browser', 'Linux', 542, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 4637, 0, NULL),
(6, 'browser', 'Windows 7', 617, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 560, 0, NULL),
(9, 'referral', 'www.google.com', 18, 0, NULL),
(10, 'browser', 'Android', 726, 0, NULL),
(11, 'browser', 'Mac OS X', 1483, 0, NULL),
(12, 'referral', 'l.facebook.com', 13, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 70, 0, NULL),
(15, 'browser', 'Windows 8', 7, 0, NULL),
(16, 'browser', 'iPad', 10, 0, NULL),
(17, 'browser', 'Ubuntu', 41, 0, NULL),
(18, 'browser', 'iPhone', 175, 0, NULL),
(19, 'referral', 'www.sandbox.paypal.com', 4, 0, NULL),
(20, 'referral', 'baidu.com', 2, 0, NULL),
(21, 'referral', 'org.telegram.messenger', 3, 0, NULL),
(22, 'referral', 'm.facebook.com', 13, 0, NULL),
(23, 'referral', 'ravemodal-dev.herokuapp.com', 1, 0, NULL),
(24, 'referral', 'www.paypal.com', 2, 0, NULL),
(25, 'referral', 'com.google.android.googlequicksearchbox', 2, 0, NULL),
(26, 'browser', 'Windows 2000', 1, 0, NULL),
(27, 'referral', 'fish2coral.com', 2, 0, NULL),
(28, 'referral', NULL, 16, 0, NULL),
(29, 'referral', 'qiper.ru', 1, 0, NULL),
(30, 'referral', 'fish2corals.com', 3, 0, NULL),
(31, 'browser', 'Windows Vista', 12, 0, NULL),
(32, 'referral', 'cato.brightcloud.com', 1, 0, NULL),
(33, 'referral', 'google.com', 1, 0, NULL),
(34, 'referral', 'lm.facebook.com', 1, 0, NULL),
(35, 'browser', 'Windows Server 2003/XP x64', 1, 0, NULL),
(36, 'referral', 'simplesite.com', 3, 0, NULL),
(37, 'referral', 'www.google.com.hk', 1, 0, NULL),
(38, 'referral', 'www.fish2corals.com', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `tax` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `tax`, `status`) VALUES
(1, 'AF', 'Afghanistan', 0, 0),
(2, 'AL', 'Albania', 0, 0),
(3, 'DZ', 'Algeria', 0, 0),
(4, 'DS', 'American Samoa', 0, 0),
(5, 'AD', 'Andorra', 0, 0),
(6, 'AO', 'Angola', 0, 0),
(7, 'AI', 'Anguilla', 0, 0),
(8, 'AQ', 'Antarctica', 0, 0),
(9, 'AG', 'Antigua and Barbuda', 0, 0),
(10, 'AR', 'Argentina', 0, 0),
(11, 'AM', 'Armenia', 0, 0),
(12, 'AW', 'Aruba', 0, 0),
(13, 'AU', 'Australia', 0, 0),
(14, 'AT', 'Austria', 0, 0),
(15, 'AZ', 'Azerbaijan', 0, 0),
(16, 'BS', 'Bahamas', 0, 0),
(17, 'BH', 'Bahrain', 0, 0),
(18, 'BD', 'Bangladesh', 0, 0),
(19, 'BB', 'Barbados', 0, 0),
(20, 'BY', 'Belarus', 0, 0),
(21, 'BE', 'Belgium', 0, 0),
(22, 'BZ', 'Belize', 0, 0),
(23, 'BJ', 'Benin', 0, 0),
(24, 'BM', 'Bermuda', 0, 0),
(25, 'BT', 'Bhutan', 0, 0),
(26, 'BO', 'Bolivia', 0, 0),
(27, 'BA', 'Bosnia and Herzegovina', 0, 0),
(28, 'BW', 'Botswana', 0, 0),
(29, 'BV', 'Bouvet Island', 0, 0),
(30, 'BR', 'Brazil', 0, 0),
(31, 'IO', 'British Indian Ocean Territory', 0, 0),
(32, 'BN', 'Brunei Darussalam', 0, 0),
(33, 'BG', 'Bulgaria', 0, 0),
(34, 'BF', 'Burkina Faso', 0, 0),
(35, 'BI', 'Burundi', 0, 0),
(36, 'KH', 'Cambodia', 0, 0),
(37, 'CM', 'Cameroon', 0, 0),
(38, 'CA', 'Canada', 0, 0),
(39, 'CV', 'Cape Verde', 0, 0),
(40, 'KY', 'Cayman Islands', 0, 0),
(41, 'CF', 'Central African Republic', 0, 0),
(42, 'TD', 'Chad', 0, 0),
(43, 'CL', 'Chile', 0, 0),
(44, 'CN', 'China', 0, 0),
(45, 'CX', 'Christmas Island', 0, 0),
(46, 'CC', 'Cocos (Keeling) Islands', 0, 0),
(47, 'CO', 'Colombia', 0, 0),
(48, 'KM', 'Comoros', 0, 0),
(49, 'CD', 'Democratic Republic of the Congo', 0, 0),
(50, 'CG', 'Republic of Congo', 0, 0),
(51, 'CK', 'Cook Islands', 0, 0),
(52, 'CR', 'Costa Rica', 0, 0),
(53, 'HR', 'Croatia (Hrvatska)', 0, 0),
(54, 'CU', 'Cuba', 0, 0),
(55, 'CY', 'Cyprus', 0, 0),
(56, 'CZ', 'Czech Republic', 0, 0),
(57, 'DK', 'Denmark', 0, 0),
(58, 'DJ', 'Djibouti', 0, 0),
(59, 'DM', 'Dominica', 0, 0),
(60, 'DO', 'Dominican Republic', 0, 0),
(61, 'TP', 'East Timor', 0, 0),
(62, 'EC', 'Ecuador', 0, 0),
(63, 'EG', 'Egypt', 0, 0),
(64, 'SV', 'El Salvador', 0, 0),
(65, 'GQ', 'Equatorial Guinea', 0, 0),
(66, 'ER', 'Eritrea', 0, 0),
(67, 'EE', 'Estonia', 0, 0),
(68, 'ET', 'Ethiopia', 0, 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0, 0),
(70, 'FO', 'Faroe Islands', 0, 0),
(71, 'FJ', 'Fiji', 0, 0),
(72, 'FI', 'Finland', 0, 0),
(73, 'FR', 'France', 0, 0),
(74, 'FX', 'France, Metropolitan', 0, 0),
(75, 'GF', 'French Guiana', 0, 0),
(76, 'PF', 'French Polynesia', 0, 0),
(77, 'TF', 'French Southern Territories', 0, 0),
(78, 'GA', 'Gabon', 0, 0),
(79, 'GM', 'Gambia', 0, 0),
(80, 'GE', 'Georgia', 0, 0),
(81, 'DE', 'Germany', 0, 0),
(82, 'GH', 'Ghana', 0, 0),
(83, 'GI', 'Gibraltar', 0, 0),
(84, 'GK', 'Guernsey', 0, 0),
(85, 'GR', 'Greece', 0, 0),
(86, 'GL', 'Greenland', 0, 0),
(87, 'GD', 'Grenada', 0, 0),
(88, 'GP', 'Guadeloupe', 0, 0),
(89, 'GU', 'Guam', 0, 0),
(90, 'GT', 'Guatemala', 0, 0),
(91, 'GN', 'Guinea', 0, 0),
(92, 'GW', 'Guinea-Bissau', 0, 0),
(93, 'GY', 'Guyana', 0, 0),
(94, 'HT', 'Haiti', 0, 0),
(95, 'HM', 'Heard and Mc Donald Islands', 0, 0),
(96, 'HN', 'Honduras', 0, 0),
(97, 'HK', 'Hong Kong', 0, 0),
(98, 'HU', 'Hungary', 0, 0),
(99, 'IS', 'Iceland', 0, 0),
(100, 'IN', 'India', 0, 0),
(101, 'IM', 'Isle of Man', 0, 0),
(102, 'ID', 'Indonesia', 0, 0),
(103, 'IR', 'Iran (Islamic Republic of)', 0, 0),
(104, 'IQ', 'Iraq', 0, 0),
(105, 'IE', 'Ireland', 0, 0),
(106, 'IL', 'Israel', 0, 0),
(107, 'IT', 'Italy', 0, 0),
(108, 'CI', 'Ivory Coast', 0, 0),
(109, 'JE', 'Jersey', 0, 0),
(110, 'JM', 'Jamaica', 0, 0),
(111, 'JP', 'Japan', 0, 0),
(112, 'JO', 'Jordan', 0, 0),
(113, 'KZ', 'Kazakhstan', 0, 0),
(114, 'KE', 'Kenya', 0, 0),
(115, 'KI', 'Kiribati', 0, 0),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 0, 0),
(117, 'KR', 'Korea, Republic of', 0, 0),
(118, 'XK', 'Kosovo', 0, 0),
(119, 'KW', 'Kuwait', 0, 0),
(120, 'KG', 'Kyrgyzstan', 0, 0),
(121, 'LA', 'Lao People\'s Democratic Republic', 0, 0),
(122, 'LV', 'Latvia', 0, 0),
(123, 'LB', 'Lebanon', 0, 0),
(124, 'LS', 'Lesotho', 0, 0),
(125, 'LR', 'Liberia', 0, 0),
(126, 'LY', 'Libyan Arab Jamahiriya', 0, 0),
(127, 'LI', 'Liechtenstein', 0, 0),
(128, 'LT', 'Lithuania', 0, 0),
(129, 'LU', 'Luxembourg', 0, 0),
(130, 'MO', 'Macau', 0, 0),
(131, 'MK', 'North Macedonia', 0, 0),
(132, 'MG', 'Madagascar', 0, 0),
(133, 'MW', 'Malawi', 0, 0),
(134, 'MY', 'Malaysia', 0, 0),
(135, 'MV', 'Maldives', 0, 0),
(136, 'ML', 'Mali', 0, 0),
(137, 'MT', 'Malta', 0, 0),
(138, 'MH', 'Marshall Islands', 0, 0),
(139, 'MQ', 'Martinique', 0, 0),
(140, 'MR', 'Mauritania', 0, 0),
(141, 'MU', 'Mauritius', 0, 0),
(142, 'TY', 'Mayotte', 0, 0),
(143, 'MX', 'Mexico', 0, 0),
(144, 'FM', 'Micronesia, Federated States of', 0, 0),
(145, 'MD', 'Moldova, Republic of', 0, 0),
(146, 'MC', 'Monaco', 0, 0),
(147, 'MN', 'Mongolia', 0, 0),
(148, 'ME', 'Montenegro', 0, 0),
(149, 'MS', 'Montserrat', 0, 0),
(150, 'MA', 'Morocco', 0, 0),
(151, 'MZ', 'Mozambique', 0, 0),
(152, 'MM', 'Myanmar', 0, 0),
(153, 'NA', 'Namibia', 0, 0),
(154, 'NR', 'Nauru', 0, 0),
(155, 'NP', 'Nepal', 0, 0),
(156, 'NL', 'Netherlands', 0, 0),
(157, 'AN', 'Netherlands Antilles', 0, 0),
(158, 'NC', 'New Caledonia', 0, 0),
(159, 'NZ', 'New Zealand', 0, 0),
(160, 'NI', 'Nicaragua', 0, 0),
(161, 'NE', 'Niger', 0, 0),
(162, 'NG', 'Nigeria', 0, 0),
(163, 'NU', 'Niue', 0, 0),
(164, 'NF', 'Norfolk Island', 0, 0),
(165, 'MP', 'Northern Mariana Islands', 0, 0),
(166, 'NO', 'Norway', 0, 0),
(167, 'OM', 'Oman', 0, 0),
(168, 'PK', 'Pakistan', 0, 0),
(169, 'PW', 'Palau', 0, 0),
(170, 'PS', 'Palestine', 0, 0),
(171, 'PA', 'Panama', 0, 0),
(172, 'PG', 'Papua New Guinea', 0, 0),
(173, 'PY', 'Paraguay', 0, 0),
(174, 'PE', 'Peru', 0, 0),
(175, 'PH', 'Philippines', 0, 0),
(176, 'PN', 'Pitcairn', 0, 0),
(177, 'PL', 'Poland', 0, 0),
(178, 'PT', 'Portugal', 0, 0),
(179, 'PR', 'Puerto Rico', 0, 0),
(180, 'QA', 'Qatar', 0, 0),
(181, 'RE', 'Reunion', 0, 0),
(182, 'RO', 'Romania', 0, 0),
(183, 'RU', 'Russian Federation', 0, 0),
(184, 'RW', 'Rwanda', 0, 0),
(185, 'KN', 'Saint Kitts and Nevis', 0, 0),
(186, 'LC', 'Saint Lucia', 0, 0),
(187, 'VC', 'Saint Vincent and the Grenadines', 0, 0),
(188, 'WS', 'Samoa', 0, 0),
(189, 'SM', 'San Marino', 0, 0),
(190, 'ST', 'Sao Tome and Principe', 0, 0),
(191, 'SA', 'Saudi Arabia', 0, 0),
(192, 'SN', 'Senegal', 0, 0),
(193, 'RS', 'Serbia', 0, 0),
(194, 'SC', 'Seychelles', 0, 0),
(195, 'SL', 'Sierra Leone', 0, 0),
(196, 'SG', 'Singapore', 0, 0),
(197, 'SK', 'Slovakia', 0, 0),
(198, 'SI', 'Slovenia', 0, 0),
(199, 'SB', 'Solomon Islands', 0, 0),
(200, 'SO', 'Somalia', 0, 0),
(201, 'ZA', 'South Africa', 0, 0),
(202, 'GS', 'South Georgia South Sandwich Islands', 0, 0),
(203, 'SS', 'South Sudan', 0, 0),
(204, 'ES', 'Spain', 0, 0),
(205, 'LK', 'Sri Lanka', 0, 0),
(206, 'SH', 'St. Helena', 0, 0),
(207, 'PM', 'St. Pierre and Miquelon', 0, 0),
(208, 'SD', 'Sudan', 0, 0),
(209, 'SR', 'Suriname', 0, 0),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 0, 0),
(211, 'SZ', 'Swaziland', 0, 0),
(212, 'SE', 'Sweden', 0, 0),
(213, 'CH', 'Switzerland', 0, 0),
(214, 'SY', 'Syrian Arab Republic', 0, 0),
(215, 'TW', 'Taiwan', 0, 0),
(216, 'TJ', 'Tajikistan', 0, 0),
(217, 'TZ', 'Tanzania, United Republic of', 0, 0),
(218, 'TH', 'Thailand', 0, 0),
(219, 'TG', 'Togo', 0, 0),
(220, 'TK', 'Tokelau', 0, 0),
(221, 'TO', 'Tonga', 0, 0),
(222, 'TT', 'Trinidad and Tobago', 0, 0),
(223, 'TN', 'Tunisia', 0, 0),
(224, 'TR', 'Turkey', 0, 0),
(225, 'TM', 'Turkmenistan', 0, 0),
(226, 'TC', 'Turks and Caicos Islands', 0, 0),
(227, 'TV', 'Tuvalu', 0, 0),
(228, 'UG', 'Uganda', 0, 0),
(229, 'UA', 'Ukraine', 0, 0),
(230, 'AE', 'United Arab Emirates', 0, 0),
(231, 'GB', 'United Kingdom', 0, 0),
(232, 'US', 'United States', 0, 1),
(233, 'UM', 'United States minor outlying islands', 0, 0),
(234, 'UY', 'Uruguay', 0, 0),
(235, 'UZ', 'Uzbekistan', 0, 0),
(236, 'VU', 'Vanuatu', 0, 0),
(237, 'VA', 'Vatican City State', 2, 0),
(238, 'VE', 'Venezuela', 0, 0),
(239, 'VN', 'Vietnam', 0, 0),
(240, 'VG', 'Virgin Islands (British)', 0, 0),
(241, 'VI', 'Virgin Islands (U.S.)', 0, 0),
(242, 'WF', 'Wallis and Futuna Islands', 0, 0),
(243, 'EH', 'Western Sahara', 0, 0),
(244, 'YE', 'Yemen', 0, 0),
(245, 'ZM', 'Zambia', 5, 0),
(246, 'ZW', 'Zimbabwe', 36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `child_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`, `coupon_type`, `category`, `sub_category`, `child_category`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20', NULL, NULL, NULL, NULL),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26', NULL, NULL, NULL, NULL),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08', NULL, NULL, NULL, NULL),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28', NULL, NULL, NULL, NULL),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20', NULL, NULL, NULL, NULL),
(6, 'rererere', 1, 5, '665', 1, 1, '2019-05-21', '2022-05-26', 'category', 4, NULL, NULL),
(7, 'abcd', 1, 5, NULL, 0, 1, '2021-09-12', '2021-09-21', 'category', 4, NULL, NULL),
(8, '12345', 0, 34, NULL, 1, 1, '2021-12-15', '2021-12-30', 'category', 4, NULL, NULL),
(9, 'proco', 1, 10, NULL, 0, 1, '2022-01-03', '2022-01-10', 'category', 5, NULL, NULL),
(10, 'procoo', 0, 10, NULL, 0, 1, '2022-02-16', '2022-02-24', 'category', 5, NULL, NULL),
(11, 'uio', 0, 100, NULL, 0, 1, '2023-06-02', '2023-06-16', 'category', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency` blob,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `currency_value` double DEFAULT '0',
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `currency`, `currency_code`, `amount`, `currency_value`, `method`, `txnid`, `flutter_id`, `status`, `created_at`, `updated_at`) VALUES
(70, 13, 0x24, 'USD', 100, 1, 'Stripe', 'txn_1HlSKkJlIV5dN9n7yg2ZgIbE', NULL, 1, '2020-11-08 22:50:26', '2020-11-08 22:50:26'),
(71, 13, 0x24, 'USD', 100, 1, 'Stripe', 'txn_1HlSLhJlIV5dN9n7aaoz6WIH', NULL, 1, '2020-11-08 22:51:25', '2020-11-08 22:51:25'),
(72, 13, 0x24, 'USD', 100, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-08 22:51:48', '2020-11-08 23:17:06'),
(73, 13, 0x24, 'USD', 100, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-08 23:17:56', '2020-11-08 23:18:19'),
(74, 13, 0x24, 'USD', 100, 1, 'Mobile Money', '23423423432432', NULL, 1, '2020-11-08 23:28:41', '2020-11-08 23:28:53'),
(75, 22, 0x24, 'USD', 500, 1, 'Stripe', 'txn_1Hp4DrJlIV5dN9n7t1iTYL1d', NULL, 1, '2020-11-18 21:54:12', '2020-11-18 21:54:12'),
(76, 22, 0x24, 'USD', 1000, 1, 'Mobile Money', '69234324233423', NULL, 1, '2020-11-18 23:02:50', '2020-11-18 23:11:32'),
(77, 22, 0x24, 'USD', 30, 1, 'Paypal', '73C78619CF978200E', NULL, 1, '2021-09-10 22:25:08', '2021-09-10 22:25:08'),
(78, 22, 0x24, 'USD', 400455, 1, 'Paypal', '3KX550288A083143D', NULL, 1, '2021-12-12 15:39:26', '2021-12-12 15:39:26'),
(79, 22, 0x24, 'USD', 100, 1, 'Stripe', 'txn_3K6WRAJlIV5dN9n70GBwDbAn', NULL, 1, '2021-12-14 15:32:41', '2021-12-14 15:32:41'),
(80, 22, 0x24, 'USD', 100, 1, 'Paypal', '7DD5252950230501K', NULL, 1, '2021-12-14 15:59:10', '2021-12-14 15:59:10'),
(81, 22, 0x24, 'USD', 100, 1, 'Molly Payment', 'tr_sFs2rBK6sT', NULL, 1, '2021-12-14 15:59:40', '2021-12-14 15:59:40'),
(82, 22, 0x24, 'USD', 100, 1, 'Authorize.net', '40079231225', NULL, 1, '2021-12-14 16:00:30', '2021-12-14 16:00:30'),
(83, 22, 0x24, 'USD', 100, 1, 'Mercadopago', '1244588594', NULL, 1, '2021-12-14 16:01:40', '2021-12-14 16:01:40'),
(84, 22, 0x24, 'USD', 100, 1, 'Flutterwave', NULL, 'SBw01639472516', 0, '2021-12-14 16:01:56', '2021-12-14 16:01:56'),
(85, 22, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fc6044a9', NULL, 1, '2021-12-14 16:11:34', '2021-12-14 16:11:41'),
(86, 22, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fe1dd9d2', NULL, 1, '2021-12-14 16:12:01', '2021-12-14 16:12:07'),
(87, 22, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Paytm', '20211214111212800110168951203256029', NULL, 1, '2021-12-14 17:46:47', '2021-12-14 17:47:19'),
(88, 22, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Instamojo', '3adde727acd54f7ca0a57698bc3d0385', NULL, 1, '2021-12-14 18:08:34', '2021-12-14 18:08:34'),
(89, 22, 0xe282b9, 'INR', 1.4503263234228, 68.95, 'Paytm', '20211214111212800110168630103261249', NULL, 1, '2021-12-14 18:09:07', '2021-12-14 18:10:35'),
(90, 22, 0xe282a6, 'NGN', 0.2747864222533, 363.919, 'Paystack', NULL, NULL, 1, '2021-12-14 18:11:02', '2021-12-14 18:11:02'),
(91, 22, 0x24, 'USD', 50, 1, 'Flutterwave', '2699723', 'HHwZ1639557171', 1, '2021-12-15 02:32:51', '2021-12-15 02:33:13'),
(92, 22, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9aa479d33e', NULL, 1, '2021-12-15 02:41:43', '2021-12-15 02:41:47'),
(93, 22, 0xe0a7b3, 'BDT', 1.1816140848399, 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9ab61f41b9', NULL, 1, '2021-12-15 02:46:26', '2021-12-15 02:46:28'),
(94, 22, 0x24, 'USD', 100, 1, 'Paypal', '0RR72967LE978735V', NULL, 1, '2022-03-24 10:51:19', '2022-03-24 10:51:19'),
(95, 22, 0x24, 'USD', 10, 1, 'Paypal', '00554153MA792844F', NULL, 1, '2022-03-24 11:26:49', '2022-03-24 11:26:49'),
(96, 22, 0x24, 'USD', 2000, 1, 'Stripe', 'txn_3KgiIHJlIV5dN9n71BFGSxys', NULL, 1, '2022-03-24 11:29:05', '2022-03-24 11:29:05'),
(97, 22, 0x24, 'USD', 10, 1, 'Authorize.net', '40085654964', NULL, 1, '2022-03-24 11:39:19', '2022-03-24 11:39:19'),
(98, 22, 0x24, 'USD', 400, 1, 'Mercadopago', '1247049741', NULL, 1, '2022-03-24 11:40:40', '2022-03-24 11:40:40'),
(99, 22, 0x24, 'USD', 10, 1, 'Flutterwave', NULL, 'avdC1648096855', 0, '2022-03-24 11:40:55', '2022-03-24 11:40:55'),
(100, 22, 0x24, 'USD', 400, 1, 'Flutterwave', '3244951', 'oWol1648096990', 1, '2022-03-24 11:43:10', '2022-03-24 11:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Cart', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text,
  `message` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `name`, `phone`, `email`, `address`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Test One', '9876543210', 'test@gmail.com', 'kolkata', 'This is a test message.', '2023-06-03 14:48:18', '2023-06-03 14:48:18'),
(2, 'test', '9876543215', 'test@gmail.com', 'test', 'test', '2023-09-11 06:30:59', '2023-09-11 06:30:59'),
(3, 'BestFarmvow', '84896893681', 'iunskiygipertonik@gmail.com', 'https://pharmacy-discount.com/category/Erectile-Dysfunction?aff=1185', 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 30-day refunds. \r\n \r\n[b]Viagra[/b] buy, discount! without prescription. \r\n[b]Cialis[/b] buy, discount! without prescription. \r\nViagra Professional buy, discount! without prescription. \r\nCialis Professional buy, discount! without prescription. \r\n \r\nViagra Super Active buy, discount! without prescription. \r\nCialis Super Active buy, discount! without prescription. \r\n[b]Synthroid[/b] buy, discount! without prescription. \r\n \r\nhttps://cutt.ly/qwufYAl9', '2023-10-14 04:08:39', '2023-10-14 04:08:39'),
(4, 'LarryGib', '89728895171', 'yasen.krasen.13+96989@mail.ru', NULL, 'Nguheidjiwfefhei ijiwdwjurFEJDKWIJFEIF аоушвцшургаруш ШОРГПГОШРГРПГОГРГ iryuieoieifegjejj bvncehfedjiehfu fish2coral.com', '2023-10-22 01:45:37', '2023-10-22 01:45:37'),
(5, 'Josette Bosch', '(07) 3945 5625', 'bosch.josette@gmail.com', '25 Feather Street', 'want to get an alert when your website is down? then use our 24on7 web monitor - it\'s absolutely free! \r\nvisit https://t.ly/HmMMe?fish2coral.com   for more info', '2023-10-22 08:00:55', '2023-10-22 08:00:55'),
(6, 'Kira Pool', '948 31 883', 'pool.kira@gmail.com', 'Vammabakken 67', 'want to get an alert when your website is down? then signup to our 24on7 web monitor - it\'s absolutely free! \r\nvisit https://t.ly/HM1Fg?fish2coral.com   for more info', '2023-10-23 07:50:26', '2023-10-23 07:50:26'),
(7, 'JamesDAK', '83461916459', 'blessin1lucero0420@gmail.com', NULL, 'Transform Your Life with Earning $30,000 per Month in Email Marketing >>>>>>>>>>>>>>>>>>> http://marketing-54525597.dantojochilango.com/price?72409', '2023-10-29 21:11:59', '2023-10-29 21:11:59'),
(8, 'Roberttrito', '86555167772', 'mandy_iz_here@hotmail.com.au', NULL, 'START EARNING BIG: $30,000 PER DAY http://marketing-43225250.todosignificados.com/shop?97097', '2023-11-02 12:42:05', '2023-11-02 12:42:05'),
(9, 'StanleyKeype', '85696271971', 'rawaking2017@gmail.com', NULL, 'From $9000 to Financial Independence: The Art of Earnings on Investments https://marketplacebest888.sell.app/product/what-experts-are-silent-about-or-top-17-cryptocurrencies-that-will-soon-fly-to-the-moon?8626584', '2023-11-23 13:30:42', '2023-11-23 13:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `language_id`) VALUES
(1, 'Right my front it wound cause fully', '<div style=\"text-align: justify;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</div>', 1),
(3, 'Man particular insensible celebrated', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(4, 'Civilly why how end viewing related', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(5, 'Six started far placing saw respect', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>', 1),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div></div>', 1),
(7, 'Duis eu molestie quam, sed rhoncus nibh', '<p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13),
(2, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `font_family` varchar(100) DEFAULT NULL,
  `font_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `is_default`, `font_family`, `font_value`) VALUES
(1, 1, 'Roboto', 'Roboto'),
(3, 0, 'Roboto Mono', 'Roboto+Mono'),
(4, 0, 'Libre Caslon Display', 'Libre+Caslon+Display'),
(5, 0, 'Pangolin', 'Pangolin'),
(6, 0, 'Dancing Script', 'Dancing+Script'),
(7, 0, 'Open Sans', 'Open+Sans');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(86, 109, '1568026737EBGSE78G.jpg'),
(87, 109, '1568026737B8hO1RRr.jpg'),
(88, 109, '1568026737tf0rwVoz.jpg'),
(89, 109, '1568026737GGIPSqYo.jpg'),
(95, 107, '1568026797FFNrNPxK.jpg'),
(96, 107, '1568026797UwY9ZLfQ.jpg'),
(97, 107, '1568026797Kl6eZLx5.jpg'),
(98, 107, '1568026797h3R48VaO.jpg'),
(99, 107, '15680267989kXwH40I.jpg'),
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(191, 111, '1568029272lB0JETcn.jpg'),
(192, 111, '1568029272wF3ldKgv.jpg'),
(193, 111, '1568029272NI33ExCu.jpg'),
(194, 111, '15680292724TXrpokz.jpg'),
(217, 159, '1570085246audi-automobile-car-909907.jpg'),
(218, 159, '1570085246automobile-automotive-car-112460.jpg'),
(274, 178, '1639377201kIRW1EDl.jpg'),
(275, 178, '16393772019VK5FLtl.jpg'),
(276, 178, '1639377201krle8zlu.jpg'),
(277, 175, '16393776956AA40xFx.jpg'),
(278, 175, '16393776955klqsJ7E.jpg'),
(279, 175, '1639377695kWR5DE5x.jpg'),
(280, 169, '1639377747A3Pknjfy.jpg'),
(281, 169, '1639377747dxsp2VSK.jpg'),
(282, 164, '16393780458Yr3ZAOE.jpg'),
(283, 164, '1639378045UMFwFsPS.jpg'),
(284, 164, '16393780453ZLjK3mm.jpg'),
(285, 163, '1639378095FKuTnjNm.jpg'),
(286, 163, '1639378095fjzWQrCS.jpg'),
(287, 163, '16393780950yzaxhTO.jpg'),
(288, 162, '1639378165t5CzXscD.jpg'),
(289, 162, '1639378165qI2PTBtC.jpg'),
(290, 162, '1639378165jYceIttx.jpg'),
(291, 161, '1639378430m3XEmUer.jpg'),
(292, 161, '1639378430qqzusNiP.jpg'),
(293, 161, '1639378430euqFZ796.jpg'),
(294, 160, '1639392393qABYd9Jp.jpg'),
(295, 160, '1639392393M7WZcZyF.jpg'),
(296, 160, '1639392394NcXuluij.jpg'),
(297, 144, '1639392542Hi8kqofd.jpg'),
(298, 144, '1639392543aNErwy42.jpg'),
(299, 144, '1639392543TClWju2X.jpg'),
(303, 135, '1639392748zU2kggIw.jpg'),
(304, 135, '1639392748KS5BV2nQ.jpg'),
(305, 135, '1639392748T3zkUMnp.jpg'),
(309, 114, '16394527172MC08Ov5.jpg'),
(310, 114, '1639452717EByuwyqy.jpg'),
(311, 114, '1639452717nNfXnbRZ.jpg'),
(312, 128, '16394564079EvhKQXl.jpg'),
(313, 128, '1639456407vtTRoAr7.jpg'),
(314, 128, '1639456408cd9XLUJ1.jpg'),
(326, 170, '1646901584l8MraaNk.jpg'),
(327, 170, '1646901584I1CFhs35.jpg'),
(328, 170, '1646901584Okkqp3E2.jpg'),
(329, 170, '1646901585daDTZaH9.jpg'),
(330, 168, '1648013520wLz6NjQ8.jpg'),
(331, 168, '1648013521CUVnKkuW.jpg'),
(332, 168, '1648013521ZCJGdOET.jpg'),
(333, 168, '1648013521cfKHnzKx.jpg'),
(334, 168, '1648013521nwKHsHXv.jpg'),
(335, 165, '16480136903vx2nVLT.jpg'),
(336, 165, '1648013690zDZkb083.jpg'),
(337, 165, '1648013690prNoHG1K.jpg'),
(338, 188, '1697183747k0JtjOwo.jpg'),
(339, 187, '1697184303E8STzGAn.jpg'),
(340, 186, '169718502481H6Yzu4.jpg'),
(341, 185, '1697186038lXwOJ9e2.jpg'),
(342, 189, '1697189829ZU1nlM1e.jpg'),
(343, 190, '1697189968pGePqumP.jpg'),
(344, 191, '1697190328fz827J5l.jpg'),
(345, 191, '1697190328vo0Bd6LZ.jpg'),
(346, 184, '1697190460U1Ivhvoj.jpg'),
(347, 197, '1697197030tP0s8ZvS.jpg'),
(350, 195, '1697198058hRJAkiiO.jpg'),
(351, 195, '1697198058XwcgiTg1.jpg'),
(352, 194, '1697198527QIHGdr1J.jpg'),
(353, 194, '1697198527OWhTkeSC.jpg'),
(354, 193, '1697199328Gv5wqAI9.jpg'),
(355, 193, '1697199328dS8KOTMt.jpg'),
(356, 192, '16971994339EQGpo0q.jpg'),
(357, 192, '1697199433LggumtQs.jpg'),
(358, 192, '1697199433rKEuJgN3.jpg'),
(359, 192, '16971994345xRu4tke.jpg'),
(360, 196, '1697199757JvrewV3a.jpg'),
(361, 189, '1697200348khkSYqf9.jpg'),
(362, 189, '1697200348Bb3dclEy.jpg'),
(363, 189, '1697200348MObkg3zC.jpg'),
(364, 189, '1697200348NgU2Smit.jpg'),
(365, 188, '1697200817pRWM66Ql.jpg'),
(366, 187, '1697201477wsbmbPFE.jpg'),
(367, 187, '1697201477jWQrVF9Z.jpg'),
(368, 186, '1697201922yIin6TWS.jpg'),
(369, 198, '1697203434jl476yxOjpg'),
(370, 198, '1697203434klbN5ZAijpg'),
(371, 199, '1697204405dYxkbgLa.jpg'),
(372, 199, '1697204412xxmkGFSU.jpg'),
(373, 199, '1697204412kXcYmVUd.jpg'),
(374, 200, '1697205528GgmntAyFjpg'),
(375, 200, '1697205528IrliKmTqjpg'),
(376, 201, '1697206153Hu4sunm8jpg'),
(377, 201, '1697206153iOiL5z8Cjpg'),
(378, 201, '1697206153XvflFqG1jpg'),
(379, 202, '16972080149puP46yKjpg'),
(380, 202, '1697208014uC9u3oy9jpg'),
(381, 203, '1697208531DK4NzUa0jpg'),
(382, 203, '1697208531PZB4qQykjpg'),
(383, 203, '16972085311OSc3VS6jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` bigint(20) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `mail_driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int(100) NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `wholesell` int(191) NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `capcha_secret_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capcha_site_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_404` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_500` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `breadcrumb_banner` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `header_color` enum('light','dark') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `maintain_text` text COLLATE utf8mb4_unicode_ci,
  `is_buy_now` tinyint(4) NOT NULL,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT '1',
  `verify_product` tinyint(1) NOT NULL DEFAULT '0',
  `page_count` int(11) NOT NULL DEFAULT '0',
  `flash_count` int(11) NOT NULL DEFAULT '0',
  `hot_count` int(11) NOT NULL DEFAULT '0',
  `new_count` int(11) NOT NULL DEFAULT '0',
  `sale_count` int(11) NOT NULL DEFAULT '0',
  `best_seller_count` int(11) NOT NULL DEFAULT '0',
  `popular_count` int(11) NOT NULL DEFAULT '0',
  `top_rated_count` int(11) NOT NULL DEFAULT '0',
  `big_save_count` int(11) NOT NULL DEFAULT '0',
  `trending_count` int(11) NOT NULL DEFAULT '0',
  `seller_product_count` int(11) NOT NULL DEFAULT '0',
  `wishlist_count` int(11) NOT NULL DEFAULT '0',
  `vendor_page_count` int(11) NOT NULL DEFAULT '0',
  `min_price` double NOT NULL DEFAULT '0',
  `max_price` double NOT NULL DEFAULT '0',
  `post_count` tinyint(1) NOT NULL DEFAULT '0',
  `product_page` text COLLATE utf8mb4_unicode_ci,
  `wishlist_page` text COLLATE utf8mb4_unicode_ci,
  `is_contact_seller` tinyint(1) NOT NULL DEFAULT '0',
  `is_debug` tinyint(1) NOT NULL DEFAULT '0',
  `decimal_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousand_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cookie` tinyint(1) NOT NULL DEFAULT '0',
  `product_affilate` tinyint(1) NOT NULL DEFAULT '0',
  `product_affilate_bonus` int(10) NOT NULL DEFAULT '0',
  `is_reward` int(11) NOT NULL DEFAULT '0',
  `reward_point` int(11) NOT NULL DEFAULT '0',
  `reward_dolar` int(11) NOT NULL DEFAULT '0',
  `physical` tinyint(4) NOT NULL DEFAULT '1',
  `digital` tinyint(4) NOT NULL DEFAULT '1',
  `license` tinyint(4) NOT NULL DEFAULT '1',
  `affilite` tinyint(4) NOT NULL DEFAULT '1',
  `partner_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_text` longtext COLLATE utf8mb4_unicode_ci,
  `deal_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_details` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_time` date DEFAULT NULL,
  `deal_background` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `is_disqus`, `disqus`, `guest_checkout`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `shipping_cost`, `mail_driver`, `mail_host`, `mail_port`, `mail_encryption`, `mail_user`, `mail_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `is_affilate`, `affilate_charge`, `affilate_banner`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `footer_color`, `copyright_color`, `copyright`, `is_admin_loader`, `is_verification_email`, `wholesell`, `is_capcha`, `capcha_secret_key`, `capcha_site_key`, `error_banner_404`, `error_banner_500`, `is_popup`, `popup_background`, `breadcrumb_banner`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `footer_logo`, `show_stock`, `is_maintain`, `header_color`, `maintain_text`, `is_buy_now`, `version`, `affilate_product`, `verify_product`, `page_count`, `flash_count`, `hot_count`, `new_count`, `sale_count`, `best_seller_count`, `popular_count`, `top_rated_count`, `big_save_count`, `trending_count`, `seller_product_count`, `wishlist_count`, `vendor_page_count`, `min_price`, `max_price`, `post_count`, `product_page`, `wishlist_page`, `is_contact_seller`, `is_debug`, `decimal_separator`, `thousand_separator`, `is_cookie`, `product_affilate`, `product_affilate_bonus`, `is_reward`, `reward_point`, `reward_dolar`, `physical`, `digital`, `license`, `affilite`, `partner_title`, `partner_text`, `deal_title`, `deal_details`, `deal_time`, `deal_background`) VALUES
(1, '1694417935corel-whitepng.png', '16888018215png.png', 'Fish2Coral', '#424a4d', '1564224328loading3.gif', '1564224329loading3.gif', 0, 'Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.', 1, 0, 0, 'junnun', 1, 0, 5, 5, 5, 'smtp', 'mail.fish2coral.com', '465', 'ssl', 'webmaster@fish2coral.com', 'Suzuki#@!4', 'webmaster@fish2coral.com', 'Fish2Corals', 1, 1, 1, 0, 10, '15587771131554048228onepiece.jpeg', 5, 5, 1, 1, 1, 1, '#143250', '#02020c', '© Copyright 2023 FISH2CORAL. All Rights Reserved.', 1, 0, 6, 0, '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '1566878455404.png', '1587792059error-500.png', 0, '1592369253banner.jpg', '1648110638breadpng.png', '1694417951corelpng.png', '1567655174profile.jpg', '#666666', 0, 1, '1694417944corel-whitepng.png', 1, 0, 'light', '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 1, '1.1', 1, 1, 12, 6, 6, 12, 12, 12, 8, 4, 4, 4, 3, 12, 12, 0, 1000000, 6, NULL, '12,24,36,48,60', 0, 0, '.', ',', 0, 0, 5, 1, 10, 15, 1, 1, 1, 1, 'Our Partners', 'Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.', 'CLICK SHOP NOW FOR ALL DEAL OF THE PRODUCT', 'Donec condimentum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper.....', '2023-06-30', '164743040383png.png');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1605519199OsGO7B86.json', '1605519199OsGO7B86', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) NOT NULL,
  `label_menu` varchar(100) DEFAULT NULL,
  `url_menu` varchar(300) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `label_menu`, `url_menu`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Test One 1', 'https://youtu.be/-0jKv7_NwaI11111', 0, NULL, NULL),
(2, 'Test Two', 'https://youtube.com/shorts/prHjkdJgy74?feature=share', 1, NULL, NULL),
(3, 'Test Three', 'https://youtu.be/-0jKv7_NwaI', 0, NULL, NULL),
(4, 'Test Four', 'xxx', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `created_at`, `updated_at`) VALUES
(18, 7, 'klklklk', 22, NULL, '2021-12-22 17:00:14', '2021-12-22 17:00:14'),
(19, 7, '==+', 22, NULL, '2021-12-22 17:00:49', '2021-12-22 17:00:49'),
(23, 10, 'fgdghdfg', 22, NULL, '2022-03-07 21:30:35', '2022-03-07 21:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(96, NULL, 42, NULL, NULL, NULL, 1, '2021-12-25 21:59:23', '2021-12-26 03:46:14'),
(97, NULL, 43, NULL, NULL, NULL, 1, '2021-12-26 17:24:45', '2021-12-26 19:14:41'),
(98, 215, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:06', '2022-02-17 00:28:58'),
(99, 216, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:09', '2022-02-17 00:28:58'),
(100, 217, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:11', '2022-02-17 00:28:58'),
(101, 218, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:12', '2022-02-17 00:28:58'),
(102, 219, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:17:16', '2022-02-17 00:28:58'),
(103, 220, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:29:52', '2022-02-17 00:28:58'),
(104, 221, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:30:49', '2022-02-17 00:28:58'),
(105, 222, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:35:07', '2022-02-17 00:28:58'),
(106, 223, NULL, NULL, NULL, NULL, 1, '2022-02-03 02:40:00', '2022-02-17 00:28:58'),
(107, 224, NULL, NULL, NULL, NULL, 1, '2022-02-03 03:07:59', '2022-02-17 00:28:58'),
(112, 225, NULL, NULL, NULL, NULL, 1, '2022-02-08 23:22:01', '2022-02-17 00:28:58'),
(113, 226, NULL, NULL, NULL, NULL, 1, '2022-02-09 03:04:04', '2022-02-17 00:28:58'),
(114, 227, NULL, NULL, NULL, NULL, 1, '2022-02-09 03:20:53', '2022-02-17 00:28:58'),
(115, NULL, 44, NULL, NULL, NULL, 1, '2022-02-15 23:27:04', '2022-02-17 00:28:57'),
(116, NULL, 45, NULL, NULL, NULL, 1, '2022-02-20 23:35:10', '2022-02-21 03:03:53'),
(117, NULL, 46, NULL, NULL, NULL, 1, '2022-02-20 23:42:05', '2022-02-21 03:03:53'),
(118, 228, NULL, NULL, NULL, NULL, 1, '2022-02-20 23:52:27', '2022-02-21 03:03:50'),
(121, 229, NULL, NULL, NULL, NULL, 1, '2022-02-27 00:38:23', '2023-06-09 10:09:44'),
(122, 230, NULL, NULL, NULL, NULL, 1, '2022-02-27 00:38:29', '2023-06-09 10:09:44'),
(123, 231, NULL, NULL, NULL, NULL, 1, '2022-02-27 00:45:34', '2023-06-09 10:09:44'),
(124, 232, NULL, NULL, NULL, NULL, 1, '2022-02-27 02:27:27', '2023-06-09 10:09:44'),
(125, 233, NULL, NULL, NULL, NULL, 1, '2022-02-27 02:44:13', '2023-06-09 10:09:44'),
(126, 234, NULL, NULL, NULL, NULL, 1, '2022-02-27 21:49:56', '2023-06-09 10:09:44'),
(127, 235, NULL, NULL, NULL, NULL, 1, '2022-03-01 03:39:16', '2023-06-09 10:09:44'),
(128, 236, NULL, NULL, NULL, NULL, 1, '2022-03-01 03:41:25', '2023-06-09 10:09:44'),
(129, 237, NULL, NULL, NULL, NULL, 1, '2022-03-06 02:40:56', '2023-06-09 10:09:44'),
(130, 237, NULL, NULL, NULL, NULL, 1, '2022-03-06 02:42:06', '2023-06-09 10:09:44'),
(131, 238, NULL, NULL, NULL, NULL, 1, '2022-03-06 02:42:53', '2023-06-09 10:09:44'),
(132, NULL, 47, NULL, NULL, NULL, 1, '2022-03-09 06:05:13', '2023-06-09 10:09:43'),
(133, 239, NULL, NULL, NULL, NULL, 1, '2022-03-09 23:03:16', '2023-06-09 10:09:44'),
(134, 240, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:46:07', '2023-06-09 10:09:44'),
(135, 241, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:46:58', '2023-06-09 10:09:44'),
(136, 242, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:49:17', '2023-06-09 10:09:44'),
(137, 243, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:50:52', '2023-06-09 10:09:44'),
(138, 244, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:53:34', '2023-06-09 10:09:44'),
(139, 245, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:55:03', '2023-06-09 10:09:44'),
(140, 246, NULL, NULL, NULL, NULL, 1, '2022-03-24 12:56:03', '2023-06-09 10:09:44'),
(141, NULL, 48, NULL, NULL, NULL, 0, '2023-08-12 02:12:15', '2023-08-12 02:12:15'),
(142, 247, NULL, NULL, NULL, NULL, 0, '2023-08-21 03:05:56', '2023-08-21 03:05:56'),
(143, 248, NULL, NULL, NULL, NULL, 0, '2023-08-21 03:08:14', '2023-08-21 03:08:14'),
(144, NULL, 49, NULL, NULL, NULL, 0, '2023-09-07 02:57:56', '2023-09-07 02:57:56'),
(145, NULL, 50, NULL, NULL, NULL, 0, '2023-10-08 21:17:24', '2023-10-08 21:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` double NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL,
  `tax_location` varchar(191) DEFAULT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT '0',
  `vendor_packing_id` int(191) NOT NULL DEFAULT '0',
  `wallet_price` double NOT NULL DEFAULT '0',
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(10) NOT NULL DEFAULT '0',
  `affilate_users` text,
  `commission` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`) VALUES
(247, 48, '{\"totalQty\":1,\"totalPrice\":14,\"items\":{\"183option1\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":14,\"item\":{\"id\":183,\"user_id\":0,\"slug\":\"test-l3d5729aao\",\"name\":\"test\",\"photo\":\"1692445795PojGUGYl.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":14,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"test_attribute\\\":{\\\"values\\\":[\\\"option1\\\",\\\"option2\\\"],\\\"prices\\\":[\\\"4\\\",\\\"8\\\"],\\\"previous_prices\\\":[\\\"18\\\",\\\"20\\\"],\\\"discounts\\\":[\\\"20\\\",\\\"30\\\"],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"test_attribute\",\"values\":\"option1\",\"item_price\":14,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Paypal', 'shipto', 'Azampur', '1', 14, NULL, NULL, 'mzGL1692606956', 'Pending', 'raju.933123@gmail.com', 'Raju Debnath', 'test', '9330636779', '294(81/1/D/1/N)', 'test', '786545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-08-21 03:05:56', '2023-08-21 03:05:56', NULL, NULL, '$', 'USD', 1, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', NULL, NULL, 0, NULL, 0),
(248, 48, '{\"totalQty\":1,\"totalPrice\":14,\"items\":{\"183option1\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":14,\"item\":{\"id\":183,\"user_id\":0,\"slug\":\"test-l3d5729aao\",\"name\":\"test\",\"photo\":\"1692445795PojGUGYl.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":14,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"test_attribute\\\":{\\\"values\\\":[\\\"option1\\\",\\\"option2\\\"],\\\"prices\\\":[\\\"4\\\",\\\"8\\\"],\\\"previous_prices\\\":[\\\"18\\\",\\\"20\\\"],\\\"discounts\\\":[\\\"20\\\",\\\"30\\\"],\\\"details_status\\\":1}}\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"test_attribute\",\"values\":\"option1\",\"item_price\":14,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'shipto', 'Azampur', '1', 14, NULL, NULL, 'pXtX1692607094', 'Pending', 'raju.933123@gmail.com', 'Raju Debnath', 'test', '9330636779', '294(81/1/D/1/N)', 'test', '786545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2023-08-21 03:08:14', '2023-09-15 22:25:52', NULL, NULL, '$', 'USD', 1, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(304, 247, 'Pending', 'You have successfully placed your order.', '2023-08-21 03:05:56', '2023-08-21 03:05:56'),
(305, 248, 'Pending', 'You have successfully placed your order.', '2023-08-21 03:08:14', '2023-08-21 03:08:14'),
(306, 248, 'Processing', 'Process Your order', '2023-09-15 22:25:52', '2023-09-15 22:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`, `language_id`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0',
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `photo`, `meta_tag`, `meta_description`, `header`, `footer`, `language_id`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"></div>', '164593825554png.png', NULL, NULL, 1, 0, 1),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.44444; font-size: 52px; color: rgb(20, 50, 80); font-family: &quot;Open Sans&quot;, sans-serif;\"><font size=\"6\" style=\"box-sizing: border-box;\">Title number 1</font><br style=\"box-sizing: border-box;\"></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></h2><h2 style=\"line-height: 1.44444;\"><font size=\"6\">Title number 2</font><br></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></h2></div>', '164593897354png.png', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.44444; font-size: 52px; color: rgb(20, 50, 80); font-family: &quot;Open Sans&quot;, sans-serif;\"><font size=\"6\" style=\"box-sizing: border-box;\">Title number 1</font><br style=\"box-sizing: border-box;\"></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></h2><h2 style=\"line-height: 1.44444;\"><font size=\"6\">Title number 2</font><br></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></h2></div>', '164593902254png.png', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `rightbanner1` text COLLATE utf8mb4_unicode_ci,
  `rightbanner2` text COLLATE utf8mb4_unicode_ci,
  `rightbannerlink1` text COLLATE utf8mb4_unicode_ci,
  `rightbannerlink2` text COLLATE utf8mb4_unicode_ci,
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `blog` tinyint(1) NOT NULL DEFAULT '0',
  `faq` tinyint(1) NOT NULL DEFAULT '0',
  `contact` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  `arrival_section` tinyint(1) NOT NULL DEFAULT '1',
  `our_services` tinyint(1) NOT NULL DEFAULT '1',
  `second_left_banner` tinyint(1) NOT NULL DEFAULT '1',
  `popular_products` tinyint(1) NOT NULL DEFAULT '1',
  `third_left_banner` tinyint(1) NOT NULL DEFAULT '1',
  `slider` tinyint(1) NOT NULL DEFAULT '0',
  `flash_deal` tinyint(1) NOT NULL DEFAULT '1',
  `deal_of_the_day` tinyint(1) NOT NULL DEFAULT '1',
  `best_sellers` tinyint(1) NOT NULL DEFAULT '1',
  `partner` tinyint(1) NOT NULL DEFAULT '1',
  `top_big_trending` tinyint(1) NOT NULL DEFAULT '0',
  `top_brand` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_email`, `street`, `phone`, `fax`, `email`, `site`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `rightbanner1`, `rightbanner2`, `rightbannerlink1`, `rightbannerlink2`, `home`, `blog`, `faq`, `contact`, `category`, `arrival_section`, `our_services`, `second_left_banner`, `popular_products`, `third_left_banner`, `slider`, `flash_deal`, `deal_of_the_day`, `best_sellers`, `partner`, `top_big_trending`, `top_brand`) VALUES
(1, 'sales@fish2coral.com', '610 Pedricktown Road Bridgeport NJ 08014', '8562368485', '00 000 000 000', 'sales@fish2coral.com', 'https://fish2coral.com/', '1639369899side-banner22png.png', 'http://google.com', '1639370813Bottom31png.png', 'http://google.com', '1639369899bottom3-bigg1png.png', 'http://google.com', '1573022053aside-banner1.jpg', 'http://google.com', '1573547281sm-banner.jpg', '1573547653sm-banner.jpg', 'https://codecanyon.net/user/geniusocean/portfolio', 'https://codecanyon.net/user/geniusocean/portfolio', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(7, '1571289583p1.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(8, '1571289601p2.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(9, '1571289608p3.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(10, '1571289614p4.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(11, '1571289621p5.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(12, '1571289627p6.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(13, '1571289634p7.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(14, '1571289642p8.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(15, '1571289650p9.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(16, '1571289657p10.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(18, '1571289669p12.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(19, '1571289675p13.jpg', 'https://codecanyon.net/user/geniusocean/portfolio');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '*',
  `checkout` int(191) NOT NULL DEFAULT '1',
  `deposit` int(191) NOT NULL DEFAULT '1',
  `subscription` int(191) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `deposit`, `subscription`) VALUES
(1, 'Pay with cash upon delivery.', 'Cash On Delivery', NULL, NULL, 'manual', NULL, 'cod', '*', 1, 0, 0),
(4, NULL, NULL, NULL, 'SSLCommerz', 'automatic', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"sandbox_check\":1,\"text\":\"Pay Via SSLCommerz.\"}', 'sslcommerz', '[\"4\"]', 0, 1, 1),
(6, NULL, NULL, NULL, 'Flutter Wave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-299dc2c8bf4c7f14f7d7f48c32433393-X\",\"secret_key\":\"FLWSECK_TEST-afb1f2a4789002d7c0f2185b830450b7-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '[\"1\",\"9\"]', 0, 1, 1),
(7, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"sandbox_check\":1,\"text\":\"Pay Via MercadoPago\"}', 'mercadopago', '[\"1\"]', 0, 1, 1),
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize.net', '[\"1\"]', 0, 1, 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"8\"]', 0, 1, 1),
(10, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"text\":\"Pay with Mollie Payment.\"}', 'mollie', '[\"1\",\"6\"]', 0, 1, 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '[\"8\"]', 0, 1, 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"9\"]', 0, 1, 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":1,\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', '[\"8\"]', 0, 1, 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\"]', 0, 1, 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"Af4FF8s3Pm_cYTags2bcrlPaRLrU81LbgvhJfKTA-x4CQn7sP32L5-tQQC9WmEOtJZct-rguVghT6YHF\",\"client_secret\":\"EAG99-xg01cWkyg6JsCiIGWtmkfEib2pjeNubGDtoM7znDDAK2pjtJl9UADrPLT2Qlr58qYzhBAnMzIJ\",\"sandbox_check\":0,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`, `language_id`) VALUES
(2, 'Azampur', 1),
(3, 'Dhaka', 1),
(4, 'Kazipara', 1),
(5, 'Kamarpara', 1),
(6, 'Uttara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `brand` int(191) DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `short_desc` text,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `views` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` date DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int(191) NOT NULL DEFAULT '0',
  `language_id` int(191) DEFAULT NULL,
  `preordered` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_all` text,
  `size_all` text,
  `stock_check` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `short_desc`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `language_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`) VALUES
(184, 'srt6876MiC', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Bell pepper', 'bell-pepper-srt6876mic', '1692807045x0jnWTC0.png', '1692807045sHDFdWw1.jpg', NULL, NULL, NULL, NULL, NULL, 65, 71, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 69, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 1, '2023-08-23 10:40:45', '2023-11-27 00:51:35', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(185, 'KC91805T9F', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Solar Fairy Wrasse', 'solar-fairy-wrasse-kc91805t9f', '16928626668joJOALa.png', '1692862666LuubwwVM.jpg', NULL, NULL, NULL, NULL, NULL, 74, 84, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 62, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 1, '2023-08-24 02:07:46', '2023-11-26 23:51:21', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(186, 'pF026745rQ', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Exquisite Male', 'exquisite-male-pf026745rq', '1697530354jvv2ffyF.png', '1697530354fbP1XEcK.jpg', NULL, NULL, NULL, NULL, NULL, 80, 100, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 65, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 1, '2023-08-24 02:09:01', '2023-11-27 05:55:10', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(187, 'TfX2744lfj', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Flameback Angelfish - Africa', 'flameback-angelfish-africa-tfx2744lfj', '1692862779MFSY1k1B.png', '1692862779fPhrPHlV.jpg', NULL, NULL, NULL, NULL, NULL, 80, 70, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 59, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 1, '2023-08-24 02:09:39', '2023-11-27 05:58:17', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(188, 'xmM2782XUr', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Golden', 'golden-xmm2782xur', '1692862812tmLIK8Uf.png', '1692862812GdaaqgW7.jpg', NULL, NULL, NULL, NULL, NULL, 65, 75, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 59, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 1, '2023-08-24 02:10:12', '2023-11-27 08:53:28', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(189, 'yA22883A7j', 'normal', NULL, 0, 26, NULL, NULL, NULL, NULL, 'Goniopora Coral_ Super Purple - Aquacultu…', 'goniopora-coral-super-purple-aquacultu-ya22883a7j', '1692862918lqblAHne.png', '1692862918yMNlJjP3.jpg', NULL, NULL, NULL, NULL, NULL, 65, 75, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 55, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 1, '2023-08-24 02:11:58', '2023-11-27 03:14:36', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(190, 'm9n2921G0U', 'normal', NULL, 0, 23, NULL, NULL, NULL, NULL, 'Goniopora Lobata', 'goniopora-lobata-m9n2921g0u', '1692862983rJGShaX7.png', '16928629835ejetxwI.jpg', NULL, NULL, NULL, NULL, NULL, 65, 55, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 62, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 1, '2023-08-24 02:13:03', '2023-11-27 06:20:55', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(191, '3dE2985BYf', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Reef Cleaner Pack - Premium 55+', 'reef-cleaner-pack-premium-55-3de2985byf', '1692863021yiJGk5F0.png', '1692863021AhGZVu0D.jpg', NULL, NULL, NULL, NULL, NULL, 85, 95, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 55, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 1, 0, 1, 1, '2023-08-24 02:13:41', '2023-11-26 23:52:21', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(192, 'KTw3328nAy', 'normal', NULL, 0, 26, NULL, NULL, NULL, NULL, 'Bristletooth Two Spot', 'bristletooth-two-spot-ktw3328nay', '1697529437nIWtjKHG.png', '1697529437T4LoqYdj.jpg', NULL, NULL, NULL, NULL, NULL, 120, 80, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 55, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2023-08-24 02:20:17', '2023-11-27 10:34:15', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(193, '5FS3420U0v', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Bristletooth Two Spot', 'bristletooth-two-spot-5fs3420u0v', '1692863504NLdpezUJ.png', '1692863504p4MUruVL.jpg', NULL, NULL, NULL, NULL, NULL, 100, 120, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 57, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2023-08-24 02:21:44', '2023-11-26 23:51:23', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(194, 'Xu53507DHE', 'normal', NULL, 0, 26, NULL, NULL, NULL, NULL, 'Palythoa Ultra Color', 'palythoa-ultra-color-xu53507dhe', '1697530071D8TbtMmF.png', '1697530071zNA9E7AV.jpg', NULL, NULL, NULL, NULL, NULL, 85, 90, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 51, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2023-08-24 02:23:26', '2023-11-26 23:51:42', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(195, 'A3X36778Cf', 'normal', NULL, 0, 26, NULL, NULL, NULL, NULL, 'Blastomussa Wellsi Ultra', 'blastomussa-wellsi-ultra-a3x36778cf', '1697529707E1SdiMvG.png', '1697529707Xah0kL4E.jpg', NULL, NULL, NULL, NULL, NULL, 80, 95, '<br>', '<br>', NULL, NULL, 1, 49, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2023-08-24 02:25:40', '2023-11-27 09:33:12', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(196, 'Dlt3899Riv', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Exquisite Male', 'exquisite-male-dlt3899riv', '1692863951erucAU2c.png', '1692863951r6Uw123w.jpg', NULL, NULL, NULL, NULL, NULL, 85, 75, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 49, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2023-08-24 02:29:11', '2023-11-26 23:51:35', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(197, 'gMM404863w', 'normal', NULL, 0, 28, NULL, NULL, NULL, '{\"test\":{\"values\":[\"option1\",\"option2\"],\"prices\":[\"10\",\"12\"],\"previous_prices\":[\"20\",\"30\"],\"discounts\":[\"10\",\"28\"],\"details_status\":1}}', 'Algae Destroyer Pack - Basic 30+', 'algae-destroyer-pack-basic-30-gmm404863w', '1697529729jBRAgxr8.png', '1697529729atcfBcBL.jpg', NULL, NULL, NULL, NULL, NULL, 100, 120, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 60, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2023-08-24 02:32:39', '2023-11-26 23:52:12', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(198, 'tFU31511Nw', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Butterflies', 'butterflies-tfu31511nw', '1697203434JsSBjGpz.png', '16972034343ycCxEdn.jpg', NULL, NULL, NULL, NULL, NULL, 8, 18, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 26, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-13 20:23:54', '2023-11-26 23:52:40', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(199, 'KpH3853Iis', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Bat Fish', 'bat-fish-kph3853iis', '1697204112OjDZFa1s.png', '1697204112hRsXCrmB.jpg', NULL, NULL, NULL, NULL, NULL, 10, 15, '<br>', '<br>', NULL, NULL, 1, 25, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-13 20:35:12', '2023-11-26 23:52:29', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(200, 'EPV5453EmY', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Goat Fish', 'goat-fish-epv5453emy', '1697205528QprH2SJK.png', '1697205528mWbRTFyM.jpg', NULL, NULL, NULL, NULL, NULL, 7, 16, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 21, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-13 20:58:48', '2023-11-26 23:52:32', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(201, 'C3P5564xpt', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Dottyback', 'dottyback-c3p5564xpt', '169720615306glLYsR.png', '1697206153f3DBCsUu.jpg', NULL, NULL, NULL, NULL, NULL, 10, 18, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 21, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-13 21:09:13', '2023-11-26 23:52:27', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(202, 'JfW7949IBb', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Hogfish', 'hogfish-jfw7949ibb', '1697208014YCSHfkcI.png', '1697208014Y2dlUvSi.jpg', NULL, NULL, NULL, NULL, NULL, 150, 180, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 22, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-13 21:40:14', '2023-11-26 23:52:31', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0),
(203, 'wF98460Gma', 'normal', NULL, 0, 28, NULL, NULL, NULL, NULL, 'Sea Horse', 'sea-horse-wf98460gma', '1697208531IKZeormO.png', '1697208531DMjYckqJ.jpg', NULL, NULL, NULL, NULL, NULL, 80, 90, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</span><br>', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</span><br>', NULL, NULL, 1, 21, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-13 21:48:51', '2023-11-26 23:52:38', 0, NULL, NULL, NULL, 0, 0, 1, 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(3857, 197, '2023-08-24'),
(3858, 197, '2023-08-24'),
(3859, 197, '2023-08-24'),
(3860, 197, '2023-08-24'),
(3861, 192, '2023-09-07'),
(3862, 185, '2023-09-07'),
(3863, 196, '2023-09-07'),
(3864, 196, '2023-09-07'),
(3865, 196, '2023-09-07'),
(3866, 196, '2023-09-07'),
(3867, 196, '2023-09-07'),
(3868, 195, '2023-09-08'),
(3869, 185, '2023-09-08'),
(3870, 190, '2023-09-08'),
(3871, 190, '2023-09-10'),
(3872, 185, '2023-09-10'),
(3873, 186, '2023-09-10'),
(3874, 185, '2023-09-11'),
(3875, 190, '2023-09-11'),
(3876, 193, '2023-09-11'),
(3877, 193, '2023-09-11'),
(3878, 184, '2023-09-11'),
(3879, 190, '2023-09-11'),
(3880, 191, '2023-09-11'),
(3881, 190, '2023-09-11'),
(3882, 192, '2023-09-11'),
(3883, 192, '2023-09-11'),
(3884, 186, '2023-09-11'),
(3885, 197, '2023-09-11'),
(3886, 184, '2023-09-11'),
(3887, 184, '2023-09-11'),
(3888, 190, '2023-09-11'),
(3889, 197, '2023-09-11'),
(3890, 197, '2023-09-11'),
(3891, 190, '2023-09-11'),
(3892, 187, '2023-09-11'),
(3893, 194, '2023-09-11'),
(3894, 193, '2023-09-12'),
(3895, 194, '2023-09-23'),
(3896, 190, '2023-09-23'),
(3897, 184, '2023-09-23'),
(3898, 188, '2023-09-23'),
(3899, 189, '2023-09-23'),
(3900, 185, '2023-09-23'),
(3901, 186, '2023-09-24'),
(3902, 196, '2023-09-24'),
(3903, 191, '2023-09-24'),
(3904, 195, '2023-09-24'),
(3905, 193, '2023-09-24'),
(3906, 197, '2023-09-25'),
(3907, 187, '2023-09-25'),
(3908, 192, '2023-09-26'),
(3909, 184, '2023-09-26'),
(3910, 186, '2023-09-26'),
(3911, 185, '2023-09-26'),
(3912, 197, '2023-09-26'),
(3913, 195, '2023-09-26'),
(3914, 193, '2023-09-26'),
(3915, 192, '2023-09-26'),
(3916, 187, '2023-09-26'),
(3917, 189, '2023-09-26'),
(3918, 191, '2023-09-26'),
(3919, 189, '2023-09-26'),
(3920, 190, '2023-09-26'),
(3921, 194, '2023-09-26'),
(3922, 191, '2023-09-26'),
(3923, 197, '2023-09-26'),
(3924, 185, '2023-09-26'),
(3925, 188, '2023-09-26'),
(3926, 196, '2023-09-26'),
(3927, 184, '2023-09-26'),
(3928, 195, '2023-09-26'),
(3929, 193, '2023-09-26'),
(3930, 192, '2023-09-26'),
(3931, 186, '2023-09-26'),
(3932, 187, '2023-09-26'),
(3933, 190, '2023-09-26'),
(3934, 194, '2023-09-26'),
(3935, 185, '2023-09-26'),
(3936, 189, '2023-09-26'),
(3937, 197, '2023-09-26'),
(3938, 184, '2023-09-26'),
(3939, 195, '2023-09-26'),
(3940, 193, '2023-09-26'),
(3941, 192, '2023-09-27'),
(3942, 196, '2023-09-27'),
(3943, 186, '2023-09-27'),
(3944, 187, '2023-09-27'),
(3945, 189, '2023-09-27'),
(3946, 190, '2023-09-27'),
(3947, 194, '2023-09-27'),
(3948, 191, '2023-09-27'),
(3949, 185, '2023-09-27'),
(3950, 188, '2023-09-27'),
(3951, 191, '2023-09-27'),
(3952, 197, '2023-09-27'),
(3953, 188, '2023-09-27'),
(3954, 184, '2023-09-27'),
(3955, 195, '2023-09-27'),
(3956, 193, '2023-09-27'),
(3957, 192, '2023-09-27'),
(3958, 186, '2023-09-27'),
(3959, 187, '2023-09-27'),
(3960, 190, '2023-09-27'),
(3961, 194, '2023-09-27'),
(3962, 185, '2023-09-27'),
(3963, 188, '2023-09-27'),
(3964, 196, '2023-09-27'),
(3965, 196, '2023-09-27'),
(3966, 188, '2023-09-28'),
(3967, 185, '2023-10-01'),
(3968, 188, '2023-10-01'),
(3969, 193, '2023-10-01'),
(3970, 187, '2023-10-01'),
(3971, 184, '2023-10-01'),
(3972, 189, '2023-10-01'),
(3973, 194, '2023-10-01'),
(3974, 190, '2023-10-01'),
(3975, 196, '2023-10-01'),
(3976, 195, '2023-10-01'),
(3977, 192, '2023-10-01'),
(3978, 186, '2023-10-01'),
(3979, 191, '2023-10-01'),
(3980, 185, '2023-10-01'),
(3981, 187, '2023-10-01'),
(3982, 197, '2023-10-01'),
(3983, 193, '2023-10-01'),
(3984, 188, '2023-10-01'),
(3985, 190, '2023-10-01'),
(3986, 192, '2023-10-01'),
(3987, 189, '2023-10-01'),
(3988, 192, '2023-10-01'),
(3989, 188, '2023-10-01'),
(3990, 189, '2023-10-01'),
(3991, 193, '2023-10-01'),
(3992, 187, '2023-10-01'),
(3993, 185, '2023-10-01'),
(3994, 184, '2023-10-01'),
(3995, 194, '2023-10-01'),
(3996, 191, '2023-10-01'),
(3997, 186, '2023-10-01'),
(3998, 195, '2023-10-01'),
(3999, 188, '2023-10-01'),
(4000, 187, '2023-10-02'),
(4001, 191, '2023-10-02'),
(4002, 190, '2023-10-03'),
(4003, 189, '2023-10-03'),
(4004, 186, '2023-10-03'),
(4005, 197, '2023-10-04'),
(4006, 196, '2023-10-04'),
(4007, 195, '2023-10-04'),
(4008, 191, '2023-10-04'),
(4009, 189, '2023-10-04'),
(4010, 186, '2023-10-04'),
(4011, 185, '2023-10-04'),
(4012, 184, '2023-10-04'),
(4013, 194, '2023-10-04'),
(4014, 192, '2023-10-04'),
(4015, 188, '2023-10-04'),
(4016, 190, '2023-10-04'),
(4017, 187, '2023-10-04'),
(4018, 193, '2023-10-04'),
(4019, 184, '2023-10-05'),
(4020, 186, '2023-10-05'),
(4021, 187, '2023-10-05'),
(4022, 189, '2023-10-05'),
(4023, 185, '2023-10-05'),
(4024, 190, '2023-10-05'),
(4025, 195, '2023-10-05'),
(4026, 197, '2023-10-05'),
(4027, 193, '2023-10-05'),
(4028, 192, '2023-10-05'),
(4029, 191, '2023-10-05'),
(4030, 196, '2023-10-05'),
(4031, 194, '2023-10-05'),
(4032, 188, '2023-10-05'),
(4033, 186, '2023-10-07'),
(4034, 197, '2023-10-08'),
(4035, 195, '2023-10-08'),
(4036, 187, '2023-10-08'),
(4037, 191, '2023-10-08'),
(4038, 185, '2023-10-11'),
(4039, 184, '2023-10-11'),
(4040, 186, '2023-10-11'),
(4041, 194, '2023-10-11'),
(4042, 193, '2023-10-11'),
(4043, 189, '2023-10-11'),
(4044, 187, '2023-10-11'),
(4045, 191, '2023-10-11'),
(4046, 188, '2023-10-11'),
(4047, 195, '2023-10-11'),
(4048, 190, '2023-10-11'),
(4049, 192, '2023-10-11'),
(4050, 184, '2023-10-12'),
(4051, 186, '2023-10-12'),
(4052, 185, '2023-10-12'),
(4053, 187, '2023-10-12'),
(4054, 189, '2023-10-12'),
(4055, 191, '2023-10-12'),
(4056, 190, '2023-10-12'),
(4057, 188, '2023-10-12'),
(4058, 189, '2023-10-12'),
(4059, 191, '2023-10-12'),
(4060, 187, '2023-10-12'),
(4061, 190, '2023-10-12'),
(4062, 188, '2023-10-12'),
(4063, 184, '2023-10-12'),
(4064, 186, '2023-10-12'),
(4065, 185, '2023-10-12'),
(4066, 189, '2023-10-12'),
(4067, 191, '2023-10-12'),
(4068, 187, '2023-10-13'),
(4069, 190, '2023-10-13'),
(4070, 188, '2023-10-13'),
(4071, 184, '2023-10-13'),
(4072, 184, '2023-10-13'),
(4073, 184, '2023-10-13'),
(4074, 184, '2023-10-13'),
(4075, 185, '2023-10-13'),
(4076, 194, '2023-10-13'),
(4077, 191, '2023-10-13'),
(4078, 196, '2023-10-13'),
(4079, 185, '2023-10-13'),
(4080, 190, '2023-10-13'),
(4081, 187, '2023-10-13'),
(4082, 189, '2023-10-13'),
(4083, 192, '2023-10-13'),
(4084, 197, '2023-10-13'),
(4085, 195, '2023-10-13'),
(4086, 186, '2023-10-13'),
(4087, 188, '2023-10-13'),
(4088, 184, '2023-10-13'),
(4089, 193, '2023-10-13'),
(4090, 186, '2023-10-13'),
(4091, 186, '2023-10-13'),
(4092, 188, '2023-10-13'),
(4093, 185, '2023-10-13'),
(4094, 187, '2023-10-13'),
(4095, 187, '2023-10-13'),
(4096, 188, '2023-10-13'),
(4097, 185, '2023-10-13'),
(4098, 185, '2023-10-13'),
(4099, 186, '2023-10-13'),
(4100, 186, '2023-10-13'),
(4101, 187, '2023-10-13'),
(4102, 189, '2023-10-13'),
(4103, 186, '2023-10-13'),
(4104, 190, '2023-10-13'),
(4105, 185, '2023-10-13'),
(4106, 190, '2023-10-13'),
(4107, 190, '2023-10-13'),
(4108, 191, '2023-10-13'),
(4109, 184, '2023-10-13'),
(4110, 190, '2023-10-13'),
(4111, 191, '2023-10-13'),
(4112, 191, '2023-10-13'),
(4113, 184, '2023-10-13'),
(4114, 186, '2023-10-13'),
(4115, 195, '2023-10-13'),
(4116, 197, '2023-10-13'),
(4117, 194, '2023-10-13'),
(4118, 194, '2023-10-13'),
(4119, 193, '2023-10-13'),
(4120, 193, '2023-10-13'),
(4121, 192, '2023-10-13'),
(4122, 196, '2023-10-13'),
(4123, 194, '2023-10-13'),
(4124, 193, '2023-10-13'),
(4125, 190, '2023-10-13'),
(4126, 190, '2023-10-13'),
(4127, 189, '2023-10-13'),
(4128, 189, '2023-10-13'),
(4129, 189, '2023-10-13'),
(4130, 187, '2023-10-13'),
(4131, 187, '2023-10-13'),
(4132, 186, '2023-10-13'),
(4133, 194, '2023-10-13'),
(4134, 197, '2023-10-13'),
(4135, 192, '2023-10-13'),
(4136, 193, '2023-10-13'),
(4137, 189, '2023-10-13'),
(4138, 196, '2023-10-13'),
(4139, 186, '2023-10-13'),
(4140, 193, '2023-10-13'),
(4141, 184, '2023-10-13'),
(4142, 184, '2023-10-13'),
(4143, 185, '2023-10-13'),
(4144, 185, '2023-10-13'),
(4145, 198, '2023-10-13'),
(4146, 198, '2023-10-13'),
(4147, 198, '2023-10-13'),
(4148, 198, '2023-10-13'),
(4149, 198, '2023-10-13'),
(4150, 198, '2023-10-13'),
(4151, 199, '2023-10-13'),
(4152, 199, '2023-10-13'),
(4153, 199, '2023-10-13'),
(4154, 199, '2023-10-13'),
(4155, 199, '2023-10-13'),
(4156, 200, '2023-10-13'),
(4157, 201, '2023-10-13'),
(4158, 202, '2023-10-13'),
(4159, 203, '2023-10-13'),
(4160, 194, '2023-10-13'),
(4161, 188, '2023-10-13'),
(4162, 192, '2023-10-13'),
(4163, 197, '2023-10-14'),
(4164, 184, '2023-10-14'),
(4165, 195, '2023-10-14'),
(4166, 193, '2023-10-14'),
(4167, 194, '2023-10-14'),
(4168, 192, '2023-10-14'),
(4169, 195, '2023-10-14'),
(4170, 193, '2023-10-14'),
(4171, 192, '2023-10-14'),
(4172, 194, '2023-10-14'),
(4173, 196, '2023-10-14'),
(4174, 188, '2023-10-14'),
(4175, 195, '2023-10-14'),
(4176, 193, '2023-10-14'),
(4177, 192, '2023-10-14'),
(4178, 194, '2023-10-15'),
(4179, 197, '2023-10-15'),
(4180, 197, '2023-10-15'),
(4181, 187, '2023-10-15'),
(4182, 186, '2023-10-15'),
(4183, 184, '2023-10-15'),
(4184, 193, '2023-10-15'),
(4185, 190, '2023-10-15'),
(4186, 188, '2023-10-15'),
(4187, 197, '2023-10-15'),
(4188, 189, '2023-10-15'),
(4189, 197, '2023-10-15'),
(4190, 188, '2023-10-15'),
(4191, 196, '2023-10-15'),
(4192, 197, '2023-10-15'),
(4193, 196, '2023-10-15'),
(4194, 196, '2023-10-15'),
(4195, 196, '2023-10-16'),
(4196, 184, '2023-10-17'),
(4197, 186, '2023-10-17'),
(4198, 185, '2023-10-17'),
(4199, 187, '2023-10-17'),
(4200, 192, '2023-10-17'),
(4201, 186, '2023-10-17'),
(4202, 184, '2023-10-17'),
(4203, 195, '2023-10-17'),
(4204, 184, '2023-10-17'),
(4205, 184, '2023-10-17'),
(4206, 184, '2023-10-17'),
(4207, 187, '2023-10-17'),
(4208, 193, '2023-10-17'),
(4209, 184, '2023-10-17'),
(4210, 202, '2023-10-17'),
(4211, 195, '2023-10-17'),
(4212, 191, '2023-10-17'),
(4213, 186, '2023-10-17'),
(4214, 192, '2023-10-17'),
(4215, 195, '2023-10-18'),
(4216, 188, '2023-10-18'),
(4217, 184, '2023-10-20'),
(4218, 187, '2023-10-20'),
(4219, 197, '2023-10-20'),
(4220, 193, '2023-10-20'),
(4221, 186, '2023-10-20'),
(4222, 185, '2023-10-20'),
(4223, 187, '2023-10-20'),
(4224, 189, '2023-10-20'),
(4225, 190, '2023-10-20'),
(4226, 193, '2023-10-22'),
(4227, 188, '2023-10-22'),
(4228, 197, '2023-10-23'),
(4229, 195, '2023-10-23'),
(4230, 185, '2023-10-23'),
(4231, 192, '2023-10-23'),
(4232, 197, '2023-10-23'),
(4233, 187, '2023-10-23'),
(4234, 191, '2023-10-23'),
(4235, 184, '2023-10-23'),
(4236, 194, '2023-10-23'),
(4237, 186, '2023-10-23'),
(4238, 192, '2023-10-23'),
(4239, 188, '2023-10-23'),
(4240, 196, '2023-10-23'),
(4241, 193, '2023-10-23'),
(4242, 189, '2023-10-23'),
(4243, 195, '2023-10-23'),
(4244, 185, '2023-10-23'),
(4245, 190, '2023-10-23'),
(4246, 187, '2023-10-23'),
(4247, 184, '2023-10-23'),
(4248, 197, '2023-10-23'),
(4249, 191, '2023-10-23'),
(4250, 188, '2023-10-23'),
(4251, 186, '2023-10-23'),
(4252, 196, '2023-10-23'),
(4253, 194, '2023-10-23'),
(4254, 192, '2023-10-23'),
(4255, 195, '2023-10-23'),
(4256, 193, '2023-10-23'),
(4257, 185, '2023-10-23'),
(4258, 190, '2023-10-23'),
(4259, 189, '2023-10-23'),
(4260, 191, '2023-10-23'),
(4261, 184, '2023-10-23'),
(4262, 197, '2023-10-23'),
(4263, 194, '2023-10-23'),
(4264, 193, '2023-10-23'),
(4265, 192, '2023-10-23'),
(4266, 188, '2023-10-23'),
(4267, 196, '2023-10-23'),
(4268, 186, '2023-10-23'),
(4269, 187, '2023-10-23'),
(4270, 189, '2023-10-23'),
(4271, 190, '2023-10-23'),
(4272, 195, '2023-10-23'),
(4273, 185, '2023-10-23'),
(4274, 184, '2023-10-23'),
(4275, 192, '2023-10-23'),
(4276, 187, '2023-10-23'),
(4277, 197, '2023-10-23'),
(4278, 193, '2023-10-23'),
(4279, 196, '2023-10-23'),
(4280, 194, '2023-10-23'),
(4281, 191, '2023-10-23'),
(4282, 186, '2023-10-23'),
(4283, 188, '2023-10-23'),
(4284, 189, '2023-10-23'),
(4285, 195, '2023-10-23'),
(4286, 190, '2023-10-23'),
(4287, 185, '2023-10-23'),
(4288, 202, '2023-10-23'),
(4289, 203, '2023-10-23'),
(4290, 198, '2023-10-23'),
(4291, 201, '2023-10-23'),
(4292, 200, '2023-10-23'),
(4293, 199, '2023-10-23'),
(4294, 198, '2023-10-23'),
(4295, 202, '2023-10-23'),
(4296, 200, '2023-10-23'),
(4297, 203, '2023-10-23'),
(4298, 199, '2023-10-23'),
(4299, 201, '2023-10-23'),
(4300, 198, '2023-10-23'),
(4301, 201, '2023-10-23'),
(4302, 202, '2023-10-23'),
(4303, 199, '2023-10-23'),
(4304, 203, '2023-10-23'),
(4305, 200, '2023-10-23'),
(4306, 198, '2023-10-23'),
(4307, 202, '2023-10-23'),
(4308, 200, '2023-10-23'),
(4309, 203, '2023-10-23'),
(4310, 199, '2023-10-23'),
(4311, 201, '2023-10-23'),
(4312, 184, '2023-10-23'),
(4313, 186, '2023-10-23'),
(4314, 194, '2023-10-23'),
(4315, 196, '2023-10-23'),
(4316, 193, '2023-10-23'),
(4317, 184, '2023-10-23'),
(4318, 192, '2023-10-23'),
(4319, 191, '2023-10-24'),
(4320, 195, '2023-10-24'),
(4321, 194, '2023-10-24'),
(4322, 188, '2023-10-24'),
(4323, 190, '2023-10-24'),
(4324, 189, '2023-10-24'),
(4325, 187, '2023-10-24'),
(4326, 191, '2023-10-25'),
(4327, 184, '2023-10-26'),
(4328, 186, '2023-10-26'),
(4329, 185, '2023-10-26'),
(4330, 184, '2023-10-26'),
(4331, 186, '2023-10-26'),
(4332, 185, '2023-10-26'),
(4333, 187, '2023-10-26'),
(4334, 189, '2023-10-26'),
(4335, 191, '2023-10-26'),
(4336, 190, '2023-10-26'),
(4337, 188, '2023-10-26'),
(4338, 184, '2023-10-26'),
(4339, 186, '2023-10-27'),
(4340, 188, '2023-10-27'),
(4341, 188, '2023-10-27'),
(4342, 189, '2023-10-27'),
(4343, 191, '2023-10-27'),
(4344, 185, '2023-10-27'),
(4345, 187, '2023-10-27'),
(4346, 190, '2023-10-27'),
(4347, 188, '2023-10-27'),
(4348, 189, '2023-10-27'),
(4349, 191, '2023-10-27'),
(4350, 187, '2023-10-27'),
(4351, 190, '2023-10-27'),
(4352, 188, '2023-10-27'),
(4353, 186, '2023-10-27'),
(4354, 201, '2023-10-27'),
(4355, 200, '2023-10-27'),
(4356, 202, '2023-10-27'),
(4357, 202, '2023-10-27'),
(4358, 203, '2023-10-27'),
(4359, 199, '2023-10-27'),
(4360, 199, '2023-10-27'),
(4361, 198, '2023-10-27'),
(4362, 198, '2023-10-27'),
(4363, 201, '2023-10-27'),
(4364, 200, '2023-10-27'),
(4365, 203, '2023-10-27'),
(4366, 199, '2023-10-27'),
(4367, 199, '2023-10-27'),
(4368, 198, '2023-10-27'),
(4369, 198, '2023-10-27'),
(4370, 200, '2023-10-28'),
(4371, 202, '2023-10-28'),
(4372, 196, '2023-10-28'),
(4373, 199, '2023-10-28'),
(4374, 203, '2023-10-28'),
(4375, 201, '2023-10-28'),
(4376, 198, '2023-10-28'),
(4377, 197, '2023-10-28'),
(4378, 191, '2023-10-28'),
(4379, 187, '2023-10-29'),
(4380, 189, '2023-10-29'),
(4381, 193, '2023-10-29'),
(4382, 185, '2023-10-29'),
(4383, 190, '2023-10-29'),
(4384, 201, '2023-10-29'),
(4385, 201, '2023-10-29'),
(4386, 200, '2023-10-29'),
(4387, 200, '2023-10-29'),
(4388, 202, '2023-10-29'),
(4389, 202, '2023-10-29'),
(4390, 188, '2023-10-29'),
(4391, 203, '2023-10-29'),
(4392, 194, '2023-10-30'),
(4393, 184, '2023-10-31'),
(4394, 196, '2023-10-31'),
(4395, 195, '2023-10-31'),
(4396, 192, '2023-10-31'),
(4397, 195, '2023-10-31'),
(4398, 193, '2023-10-31'),
(4399, 194, '2023-10-31'),
(4400, 192, '2023-10-31'),
(4401, 194, '2023-10-31'),
(4402, 192, '2023-10-31'),
(4403, 195, '2023-10-31'),
(4404, 194, '2023-10-31'),
(4405, 193, '2023-10-31'),
(4406, 197, '2023-10-31'),
(4407, 195, '2023-10-31'),
(4408, 186, '2023-11-01'),
(4409, 193, '2023-11-01'),
(4410, 192, '2023-11-01'),
(4411, 194, '2023-11-01'),
(4412, 192, '2023-11-01'),
(4413, 194, '2023-11-02'),
(4414, 195, '2023-11-02'),
(4415, 184, '2023-11-02'),
(4416, 197, '2023-11-02'),
(4417, 192, '2023-11-03'),
(4418, 191, '2023-11-03'),
(4419, 184, '2023-11-03'),
(4420, 186, '2023-11-03'),
(4421, 187, '2023-11-03'),
(4422, 188, '2023-11-03'),
(4423, 191, '2023-11-03'),
(4424, 190, '2023-11-03'),
(4425, 194, '2023-11-03'),
(4426, 197, '2023-11-03'),
(4427, 196, '2023-11-03'),
(4428, 195, '2023-11-03'),
(4429, 191, '2023-11-03'),
(4430, 189, '2023-11-03'),
(4431, 186, '2023-11-03'),
(4432, 185, '2023-11-03'),
(4433, 184, '2023-11-03'),
(4434, 194, '2023-11-03'),
(4435, 192, '2023-11-03'),
(4436, 188, '2023-11-03'),
(4437, 190, '2023-11-03'),
(4438, 187, '2023-11-03'),
(4439, 193, '2023-11-03'),
(4440, 203, '2023-11-03'),
(4441, 201, '2023-11-03'),
(4442, 199, '2023-11-03'),
(4443, 198, '2023-11-03'),
(4444, 202, '2023-11-03'),
(4445, 200, '2023-11-03'),
(4446, 197, '2023-11-03'),
(4447, 189, '2023-11-03'),
(4448, 185, '2023-11-04'),
(4449, 196, '2023-11-04'),
(4450, 186, '2023-11-04'),
(4451, 197, '2023-11-04'),
(4452, 196, '2023-11-04'),
(4453, 184, '2023-11-04'),
(4454, 197, '2023-11-04'),
(4455, 196, '2023-11-05'),
(4456, 196, '2023-11-05'),
(4457, 189, '2023-11-05'),
(4458, 196, '2023-11-05'),
(4459, 197, '2023-11-05'),
(4460, 184, '2023-11-05'),
(4461, 195, '2023-11-05'),
(4462, 193, '2023-11-05'),
(4463, 192, '2023-11-05'),
(4464, 196, '2023-11-05'),
(4465, 186, '2023-11-05'),
(4466, 187, '2023-11-05'),
(4467, 188, '2023-11-05'),
(4468, 189, '2023-11-05'),
(4469, 190, '2023-11-05'),
(4470, 194, '2023-11-05'),
(4471, 191, '2023-11-05'),
(4472, 185, '2023-11-05'),
(4473, 199, '2023-11-05'),
(4474, 198, '2023-11-05'),
(4475, 201, '2023-11-05'),
(4476, 200, '2023-11-05'),
(4477, 202, '2023-11-05'),
(4478, 203, '2023-11-05'),
(4479, 186, '2023-11-05'),
(4480, 190, '2023-11-05'),
(4481, 189, '2023-11-06'),
(4482, 193, '2023-11-06'),
(4483, 192, '2023-11-06'),
(4484, 185, '2023-11-06'),
(4485, 189, '2023-11-06'),
(4486, 187, '2023-11-06'),
(4487, 194, '2023-11-06'),
(4488, 186, '2023-11-07'),
(4489, 193, '2023-11-07'),
(4490, 184, '2023-11-07'),
(4491, 196, '2023-11-07'),
(4492, 187, '2023-11-07'),
(4493, 189, '2023-11-07'),
(4494, 185, '2023-11-07'),
(4495, 193, '2023-11-07'),
(4496, 190, '2023-11-07'),
(4497, 188, '2023-11-07'),
(4498, 185, '2023-11-07'),
(4499, 195, '2023-11-07'),
(4500, 190, '2023-11-07'),
(4501, 188, '2023-11-07'),
(4502, 188, '2023-11-07'),
(4503, 203, '2023-11-07'),
(4504, 192, '2023-11-07'),
(4505, 187, '2023-11-08'),
(4506, 191, '2023-11-08'),
(4507, 193, '2023-11-08'),
(4508, 184, '2023-11-08'),
(4509, 196, '2023-11-09'),
(4510, 195, '2023-11-09'),
(4511, 192, '2023-11-09'),
(4512, 194, '2023-11-09'),
(4513, 197, '2023-11-09'),
(4514, 195, '2023-11-09'),
(4515, 193, '2023-11-09'),
(4516, 184, '2023-11-09'),
(4517, 186, '2023-11-09'),
(4518, 185, '2023-11-09'),
(4519, 184, '2023-11-10'),
(4520, 196, '2023-11-10'),
(4521, 184, '2023-11-10'),
(4522, 194, '2023-11-10'),
(4523, 184, '2023-11-10'),
(4524, 186, '2023-11-10'),
(4525, 185, '2023-11-10'),
(4526, 186, '2023-11-10'),
(4527, 184, '2023-11-10'),
(4528, 186, '2023-11-10'),
(4529, 191, '2023-11-10'),
(4530, 185, '2023-11-10'),
(4531, 187, '2023-11-10'),
(4532, 189, '2023-11-10'),
(4533, 191, '2023-11-10'),
(4534, 190, '2023-11-10'),
(4535, 188, '2023-11-11'),
(4536, 189, '2023-11-11'),
(4537, 191, '2023-11-11'),
(4538, 187, '2023-11-11'),
(4539, 190, '2023-11-11'),
(4540, 185, '2023-11-11'),
(4541, 185, '2023-11-11'),
(4542, 184, '2023-11-11'),
(4543, 184, '2023-11-11'),
(4544, 187, '2023-11-11'),
(4545, 187, '2023-11-11'),
(4546, 197, '2023-11-11'),
(4547, 191, '2023-11-11'),
(4548, 186, '2023-11-11'),
(4549, 186, '2023-11-11'),
(4550, 192, '2023-11-11'),
(4551, 190, '2023-11-11'),
(4552, 188, '2023-11-11'),
(4553, 188, '2023-11-11'),
(4554, 189, '2023-11-11'),
(4555, 192, '2023-11-11'),
(4556, 193, '2023-11-11'),
(4557, 195, '2023-11-11'),
(4558, 189, '2023-11-11'),
(4559, 191, '2023-11-11'),
(4560, 195, '2023-11-11'),
(4561, 190, '2023-11-11'),
(4562, 194, '2023-11-11'),
(4563, 197, '2023-11-11'),
(4564, 188, '2023-11-11'),
(4565, 184, '2023-11-11'),
(4566, 194, '2023-11-11'),
(4567, 189, '2023-11-11'),
(4568, 188, '2023-11-11'),
(4569, 185, '2023-11-11'),
(4570, 186, '2023-11-11'),
(4571, 191, '2023-11-11'),
(4572, 185, '2023-11-11'),
(4573, 192, '2023-11-11'),
(4574, 192, '2023-11-11'),
(4575, 193, '2023-11-11'),
(4576, 195, '2023-11-11'),
(4577, 191, '2023-11-11'),
(4578, 189, '2023-11-11'),
(4579, 185, '2023-11-11'),
(4580, 191, '2023-11-11'),
(4581, 196, '2023-11-11'),
(4582, 187, '2023-11-11'),
(4583, 190, '2023-11-11'),
(4584, 188, '2023-11-11'),
(4585, 203, '2023-11-11'),
(4586, 196, '2023-11-11'),
(4587, 201, '2023-11-11'),
(4588, 198, '2023-11-11'),
(4589, 192, '2023-11-11'),
(4590, 188, '2023-11-11'),
(4591, 197, '2023-11-11'),
(4592, 200, '2023-11-12'),
(4593, 202, '2023-11-12'),
(4594, 199, '2023-11-12'),
(4595, 192, '2023-11-12'),
(4596, 184, '2023-11-12'),
(4597, 186, '2023-11-12'),
(4598, 186, '2023-11-12'),
(4599, 197, '2023-11-12'),
(4600, 194, '2023-11-13'),
(4601, 188, '2023-11-14'),
(4602, 197, '2023-11-14'),
(4603, 190, '2023-11-14'),
(4604, 191, '2023-11-14'),
(4605, 186, '2023-11-14'),
(4606, 193, '2023-11-14'),
(4607, 196, '2023-11-14'),
(4608, 190, '2023-11-14'),
(4609, 193, '2023-11-14'),
(4610, 197, '2023-11-14'),
(4611, 187, '2023-11-14'),
(4612, 189, '2023-11-14'),
(4613, 185, '2023-11-14'),
(4614, 190, '2023-11-14'),
(4615, 193, '2023-11-14'),
(4616, 188, '2023-11-14'),
(4617, 184, '2023-11-14'),
(4618, 185, '2023-11-15'),
(4619, 184, '2023-11-15'),
(4620, 185, '2023-11-15'),
(4621, 186, '2023-11-15'),
(4622, 187, '2023-11-15'),
(4623, 188, '2023-11-15'),
(4624, 189, '2023-11-15'),
(4625, 190, '2023-11-15'),
(4626, 191, '2023-11-15'),
(4627, 192, '2023-11-15'),
(4628, 193, '2023-11-15'),
(4629, 194, '2023-11-15'),
(4630, 195, '2023-11-15'),
(4631, 196, '2023-11-15'),
(4632, 197, '2023-11-15'),
(4633, 202, '2023-11-15'),
(4634, 203, '2023-11-15'),
(4635, 201, '2023-11-15'),
(4636, 200, '2023-11-15'),
(4637, 199, '2023-11-15'),
(4638, 198, '2023-11-15'),
(4639, 189, '2023-11-15'),
(4640, 184, '2023-11-16'),
(4641, 196, '2023-11-16'),
(4642, 195, '2023-11-16'),
(4643, 192, '2023-11-16'),
(4644, 194, '2023-11-16'),
(4645, 197, '2023-11-16'),
(4646, 190, '2023-11-16'),
(4647, 191, '2023-11-16'),
(4648, 187, '2023-11-17'),
(4649, 201, '2023-11-17'),
(4650, 200, '2023-11-17'),
(4651, 202, '2023-11-17'),
(4652, 197, '2023-11-17'),
(4653, 203, '2023-11-17'),
(4654, 199, '2023-11-17'),
(4655, 198, '2023-11-17'),
(4656, 202, '2023-11-17'),
(4657, 195, '2023-11-17'),
(4658, 199, '2023-11-17'),
(4659, 198, '2023-11-17'),
(4660, 201, '2023-11-17'),
(4661, 200, '2023-11-17'),
(4662, 203, '2023-11-17'),
(4663, 193, '2023-11-17'),
(4664, 194, '2023-11-17'),
(4665, 192, '2023-11-17'),
(4666, 199, '2023-11-17'),
(4667, 199, '2023-11-17'),
(4668, 198, '2023-11-17'),
(4669, 192, '2023-11-18'),
(4670, 198, '2023-11-18'),
(4671, 195, '2023-11-18'),
(4672, 194, '2023-11-18'),
(4673, 193, '2023-11-18'),
(4674, 195, '2023-11-18'),
(4675, 191, '2023-11-18'),
(4676, 193, '2023-11-18'),
(4677, 192, '2023-11-18'),
(4678, 194, '2023-11-18'),
(4679, 194, '2023-11-18'),
(4680, 191, '2023-11-18'),
(4681, 196, '2023-11-18'),
(4682, 185, '2023-11-18'),
(4683, 190, '2023-11-18'),
(4684, 187, '2023-11-18'),
(4685, 189, '2023-11-18'),
(4686, 192, '2023-11-18'),
(4687, 197, '2023-11-18'),
(4688, 195, '2023-11-18'),
(4689, 186, '2023-11-18'),
(4690, 188, '2023-11-18'),
(4691, 184, '2023-11-18'),
(4692, 193, '2023-11-18'),
(4693, 201, '2023-11-18'),
(4694, 202, '2023-11-18'),
(4695, 203, '2023-11-18'),
(4696, 199, '2023-11-18'),
(4697, 198, '2023-11-18'),
(4698, 200, '2023-11-18'),
(4699, 185, '2023-11-19'),
(4700, 201, '2023-11-19'),
(4701, 201, '2023-11-19'),
(4702, 200, '2023-11-19'),
(4703, 200, '2023-11-19'),
(4704, 202, '2023-11-19'),
(4705, 202, '2023-11-19'),
(4706, 203, '2023-11-19'),
(4707, 186, '2023-11-19'),
(4708, 195, '2023-11-20'),
(4709, 187, '2023-11-21'),
(4710, 188, '2023-11-21'),
(4711, 187, '2023-11-21'),
(4712, 189, '2023-11-21'),
(4713, 185, '2023-11-21'),
(4714, 190, '2023-11-21'),
(4715, 193, '2023-11-21'),
(4716, 188, '2023-11-21'),
(4717, 197, '2023-11-22'),
(4718, 184, '2023-11-23'),
(4719, 196, '2023-11-23'),
(4720, 195, '2023-11-23'),
(4721, 197, '2023-11-23'),
(4722, 196, '2023-11-23'),
(4723, 192, '2023-11-23'),
(4724, 194, '2023-11-23'),
(4725, 197, '2023-11-23'),
(4726, 197, '2023-11-23'),
(4727, 196, '2023-11-23'),
(4728, 191, '2023-11-24'),
(4729, 196, '2023-11-24'),
(4730, 203, '2023-11-24'),
(4731, 186, '2023-11-24'),
(4732, 185, '2023-11-24'),
(4733, 184, '2023-11-24'),
(4734, 184, '2023-11-25'),
(4735, 186, '2023-11-25'),
(4736, 185, '2023-11-25'),
(4737, 184, '2023-11-25'),
(4738, 186, '2023-11-25'),
(4739, 185, '2023-11-25'),
(4740, 187, '2023-11-25'),
(4741, 189, '2023-11-25'),
(4742, 191, '2023-11-25'),
(4743, 190, '2023-11-25'),
(4744, 188, '2023-11-25'),
(4745, 189, '2023-11-25'),
(4746, 191, '2023-11-25'),
(4747, 187, '2023-11-25'),
(4748, 190, '2023-11-25'),
(4749, 188, '2023-11-25'),
(4750, 189, '2023-11-25'),
(4751, 191, '2023-11-25'),
(4752, 187, '2023-11-25'),
(4753, 190, '2023-11-25'),
(4754, 188, '2023-11-25'),
(4755, 191, '2023-11-25'),
(4756, 185, '2023-11-26'),
(4757, 199, '2023-11-26'),
(4758, 202, '2023-11-26'),
(4759, 200, '2023-11-26'),
(4760, 194, '2023-11-26'),
(4761, 186, '2023-11-26'),
(4762, 203, '2023-11-26'),
(4763, 193, '2023-11-26'),
(4764, 201, '2023-11-26'),
(4765, 198, '2023-11-26'),
(4766, 187, '2023-11-26'),
(4767, 184, '2023-11-26'),
(4768, 188, '2023-11-26'),
(4769, 190, '2023-11-26'),
(4770, 185, '2023-11-26'),
(4771, 193, '2023-11-26'),
(4772, 196, '2023-11-26'),
(4773, 194, '2023-11-26'),
(4774, 186, '2023-11-26'),
(4775, 195, '2023-11-26'),
(4776, 197, '2023-11-26'),
(4777, 192, '2023-11-26'),
(4778, 191, '2023-11-26'),
(4779, 189, '2023-11-26'),
(4780, 201, '2023-11-26'),
(4781, 199, '2023-11-26'),
(4782, 202, '2023-11-26'),
(4783, 200, '2023-11-26'),
(4784, 203, '2023-11-26'),
(4785, 198, '2023-11-26'),
(4786, 184, '2023-11-26'),
(4787, 189, '2023-11-26'),
(4788, 186, '2023-11-26'),
(4789, 187, '2023-11-26'),
(4790, 190, '2023-11-26'),
(4791, 188, '2023-11-27'),
(4792, 195, '2023-11-27'),
(4793, 192, '2023-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(32, 22, 26, 'Nice one', '2021-12-23 21:49:00', '2021-12-23 21:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `product_id`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 22, 169, 'rywtetu', 'tereuryureyu', '2022-03-05 23:44:04', '2022-03-05 23:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) NOT NULL,
  `order_amount` double NOT NULL DEFAULT '0',
  `reward` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `order_amount`, `reward`) VALUES
(13, 200, 15),
(14, 300, 20);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `facebook_pixel`, `meta_keys`, `meta_description`) VALUES
(1, 'UA-137437974-1', 'UA-137437974-1', 'Genius,Ocean,Sea,Etc,SeaGenius', 'dsjhdeykfuyoty');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`, `language_id`) VALUES
(10, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019546si1.png', 1),
(11, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019563si1.png', 1),
(12, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019576si1.png', 1),
(13, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019589si1.png', 1),
(14, 0, 'Manage Quality', 'Best Quality Gaurentee', '1573019598si1.png', 1),
(15, 13, 'FREE SHIPPING', 'TEST', '1575875429brand1.png', 1),
(16, 13, 'PAYMENT METHOD', 'Secure Payment', '1575875467brand2.png', 1),
(17, 13, '30 DAY RETURNS', '30-Day Return Policy', '1575875488brand3.png', 1),
(18, 13, 'HELP CENTER', '24/7 Support System', '1575875506brand4.png', 1),
(19, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400756si1.png', 2),
(20, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400752si1.png', 2),
(21, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400746si1.png', 2),
(22, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400740si1.png', 2),
(23, 0, 'إدارة الجودة', 'أفضل ضمان الجودة', '1576400734si1.png', 2),
(24, 13, 'الشحن مجانا', 'الشحن مجانا', '1576402404brand1.png', 2),
(25, 13, 'طريقة الدفع او السداد\r\n', 'دفع امن\r\n', '1576402421brand2.png', 2),
(26, 13, '30 يوم عوائد\r\n', '30 يوما عودة السياسة', '1576402428brand3.png', 2),
(27, 13, 'مركز المساعدة', '24/7 نظام الدعم', '1576402434brand4.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0',
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`, `language_id`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0, 1),
(2, 0, 'Fast Shipping', '2-3 Days', 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text,
  `language_id` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`, `language_id`) VALUES
(8, 'Captive Bred Purple Tang', '24', '#1f224f', 'slideInUp', 'SUCCESS!', '60', '#1f224f', 'slideInDown', 'These fish are bred and reared in a state-of-the-art aquaculture hatchery in Los  Angeles, and are now available to saltwaterfish.com customers.', '16', '#1f224f', 'slideInLeft', '1697529159slider-threepng.png', 'left', 'https://fish.besthr.in/category', 1),
(9, '$249 Achilles Tang + Free Shipping!', '24', '#1f224f', 'slideInUp', 'PREMIUM BONUS + FREE SHIPPING', '60', '#1f224f', 'slideInDown', 'Add $249 or more in Marine Life to your cart, then enter coupon code: flame15 and we  will add the Flame Angelfish to your order for only $15 + order qualifies for Free Shipping.', '16', '#1f224f', 'slideInDown', '1697529144slider-twopng.png', 'left', 'https://fish.besthr.in/category', 1),
(10, '$15 Flame Angelfish', '24', '#1f224f', 'slideInUp', 'PREMIUM BONUS + FREE SHIPPING', '60', '#1f224f', 'slideInDown', 'Add $249 or more in Marine Life to your cart, then enter coupon code: flame15 and we will add the Flame Angelfish to your order for only $15 + order qualifies for Free Shipping.', '16', '#1f224f', 'slideInRight', '1697529129slider-onepng.png', 'right', 'https://fish.besthr.in/category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `d_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 0, 0, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://dev.geniusocean.net/xcart/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'https://dev.geniusocean.net/xcart/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `link`, `icon`, `status`) VALUES
(1, 0, 'https://www.facebook.com/', 'fab fa-facebook-f', 1),
(2, 0, 'https://twitter.com/', 'fab fa-twitter', 1),
(3, 0, 'https://linkedin.com/', 'fab fa-linkedin-in', 1),
(4, 0, 'https://www.google.com/', 'fab fa-google-plus-g', 1),
(5, 0, 'https://dribbble.com/', 'fab fa-dribbble', 1),
(6, 13, 'https://www.google.com/', 'fab fa-google', 1),
(7, 13, 'https://twitter.com/', 'fab fa-twitter', 1),
(8, 13, 'https://www.facebook.com/', 'fab fa-facebook', 1),
(9, 13, 'https://linkedin.com/', 'fab fa-linkedin', 1),
(10, 22, 'https://www.google.com/', 'fab fa-google', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `state` varchar(111) DEFAULT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `owner_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `tax`, `status`, `owner_id`) VALUES
(2, 245, 'New Youk', 2, 1, 0),
(4, 246, 'Virginia', 4, 1, 0),
(5, 237, 'Sancta Sedes', 0, 1, 0),
(6, 246, 'Harare', 0, 1, 0),
(7, 245, 'Lusaka', 0, 1, 0),
(8, 244, 'Zinjibar', 0, 1, 0),
(9, 244, 'Mukalla', 0, 1, 0),
(10, 243, 'Smara', 0, 1, 0),
(11, 243, 'Hawza', 0, 1, 0),
(12, 242, 'Vaitupu', 0, 1, 0),
(13, 242, 'Leava', 0, 1, 0),
(14, 18, 'Dhaka', 0, 1, 0),
(15, 18, 'Comilla', 0, 1, 0),
(16, 1, 'Kabul', 0, 1, 0),
(17, 1, 'Kapisa', 0, 1, 0),
(18, 2, 'Fier', 0, 1, 0),
(19, 2, 'Korce', 0, 1, 0),
(20, 13, 'Victoria', 0, 1, 0),
(21, 13, 'Tasmania', 0, 1, 0),
(22, 14, 'Vienna', 0, 1, 0),
(23, 14, 'Styria', 0, 1, 0),
(24, 20, 'Brest Oblast', 0, 1, 0),
(25, 20, 'Vitebsk Oblast', 0, 1, 0),
(26, 100, 'Assam', 0, 1, 0),
(27, 100, 'Bihar', 0, 1, 0),
(28, 100, 'Bombay', 0, 1, 0),
(29, 183, 'Adygea', 0, 1, 0),
(30, 183, 'Buryatia', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `language_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`, `language_id`) VALUES
(19, 28, 'Angelfish Dwarf', 'angelfish-Dwarf', 1, 1),
(20, 28, 'Angelfish Large', 'angelfish-Large', 1, 1),
(21, 28, 'Damsels', 'damsels', 1, 1),
(22, 28, 'Dottybacks', 'dottybacks', 1, 1),
(23, 28, 'Puffers', 'puffers', 1, 1),
(24, 28, 'Rabbitfish', 'rabbitfish', 1, 1),
(25, 28, 'Seahorses', 'seahorses', 1, 1),
(26, 28, 'Squirrelfish', 'squirrelfish', 1, 1),
(27, 28, 'Tangs', 'tangs', 1, 1),
(28, 28, 'Triggers', 'triggers', 1, 1),
(29, 27, 'Anemones', 'anemones', 1, 1),
(30, 27, 'Clams', 'clams', 1, 1),
(31, 27, 'Conchs', 'conchs', 1, 1),
(32, 27, 'Crabs', 'crabs', 1, 1),
(33, 27, 'Cucumbers', 'cucumbers', 1, 1),
(34, 27, 'Feather Dusters', 'feather-dusters', 1, 1),
(35, 27, 'Lobsters', 'lobsters', 1, 1),
(36, 27, 'Miscellaneous', 'miscellaneous', 1, 1),
(37, 27, 'Nudibranchs', 'nudibranchs', 1, 1),
(38, 26, 'Frags', 'frags', 1, 1),
(39, 26, 'Gorgonians', 'gorgonians', 1, 1),
(40, 26, 'LPS', 'LPS', 1, 1),
(41, 26, 'Mushrooms', 'Mushrooms', 1, 1),
(42, 26, 'Soft Corals', 'soft-corals', 1, 1),
(43, 26, 'SPS', 'SPS', 1, 1),
(44, 26, 'Zoanthids', 'zoanthids', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(8, 'shaon@gmail.com'),
(9, 'test@gmail.com'),
(10, 'shaoneel@gmail.com'),
(11, 'mojibur@gmail.com'),
(12, 'tretr@ter.d'),
(13, 'shaons@gmail.com'),
(14, 'shaon@gmail.coms'),
(15, 'junnuns@gmail.com'),
(16, 'admin@gmail.com'),
(17, 'user7@gmail.com'),
(18, 'farhadwts@gmail.com'),
(19, 'pronobsarker16@gmail.com'),
(20, 'shourav@gmail.com'),
(21, 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `reward_point` double DEFAULT '0',
  `reward_dolar` double NOT NULL DEFAULT '0',
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double DEFAULT '0',
  `currency_sign` blob,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT '0',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `reward_point`, `reward_dolar`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(71, 13, 0, 0, 's0174260rM', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSKkJlIV5dN9n7yg2ZgIbE', 'Payment Deposit', 'plus', '2020-11-08 22:50:26', '2020-11-08 22:50:26'),
(72, 13, 0, 0, 'qZg7485l5Z', 100, 0x24, 'USD', 1, 'Stripe', 'txn_1HlSLhJlIV5dN9n7aaoz6WIH', 'Payment Deposit', 'plus', '2020-11-08 22:51:25', '2020-11-08 22:51:25'),
(73, 13, 0, 0, 'Evg9026jfN', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:17:06', '2020-11-08 23:17:06'),
(74, 13, 0, 0, 'ouI90992fw', 100, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-08 23:18:19', '2020-11-08 23:18:19'),
(75, 13, 0, 0, 'CdS9733uNm', 100, 0x24, 'USD', 1, 'Mobile Money', '23423423432432', 'Payment Deposit', 'plus', '2020-11-08 23:28:53', '2020-11-08 23:28:53'),
(76, 22, 0, 0, 'BoT8052pwK', 500, 0x24, 'USD', 1, 'Stripe', 'txn_1Hp4DrJlIV5dN9n7t1iTYL1d', 'Payment Deposit', 'plus', '2020-11-18 21:54:12', '2020-11-18 21:54:12'),
(77, 22, 0, 0, 'gEu8363Jvw', 137.8, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 21:59:23', '2020-11-18 21:59:23'),
(78, 22, 0, 0, 'POb0758IGl', 362.2, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 22:39:18', '2020-11-18 22:39:18'),
(79, 22, 0, 0, 'NeT2693yEB', 1000, 0x24, 'USD', 1, 'Mobile Money', '69234324233423', 'Payment Deposit', 'plus', '2020-11-18 23:11:33', '2020-11-18 23:11:33'),
(80, 22, 0, 0, 'Z5k2860vix', 412, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-11-18 23:14:20', '2020-11-18 23:14:20'),
(81, 22, 0, 0, 'o4G6881KtE', 6.6879357201938, 0x24, 'USD', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-15 22:08:01', '2021-08-15 22:08:01'),
(82, 22, 0, 0, '1kl4166N9X', 20, 0x24, '1', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:09:26', '2021-08-18 02:09:26'),
(83, 22, 0, 0, 'be74667HIy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-08-18 02:17:47', '2021-08-18 02:17:47'),
(84, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:14:48', '2021-08-18 05:14:48'),
(85, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:15:24', '2021-08-18 05:15:24'),
(86, 22, 15, 30, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-08-18 05:19:12', '2021-08-18 05:19:12'),
(87, 22, 0, 0, 'wXy43082Oc', 30, 0x24, 'USD', 1, 'Paypal', '73C78619CF978200E', 'Payment Deposit', 'plus', '2021-09-10 22:25:08', '2021-09-10 22:25:08'),
(88, 31, 0, 0, 'vbO7527HMB', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:18:47', '2021-09-10 23:18:47'),
(89, 22, 0, 0, 'Mtc7543oEI', 1, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'plus', '2021-09-10 23:19:03', '2021-09-10 23:19:03'),
(90, 22, 0, 0, 'b2d7569b7D', 100, 0x24, 'USD', 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing', 'minus', '2021-09-10 23:19:29', '2021-09-10 23:19:29'),
(91, 22, 0, 0, '2sw73324zy', 114.33, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:28:52', '2021-09-11 21:28:52'),
(92, 22, 0, 0, 'sCV7503GHU', 92, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-09-11 21:31:43', '2021-09-11 21:31:43'),
(93, 22, 0, 0, '3i58366j66', 400455, 0x24, 'USD', 1, 'Paypal', '3KX550288A083143D', 'Payment Deposit', 'plus', '2021-12-12 15:39:26', '2021-12-12 15:39:26'),
(94, 22, 23, 46, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-12 15:44:22', '2021-12-12 15:44:22'),
(95, 22, 25, 50, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-12 15:44:36', '2021-12-12 15:44:36'),
(96, 36, 0, 0, 'QDY399707p', 1, 0x24, 'USD', 1, NULL, NULL, 'asdf dasdf', 'minus', '2021-12-12 17:13:17', '2021-12-12 17:13:17'),
(97, 22, 0, 0, 'GNM0761Vws', 100, 0x24, 'USD', 1, 'Stripe', 'txn_3K6WRAJlIV5dN9n70GBwDbAn', 'Payment Deposit', 'plus', '2021-12-14 15:32:41', '2021-12-14 15:32:41'),
(98, 22, 0, 0, 'lbU2350IW6', 100, 0x24, 'USD', 1, 'Paypal', '7DD5252950230501K', 'Payment Deposit', 'plus', '2021-12-14 15:59:10', '2021-12-14 15:59:10'),
(99, 22, 0, 0, '2cp2380HGJ', 100, 0x24, 'USD', 1, 'Molly Payment', 'tr_sFs2rBK6sT', 'Payment Deposit', 'plus', '2021-12-14 15:59:40', '2021-12-14 15:59:40'),
(100, 22, 0, 0, NULL, 100, 0x24, 'USD', 1, 'Authorize.net', '40079231225', 'Payment Deposit', 'plus', '2021-12-14 16:00:30', '2021-12-14 16:00:30'),
(101, 22, 0, 0, '1Jy25000Hr', 100, 0x24, 'USD', 1, 'Mercadopago', '1244588594', 'Payment Deposit', 'plus', '2021-12-14 16:01:40', '2021-12-14 16:01:40'),
(102, 22, 0, 0, 'ed13101X6A', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fc6044a9', 'Payment Deposit', 'plus', '2021-12-14 16:11:41', '2021-12-14 16:11:41'),
(103, 22, 0, 0, 'DzI31274jM', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b85fe1dd9d2', 'Payment Deposit', 'plus', '2021-12-14 16:12:07', '2021-12-14 16:12:07'),
(104, 22, 15, 22.5, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-14 17:21:23', '2021-12-14 17:21:23'),
(105, 22, 0, 0, 'sj38839CrG', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Paytm', '20211214111212800110168951203256029', 'Payment Deposit', 'plus', '2021-12-14 17:47:19', '2021-12-14 17:47:19'),
(106, 22, 0, 0, 'tgr0114viQ', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Instamojo', '3adde727acd54f7ca0a57698bc3d0385', 'Payment Deposit', 'plus', '2021-12-14 18:08:34', '2021-12-14 18:08:34'),
(107, 22, 0, 0, 'xcS0235yIs', 1.4503263234228, 0xe282b9, 'INR', 68.95, 'Paytm', '20211214111212800110168630103261249', 'Payment Deposit', 'plus', '2021-12-14 18:10:35', '2021-12-14 18:10:35'),
(108, 22, 0, 0, 'zpP0262WPs', 0.2747864222533, 0xe282a6, 'NGN', 363.919, 'Paystack', NULL, 'Payment Deposit', 'plus', '2021-12-14 18:11:02', '2021-12-14 18:11:02'),
(109, 22, 0, 0, 'n7w71945Cx', 50, 0x24, 'USD', 1, 'Flutterwave', '2699723', 'Payment Deposit', 'plus', '2021-12-15 02:33:14', '2021-12-15 02:33:14'),
(110, 22, 0, 0, '3Xm7707QgS', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9aa479d33e', 'Payment Deposit', 'plus', '2021-12-15 02:41:47', '2021-12-15 02:41:47'),
(111, 22, 0, 0, '3r67988yvO', 1.1816140848399, 0xe0a7b3, 'BDT', 84.63, 'SSLCommerz', 'SSLCZ_TXN_61b9ab61f41b9', 'Payment Deposit', 'plus', '2021-12-15 02:46:28', '2021-12-15 02:46:28'),
(112, 22, 0, 0, 'mBS8309q0j', 110, 0xe0a7b3, 'BDT', 84.63, NULL, NULL, 'Payment Via Wallet', 'minus', '2021-12-15 02:51:49', '2021-12-15 02:51:49'),
(113, 22, 10, 15, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-22 11:49:34', '2021-12-22 11:49:34'),
(114, 22, 142, 213, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2021-12-27 19:59:45', '2021-12-27 19:59:45'),
(115, 22, 100, 150, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'reward', '2022-02-16 00:06:29', '2022-02-16 00:06:29'),
(116, 22, 0, 0, 'Py338798q8', 100, 0x24, 'USD', 1, 'Paypal', '0RR72967LE978735V', 'Payment Deposit', 'plus', '2022-03-24 10:51:19', '2022-03-24 10:51:19'),
(117, 22, 0, 0, 'IsT600908v', 10, 0x24, 'USD', 1, 'Paypal', '00554153MA792844F', 'Payment Deposit', 'plus', '2022-03-24 11:26:49', '2022-03-24 11:26:49'),
(118, 22, 0, 0, 'Lou6145az7', 2000, 0x24, 'USD', 1, 'Stripe', 'txn_3KgiIHJlIV5dN9n71BFGSxys', 'Payment Deposit', 'plus', '2022-03-24 11:29:05', '2022-03-24 11:29:05'),
(119, 22, 0, 0, NULL, 10, 0x24, 'USD', 1, 'Authorize.net', '40085654964', 'Payment Deposit', 'plus', '2022-03-24 11:39:19', '2022-03-24 11:39:19'),
(120, 22, 0, 0, '5ci68408AS', 400, 0x24, 'USD', 1, 'Mercadopago', '1247049741', 'Payment Deposit', 'plus', '2022-03-24 11:40:40', '2022-03-24 11:40:40'),
(121, 22, 0, 0, 'mN37049ONM', 400, 0x24, 'USD', 1, 'Flutterwave', '3244951', 'Payment Deposit', 'plus', '2022-03-24 11:44:09', '2022-03-24 11:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `status` tinyint(10) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `balance` double NOT NULL DEFAULT '0',
  `reward` double NOT NULL DEFAULT '0',
  `email_token` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `reward`, `email_token`) VALUES
(13, 'Vendor', NULL, '1234', NULL, 'Algeria', 'UN', NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'FZZT79vFSHr5AmVKwnXqxA0kngg49oMItd1ob9zlR6Z1eKsjgLz3hsdh9sZH', '2018-03-07 12:05:44', '2022-03-24 11:13:37', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 4920.8, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 91152.459, '2023-11-11', 0, 699.79, 0, NULL),
(14, 'User', '16429180191556780563userpng.png', '1231', 'Test City', 'Algeria', 'UN', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$SoiCG9/MlJIvAir5tUKAjevXO0N4P0qEUb27vFMc53uCWMfgd.FLm', '8HxvpJXHRgnVDSBzsRs7Fh88brqTUMYQyv2hxV31nD9Wxaxj04k5th4gcOnH', '2019-06-20 06:26:24', '2022-03-24 12:56:03', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4298.635, 'Test Shops', 'Saxena', '213213', 'fgfg', '123213', NULL, NULL, '1640498386Wonderland-AhoraMisma-Ajpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-04-02', 0, 395114.10139024, 205, NULL),
(22, 'sourav', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'shaon@gmail.com', '$2y$10$Z0JFCmjCnw4DpvkdIfKz4eu9pQvvaYin6D4RmMmSwR03XOUpXVwj2', NULL, '2022-02-20 23:42:05', '2022-02-20 23:42:05', 0, 0, 'bfe211786bb6ba1d1b36e74ec458b772', 'Yes', 'c8c867523d788b9e87cee9a41f0f6b65', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(35, 'showrav Hasan', NULL, NULL, NULL, NULL, NULL, 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '01728332009', NULL, 'pronobsarker16@gmail.com', '$2y$10$K7Zq0OsXBmsRLugLtnqJX.cL.Cz69/7TWpJCNeBsCOuaTkLSXrQzK', NULL, '2021-10-19 00:27:40', '2022-02-15 22:35:31', 0, 0, '27a8c9cd108ba4301b6824aba325d2ce', 'Yes', 'ebcb396cecb581099407a110df63661b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'f65bfb1d7acffca1a7d8564518826565'),
(36, 'showrav Hasan', '16393041212048px-UnofficialJavaScriptlogo2svgpng.png', '23', 'Test City245', 'Afghanistan', 'tredt', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '01728332009', 'srfgt', 'test1@gmail.com', '$2y$10$UtMvX5N0dNGL.yZ0G/1vIutziL6RG9QUd1.QDBXNKqH2Kan6fSsPC', NULL, '2021-10-19 00:31:25', '2021-12-12 17:19:13', 0, 0, '0b7e92e13eaf56dedb42479049f415b7', 'Yes', 'fdaaf550a789bf77a17eeb1507c2b4ec', 8.88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2022-03-12', 0, -1, 0, NULL),
(38, 'ssssss', NULL, NULL, NULL, NULL, NULL, 'ddsd', '0545858558', NULL, 's@s', '$2y$10$8TUIlWjLRf5OpRzo3vQtQOuwEgk6Y/hnb7AhaDDqNTEdDDhghK.mq', NULL, '2021-12-22 21:54:46', '2021-12-22 21:54:46', 0, 0, '72b14b2a830d555193f7f6fd7805c745', 'Yes', '65d78a6168e1c033f3a1aec480e9894e', 0, 'zakariaerf', 'ddd', '2', 'test', '066', 's@s', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(39, 'Okwor Uchenna Prosper', NULL, NULL, NULL, NULL, NULL, 'Lagos', '08156029288', NULL, 'ichiegroup@gmail.com', '$2y$10$H0dDyKbqK36GJp5s27bsBuWWgE93eDjmWNL5B5euoADA0PRHcaiWO', NULL, '2021-12-23 06:08:08', '2021-12-23 06:08:08', 0, 0, 'eedf5d020194d9fa9a4c3351c6c5fc4f', 'Yes', 'd7956d6e2d9b05d03a284ecb5aa220e9', 0, 'Best Tech Inc', 'Uchenna', '538552', '10 Good Street', '5173637', 'Hello', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(40, 'Nabil Saidi', NULL, NULL, NULL, NULL, NULL, 'Nr9 errachidia', '0669137678', NULL, 'nabil111saidi@gmail.com', '$2y$10$70zdJVqwhJhl.lslMbG1keA3ckotdHOW5K/2B1/PoPwaTaRroN50C', NULL, '2021-12-24 04:37:39', '2021-12-24 04:37:39', 0, 0, '374bdcb3d7e53ae11d9bb4aa13a0b5bb', 'Yes', '824c7685f05c9f1446d2fdfab08d6f44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(41, 'Nabil Saidi', NULL, NULL, NULL, NULL, NULL, 'Nr9 errachidia', '0669137678', NULL, 'nabil11saidi@gmail.com', '$2y$10$mZLl/cGiXVsQ3OWeFNTgZuVNc3JxYOH8jVSLETqHymyO1.C1DlKYC', NULL, '2021-12-24 04:40:08', '2021-12-24 04:40:08', 0, 0, 'd3e21b6f95d0b1b989ba9cbb9fa1c682', 'Yes', '469d650212fd97195be96f13490d7132', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(42, 'Oluwakayode Adetunji', NULL, NULL, NULL, NULL, NULL, 'Akute', 'Bsnenenenen', NULL, 'adetunjioluwakayode@gmail.com', '$2y$10$4V0prJ/2K64iNtIGVDKwaek/uUvxjpMbh0XOWhrFB57ZrvKrLchEu', NULL, '2021-12-25 21:59:23', '2021-12-25 21:59:23', 0, 0, '6c099f71d964b8bd229958ecb0231ae2', 'Yes', '0cc73a4e45b3a2ef4f7f15117b0c5360', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(43, 'Abir Ahmad', NULL, NULL, NULL, NULL, NULL, 'Dhaka', '01324328709', NULL, 'abir.ahmad007@gmail.com', '$2y$10$C6eFY4k4PTfByYbDp72sYumdcxrqNCHraOLrc7bte86UdyD4VpK46', NULL, '2021-12-26 17:24:45', '2021-12-26 17:24:45', 0, 0, '084cb036885439b9824cf2f73c0808e6', 'Yes', '3579e3920eb10843964414d7bbcb65bd', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(44, 'pronob', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, '16103080@iubat.edu', '$2y$10$TVqsAD0oNwpCPXkb4hs.0eUloi87wIepxfyzKKfedUReDyXkDNLA6', NULL, '2022-02-15 23:27:04', '2022-02-15 23:27:04', 0, 0, '75495f47f7ece002b3dd44fec3256f72', 'Yes', 'f01df4a53899ac429064fc04c9bb79fe', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(45, 'ambarish', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'ambarish@gmail.com', '$2y$10$qJgZsgQCXylgfop1Mw0E9e3cbOiuliIex4nxs3rYNarhlPMZeKmNW', NULL, '2022-02-20 23:35:10', '2022-02-20 23:35:10', 0, 0, 'f10477ef6511e0037f44edab0befd1dd', 'Yes', '04ebaffe1a58c39d7cbf6650ef2b22a6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(47, 'pronob', NULL, NULL, NULL, NULL, NULL, 'comilla', '01976814812', NULL, 'pronob@gmail.com', '$2y$10$L1XFtjYrwYMNQHqFAi1XYO7.cFdtyNT61Ic8pH7IfxpYU.rLR6eWy', NULL, '2022-03-09 06:05:13', '2022-03-09 06:05:13', 0, 0, '23d9dac630ed1533c423e96e26c5a30a', 'Yes', 'a1895b3701351b175b086d2abf37fd85', 0, 'pro store', 'pronob', '12345', 'comilla', '12345', 'This is my store', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(48, 'Raju Debnath', '16940826081490711png.png', '786545', 'test', 'test', 'test', '294(81/1/D/1/N)', '9330636779', NULL, 'raju.933123@gmail.com', '$2y$10$E2nxnDH.fISGO2ovGBddFugpMLQMNDriJTS78gXj8oszPmq3F0Q3C', NULL, '2023-08-12 02:12:15', '2023-09-07 05:00:08', 0, 0, '470b51c4b4238367481d1e04121ada81', 'Yes', 'f32ea76408031707909437e69a3c8f4d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 30, NULL),
(49, 'Sougat Basu', NULL, NULL, NULL, NULL, NULL, 'Kolkata', '8981365361', NULL, 'sougatbasu1@gmail.com', '$2y$10$OiCaIdGvp1ADhLCXRaVQ0OfJlrdypogkFy/.TuuNHwoOQWgRBtffK', NULL, '2023-09-07 02:57:56', '2023-09-07 02:57:56', 0, 0, '661fd1bfa68d47e7a859754116338cf8', 'Yes', '027196bcc52dbdb62033fa7670c73e83', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(50, 'Pranoy Sinha', NULL, NULL, NULL, NULL, NULL, 'RN Tagore Rd Kolkata', '82241145', NULL, 'pranoy@elogicsoft.com', '$2y$10$90VlvTj2mTyYNCpbPIbUlO2maSkcZdU8SPhidARBzIiMqXXE.DYHy', NULL, '2023-10-08 21:17:24', '2023-10-08 21:17:24', 0, 0, '56e5ee1e5b3d3984f475fbcc93bec06b', 'Yes', 'e88d82c7211aa17c8972ba5c3402bbcf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(55, 13, 'GJIR1605427368', 1, '2020-11-15 02:02:53', '2021-12-27 05:11:43'),
(56, 13, 'DNJa1605437957', 1, '2020-11-15 04:59:19', '2021-12-27 05:11:43'),
(57, 13, 'jTnc1605497801', 1, '2020-11-15 21:36:43', '2021-12-27 05:11:43'),
(58, 13, 'aM3v1605497852', 1, '2020-11-15 21:37:32', '2021-12-27 05:11:43'),
(59, 13, 'fD7V1605505676', 1, '2020-11-15 23:47:56', '2021-12-27 05:11:43'),
(60, 13, 'XuOe1605758092', 1, '2020-11-18 21:54:53', '2021-12-27 05:11:43'),
(61, 13, 'exVe1605758363', 1, '2020-11-18 21:59:23', '2021-12-27 05:11:43'),
(62, 13, 'slPl1605760756', 1, '2020-11-18 22:39:18', '2021-12-27 05:11:43'),
(63, 13, 'ZYZm1605762860', 1, '2020-11-18 23:14:20', '2021-12-27 05:11:43'),
(64, 13, 'hvKS1605763356', 1, '2020-11-18 23:22:36', '2021-12-27 05:11:43'),
(65, 13, 'txAu1605773022', 1, '2020-11-19 02:03:46', '2021-12-27 05:11:43'),
(66, 13, 'Nyt21605775483', 1, '2020-11-19 02:44:58', '2021-12-27 05:11:43'),
(67, 13, 'znys1605775558', 1, '2020-11-19 02:47:01', '2021-12-27 05:11:43'),
(68, 13, '98fm1605775658', 1, '2020-11-19 02:47:38', '2021-12-27 05:11:43'),
(69, 13, 'KPma1605775845', 1, '2020-11-19 02:50:49', '2021-12-27 05:11:43'),
(70, 13, 'oXwG1605776045', 1, '2020-11-19 02:54:10', '2021-12-27 05:11:43'),
(71, 13, 'pXea1605776622', 1, '2020-11-19 03:03:45', '2021-12-27 05:11:43'),
(72, 13, 'gsh21606208213', 1, '2020-11-24 02:56:53', '2021-12-27 05:11:43'),
(73, 13, 'tmC11627449792', 1, '2021-07-27 23:23:12', '2021-12-27 05:11:43'),
(74, 13, 'LGWb1629106077', 1, '2021-08-16 03:28:23', '2021-12-27 05:11:43'),
(75, 13, 'hdvp1629117683', 1, '2021-08-16 06:41:49', '2021-12-27 05:11:43'),
(76, 13, 'l5WP1629118063', 1, '2021-08-16 06:47:59', '2021-12-27 05:11:43'),
(77, 13, 'oHtb1629178227', 1, '2021-08-16 23:30:48', '2021-12-27 05:11:43'),
(78, 13, 'NO5X1629178367', 1, '2021-08-16 23:33:05', '2021-12-27 05:11:43'),
(79, 13, 'd0Ho1629178447', 1, '2021-08-16 23:34:23', '2021-12-27 05:11:43'),
(80, 13, 'vzK51629178927', 1, '2021-08-16 23:42:28', '2021-12-27 05:11:43'),
(81, 13, 'oSDf1629179544', 1, '2021-08-16 23:52:54', '2021-12-27 05:11:43'),
(82, 13, 'uslT1629180266', 1, '2021-08-17 00:04:42', '2021-12-27 05:11:43'),
(83, 13, '6wsB1629180943', 1, '2021-08-17 00:16:00', '2021-12-27 05:11:43'),
(84, 13, 'R1HI1629181102', 1, '2021-08-17 00:18:38', '2021-12-27 05:11:43'),
(85, 13, 'fzkJ1629262135', 1, '2021-08-17 22:49:04', '2021-12-27 05:11:43'),
(86, 13, 'XQqY1629274145', 1, '2021-08-18 02:09:26', '2021-12-27 05:11:43'),
(87, 13, 'w6XM1629274666', 1, '2021-08-18 02:17:47', '2021-12-27 05:11:43'),
(88, 13, 'VC6q1631339529', 1, '2021-09-10 23:52:11', '2021-12-27 05:11:43'),
(89, 13, 'YoPn1631340268', 1, '2021-09-11 00:04:30', '2021-12-27 05:11:43'),
(90, 13, 'NTQz1631340864', 1, '2021-09-11 00:14:27', '2021-12-27 05:11:43'),
(91, 13, 'hGBt1631346683', 1, '2021-09-11 21:26:54', '2021-12-27 05:11:43'),
(92, 13, 'Vcth1631417332', 1, '2021-09-11 21:28:52', '2021-12-27 05:11:43'),
(93, 13, 'Qnid1631417500', 1, '2021-09-11 21:31:43', '2021-12-27 05:11:43'),
(94, 13, 'WZyT1631417894', 1, '2021-09-11 21:38:17', '2021-12-27 05:11:43'),
(95, 13, '9dTo1631418889', 1, '2021-09-11 21:54:51', '2021-12-27 05:11:43'),
(96, 13, 'JFJe1634625568', 1, '2021-10-19 00:39:31', '2021-12-27 05:11:43'),
(97, 13, 'c4KQ1639297122', 1, '2021-12-12 15:19:12', '2021-12-27 05:11:43'),
(98, 13, '4mCN1639297215', 1, '2021-12-12 15:20:29', '2021-12-27 05:11:43'),
(99, 13, 'MU131639297525', 1, '2021-12-12 15:25:27', '2021-12-27 05:11:43'),
(100, 13, 'DjDE1639297841', 1, '2021-12-12 15:30:42', '2021-12-27 05:11:43'),
(101, 13, 'f97J1639303759', 1, '2021-12-12 17:09:21', '2021-12-27 05:11:43'),
(102, 13, 'Xk9Z1639460878', 1, '2021-12-14 12:48:01', '2021-12-27 05:11:43'),
(103, 13, 'v86x1639464424', 1, '2021-12-14 13:47:07', '2021-12-27 05:11:43'),
(104, 13, 'rvvt1639478271', 1, '2021-12-14 17:37:54', '2021-12-27 05:11:43'),
(105, 13, 'qsyr1639555416', 1, '2021-12-15 15:03:38', '2021-12-27 05:11:43'),
(106, 13, 'lRjO1639555840', 1, '2021-12-15 15:10:54', '2021-12-27 05:11:43'),
(107, 13, 'VgYy1639558309', 1, '2021-12-15 02:51:49', '2021-12-27 05:11:43'),
(108, 13, '39MT1643876226', 0, '2022-02-03 02:17:06', '2022-02-03 02:17:06'),
(109, 13, 'L2Ft1643876229', 0, '2022-02-03 02:17:09', '2022-02-03 02:17:09'),
(110, 13, 'WYTj1643876231', 0, '2022-02-03 02:17:11', '2022-02-03 02:17:11'),
(111, 13, 'g4Z81643876231', 0, '2022-02-03 02:17:12', '2022-02-03 02:17:12'),
(112, 13, 'ODaE1643876236', 0, '2022-02-03 02:17:16', '2022-02-03 02:17:16'),
(113, 13, 'DqRq1643877049', 0, '2022-02-03 02:30:49', '2022-02-03 02:30:49'),
(114, 13, 'B6Nu1643877305', 0, '2022-02-03 02:35:07', '2022-02-03 02:35:07'),
(115, 13, 'nn7o1643877597', 0, '2022-02-03 02:40:00', '2022-02-03 02:40:00'),
(116, 13, 'tbpp1643879252', 0, '2022-02-03 03:07:59', '2022-02-03 03:07:59'),
(117, 13, 'IOLf1644384107', 0, '2022-02-08 23:22:01', '2022-02-08 23:22:01'),
(118, 13, 'L6y81644397444', 0, '2022-02-09 03:04:04', '2022-02-09 03:04:04'),
(119, 13, '7QiH1644398294', 0, '2022-02-09 03:20:54', '2022-02-09 03:20:54'),
(120, 13, 'hG5a1645422741', 0, '2022-02-20 23:52:27', '2022-02-20 23:52:27'),
(121, 13, 'gxMi1645943903', 0, '2022-02-27 00:38:23', '2022-02-27 00:38:23'),
(122, 13, 'rNaD1645943909', 0, '2022-02-27 00:38:29', '2022-02-27 00:38:29'),
(123, 13, 'NzKp1645944334', 0, '2022-02-27 00:45:34', '2022-02-27 00:45:34'),
(124, 13, '8Zwo1645950447', 0, '2022-02-27 02:27:27', '2022-02-27 02:27:27'),
(125, 13, 'u8An1645951432', 0, '2022-02-27 02:44:13', '2022-02-27 02:44:13'),
(126, 13, 'a1Jb1646020193', 0, '2022-02-27 21:49:56', '2022-02-27 21:49:56'),
(127, 13, 'ffB71646888596', 0, '2022-03-09 23:03:16', '2022-03-09 23:03:16'),
(128, 13, 'y0oH1648100767', 0, '2022-03-24 12:46:07', '2022-03-24 12:46:07'),
(129, 13, 'f8Lq1648100818', 0, '2022-03-24 12:46:58', '2022-03-24 12:46:58'),
(130, 13, 'm72i1648100865', 0, '2022-03-24 12:49:17', '2022-03-24 12:49:17'),
(131, 13, 'PIri1648101051', 0, '2022-03-24 12:50:52', '2022-03-24 12:50:52'),
(132, 13, 'BSSm1648101212', 0, '2022-03-24 12:53:34', '2022-03-24 12:53:34'),
(133, 13, 'cOrz1648101301', 0, '2022-03-24 12:55:03', '2022-03-24 12:55:03'),
(134, 13, 'WAnR1648101347', 0, '2022-03-24 12:56:03', '2022-03-24 12:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency_sign`, `currency_code`, `currency_value`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(84, 13, 5, 'Standard', '$', 'NGN', '1', 60, 45, 500, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, NULL, '2019-10-10 02:35:29', '2019-10-10 02:35:29', 1, NULL),
(151, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_1HlTPfJlIV5dN9n72gC9N5YJ', 'ch_1HlTPfJlIV5dN9n7dUMT6rYg', NULL, '2020-11-08 23:59:35', '2020-11-08 23:59:35', 1, NULL),
(152, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '6KD881488A1277949', NULL, NULL, '2020-11-09 00:00:38', '2020-11-09 00:00:38', 1, NULL),
(153, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '0R5121086C3908633', NULL, NULL, '2020-11-09 00:05:48', '2020-11-09 00:05:48', 1, NULL),
(154, 13, 5, 'Standard', '₦', 'NGN', '363.919', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '949523367', NULL, NULL, '2020-11-09 00:06:35', '2020-11-09 00:06:35', 1, NULL),
(155, 31, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-09 02:00:24', '2020-11-09 02:00:24', 1, NULL),
(156, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-10 22:48:58', '2020-11-10 22:48:58', 1, NULL),
(157, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:22:09', '2020-11-11 00:22:09', 1, NULL),
(158, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:23:42', '2020-11-11 00:23:42', 1, NULL),
(159, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_GujuVzTkBB', NULL, NULL, '2021-09-11 22:00:44', '2021-09-11 22:00:44', 1, NULL),
(160, 36, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-12-12 17:14:01', '2021-12-12 17:14:01', 1, NULL),
(161, 36, 6, 'Premium', '$', 'USD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2021-12-12 17:18:17', '2021-12-12 17:18:17', 1, NULL),
(162, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1097bc27', NULL, NULL, '2021-12-15 04:18:49', '2021-12-15 04:18:53', 1, NULL),
(163, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ub5JlIV5dN9n70iNV3Ozl', 'ch_3K6ub5JlIV5dN9n70DG2D5OL', NULL, '2021-12-15 04:20:32', '2021-12-15 04:20:32', 1, NULL),
(164, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ubRJlIV5dN9n70sRXFljG', 'ch_3K6ubRJlIV5dN9n70ckCrcKK', NULL, '2021-12-15 04:20:54', '2021-12-15 04:20:54', 1, NULL),
(165, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1968d008', NULL, NULL, '2021-12-15 04:21:10', '2021-12-15 04:21:13', 1, NULL),
(166, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c212dc758', NULL, NULL, '2021-12-15 04:23:14', '2021-12-15 04:23:18', 1, NULL),
(167, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c2fc010c8', NULL, NULL, '2021-12-15 04:27:08', '2021-12-15 04:27:11', 1, NULL),
(168, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c31b72a00', NULL, NULL, '2021-12-15 04:27:39', '2021-12-15 04:27:42', 1, NULL),
(169, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c510f4116', NULL, NULL, '2021-12-15 04:36:01', '2021-12-15 04:36:04', 1, NULL),
(170, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c58ea2995', NULL, NULL, '2021-12-15 04:38:06', '2021-12-15 04:38:09', 1, NULL),
(171, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c5cc649ce', NULL, NULL, '2021-12-15 04:39:08', '2021-12-15 04:39:11', 1, NULL),
(172, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_3KTjT0JlIV5dN9n70jJxJUry', 'ch_3KTjT0JlIV5dN9n70b9oPU0r', NULL, '2022-02-16 03:06:31', '2022-02-16 03:06:31', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`, `created_at`) VALUES
(263, 13, 209, 1, 110, 'Xk9Z1639460878', 'pending', '2021-12-14 05:48:01'),
(264, 13, 210, 1, 110, 'v86x1639464424', 'pending', '2021-12-14 06:47:07'),
(265, 13, 211, 1, 110, 'rvvt1639478271', 'pending', '2021-12-14 10:37:54'),
(266, 13, 212, 1, 110, 'qsyr1639555416', 'pending', '2021-12-15 08:03:38'),
(267, 13, 213, 1, 110, 'lRjO1639555840', 'pending', '2021-12-15 08:10:54'),
(268, 13, 214, 1, 110, 'VgYy1639558309', 'pending', '2021-12-15 08:51:49'),
(269, 13, 215, 1, 570, '39MT1643876226', 'pending', '2022-02-03 08:17:06'),
(270, 13, 216, 1, 570, 'L2Ft1643876229', 'pending', '2022-02-03 08:17:09'),
(271, 13, 217, 1, 570, 'WYTj1643876231', 'pending', '2022-02-03 08:17:11'),
(272, 13, 218, 1, 570, 'g4Z81643876231', 'pending', '2022-02-03 08:17:12'),
(273, 13, 219, 1, 570, 'ODaE1643876236', 'pending', '2022-02-03 08:17:16'),
(274, 13, 221, 1, 110, 'DqRq1643877049', 'pending', '2022-02-03 08:30:49'),
(275, 13, 222, 1, 110, 'B6Nu1643877305', 'pending', '2022-02-03 08:35:07'),
(276, 13, 223, 1, 110, 'nn7o1643877597', 'pending', '2022-02-03 08:40:00'),
(277, 13, 224, 1, 110, 'tbpp1643879252', 'pending', '2022-02-03 09:07:59'),
(278, 13, 225, 1, 110, 'IOLf1644384107', 'pending', '2022-02-09 05:22:01'),
(279, 13, 226, 1, 321, 'L6y81644397444', 'pending', '2022-02-09 09:04:04'),
(280, 13, 227, 1, 110, '7QiH1644398294', 'pending', '2022-02-09 09:20:54'),
(281, 13, 228, 1, 110, 'hG5a1645422741', 'pending', '2022-02-21 05:52:27'),
(282, 13, 229, 1, 110, 'gxMi1645943903', 'pending', '2022-02-27 06:38:23'),
(283, 13, 230, 1, 110, 'rNaD1645943909', 'pending', '2022-02-27 06:38:29'),
(284, 13, 231, 1, 110, 'NzKp1645944334', 'pending', '2022-02-27 06:45:34'),
(285, 13, 232, 1, 110, '8Zwo1645950447', 'pending', '2022-02-27 08:27:27'),
(286, 13, 233, 1, 110, 'u8An1645951432', 'pending', '2022-02-27 08:44:13'),
(287, 13, 234, 1, 110, 'a1Jb1646020193', 'pending', '2022-02-28 03:49:56'),
(288, 13, 239, 2, 220, 'ffB71646888596', 'pending', '2022-03-10 05:03:16'),
(289, 13, 240, 1, 111, 'y0oH1648100767', 'pending', '2022-03-24 05:46:07'),
(290, 13, 241, 1, 110, 'f8Lq1648100818', 'pending', '2022-03-24 05:46:58'),
(291, 13, 242, 1, 320, 'm72i1648100865', 'pending', '2022-03-24 05:49:17'),
(292, 13, 243, 1, 110, 'PIri1648101051', 'pending', '2022-03-24 05:50:52'),
(293, 13, 244, 1, 110, 'BSSm1648101212', 'pending', '2022-03-24 05:53:34'),
(294, 13, 245, 1, 110, 'cOrz1648101301', 'pending', '2022-03-24 05:55:03'),
(295, 13, 246, 1, 110, 'WAnR1648101347', 'pending', '2022-03-24 05:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_warning` tinyint(1) NOT NULL DEFAULT '0',
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(1, 13, '157096738015693932021.jpg,157096738015693932022.jpg', 'Declined', 'TEST', 0, NULL, '2019-10-13 05:49:40', '2021-12-12 17:19:55'),
(7, 13, NULL, NULL, NULL, 1, 'Check', '2021-10-19 21:32:20', '2021-10-19 21:32:20'),
(8, 36, NULL, NULL, NULL, 1, '324', '2021-12-12 17:18:25', '2021-12-12 17:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(1, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:43:25', '2020-11-16 10:44:32', 'rejected', 'vendor'),
(2, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:44:38', '2020-11-16 10:46:39', 'completed', 'vendor'),
(3, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:46:50', '2020-11-16 10:52:00', 'completed', 'vendor'),
(4, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:52:44', '2020-11-16 10:52:54', 'completed', 'vendor'),
(5, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'TEST', 90, 10, '2020-11-16 10:53:07', '2020-11-16 10:53:13', 'completed', 'vendor'),
(6, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:32', '2020-11-16 10:53:50', 'completed', 'user'),
(7, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:35', '2020-11-16 10:53:48', 'rejected', 'user'),
(8, 13, 'Paypal', 'fgdf@sdsa.fgfdg', NULL, NULL, NULL, NULL, NULL, 'fdg', 90, 10, '2020-11-16 10:53:37', '2020-11-16 10:53:45', 'completed', 'user'),
(9, 22, 'Paypal', 'amabarishdas1610@gmail.com', NULL, NULL, NULL, NULL, NULL, 'df', 33, 7, '2021-12-12 08:45:19', '2021-12-12 10:17:17', 'completed', 'user'),
(10, 22, 'Paypal', 'farhadwts@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 90, 10, '2021-12-14 08:57:37', '2021-12-14 08:57:58', 'rejected', 'user'),
(11, 22, 'Payoneer', 'nn@g.com', NULL, NULL, NULL, NULL, NULL, NULL, 25.4, 6.6, '2021-12-25 22:14:16', '2021-12-25 22:14:16', 'pending', 'user'),
(12, 22, 'Paypal', 'shourav@gmail.com', NULL, NULL, NULL, NULL, NULL, 'fdgujrtyity', 945, 55, '2022-01-19 10:05:54', '2022-01-19 10:06:20', 'completed', 'user'),
(13, 22, 'Paypal', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sdfgasesesedfg', 375, 25, '2022-03-24 04:50:56', '2022-03-24 04:50:56', 'pending', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrival_sections`
--
ALTER TABLE `arrival_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
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
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `arrival_sections`
--
ALTER TABLE `arrival_sections`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4794;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
