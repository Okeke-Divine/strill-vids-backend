-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 11:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strill_vids`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add genre', 7, 'add_genre'),
(26, 'Can change genre', 7, 'change_genre'),
(27, 'Can delete genre', 7, 'delete_genre'),
(28, 'Can view genre', 7, 'view_genre'),
(29, 'Can add country', 8, 'add_country'),
(30, 'Can change country', 8, 'change_country'),
(31, 'Can delete country', 8, 'delete_country'),
(32, 'Can view country', 8, 'view_country');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$yzxKwe1dg41BJsw0NJqIWK$4iF956gcGChsHopmdt/gDdZW3F7LhRBBgQoCqW2Q9t4=', '2023-10-03 17:07:36.625939', 1, 'Admin', '', '', 'okekedivine.skiy1@gmail.com', 1, 1, '2023-10-01 17:32:06.491660');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `cu_id` int(11) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `country_iso_code` varchar(5) NOT NULL,
  `country_flag_url` varchar(255) NOT NULL,
  `nationality` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_iso_code`, `country_flag_url`, `nationality`) VALUES
(1, 'Afghanistan', 'AF', '', ''),
(2, 'Åland Islands', 'AX', '', ''),
(3, 'Albania', 'AL', '', ''),
(4, 'Algeria', 'DZ', '', ''),
(5, 'American Samoa', 'AS', '', ''),
(6, 'AndorrA', 'AD', '', ''),
(7, 'Angola', 'AO', '', ''),
(8, 'Anguilla', 'AI', '', ''),
(9, 'Antarctica', 'AQ', '', ''),
(10, 'Antigua and Barbuda', 'AG', '', ''),
(11, 'Argentina', 'AR', '', ''),
(12, 'Armenia', 'AM', '', ''),
(13, 'Aruba', 'AW', '', ''),
(14, 'Australia', 'AU', '', ''),
(15, 'Austria', 'AT', '', ''),
(16, 'Azerbaijan', 'AZ', '', ''),
(17, 'Bahamas', 'BS', '', ''),
(18, 'Bahrain', 'BH', '', ''),
(19, 'Bangladesh', 'BD', '', ''),
(20, 'Barbados', 'BB', '', ''),
(21, 'Belarus', 'BY', '', ''),
(22, 'Belgium', 'BE', '', ''),
(23, 'Belize', 'BZ', '', ''),
(24, 'Benin', 'BJ', '', ''),
(25, 'Bermuda', 'BM', '', ''),
(26, 'Bhutan', 'BT', '', ''),
(27, 'Bolivia', 'BO', '', ''),
(28, 'Bosnia and Herzegovina', 'BA', '', ''),
(29, 'Botswana', 'BW', '', ''),
(30, 'Bouvet Island', 'BV', '', ''),
(31, 'Brazil', 'BR', '', ''),
(32, 'British Indian Ocean Territory', 'IO', '', ''),
(33, 'Brunei Darussalam', 'BN', '', ''),
(34, 'Bulgaria', 'BG', '', ''),
(35, 'Burkina Faso', 'BF', '', ''),
(36, 'Burundi', 'BI', '', ''),
(37, 'Cambodia', 'KH', '', ''),
(38, 'Cameroon', 'CM', '', ''),
(39, 'Canada', 'CA', '', ''),
(40, 'Cape Verde', 'CV', '', ''),
(41, 'Cayman Islands', 'KY', '', ''),
(42, 'Central African Republic', 'CF', '', ''),
(43, 'Chad', 'TD', '', ''),
(44, 'Chile', 'CL', '', ''),
(45, 'China', 'CN', '', ''),
(46, 'Christmas Island', 'CX', '', ''),
(47, 'Cocos (Keeling) Islands', 'CC', '', ''),
(48, 'Colombia', 'CO', '', ''),
(49, 'Comoros', 'KM', '', ''),
(50, 'Congo', 'CG', '', ''),
(51, 'Congo, The Democratic Republic of the', 'CD', '', ''),
(52, 'Cook Islands', 'CK', '', ''),
(53, 'Costa Rica', 'CR', '', ''),
(54, 'Croatia', 'HR', '', ''),
(55, 'Cuba', 'CU', '', ''),
(56, 'Cyprus', 'CY', '', ''),
(57, 'Czech Republic', 'CZ', '', ''),
(58, 'Denmark', 'DK', '', ''),
(59, 'Djibouti', 'DJ', '', ''),
(60, 'Dominica', 'DM', '', ''),
(61, 'Dominican Republic', 'DO', '', ''),
(62, 'Ecuador', 'EC', '', ''),
(63, 'Egypt', 'EG', '', ''),
(64, 'El Salvador', 'SV', '', ''),
(65, 'Equatorial Guinea', 'GQ', '', ''),
(66, 'Eritrea', 'ER', '', ''),
(67, 'Estonia', 'EE', '', ''),
(68, 'Ethiopia', 'ET', '', ''),
(69, 'Falkland Islands (Malvinas)', 'FK', '', ''),
(70, 'Faroe Islands', 'FO', '', ''),
(71, 'Fiji', 'FJ', '', ''),
(72, 'Finland', 'FI', '', ''),
(73, 'France', 'FR', '', ''),
(74, 'French Guiana', 'GF', '', ''),
(75, 'French Polynesia', 'PF', '', ''),
(76, 'French Southern Territories', 'TF', '', ''),
(77, 'Gabon', 'GA', '', ''),
(78, 'Gambia', 'GM', '', ''),
(79, 'Georgia', 'GE', '', ''),
(80, 'Germany', 'DE', '', ''),
(81, 'Ghana', 'GH', '', ''),
(82, 'Gibraltar', 'GI', '', ''),
(83, 'Greece', 'GR', '', ''),
(84, 'Greenland', 'GL', '', ''),
(85, 'Grenada', 'GD', '', ''),
(86, 'Guadeloupe', 'GP', '', ''),
(87, 'Guam', 'GU', '', ''),
(88, 'Guatemala', 'GT', '', ''),
(89, 'Guernsey', 'GG', '', ''),
(90, 'Guinea', 'GN', '', ''),
(91, 'Guinea-Bissau', 'GW', '', ''),
(92, 'Guyana', 'GY', '', ''),
(93, 'Haiti', 'HT', '', ''),
(94, 'Heard Island and Mcdonald Islands', 'HM', '', ''),
(95, 'Holy See (Vatican City State)', 'VA', '', ''),
(96, 'Honduras', 'HN', '', ''),
(97, 'Hong Kong', 'HK', '', ''),
(98, 'Hungary', 'HU', '', ''),
(99, 'Iceland', 'IS', '', ''),
(100, 'India', 'IN', '', ''),
(101, 'Indonesia', 'ID', '', ''),
(102, 'Iran, Islamic Republic Of', 'IR', '', ''),
(103, 'Iraq', 'IQ', '', ''),
(104, 'Ireland', 'IE', '', ''),
(105, 'Isle of Man', 'IM', '', ''),
(106, 'Israel', 'IL', '', ''),
(107, 'Italy', 'IT', '', ''),
(108, 'Jamaica', 'JM', '', ''),
(109, 'Japan', 'JP', '', ''),
(110, 'Jersey', 'JE', '', ''),
(111, 'Jordan', 'JO', '', ''),
(112, 'Kazakhstan', 'KZ', '', ''),
(113, 'Kenya', 'KE', '', ''),
(114, 'Kiribati', 'KI', '', ''),
(115, 'Korea, Republic of', 'KR', '', ''),
(116, 'Kuwait', 'KW', '', ''),
(117, 'Kyrgyzstan', 'KG', '', ''),
(118, 'Latvia', 'LV', '', ''),
(119, 'Lebanon', 'LB', '', ''),
(120, 'Lesotho', 'LS', '', ''),
(121, 'Liberia', 'LR', '', ''),
(122, 'Libyan Arab Jamahiriya', 'LY', '', ''),
(123, 'Liechtenstein', 'LI', '', ''),
(124, 'Lithuania', 'LT', '', ''),
(125, 'Luxembourg', 'LU', '', ''),
(126, 'Macao', 'MO', '', ''),
(127, 'Macedonia, The Former Yugoslav Republic of', 'MK', '', ''),
(128, 'Madagascar', 'MG', '', ''),
(129, 'Malawi', 'MW', '', ''),
(130, 'Malaysia', 'MY', '', ''),
(131, 'Maldives', 'MV', '', ''),
(132, 'Mali', 'ML', '', ''),
(133, 'Malta', 'MT', '', ''),
(134, 'Marshall Islands', 'MH', '', ''),
(135, 'Martinique', 'MQ', '', ''),
(136, 'Mauritania', 'MR', '', ''),
(137, 'Mauritius', 'MU', '', ''),
(138, 'Mayotte', 'YT', '', ''),
(139, 'Mexico', 'MX', '', ''),
(140, 'Micronesia, Federated States of', 'FM', '', ''),
(141, 'Moldova, Republic of', 'MD', '', ''),
(142, 'Monaco', 'MC', '', ''),
(143, 'Mongolia', 'MN', '', ''),
(144, 'Montserrat', 'MS', '', ''),
(145, 'Morocco', 'MA', '', ''),
(146, 'Mozambique', 'MZ', '', ''),
(147, 'Myanmar', 'MM', '', ''),
(148, 'Namibia', 'NA', '', ''),
(149, 'Nauru', 'NR', '', ''),
(150, 'Nepal', 'NP', '', ''),
(151, 'Netherlands', 'NL', '', ''),
(152, 'Netherlands Antilles', 'AN', '', ''),
(153, 'New Caledonia', 'NC', '', ''),
(154, 'New Zealand', 'NZ', '', ''),
(155, 'Nicaragua', 'NI', '', ''),
(156, 'Niger', 'NE', '', ''),
(157, 'Nigeria', 'NG', '', ''),
(158, 'Niue', 'NU', '', ''),
(159, 'Norfolk Island', 'NF', '', ''),
(160, 'Northern Mariana Islands', 'MP', '', ''),
(161, 'Norway', 'NO', '', ''),
(162, 'Oman', 'OM', '', ''),
(163, 'Pakistan', 'PK', '', ''),
(164, 'Palau', 'PW', '', ''),
(165, 'Palestinian Territory, Occupied', 'PS', '', ''),
(166, 'Panama', 'PA', '', ''),
(167, 'Papua New Guinea', 'PG', '', ''),
(168, 'Paraguay', 'PY', '', ''),
(169, 'Peru', 'PE', '', ''),
(170, 'Philippines', 'PH', '', ''),
(171, 'Pitcairn', 'PN', '', ''),
(172, 'Poland', 'PL', '', ''),
(173, 'Portugal', 'PT', '', ''),
(174, 'Puerto Rico', 'PR', '', ''),
(175, 'Qatar', 'QA', '', ''),
(176, 'Reunion', 'RE', '', ''),
(177, 'Romania', 'RO', '', ''),
(178, 'Russian Federation', 'RU', '', ''),
(179, 'RWANDA', 'RW', '', ''),
(180, 'Saint Helena', 'SH', '', ''),
(181, 'Saint Kitts and Nevis', 'KN', '', ''),
(182, 'Saint Lucia', 'LC', '', ''),
(183, 'Saint Pierre and Miquelon', 'PM', '', ''),
(184, 'Saint Vincent and the Grenadines', 'VC', '', ''),
(185, 'Samoa', 'WS', '', ''),
(186, 'San Marino', 'SM', '', ''),
(187, 'Sao Tome and Principe', 'ST', '', ''),
(188, 'Saudi Arabia', 'SA', '', ''),
(189, 'Senegal', 'SN', '', ''),
(190, 'Serbia and Montenegro', 'CS', '', ''),
(191, 'Seychelles', 'SC', '', ''),
(192, 'Sierra Leone', 'SL', '', ''),
(193, 'Singapore', 'SG', '', ''),
(194, 'Slovakia', 'SK', '', ''),
(195, 'Slovenia', 'SI', '', ''),
(196, 'Solomon Islands', 'SB', '', ''),
(197, 'Somalia', 'SO', '', ''),
(198, 'South Africa', 'ZA', '', ''),
(199, 'South Georgia and the South Sandwich Islands', 'GS', '', ''),
(200, 'Spain', 'ES', '', ''),
(201, 'Sri Lanka', 'LK', '', ''),
(202, 'Sudan', 'SD', '', ''),
(203, 'Suriname', 'SR', '', ''),
(204, 'Svalbard and Jan Mayen', 'SJ', '', ''),
(205, 'Swaziland', 'SZ', '', ''),
(206, 'Sweden', 'SE', '', ''),
(207, 'Switzerland', 'CH', '', ''),
(208, 'Syrian Arab Republic', 'SY', '', ''),
(209, 'Taiwan, Province of China', 'TW', '', ''),
(210, 'Tajikistan', 'TJ', '', ''),
(211, 'Tanzania, United Republic of', 'TZ', '', ''),
(212, 'Thailand', 'TH', '', ''),
(213, 'Timor-Leste', 'TL', '', ''),
(214, 'Togo', 'TG', '', ''),
(215, 'Tokelau', 'TK', '', ''),
(216, 'Tonga', 'TO', '', ''),
(217, 'Trinidad and Tobago', 'TT', '', ''),
(218, 'Tunisia', 'TN', '', ''),
(219, 'Turkey', 'TR', '', ''),
(220, 'Turkmenistan', 'TM', '', ''),
(221, 'Turks and Caicos Islands', 'TC', '', ''),
(222, 'Tuvalu', 'TV', '', ''),
(223, 'Uganda', 'UG', '', ''),
(224, 'Ukraine', 'UA', '', ''),
(225, 'United Arab Emirates', 'AE', '', ''),
(226, 'United Kingdom', 'GB', '', ''),
(227, 'United States', 'US', '', ''),
(228, 'United States Minor Outlying Islands', 'UM', '', ''),
(229, 'Uruguay', 'UY', '', ''),
(230, 'Uzbekistan', 'UZ', '', ''),
(231, 'Vanuatu', 'VU', '', ''),
(232, 'Venezuela', 'VE', '', ''),
(233, 'Viet Nam', 'VN', '', ''),
(234, 'Virgin Islands, British', 'VG', '', ''),
(235, 'Virgin Islands, U.S.', 'VI', '', ''),
(236, 'Wallis and Futuna', 'WF', '', ''),
(237, 'Western Sahara', 'EH', '', ''),
(238, 'Yemen', 'YE', '', ''),
(239, 'Zambia', 'ZM', '', ''),
(240, 'Zimbabwe', 'ZN', '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'backend', 'country'),
(7, 'backend', 'genre'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-01 17:29:47.682815'),
(2, 'auth', '0001_initial', '2023-10-01 17:30:05.962715'),
(3, 'admin', '0001_initial', '2023-10-01 17:30:13.522570'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-01 17:30:13.930142'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-01 17:30:14.132559'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-01 17:30:17.308881'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-01 17:30:21.173958'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-01 17:30:21.522723'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-01 17:30:21.632815'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-01 17:30:23.302643'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-01 17:30:23.645309'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-01 17:30:23.782596'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-01 17:30:24.339755'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-01 17:30:25.085986'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-01 17:30:25.338262'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-01 17:30:25.438634'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-01 17:30:25.772761'),
(18, 'sessions', '0001_initial', '2023-10-01 17:30:27.972907');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4eni7ibtbzbv2pry3vof6mctgozu0akx', '.eJxVjEEOwiAURO_C2hCBwgeX7j0D-fBBqgaS0q6Md5cmXehuMu_NvJnHbS1-62nxM7ELE-z02wWMz1R3QA-s98Zjq-syB74r_KCd3xql1_Vw_w4K9jLWYI1RSqIwbkRACs4CyDwJcCMaUFmAIohWk0aylHVCo5yGJKezBfb5Aq93NsI:1qnirv:3WRNhnDPLyXVVXMFAT-JdeSzdLPOiyhY2eo_DVbc6zA', '2023-10-17 17:07:35.818292'),
('6lzk58f688rt6jemqawt51m6dilzx2bd', '.eJxVjEEOwiAURO_C2hCBwgeX7j0D-fBBqgaS0q6Md5cmXehuMu_NvJnHbS1-62nxM7ELE-z02wWMz1R3QA-s98Zjq-syB74r_KCd3xql1_Vw_w4K9jLWYI1RSqIwbkRACs4CyDwJcCMaUFmAIohWk0aylHVCo5yGJKezBfb5Aq93NsI:1qnirw:XReBn8JShLpcpHMEUSLMYUvguF5LoFnGO1-lCW4v2w4', '2023-10-17 17:07:36.983719');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animated'),
(4, 'Biography'),
(5, 'Comedy'),
(6, 'Crime'),
(7, 'Dance'),
(8, 'Disaster'),
(9, 'Documentary'),
(10, 'Drama'),
(11, 'Erotic'),
(12, 'Family'),
(13, 'Fantasy'),
(14, 'Found Footage'),
(15, 'Historical'),
(16, 'Horror'),
(17, 'Independent'),
(18, 'Legal'),
(19, 'Live Action'),
(20, 'Martial Arts'),
(21, 'Musical'),
(22, 'Mystery'),
(23, 'Noir'),
(24, 'Performance'),
(25, 'Political'),
(26, 'Romance'),
(27, 'Satire'),
(28, 'Science Fiction'),
(29, 'Short'),
(30, 'Silent'),
(31, 'Slasher'),
(32, 'Sports'),
(33, 'Spy'),
(34, 'Superhero'),
(35, 'Supernatural'),
(36, 'Suspense'),
(37, 'Teen'),
(38, 'Thriller'),
(39, 'War'),
(40, 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `keyword_id` int(11) NOT NULL,
  `keyword_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`keyword_id`, `keyword_name`) VALUES
(1, 'movies'),
(2, 'shorts'),
(3, 'comedy'),
(4, 'documentations'),
(5, 'war'),
(6, 'violence'),
(7, 'marvels'),
(8, 'kayks'),
(9, 'dreamstudio'),
(10, 'animations'),
(11, 'kids'),
(12, '2023'),
(13, 'scary'),
(14, 'horror'),
(15, 'peace'),
(16, 'not for children'),
(17, 'holloywood'),
(18, 'bollywood'),
(19, 'nollywood'),
(20, 'random');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL,
  `language_code` varchar(10) NOT NULL,
  `language_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language_id`, `language_code`, `language_name`) VALUES
(1, 'aa', 'Afar'),
(2, 'ab', 'Abkhazian'),
(3, 'ae', 'Avestan'),
(4, 'af', 'Afrikaans'),
(5, 'ak', 'Akan'),
(6, 'am', 'Amharic'),
(7, 'an', 'Aragonese'),
(8, 'ar', 'Arabic'),
(9, 'as', 'Assamese'),
(10, 'av', 'Avaric'),
(11, 'ay', 'Aymara'),
(12, 'az', 'Azerbaijani'),
(13, 'ba', 'Bashkir'),
(14, 'be', 'Belarusian'),
(15, 'bg', 'Bulgarian'),
(16, 'bh', 'Bihari languages'),
(17, 'bi', 'Bislama'),
(18, 'bm', 'Bambara'),
(19, 'bn', 'Bengali'),
(20, 'bo', 'Tibetan'),
(21, 'br', 'Breton'),
(22, 'bs', 'Bosnian'),
(23, 'ca', 'Catalan; Valencian'),
(24, 'ce', 'Chechen'),
(25, 'ch', 'Chamorro'),
(26, 'co', 'Corsican'),
(27, 'cr', 'Cree'),
(28, 'cs', 'Czech'),
(29, 'cu', 'Church Slavic; Old Slavonic; Church Slavonic; Old '),
(30, 'cv', 'Chuvash'),
(31, 'cy', 'Welsh'),
(32, 'da', 'Danish'),
(33, 'de', 'German'),
(34, 'dv', 'Divehi; Dhivehi; Maldivian'),
(35, 'dz', 'Dzongkha'),
(36, 'ee', 'Ewe'),
(37, 'el', 'Greek, Modern (1453-)'),
(38, 'en', 'English'),
(39, 'eo', 'Esperanto'),
(40, 'es', 'Spanish; Castilian'),
(41, 'et', 'Estonian'),
(42, 'eu', 'Basque'),
(43, 'fa', 'Persian'),
(44, 'ff', 'Fulah'),
(45, 'fi', 'Finnish'),
(46, 'fj', 'Fijian'),
(47, 'fo', 'Faroese'),
(48, 'fr', 'French'),
(49, 'fy', 'Western Frisian'),
(50, 'ga', 'Irish'),
(51, 'gd', 'Gaelic; Scottish Gaelic'),
(52, 'gl', 'Galician'),
(53, 'gn', 'Guarani'),
(54, 'gu', 'Gujarati'),
(55, 'gv', 'Manx'),
(56, 'ha', 'Hausa'),
(57, 'he', 'Hebrew'),
(58, 'hi', 'Hindi'),
(59, 'ho', 'Hiri Motu'),
(60, 'hr', 'Croatian'),
(61, 'ht', 'Haitian; Haitian Creole'),
(62, 'hu', 'Hungarian'),
(63, 'hy', 'Armenian'),
(64, 'hz', 'Herero'),
(65, 'ia', 'Interlingua (International Auxiliary Language Asso'),
(66, 'id', 'Indonesian'),
(67, 'ie', 'Interlingue; Occidental'),
(68, 'ig', 'Igbo'),
(69, 'ii', 'Sichuan Yi; Nuosu'),
(70, 'ik', 'Inupiaq'),
(71, 'io', 'Ido'),
(72, 'is', 'Icelandic'),
(73, 'it', 'Italian'),
(74, 'iu', 'Inuktitut'),
(75, 'ja', 'Japanese'),
(76, 'jv', 'Javanese'),
(77, 'ka', 'Georgian'),
(78, 'kg', 'Kongo'),
(79, 'ki', 'Kikuyu; Gikuyu'),
(80, 'kj', 'Kuanyama; Kwanyama'),
(81, 'kk', 'Kazakh'),
(82, 'kl', 'Kalaallisut; Greenlandic'),
(83, 'km', 'Central Khmer'),
(84, 'kn', 'Kannada'),
(85, 'ko', 'Korean'),
(86, 'kr', 'Kanuri'),
(87, 'ks', 'Kashmiri'),
(88, 'ku', 'Kurdish'),
(89, 'kv', 'Komi'),
(90, 'kw', 'Cornish'),
(91, 'ky', 'Kirghiz; Kyrgyz'),
(92, 'la', 'Latin'),
(93, 'lb', 'Luxembourgish; Letzeburgesch'),
(94, 'lg', 'Ganda'),
(95, 'li', 'Limburgan; Limburger; Limburgish'),
(96, 'ln', 'Lingala'),
(97, 'lo', 'Lao'),
(98, 'lt', 'Lithuanian'),
(99, 'lu', 'Luba-Katanga'),
(100, 'lv', 'Latvian'),
(101, 'mg', 'Malagasy'),
(102, 'mh', 'Marshallese'),
(103, 'mi', 'Maori'),
(104, 'mk', 'Macedonian'),
(105, 'ml', 'Malayalam'),
(106, 'mn', 'Mongolian'),
(107, 'mr', 'Marathi'),
(108, 'ms', 'Malay'),
(109, 'mt', 'Maltese'),
(110, 'my', 'Burmese'),
(111, 'na', 'Nauru'),
(112, 'nb', 'Bokmål, Norwegian; Norwegian Bokmål'),
(113, 'nd', 'Ndebele, North; North Ndebele'),
(114, 'ne', 'Nepali'),
(115, 'ng', 'Ndonga'),
(116, 'nl', 'Dutch; Flemish'),
(117, 'nn', 'Norwegian Nynorsk; Nynorsk, Norwegian'),
(118, 'no', 'Norwegian'),
(119, 'nr', 'Ndebele, South; South Ndebele'),
(120, 'nv', 'Navajo; Navaho'),
(121, 'ny', 'Chichewa; Chewa; Nyanja'),
(122, 'oc', 'Occitan (post 1500)'),
(123, 'oj', 'Ojibwa'),
(124, 'om', 'Oromo'),
(125, 'or', 'Oriya'),
(126, 'os', 'Ossetian; Ossetic'),
(127, 'pa', 'Panjabi; Punjabi'),
(128, 'pi', 'Pali'),
(129, 'pl', 'Polish'),
(130, 'ps', 'Pushto; Pashto'),
(131, 'pt', 'Portuguese'),
(132, 'qu', 'Quechua'),
(133, 'rm', 'Romansh'),
(134, 'rn', 'Rundi'),
(135, 'ro', 'Romanian; Moldavian; Moldovan'),
(136, 'ru', 'Russian'),
(137, 'rw', 'Kinyarwanda'),
(138, 'sa', 'Sanskrit'),
(139, 'sc', 'Sardinian'),
(140, 'sd', 'Sindhi'),
(141, 'se', 'Northern Sami'),
(142, 'sg', 'Sango'),
(143, 'si', 'Sinhala; Sinhalese'),
(144, 'sk', 'Slovak'),
(145, 'sl', 'Slovenian'),
(146, 'sm', 'Samoan'),
(147, 'sn', 'Shona'),
(148, 'so', 'Somali'),
(149, 'sq', 'Albanian'),
(150, 'sr', 'Serbian'),
(151, 'ss', 'Swati'),
(152, 'st', 'Sotho, Southern'),
(153, 'su', 'Sundanese'),
(154, 'sv', 'Swedish'),
(155, 'sw', 'Swahili'),
(156, 'ta', 'Tamil'),
(157, 'te', 'Telugu'),
(158, 'tg', 'Tajik'),
(159, 'th', 'Thai'),
(160, 'ti', 'Tigrinya'),
(161, 'tk', 'Turkmen'),
(162, 'tl', 'Tagalog'),
(163, 'tn', 'Tswana'),
(164, 'to', 'Tonga (Tonga Islands)'),
(165, 'tr', 'Turkish'),
(166, 'ts', 'Tsonga'),
(167, 'tt', 'Tatar'),
(168, 'tw', 'Twi'),
(169, 'ty', 'Tahitian'),
(170, 'ug', 'Uighur; Uyghur'),
(171, 'uk', 'Ukrainian'),
(172, 'ur', 'Urdu'),
(173, 'uz', 'Uzbek'),
(174, 've', 'Venda'),
(175, 'vi', 'Vietnamese'),
(176, 'vo', 'Volapük'),
(177, 'wa', 'Walloon'),
(178, 'wo', 'Wolof'),
(179, 'xh', 'Xhosa'),
(180, 'yi', 'Yiddish'),
(181, 'yo', 'Yoruba'),
(182, 'za', 'Zhuang; Chuang'),
(183, 'zh', 'Chinese'),
(184, 'zu', 'Zulu');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `release_date` date NOT NULL,
  `release_time` time NOT NULL,
  `release_year` int(4) NOT NULL,
  `average_rating` int(11) NOT NULL,
  `run_time` varchar(255) NOT NULL,
  `thumbnail_vertical` varchar(255) NOT NULL,
  `thumbnail_horizontal` varchar(255) NOT NULL,
  `plot` text NOT NULL,
  `movie_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `name`, `description`, `release_date`, `release_time`, `release_year`, `average_rating`, `run_time`, `thumbnail_vertical`, `thumbnail_horizontal`, `plot`, `movie_rating`) VALUES
(2, 'Akilia and the Bee', 'A girl who could spell her and went for competition dispict her struggles... Click to watch and find out more.', '2005-10-13', '11:34:56', 2005, 4, '195', '', 'http://localhost:8082/horizontal/movie-backdrop-1.jpg', '', 0),
(3, 'Home Alone', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis, aliquam.\r\n', '2009-10-13', '11:34:56', 2009, 4, '48', '', 'http://localhost:8082/horizontal/movie-backdrop-2.jpg', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

CREATE TABLE `movie_cast` (
  `mcast_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `character_name` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_company`
--

CREATE TABLE `movie_company` (
  `mc_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_country`
--

CREATE TABLE `movie_country` (
  `mc_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_country`
--

INSERT INTO `movie_country` (`mc_id`, `movie_id`, `country_id`) VALUES
(1, 2, 157);

-- --------------------------------------------------------

--
-- Table structure for table `movie_director`
--

CREATE TABLE `movie_director` (
  `md_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `mg_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_keywords`
--

CREATE TABLE `movie_keywords` (
  `mk_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_language`
--

CREATE TABLE `movie_language` (
  `ml_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_language`
--

INSERT INTO `movie_language` (`ml_id`, `movie_id`, `language_id`) VALUES
(1, 3, 38);

-- --------------------------------------------------------

--
-- Table structure for table `movie_mirror_link`
--

CREATE TABLE `movie_mirror_link` (
  `mml_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `site` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_star_rating`
--

CREATE TABLE `movie_star_rating` (
  `mr_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `number_of_stars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production_companies`
--

CREATE TABLE `production_companies` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture_url` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `coins` int(11) DEFAULT 0,
  `last_login` date DEFAULT NULL,
  `ip` varchar(20) NOT NULL,
  `locked` enum('0','1') DEFAULT '0'
) ;

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
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`cu_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

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
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`,`genre_name`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`keyword_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD PRIMARY KEY (`mcast_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `movie_company`
--
ALTER TABLE `movie_company`
  ADD PRIMARY KEY (`mc_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_country`
--
ALTER TABLE `movie_country`
  ADD PRIMARY KEY (`mc_id`) USING BTREE,
  ADD KEY `country_id` (`country_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_director`
--
ALTER TABLE `movie_director`
  ADD PRIMARY KEY (`md_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`mg_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD PRIMARY KEY (`mk_id`),
  ADD KEY `keyword_id` (`keyword_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_language`
--
ALTER TABLE `movie_language`
  ADD PRIMARY KEY (`ml_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_mirror_link`
--
ALTER TABLE `movie_mirror_link`
  ADD PRIMARY KEY (`mml_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_star_rating`
--
ALTER TABLE `movie_star_rating`
  ADD PRIMARY KEY (`mr_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `production_companies`
--
ALTER TABLE `production_companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `cu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `keyword_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movie_cast`
--
ALTER TABLE `movie_cast`
  MODIFY `mcast_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_company`
--
ALTER TABLE `movie_company`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_country`
--
ALTER TABLE `movie_country`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie_director`
--
ALTER TABLE `movie_director`
  MODIFY `md_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `mg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  MODIFY `mk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_language`
--
ALTER TABLE `movie_language`
  MODIFY `ml_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie_mirror_link`
--
ALTER TABLE `movie_mirror_link`
  MODIFY `mml_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_star_rating`
--
ALTER TABLE `movie_star_rating`
  MODIFY `mr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production_companies`
--
ALTER TABLE `production_companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  ADD CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `movie_company`
--
ALTER TABLE `movie_company`
  ADD CONSTRAINT `movie_company_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `production_companies` (`company_id`),
  ADD CONSTRAINT `movie_company_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`);

--
-- Constraints for table `movie_country`
--
ALTER TABLE `movie_country`
  ADD CONSTRAINT `movie_country_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_country_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON UPDATE CASCADE;

--
-- Constraints for table `movie_director`
--
ALTER TABLE `movie_director`
  ADD CONSTRAINT `movie_director_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  ADD CONSTRAINT `movie_director_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  ADD CONSTRAINT `movie_genre_ibfk_3` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Constraints for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD CONSTRAINT `movie_keywords_ibfk_1` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`keyword_id`),
  ADD CONSTRAINT `movie_keywords_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`);

--
-- Constraints for table `movie_language`
--
ALTER TABLE `movie_language`
  ADD CONSTRAINT `movie_language_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`),
  ADD CONSTRAINT `movie_language_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`);

--
-- Constraints for table `movie_mirror_link`
--
ALTER TABLE `movie_mirror_link`
  ADD CONSTRAINT `movie_mirror_link_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`);

--
-- Constraints for table `movie_star_rating`
--
ALTER TABLE `movie_star_rating`
  ADD CONSTRAINT `movie_star_rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
