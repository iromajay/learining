-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2020 at 05:12 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.28-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning`
--

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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
(72, '4', '5', '5', '7', '0', 48, '2020-03-03 11:05:17', 'Active'),
(73, '8', '4', '5', '7', 'option_2', 49, '2020-03-04 04:33:57', 'Active'),
(74, '77', '65', '56', '17', 'option_3', 50, '2020-03-04 04:35:08', 'Active'),
(75, '30 ', '21', '52', '50', 'option_1', 51, '2020-03-04 05:44:41', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
(51, '<p>5 * 6</p>\r\n', 4, '2020-03-04 05:44:41', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `no_correct_ans` int(11) NOT NULL,
  `time_taken` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `status` smallint(6) NOT NULL DEFAULT '10',
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
(4, 'test1', 'c5J6bZ7Ldak1FcGd8zFbFsn3lYhp_vnw', '$2y$13$srzI5Fcu8t5cKHVGEjGPg.pWytorTmRRrMCuxaSx79owhe1ezgASm', NULL, 'test1@gmai.com', 10, 1583470856, 1583470856, 'Xfdfh6YX-nnYWugVtWbm-J66jfeVZLOu_1583470856');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `selected_option` varchar(255) NOT NULL,
  `result` enum('1','0') NOT NULL COMMENT '1- correct, 0 - wrong',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `user_id`, `subject_id`, `question_id`, `answer_id`, `selected_option`, `result`, `created_at`, `status`) VALUES
(1, 4, 4, 4, 64, 'option_3', '1', '2020-03-06 07:03:08', 'Active'),
(2, 4, 4, 4, 64, 'option_3', '1', '2020-03-06 07:06:35', 'Active'),
(3, 4, 4, 4, 64, 'option_1', '0', '2020-03-06 07:06:46', 'Active');

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
-- Indexes for table `rank`
--
ALTER TABLE `rank`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
