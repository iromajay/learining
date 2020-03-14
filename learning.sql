-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2020 at 01:23 AM
-- Server version: 10.4.12-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `p1` (`@user_id` INT) RETURNS INT(11) BEGIN
        DECLARE rowNumber int(11);
       	SET rowNumber = 0;
      
        RETURN rowNumber;
  END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `option_1` varchar(255) NOT NULL,
  `option_2` varchar(255) NOT NULL,
  `option_3` varchar(255) NOT NULL,
  `option_4` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL,
  `question_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `option_1`, `option_2`, `option_3`, `option_4`, `correct_answer`, `question_id`, `created_date`, `status`) VALUES
(60, '2', '3', '4', '5', '0', 35, '2020-03-02 06:17:12', 'Active'),
(61, 'A chemical reaction', 'Name of an elemnent ', 'State of matter ', 'A  state if dynamic reaction that seems static', '0', 36, '2020-03-02 09:25:12', 'Active'),
(62, '1', '2', '3', '5', '0', 37, '2020-03-02 11:43:53', 'Active'),
(63, '2 ', '3', '4 ', '5', '0', 38, '2020-03-02 11:45:24', 'Active'),
(64, '0.2m', ' 0.2mm', ' 0.2nm', '0.2pm', 'option_3', 39, '2020-03-04 04:32:29', 'Active'),
(65, 'H+ HH-', 'Li+ Na+ K+', ' C1- Br- I', 'F- Ne Na+', '0', 40, '2020-03-03 05:32:43', 'Active'),
(66, 'H+ HH-', ' Li+ Na+ K+', 'C1- Br- I', ' F- Ne Na+', '0', 41, '2020-03-03 05:35:15', 'Active'),
(67, '1', '2', '3', '4', '0', 42, '2020-03-03 05:35:42', 'Active'),
(68, '1', '2', '3', '4', '0', 43, '2020-03-03 05:37:51', 'Active'),
(69, 'asd', 'asd', '1', '3', '0', 44, '2020-03-03 05:44:21', 'Active'),
(70, '11', '22', '44', '55', '0', 45, '2020-03-03 05:44:46', 'Active'),
(71, '7', '6', '7', '9', 'option_2', 46, '2020-03-04 04:33:05', 'Active'),
(72, '4', '5', '5', '7', 'option_1', 48, '2020-03-11 11:08:38', 'Active'),
(73, '8', '4', '5', '7', 'option_2', 49, '2020-03-04 04:33:57', 'Active'),
(74, '77', '65', '56', '17', 'option_3', 50, '2020-03-04 04:35:08', 'Active'),
(75, '30 ', '21', '52', '50', 'option_1', 51, '2020-03-04 05:44:41', 'Active'),
(76, '<p>Newton&#39;s first law</p>\r\n', '<p>Newton&#39;s Second Law</p>\r\n', '<p>Newton&#39;s Third Law</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p>All of these</p>\r\n', 'option_1', 52, '2020-03-13 15:46:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `created_by`, `created_date`, `status`) VALUES
(1, 'Medical ', 1, '2020-03-04 05:38:00', 'Active'),
(2, 'Engineering Entrance', 1, '2020-03-02 08:49:15', 'Active'),
(3, 'CAT', 1, '2020-03-04 05:39:02', 'Inactive'),
(4, 'GRE', 1, '2020-03-04 05:39:55', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `title`, `body`, `created_date`, `status`) VALUES
(1, 'Test', '<p>Test 23</p>\r\n', '2020-03-06 04:48:10', 'Active'),
(2, 'test 1', '<p>tes 1</p>\r\n', '2020-03-06 04:29:34', 'Inactive'),
(3, 'new Test', '<p>New test</p>\r\n', '2020-03-06 04:36:20', 'Active'),
(4, 'Alert', '<p>Rank 34</p>\r\n', '2020-03-06 04:46:04', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1581747626),
('m130524_201442_init', 1581747630),
('m190124_110200_add_verification_token_column_to_user_table', 1581747631),
('m200215_061741_user', 1581747631),
('m200215_062614_user', 1581748035),
('m200215_063105_drop_user_table', 1581748302),
('m200215_063202_create_user_table', 1581748332),
('m200215_064608_drop_user_table', 1581749176),
('m200215_064649_user', 1581749217),
('m200215_064758_user', 1581749284),
('m200215_065320_init', 1581749795),
('m200215_065422_verification', 1581749796);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active' COMMENT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `text`, `subject_id`, `created_date`, `status`) VALUES
(35, '<p>1 + 1 ?</p>\r\n', 4, '2020-03-03 07:17:57', 'Inactive'),
(36, '<p><img alt=\"\" src=\"http://localhost/1.jpg\" style=\"height:50px; width:33px\" />Which of the following describes equilibrium?</p>\r\n', 2, '2020-03-03 07:05:07', 'Inactive'),
(37, '<p><img alt=\"\" src=\"http://localhost/images/1.jpg\" style=\"float:right; height:92px; width:60px\" />2 + 3 ?</p>\r\n', 1, '2020-03-03 07:18:10', 'Inactive'),
(39, '<p><strong>The diameter of an atom is in the order?</strong></p>\r\n', 2, '2020-03-06 04:50:59', 'Active'),
(46, '<p>1 * 6 *1 ?</p>\r\n', 4, '2020-03-04 05:42:17', 'Active'),
(47, '<p>1 + 3 ?</p>\r\n', 4, '2020-03-03 11:03:55', 'Active'),
(48, '<p>1 + 3 ?</p>\r\n', 4, '2020-03-03 11:05:17', 'Active'),
(49, '<p>1 + 3 ?</p>\r\n', 4, '2020-03-03 11:05:40', 'Active'),
(50, '<p>7*8?</p>\r\n', 4, '2020-03-04 04:35:08', 'Active'),
(51, '<p>5 * 6</p>\r\n', 4, '2020-03-04 05:44:41', 'Active'),
(52, '<p><strong>Which law is also called the law of inertia?</strong></p>\r\n', 1, '2020-03-13 15:46:00', 'Active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ranking`
-- (See below for the actual view)
--
CREATE TABLE `ranking` (
`user_id` int(11)
,`no_correct_ans` int(11)
,`time_taken` int(11)
,`subject_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `user_id`, `subject_id`, `rank`, `status`, `created_date`) VALUES
(1, 6, 4, 1, 'Inactive', '2020-03-11 10:53:13'),
(2, 6, 4, 1, 'Active', '2020-03-11 10:56:42'),
(3, 6, 4, 2, 'Active', '2020-03-11 10:58:06'),
(4, 6, 4, 2, 'Active', '2020-03-11 11:05:01'),
(5, 6, 4, 2, 'Active', '2020-03-11 11:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `course_id`, `createdDate`, `status`) VALUES
(1, 'Physics', 2, '2020-03-04 05:49:58', 'Active'),
(2, 'Chemistry', 2, '2020-03-04 04:08:46', 'Active'),
(3, 'Biology', 1, '2020-03-04 04:08:29', 'Active'),
(4, 'Mathematics', 2, '2020-03-04 05:50:06', 'Active'),
(5, 'English', 1, '2020-03-04 05:17:25', 'Inactive'),
(6, 'Quatitative Aptitude', 4, '2020-03-04 05:50:48', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `subject_setttings`
--

CREATE TABLE `subject_setttings` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_time` decimal(10,2) NOT NULL,
  `no_questions` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_setttings`
--

INSERT INTO `subject_setttings` (`id`, `subject_id`, `exam_time`, `no_questions`, `created_by`, `created_at`, `status`) VALUES
(5, 1, '60.00', 10, 1, '2020-03-05 08:47:47', 'Active'),
(6, 2, '30.00', 10, 1, '2020-03-05 08:48:40', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'Admin', 'PyU-ogV6ci6sJFXv4enI7mKr2njcudes', '$2y$13$RytxeUO9mtY6zigmFXjRPuKy3aGRCAVb2tL8DaQKeexHtRWSm010.', NULL, 'ajayyii2g@gmail.com', 10, 1581750005, 1582796695, 'WaMSGbxcIo_oIMfSlVrFwiLZDk2OpIXt_1581750005'),
(2, 'Ram', 'RINAjMnuBXlojf3_plg00YsWWyZBkbeT', '$2y$13$Q0aimtdB1qbwQ819io669eInKP3vIhIHXnRqMmRF12IHffzV0XEKq', NULL, 'ram@gmail.com', 10, 1581751021, 1581751021, '_GWMgVjh3uQenVo-0Wn15TTSZZEmnv4K_1581751021'),
(3, 'test', 's9sBw9WQY2zPTDADjJJApzIqrBHzdCLp', '$2y$13$wJlDzrhjBsi6i2nP3OilHOinUxxLwK.uw1HFlLUGvHW4pJdGrMpGK', NULL, 'test@gmail.com', 10, 1583470602, 1583470602, 'mBz1mlpnKmVDI4kB-jxPWCoXqjlZqQ9P_1583470602'),
(4, 'test1', 'c5J6bZ7Ldak1FcGd8zFbFsn3lYhp_vnw', '$2y$13$srzI5Fcu8t5cKHVGEjGPg.pWytorTmRRrMCuxaSx79owhe1ezgASm', NULL, 'test1@gmai.com', 10, 1583470856, 1583470856, 'Xfdfh6YX-nnYWugVtWbm-J66jfeVZLOu_1583470856'),
(5, 'Jam', 'mEXQZ_Gg4fLDG37O7_YdIZtOpVJkgAnt', '$2y$13$vNPRLYyMWznmHwfoJNgXXudOMW8exBD5ixlI1isqaJuzig4QDVPP.', NULL, 'jan@gmail.com', 10, 1583559095, 1583559095, 'H5gc5Ucos2FlnzsOLEfr_zOmwoo7GFyO_1583559095'),
(6, 'sham', 'Wm-RUNyizjl3JqWL7qkVo2Wssy6R7n8Q', '$2y$13$V8s.t97gHET2AGpLCF1v..42zQsw9v4zk3wlUjsyADWJqttcvFJVi', NULL, 'sham@gmai.com', 10, 1583566354, 1583566354, '-oedwr7MbiteefQhJ7DghwFuXy4397-S_1583566354');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `no_correct_ans` int(11) NOT NULL,
  `time_taken` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `user_id`, `subject_id`, `no_correct_ans`, `time_taken`, `created_at`, `status`) VALUES
(1, 1, 1, 1, 20, '2020-03-07 04:04:33', 'Active'),
(2, 2, 1, 3, 20, '2020-03-07 04:04:33', 'Active'),
(3, 3, 1, 6, 22, '2020-03-07 04:04:33', 'Active'),
(4, 4, 1, 2, 20, '2020-03-07 04:04:33', 'Active'),
(5, 5, 1, 2, 12, '2020-03-07 05:32:58', 'Active'),
(12, 6, 1, 1, 13, '2020-03-07 09:11:48', 'Inactive'),
(13, 6, 1, 3, 13, '2020-03-07 09:17:37', 'Inactive'),
(14, 6, 1, 3, 13, '2020-03-07 09:17:38', 'Inactive'),
(15, 6, 1, 7, 13, '2020-03-07 09:17:38', 'Inactive'),
(16, 6, 1, 7, 13, '2020-03-07 09:19:24', 'Inactive'),
(17, 6, 1, 2, 13, '2020-03-07 09:20:28', 'Inactive'),
(18, 6, 1, 7, 13, '2020-03-07 09:32:17', 'Inactive'),
(19, 6, 1, 7, 13, '2020-03-07 09:36:13', 'Inactive'),
(20, 6, 1, 7, 13, '2020-03-07 09:36:22', 'Inactive'),
(21, 6, 1, 2, 13, '2020-03-08 08:23:35', 'Inactive'),
(35, 6, 1, 4, 20, '2020-03-08 09:47:15', 'Inactive'),
(36, 6, 1, 4, 20, '2020-03-08 09:47:16', 'Active'),
(37, 6, 4, 4, 20, '2020-03-11 07:22:44', 'Inactive'),
(42, 6, 4, 4, 20, '2020-03-11 07:34:30', 'Inactive'),
(43, 6, 4, 4, 20, '2020-03-11 07:41:22', 'Inactive'),
(44, 6, 4, 4, 20, '2020-03-11 10:14:18', 'Inactive'),
(46, 6, 4, 4, 20, '2020-03-11 10:36:59', 'Inactive'),
(51, 6, 4, 4, 20, '2020-03-11 10:40:04', 'Inactive'),
(53, 6, 4, 4, 20, '2020-03-11 10:41:47', 'Inactive'),
(54, 6, 4, 4, 20, '2020-03-11 10:43:49', 'Inactive'),
(55, 6, 4, 4, 20, '2020-03-11 10:44:11', 'Inactive'),
(56, 6, 4, 4, 20, '2020-03-11 10:46:35', 'Inactive'),
(57, 6, 4, 4, 20, '2020-03-11 10:48:58', 'Inactive'),
(58, 6, 4, 4, 20, '2020-03-11 10:51:12', 'Inactive'),
(59, 6, 4, 4, 20, '2020-03-11 10:53:13', 'Inactive'),
(60, 6, 4, 4, 20, '2020-03-11 10:54:02', 'Inactive'),
(61, 6, 4, 4, 20, '2020-03-11 10:56:42', 'Inactive'),
(62, 6, 4, 4, 20, '2020-03-11 10:58:06', 'Inactive'),
(63, 6, 4, 4, 20, '2020-03-11 11:05:01', 'Inactive'),
(64, 6, 4, 4, 20, '2020-03-11 11:09:35', 'Inactive'),
(65, 6, 4, 4, 20, '2020-03-11 11:09:35', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers_details`
--

CREATE TABLE `user_answers_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `selected_option` varchar(255) NOT NULL,
  `result` enum('1','0') NOT NULL COMMENT '1- correct, 0 - wrong',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answers_details`
--

INSERT INTO `user_answers_details` (`id`, `user_id`, `subject_id`, `question_id`, `answer_id`, `selected_option`, `result`, `created_at`, `status`) VALUES
(1, 4, 4, 4, 64, 'option_3', '1', '2020-03-06 07:03:08', 'Active'),
(2, 4, 4, 4, 64, 'option_3', '1', '2020-03-06 07:06:35', 'Active'),
(3, 4, 4, 4, 64, 'option_1', '0', '2020-03-06 07:06:46', 'Active'),
(17, 6, 1, 62, 37, 'option_1', '0', '2020-03-08 08:23:35', 'Active'),
(18, 6, 1, 62, 37, 'option_1', '0', '2020-03-08 09:47:16', 'Active'),
(19, 6, 4, 71, 46, 'option_2', '1', '2020-03-08 09:52:16', 'Active'),
(24, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 07:22:44', 'Active'),
(25, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 07:34:30', 'Active'),
(26, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 07:41:22', 'Active'),
(28, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:14:18', 'Active'),
(33, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:36:59', 'Active'),
(35, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:40:04', 'Active'),
(36, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:41:47', 'Active'),
(37, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:43:49', 'Active'),
(38, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:44:11', 'Active'),
(39, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:46:36', 'Active'),
(40, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:48:58', 'Active'),
(41, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:51:12', 'Active'),
(42, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:53:13', 'Active'),
(43, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:54:02', 'Active'),
(44, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:56:42', 'Active'),
(45, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 10:58:06', 'Active'),
(46, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 11:05:01', 'Active'),
(47, 6, 4, 71, 46, 'option_2', '1', '2020-03-11 11:09:35', 'Active'),
(48, 6, 4, 72, 48, 'option_1', '1', '2020-03-11 11:09:35', 'Active');

-- --------------------------------------------------------

--
-- Structure for view `ranking`
--
DROP TABLE IF EXISTS `ranking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ranking`  AS  select `user_answers`.`user_id` AS `user_id`,`user_answers`.`no_correct_ans` AS `no_correct_ans`,`user_answers`.`time_taken` AS `time_taken`,`user_answers`.`subject_id` AS `subject_id` from `user_answers` where `user_answers`.`status` = 'Active' order by `user_answers`.`no_correct_ans` desc,`user_answers`.`time_taken` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_setttings`
--
ALTER TABLE `subject_setttings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answers_details`
--
ALTER TABLE `user_answers_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subject_setttings`
--
ALTER TABLE `subject_setttings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user_answers_details`
--
ALTER TABLE `user_answers_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
