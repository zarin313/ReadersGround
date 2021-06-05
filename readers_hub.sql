-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 06:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readers hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `pid`, `content`, `user`) VALUES
(39, 8, 'this one is my favorite', 'zaima6'),
(42, 9, 'hey', 'oroni12'),
(46, 11, 'wow', 'oroni12'),
(47, 10, 'nice one', 'oroni12'),
(48, 8, 'hey', 'oroni12'),
(54, 9, 'wow', 'zaima6'),
(55, 12, 'good one', 'oroni12'),
(56, 9, 'good', 'oroni12'),
(57, 12, 'good', 'zarin36'),
(58, 8, 'nice', 'nawaf14'),
(59, 11, 'devastating', 'happy23'),
(60, 11, 'best', 'oroni12');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-23 19:59:53.209387'),
(2, 'auth', '0001_initial', '2021-05-23 20:00:16.128155'),
(3, 'admin', '0001_initial', '2021-05-23 20:00:20.932399'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-23 20:00:21.175421'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-23 20:00:21.257968'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-23 20:00:22.537236'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-23 20:00:24.964077'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-23 20:00:25.592188'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-23 20:00:25.649884'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-23 20:00:27.555544'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-23 20:00:27.778503'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-23 20:00:28.208426'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-23 20:00:30.161194'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-23 20:00:30.992410'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-23 20:00:31.587535'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-23 20:00:31.795419'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-23 20:00:33.250697'),
(18, 'sessions', '0001_initial', '2021-05-23 20:00:37.053816');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('06rmv17zyx9szji43uaym0oodkphxmuc', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lowG3:l1XOsCtajW1oEvul5zeg-mjA4C4w7I067wu_ioCnh5I', '2021-06-17 22:56:11.731765'),
('23kjxdnbtujigd5rotl72li3tf223pln', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lpBdC:-3Ck6OG3l6RDu0yc0rF_E2-HnY5-xOoMh7QtuQaMDo0', '2021-06-18 15:21:06.032773'),
('44lfbl5r32syeviawn5euc1jut6keqqh', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1low1Y:Ql11DMVwRyAfegcDLfd1Wa48CqXWY9A8jaN9-1gIuJM', '2021-06-17 22:41:12.126833'),
('4r83vxftlybodj9gaa9qpu8a4lin8w7e', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lpCBC:yafYWJcQicsVflfe04asQce1SsKd_yuR94wA3mzl_DQ', '2021-06-18 15:56:14.036031'),
('5jbuvf67xwri506do8emrppjbbaki065', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lpBef:p8zIDn5CAX-OhQJl0hg8nsDL9HILt-Zoi4qBUywau2Q', '2021-06-18 15:22:37.300877'),
('7dvbm43dmw20tic3r65a78mz6l0z70aq', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1low4C:_tVVvR6IkpE5xyoVxOB181G2qrhO0mIyusP4GFkkYXQ', '2021-06-17 22:43:56.882118'),
('9abdovhkg3rqpcm01510m508uh1k3jui', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1low62:zt-pyI0mowjzMX60fJzBBibb-Inbcnl-50GjOMzoasQ', '2021-06-17 22:45:50.352645'),
('bu8d6hscj65l0bhg95aksnrj0j8o5q6s', 'e30:1lpC49:D7EBSoWZCu4v3Ye0oiaHYa6Y3hbh9crW-VU232Dpw34', '2021-06-18 15:48:57.971162'),
('f2fmrjmgg9yr8ghb98iob79yqiz5isa5', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1low9h:ODqNUfMfDalnB9EjbpDF6ZmUQ13yz8OP_nsrOCom5dM', '2021-06-17 22:49:37.180353'),
('f6o21cojxl4brv7ua77382otqbbvfvye', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1low90:i42GbeLN1Ag5FG_pcs7QOgNEifMP4BKNhFMc-v57Efw', '2021-06-17 22:48:54.299781'),
('flspe3n73vafpys3uh5s20wuh7do53lf', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lowBh:oENF5KP7iu4ft61bzGcv2T7HgBRl3BwxFcUY5rpooJw', '2021-06-17 22:51:41.761289'),
('ftgcd2tbhvqnfp0sgd8expji80so3jpo', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lpCIg:Jjx2iDm4N0nG_Qgaidtaz_UuNQFrvNk6z4vgaiPGcYw', '2021-06-18 16:03:58.495627'),
('htxu2w66au5d868yx2j64ql62z82zphy', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lowCk:8irtywWhgnZlDqaOf_oUyjKkfqBeQc9WKRQiq7GnEL8', '2021-06-17 22:52:46.738901'),
('igmoftv80zkklpxxxgzcmoqxjgnfhw5v', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lovvV:b8vX_zEXrr6JbwbDUTQUBwoH-inT2nTv9tBfP1GlM0s', '2021-06-17 22:34:57.661585'),
('kfn81k59b40ak8mf5x3pbpibgsy9a7uz', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lpBff:L5eSkJkDpy2qEparmsHwX35Flld_HIM1yostxHuS8CI', '2021-06-18 15:23:39.940573'),
('tahntk0lh8xb0rvy4gcijptqwluditmp', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lpBaD:PgxI8gIu2bSI45NeKSHUrqFUuQlC7m0ZWx0wck5q0Ww', '2021-06-18 15:18:01.995776'),
('wqzvtaxgifa3r0ikecdzx262ch7w4cq7', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lowEJ:xKHYMBFUf4VFrvfNEfx2lwCReH2XCd2KWnDwD8jLA_s', '2021-06-17 22:54:23.618804'),
('wyxal8f4k85f6jele63atzm8efkx45sf', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1lpCMN:5y3BsB8o1irbPcA1oi0oWiYKFvCj2WJMp5nYcDPgPsU', '2021-06-18 16:07:47.720797'),
('x0n3xhxqdm606m81oujqf6c4j5wutea3', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1low3O:oSIy2x1DFhkiFAKZrCaYaaaCltjeuEZHak-f3T6ksaA', '2021-06-17 22:43:06.257412'),
('z0dyzj21zzh1bu88q3v768w9dn840nca', 'eyJ1c2VybmFtZSI6InphaW1hNiJ9:1low7r:y0kwUB39L4o6w-p08hNqJWZ9O3F05Ky5qJcDeqNOa34', '2021-06-17 22:47:43.667754');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `bname` varchar(40) DEFAULT NULL,
  `writer` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `review` varchar(500) NOT NULL,
  `upldate` date NOT NULL,
  `imgpath` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `uname`, `bname`, `writer`, `genre`, `rate`, `review`, `upldate`, `imgpath`) VALUES
(8, 'oroni12', '', 'Humayun Ahmed', 'Action and Adventure', 'Average :)', 'its a really good book. Humayun Ahmed is always my favorite. most of his books don\'t have a prefect ending. but it has. thats why I loved it more and mre', '2021-06-04', '/media/Aj%20ami%20kothao%20jabo%20na%20by%20Humayun%20Ahmed.jpg'),
(9, 'oroni12', 'Salvation of Saint', 'Keigo Higashino', 'Detective and Mystery', 'Star :D', 'One of the detective Galleleo books. its quite thrilling. You never know what comes next. one of the best book I have ever read.', '2021-06-04', '/media/Screenshot%202021-06-04%20022302.png'),
(10, 'oroni12', 'Devotion of Suspect X', 'Keigo Higashino', 'Detective and Mystery', 'Star :D', 'I have become fan of Keigo Higashino after reading two of his books. Best thriller story it is. though I found the ending quite dramatic.', '2021-06-04', '/media/Screenshot%202021-06-04%20022338.png'),
(11, 'zaima6', 'The Kite Runner', 'Khaled Hossaini', 'Action and Adventure', 'Star :D', 'A gripping and emotional story of betrayal and redemption, The Kite Runner had me thrilled and moved, both at the same time. It tells the story of Amir and Hassan, the closest of friends, as good as brothers, and also experts in the art of kite flying. The two young boys live in Kabul, the capital of Afghanistan, and this year they are going to try harder than ever to win the local kite-fighting tournament—a popular Afghan pastime, and this is Amir\'s one hope of winning his father\'s love.', '2021-06-04', '/media/Screenshot%202021-06-04%20022902.png'),
(12, 'zaima6', 'Harry Potter and the prisoner of Azkaban', 'J K Rowling', 'Fantasy', 'Star :D', 'My favorite among all the Harry Potter books. I shows the value of friendship. It shows how a close person can betray without giving any clue.', '2021-06-04', '/media/Screenshot%202021-06-04%20022952.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uname` varchar(50) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(400) NOT NULL,
  `reviews` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uname`, `name`, `email`, `password`, `reviews`) VALUES
('happy23', 'happy', 'zaima.tasmia@gmail.com', 'pbkdf2_sha256$260000$LxDnTM5ZQ1uq7dP9phG8rc$riP1qLPaPQs5UYuJI/xqFGy2/llTrY3BAbi2pF8sh14=', 0),
('nawaf14', 'nawaf14', 'zaima.tasmia@gmail.com', 'pbkdf2_sha256$260000$VFGUyS3uQO10bIrTpMTkoZ$6PR2SEvI30bfwtHKbGnqJhHRhYhLvocDBH8r/EpN9HY=', 0),
('oroni1', 'oroni1', 'zarinraiyanoroni@gmail.com', 'pbkdf2_sha256$260000$2Ni2yMBrztGu3seGWxM7e0$fcCjysKHkhB0qLemao34iAywDmHezdTpJxrmSmrjtw4=', 0),
('oroni12', 'zarin oroni', 'zarinraiyanoroni@gmail.com', 'pbkdf2_sha256$260000$sTCFJ17WBV0tbtPtAMbzpl$TFHzlx5g2HXuWvjxlFl5Mo8bhTUEe3POVuxCvBYOomI=', 0),
('zaima6', 'zaima', 'zarinraiyanoroni@gmail.com', 'pbkdf2_sha256$260000$mF2jxTTns0BZZK3bkO6nTU$wb8iNN5uyrb99XRs7Mud2PN9QlOuwfeZ+5nmNyZDA8c=', 0),
('zarin36', 'oroni', 'zaima.tasmia@gmail.com', 'pbkdf2_sha256$260000$Vhr49yaK4SwnIOBwEWNw0n$foj2lvI+tFbATU9Fu28kXipL+YwNMxOPRNfY5L9YvXE=', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
