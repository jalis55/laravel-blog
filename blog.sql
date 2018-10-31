-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2017 at 11:50 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_10_034805_create_tbl_admin_table', 1),
(4, '2017_09_10_135348_create_tbl_category_table', 2),
(5, '2017_09_11_055629_create_tbl_blog_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_label` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `mobile_number`, `access_label`, `created_at`, `updated_at`) VALUES
(1, 'jalis mahamud', 'jalis@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '8801623708711', 1, NULL, NULL),
(2, 'jm tarif', 'tarif@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01771482610', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `blog_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `category_id`, `blog_title`, `author_name`, `blog_short_description`, `blog_long_description`, `blog_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mahmudullah recalled for South Africa Tests', 'jalis mahamud', '<a href=\"http://www.espncricinfo.com/bangladesh/content/player/56025.html\" style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: inherit; font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" font-size:=\"\" 16px;=\"\" margin:=\"\" 0px;=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" background:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" color:=\"\" rgb(0,=\"\" 102,=\"\" 204);=\"\" text-decoration-line:=\"\" none;=\"\" outline:=\"\" 0px=\"\" !important;\"=\"\">Mahmudullah</a><span style=\"color: rgb(72, 73, 74); font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">&nbsp;has been recalled to Bangladesh\'s 15-member squad for their two-Test series against South Africa, which begins on September 28. Bangladesh also strengthened their seam-bowling options by adding Subhasis Roy and Rubel Hossain to the squad........</span>', '<p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 1.6; font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" font-size:=\"\" 16px;=\"\" margin:=\"\" 0px=\"\" 20px;=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(72,=\"\" 73,=\"\" 74);=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><a href=\"http://www.espncricinfo.com/bangladesh/content/player/56025.html\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 102, 204); text-decoration-line: none; outline: 0px !important;\">Mahmudullah</a>&nbsp;has been recalled to Bangladesh\'s 15-member squad for their two-Test series against South Africa, which begins on September 28. Bangladesh also strengthened their seam-bowling options by adding Subhasis Roy and Rubel Hossain to the squad.</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 1.6; font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" font-size:=\"\" 16px;=\"\" margin:=\"\" 0px=\"\" 20px;=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(72,=\"\" 73,=\"\" 74);=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><a href=\"http://www.espncricinfo.com/bangladesh/content/player/56143.html\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 102, 204); text-decoration-line: none; outline: 0px !important;\">Shakib Al Hasan</a>, who was&nbsp;<a href=\"http://www.espncricinfo.com/story/_/id/20666752/shakib-al-hasan-granted-short-break-tests\" target=\"_blank\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 102, 204); text-decoration-line: none; outline: 0px !important;\">granted a break</a>&nbsp;from the South Africa Tests, and&nbsp;<a href=\"http://www.espncricinfo.com/bangladesh/content/player/300618.html\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 102, 204); text-decoration-line: none; outline: 0px !important;\">Nasir Hossain</a>, who underperformed in his comeback series against Australia, were excluded. It will be the first time Shakib won\'t be part of the Test team since the series in 2014 against West Indies.</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 1.6; font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" font-size:=\"\" 16px;=\"\" margin:=\"\" 0px=\"\" 20px;=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(72,=\"\" 73,=\"\" 74);=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Chief selector Minhajul Abedin said it was a concern that Shakib opted out of the squad, but felt that a player\'s mentality must be considered.</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 1.6; font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" font-size:=\"\" 16px;=\"\" margin:=\"\" 0px=\"\" 20px;=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(72,=\"\" 73,=\"\" 74);=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">\"I respect his decision but of course it is very hard to replace him,\" Minhajul said. \"We have to take into account his mental state because as a player I understand what he may be going through physically and mentally.\"</p>', 'blog_image/F8Xq95tIF7AskmS7zJM1.jpg', 1, '2017-09-11 08:22:45', NULL),
(4, 1, 'NSU new faculty BgU for easy going', 'jalis mahamud', 'For the upcoming semester Md.Anikul Islam Bingu(BgU) joined nsu for taking many courses like CSE215(java).....', '<span style=\"font-size: 13.3333px;\">For the upcoming semester Md.Anikul Islam Bingu(BgU) joined nsu for taking many courses like CSE215(java),CSE115,CSE225,CSE332.hhhhh</span>', 'blog_image/xQRcsVSZMmilmGBhN7fS.jpg', 1, '2017-09-11 09:35:21', NULL),
(5, 1, 'OTHER CLUBS OFFERED MORE FOR MBAPPE, CLAIMS PSG PRESIDENT', 'jalis mahamud', '<span style=\"color: rgb(8, 31, 44); font-size: 22px;\">The ex-Monaco teenager and Neymar arrived at Parc des Princes over the summer, and Nasser al-Khelaifi says the club\'s commercial profile is booming</span>', '<div class=\"teaser\" itemprop=\"description\" style=\"box-sizing: inherit; margin-left: 0.625rem; margin-right: 0.625rem; color: rgb(8, 31, 44); padding-top: 1.875rem; padding-bottom: 1.25rem; word-wrap: break-word; font-size: 1.375rem; line-height: 1.875rem; font-family: \" titillium=\"\" web\",=\"\" sans-serif;\"=\"\">The ex-Monaco teenager and Neymar arrived at Parc des Princes over the summer, and Nasser al-Khelaifi says the club\'s commercial profile is booming</div><div class=\"body\" itemprop=\"articleBody\" style=\"box-sizing: inherit; margin-left: 0.625rem; margin-right: 0.625rem; color: rgb(8, 31, 44); padding-top: 1.875rem; padding-bottom: 1.25rem; word-wrap: break-word; font-size: 1.125rem; line-height: 1.625rem; font-family: \" titillium=\"\" web\",=\"\" sans-serif;\"=\"\"><p style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0.8125rem;\">Paris Saint-Germain president Nasser Al-Khelaifi has claimed that the club fought off fierce competition for the signature of Kylian Mbappe but eventually landed the wonderkid for less than their rivals offered.&nbsp;</p><p style=\"box-sizing: inherit; margin: 0px; padding: 0.8125rem 0px;\">Mbappe became PSG\'s second blockbuster signing of the summer shortly before deadline day when he signed on a one-year loan from Monaco.&nbsp;</p></div>', 'blog_image/f3e90LNniSuZYrkYA8TM.jpg', 1, '2017-09-11 22:57:20', NULL),
(6, 2, 'স্টেইন-গান তৈরি বাংলাদেশের জন্য', 'jalis mahamud', '<p class=\"Hdg3col\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">উইকেট পাওয়ার পর তাঁর সেই আগ্রাসী উদ্‌যাপনের একটা ছবি, যে ছবি গত মাসে ডেল স্টেইন নিজেই দিয়েছেন ইনস্টাগ্রামে। সঙ্গে ক্যাপশন: ‘শেষ হচ্ছে অপেক্ষা!’</p><p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">এক হিসেবে এই ছবিই বাংলাদেশের জন্য একটু হুমকির বার্তা। ডেল স্টেইনের এই অপেক্ষা আবার আন্তর্জাতিক ক্রিকেটে ফেরার। আর দক্ষিণ আফ্রিকার পরবর্তী সিরিজটা তো বাংলাদেশের বিপক্ষেই। স্টেইন-গান বুঝি সেটার জন্যই তৈরি!</p>', '<p class=\"Hdg3col\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">উইকেট পাওয়ার পর তাঁর সেই আগ্রাসী উদ্‌যাপনের একটা ছবি, যে ছবি গত মাসে ডেল স্টেইন নিজেই দিয়েছেন ইনস্টাগ্রামে। সঙ্গে ক্যাপশন: ‘শেষ হচ্ছে অপেক্ষা!’</p><p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">এক হিসেবে এই ছবিই বাংলাদেশের জন্য একটু হুমকির বার্তা। ডেল স্টেইনের এই অপেক্ষা আবার আন্তর্জাতিক ক্রিকেটে ফেরার। আর দক্ষিণ আফ্রিকার পরবর্তী সিরিজটা তো বাংলাদেশের বিপক্ষেই। স্টেইন-গান বুঝি সেটার জন্যই তৈরি!</p><p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">গত নভেম্বরে অস্ট্রেলিয়ার বিপক্ষে সিরিজে কাঁধের হাড় ভেঙে ফেলার পর থেকে সব ধরনের ক্রিকেটের বাইরে স্টেইন। লক্ষ্য ছিল ইংল্যান্ডের বিপক্ষে টেস্ট সিরিজ দিয়ে আন্তর্জাতিক ক্রিকেটে ফেরার। এর আগে দক্ষিণ আফ্রিকা এ দলের হয়ে কয়েকটি চার দিনের ম্যাচও খেলতে চেয়েছিলেন। কিন্তু কাঁধের অস্ত্রোপচারের পর পুনর্বাসন-প্রক্রিয়া দীর্ঘায়িত হওয়ায় কোনো ইচ্ছাই পূরণ হয়নি। তবে গত মাসে ইনস্টাগ্রামে তাঁর দেওয়া ওই ছবি আর ক্যাপশনে বোঝা যাচ্ছে, এখন তিনি তৈরি। ঘরের মাঠে বাংলাদেশের বিপক্ষে সিরিজ দিয়েই হয়তো শেষ হচ্ছে স্টেইনের অপেক্ষা।</p><p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">‘হয়তো’ বলা হচ্ছে, কারণ দলে জায়গা পাওয়ারও ব্যাপার আছে। প্রায় ১০ মাস ধরে ক্রিকেটের বাইরে ৩৪ বছর বয়সী স্টেইন। এ সময় যেহেতু কোনো ম্যাচ খেলেননি, তাই সরাসরি দলে ঢুকে যাওয়ার আশা তিনিও করেন না। নিজেকে প্রমাণের জন্য তাই স্টেইন সিদ্ধান্ত নিয়েছেন ঘরোয়া ক্রিকেটে তাঁর দল টাইটানসের হয়ে প্রথম শ্রেণির ক্রিকেটে খেলার। অবশ্য বাংলাদেশের বিপক্ষে টেস্ট সিরিজ শুরুর আগে মাত্র এক রাউন্ডের খেলা হবে প্রথম শ্রেণির ক্রিকেটে। দলে জায়গা পেতে হলে ওই এক ম্যাচেই কিছু করে দেখাতে হবে স্টেইনকে। ক্রিকেট দক্ষিণ আফ্রিকার (সিএসএ) নির্বাচক কমিটির আহ্বায়ক লিন্ডা জন্ডিও আগেই বলে রেখেছেন, প্রথম শ্রেণির ক্রিকেটে এই রাউন্ডের ম্যাচগুলোতে যাঁরা ভালো করবেন, তাঁদের বিবেচনা করা হবে বাংলাদেশ সিরিজের দলের জন্য।</p><p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">আগামী মঙ্গলবার শুরু হতে যাওয়া প্রথম শ্রেণির ম্যাচগুলো শেষ হবে ২২ সেপ্টেম্বর। ওই দিনই বাংলাদেশের বিপক্ষে সিরিজের দল ঘোষণা করবে ক্রিকেট দক্ষিণ আফ্রিকা (সিএসএ)। স্টেইনের জন্য তাই এই ম্যাচ অগ্নিপরীক্ষাই।</p><p class=\"TEXT\" style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">বাংলাদেশের বিপক্ষে সর্বশেষ টেস্ট খেলার অবশ্য একটা দারুণ সুখস্মৃতি আছে স্টেইনের। ২০১৫ সালে বাংলাদেশের মাটিতে দুই টেস্ট সিরিজের দুটি ম্যাচই বৃষ্টিতে ভেসে গেলেও ওই সিরিজেই টেস্ট ক্যারিয়ারের ৪০০ উইকেটের মাইলফলক ছুঁয়েছিলেন স্টেইন। ৮৫ টেস্টে ২২.৩০ গড়ে ৪১৭ উইকেট নেওয়া স্টেইন আর মাত্র ৫টি উইকেট পেলেই শন পোলককে ছাড়িয়ে দক্ষিণ আফ্রিকার হয়ে সর্বোচ্চ উইকেটের মালিক হয়ে যাবেন।</p><p class=\"TEXT\" style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(232, 245, 233);\">বাংলাদেশের বিপক্ষে এই সিরিজেই নিশ্চয় সেই কীর্তিটা গড়ে ফেলতে চাইবেন স্টেইন। ইএসপিএন-ক্রিকইনফো।</p>', 'blog_image/ezgBaKTK9vbkRniLcCkc.jpg', 1, '2017-09-12 21:11:10', NULL),
(7, 1, 'আমাদের দেশের মতো ইন্টারেনেটে নতুন', 'jalis mahamud', '<strong style=\"padding: 0px; margin: 0px; outline: 0px; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">আমাদের দেশের মতো ইন্টারেনেটে নতুন কিন্তু&nbsp;</strong><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\"><strong style=\"padding: 0px; margin: 0px; outline: 0px; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">জিনাত রেজা খান:</strong><span style=\"font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">&nbsp;প্রযুক্তি এখন যা চলে এসেছে, তা নিয়ে ভাবলেই চলবে, ২০ বছর পর যা আসবে তা নিয়ে এখন না চিন্তা করলেও হবে—ব্যাপারটা কিন্তু এ রকম নয়। যদিও এটা নতুন ইন্ডাস্ট্রি। কিন্তু সমস্যা সব এখানে</span>', '<strong style=\"padding: 0px; margin: 0px; outline: 0px; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">আমাদের দেশের মতো ইন্টারেনেটে নতুন কিন্তু ব্যবহারকারীর সংখ্যা দ্রুত বেড়ে যাওয়া দেশগুলোতে তথ্যপ্রযুক্তি নৈতিকতা বিষয় কতটা জরুরি?</strong><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\"><strong style=\"padding: 0px; margin: 0px; outline: 0px; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">জিনাত রেজা খান:</strong><span style=\"font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">&nbsp;প্রযুক্তি এখন যা চলে এসেছে, তা নিয়ে ভাবলেই চলবে, ২০ বছর পর যা আসবে তা নিয়ে এখন না চিন্তা করলেও হবে—ব্যাপারটা কিন্তু এ রকম নয়। যদিও এটা নতুন ইন্ডাস্ট্রি। কিন্তু সমস্যা সব এখানে এসে পড়বে। এরই মধ্যে অনেক সমস্যা এসে পড়েছে। যেহেতু সংযোগ (ইন্টারনেট) রয়েছে বিশ্বব্যাপী, তাই এটা সীমান্তহীন (বর্ডারলেস) সমস্যা। এটা শুধু আমেরিকা বা অন্য কোনো দেশের সমস্যা নয়, বরং যেখানে ইন্টারনেট যাবে, যেখানে আপনার সংযোগ হবে, যন্ত্র যাবে, শিশু–কিশোরেরা যন্ত্র ব্যবহার করবে—সেখানেই এ সমস্যাগুলো দেখা দেবে। যদি কেউ বলে যে আমরা এখনো নতুন, ডিজিটাল বাংলাদেশ মোটে শুরু হয়েছে, প্রচারণায় অনেক সময় লাগবে—তবে তা ভুল। গত সপ্তাহে আমি চার দিন সুন্দরবন অঞ্চলে চারটা স্কুলে কাজ করেছি। সেখানকার বেশির ভাগ শিশুর হাতে মোবাইল ফোন। সেটিতে ফেসবুক যেমন রয়েছে তেমনি ওদের ফেসবুক অ্যাকাউন্টও আছে। তারা আমাকে জিজ্ঞেস করে গেছে, আপনার ফেসবুক অ্যাকাউন্ট কি আমরা ট্যাগ করব? তাই ডিজিটাল প্রযুক্তি কিন্তু দাবানলের মতো ছড়িয়ে পড়ছে।</span><br style=\"padding: 0px; margin: 0px; outline: 0px; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\"><span style=\"font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\">যাঁদের স্বল্প আয়, তাঁরাও কিন্তু চেষ্টা করেন বাচ্চাদের জন্য বাসায় যেন একটা ফোন ও ইন্টারনেট সংযোগ থাকে। প্রত্যন্ত গ্রামের স্কুলে আমি দেখে এসেছি আটটা প্রজেক্টর, আটটা ল্যাপটপ দিয়ে বাচ্চাদের পড়ানো হচ্ছে। নিজেদের ওয়েবসাইটও হয়ে গেছে। এখন যদি বলি আমরা নতুন, আমাদের অসুবিধা নেই, তা ঠিক না। আমাদের এটা নিয়ে সচেতনতা তৈরি করতে হবে। তা এখনই প্রয়োজন।</span>', NULL, 1, '2017-09-12 21:37:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'all sports news will publish here', 1, '2017-09-11 08:10:37', NULL),
(2, 'BD Cricket', 'all bangladeshi cricket will publish here', 1, '2017-09-11 08:11:17', NULL),
(3, 'Programming', 'Programmig concepts tips and tricks will be written', 1, '2017-09-11 08:12:02', NULL),
(4, 'nsu', 'nsu fact', 1, '2017-09-11 09:28:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `tbl_admin_admin_email_unique` (`admin_email`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
