-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2020 at 04:51 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.27-6+ubuntu18.04.1+deb.sury.org+1

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
  `text` varchar(255) NOT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT '0',
  `question_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `text`, `correct`, `question_id`, `created_date`) VALUES
(1, 'Energy', 1, 7, '2020-02-17 06:31:10'),
(2, 'Gas', 0, 7, '2020-02-17 06:31:10'),
(3, 'Liquid', 0, 7, '2020-02-17 06:31:10'),
(4, 'Solid', 0, 7, '2020-02-17 06:31:10'),
(5, 'Energy', 1, 8, '2020-02-17 06:34:11'),
(6, 'Gas', 0, 8, '2020-02-17 06:34:11'),
(7, 'Liquid', 0, 8, '2020-02-17 06:34:11'),
(8, 'Solid', 0, 8, '2020-02-17 06:34:11'),
(9, 'Energy', 0, 9, '2020-02-17 06:39:28'),
(10, 'Gas', 0, 9, '2020-02-17 06:39:28'),
(11, 'Liquid', 0, 9, '2020-02-17 06:39:28'),
(12, 'Solid', 0, 9, '2020-02-17 06:39:28'),
(13, 'asd', 1, 10, '2020-02-19 08:50:42'),
(14, 'zxc', 0, 10, '2020-02-19 08:50:42'),
(15, '2', 0, 11, '2020-02-19 08:57:13'),
(16, '3', 0, 11, '2020-02-19 08:57:13'),
(17, 'as', 0, 12, '2020-02-19 08:58:43'),
(18, 'fgh', 0, 12, '2020-02-19 08:58:43'),
(19, 'as', 0, 13, '2020-02-19 08:59:56'),
(20, 'fgh', 0, 13, '2020-02-19 08:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `text` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `text`, `subject_id`, `created_date`) VALUES
(9, '<p>What is &nbsp;heat?</p>', 1, '2020-02-17 06:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'Physics'),
(2, 'Chemistry'),
(3, 'Biology'),
(4, 'Mathematics');

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
(1, 'Admin', 'PyU-ogV6ci6sJFXv4enI7mKr2njcudes', '$2y$13$hmkQ90lZHabO85oc7ets7.k/5Lb83GgNvKMa3qSkXiOM3jd7a0KWm', NULL, 'admin@gmail.com', 10, 1581750005, 1581750005, 'WaMSGbxcIo_oIMfSlVrFwiLZDk2OpIXt_1581750005'),
(2, 'Ram', 'RINAjMnuBXlojf3_plg00YsWWyZBkbeT', '$2y$13$Q0aimtdB1qbwQ819io669eInKP3vIhIHXnRqMmRF12IHffzV0XEKq', NULL, 'ram@gmail.com', 10, 1581751021, 1581751021, '_GWMgVjh3uQenVo-0Wn15TTSZZEmnv4K_1581751021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
