-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2026 at 11:52 AM
-- Server version: 8.0.44
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `water_asset_dmrc`
--

-- --------------------------------------------------------

--
-- Table structure for table `audittrail`
--

CREATE TABLE `audittrail` (
  `Id` int NOT NULL,
  `DateTime` datetime NOT NULL,
  `Script` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KeyValue` longtext COLLATE utf8mb4_unicode_ci,
  `OldValue` longtext COLLATE utf8mb4_unicode_ci,
  `NewValue` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audittrail`
--

INSERT INTO `audittrail` (`Id`, `DateTime`, `Script`, `User`, `Action`, `Table`, `Field`, `KeyValue`, `OldValue`, `NewValue`) VALUES
(1, '2025-09-04 08:56:34', '/wasset/BorewellDelete/3', '-1', '*** Batch delete begin ***', 'borewell', '', '', '', ''),
(2, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'borewell_id', '3', '3', ''),
(3, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'site_id', '3', '1', ''),
(4, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'borewell_number', '3', '3', ''),
(5, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'is_available', '3', '0', ''),
(6, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'distance_m', '3', NULL, ''),
(7, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'latitude', '3', NULL, ''),
(8, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'longitude', '3', NULL, ''),
(9, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'diameter_m', '3', NULL, ''),
(10, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'depth_m', '3', NULL, ''),
(11, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'permission_valid', '3', '0', ''),
(12, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'authority_id', '3', NULL, ''),
(13, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'approval_date', '3', NULL, ''),
(14, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'validity_years', '3', NULL, ''),
(15, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'no_permission_reason_id', '3', '3', ''),
(16, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'extraction_cum_per_day', '3', NULL, ''),
(17, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', 'D', 'borewell', 'location', '3', 'POINT(77.1025 28.7041)', ''),
(18, '2025-09-04 08:56:35', '/wasset/BorewellDelete/3', '-1', '*** Batch delete successful ***', 'borewell', '', '', '', ''),
(19, '2025-09-04 11:35:14', '/wasset/RwhEdit/1', '-1', 'U', 'rwh', 'total_roof_area_m2', '1', '1500.00', '1600'),
(20, '2025-10-07 09:14:39', '/wasset/login', '-1', 'login', '127.0.0.1', '', '', '', ''),
(21, '2025-11-11 07:20:45', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(22, '2025-11-24 05:28:31', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(23, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'username', '1', '', 'borewell'),
(24, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'password_hash', '1', '', '********'),
(25, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'image', '1', '', NULL),
(26, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'email', '1', '', NULL),
(27, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'mobile', '1', '', NULL),
(28, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'isactivated', '1', '', '1'),
(29, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'profile', '1', '', NULL),
(30, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'user_level', '1', '', '0'),
(31, '2025-11-24 05:29:11', '/wasset/UsersAdd', '-1', 'A', 'users', 'id', '1', '', '1'),
(32, '2025-12-02 09:31:19', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(33, '2025-12-03 11:16:16', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(34, '2025-12-04 06:06:06', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(35, '2025-12-05 05:38:24', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(36, '2025-12-06 05:07:06', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(37, '2025-12-08 05:01:48', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(38, '2026-01-09 06:36:05', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(39, '2026-01-15 09:05:21', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(40, '2026-01-16 04:52:30', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(41, '2026-01-16 06:51:42', '/wasset/UserlevelsAdd', '-1', 'A', 'userlevels', 'UserLevelID', '2', '', '2'),
(42, '2026-01-16 06:51:42', '/wasset/UserlevelsAdd', '-1', 'A', 'userlevels', 'UserLevelName', '2', '', 'user'),
(43, '2026-01-16 06:52:13', '/wasset/UsersAdd', '-1', 'A', 'users', 'username', '2', '', 'manager'),
(44, '2026-01-16 06:52:13', '/wasset/UsersAdd', '-1', 'A', 'users', 'password_hash', '2', '', '********'),
(45, '2026-01-16 06:52:13', '/wasset/UsersAdd', '-1', 'A', 'users', 'image', '2', '', NULL),
(46, '2026-01-16 06:52:13', '/wasset/UsersAdd', '-1', 'A', 'users', 'email', '2', '', NULL),
(47, '2026-01-16 06:52:13', '/wasset/UsersAdd', '-1', 'A', 'users', 'mobile', '2', '', '7011914852'),
(48, '2026-01-16 06:52:13', '/wasset/UsersAdd', '-1', 'A', 'users', 'profile', '2', '', NULL),
(49, '2026-01-16 06:52:13', '/wasset/UsersAdd', '-1', 'A', 'users', 'user_level', '2', '', '2'),
(50, '2026-01-16 06:52:13', '/wasset/UsersAdd', '-1', 'A', 'users', 'id', '2', '', '2'),
(51, '2026-01-16 06:52:33', '/wasset/UsersEdit/2', '-1', 'U', 'users', 'isactivated', '2', '0', '1'),
(52, '2026-01-16 07:22:45', '/wasset/BorewellEdit/1', '-1', 'U', 'borewell', 'area_feed_borewell', '1', NULL, '112'),
(53, '2026-01-16 07:22:45', '/wasset/BorewellEdit/1', '-1', 'U', 'borewell', 'near_piezometer', '1', NULL, 'shastripark'),
(54, '2026-01-16 07:22:45', '/wasset/BorewellEdit/1', '-1', 'U', 'borewell', 'photograph_lat_long', '1', NULL, 'manual pratiniyojan setu.pdf'),
(55, '2026-01-16 07:31:41', '/wasset/UserlevelsAdd', '-1', 'A', 'userlevels', 'UserLevelID', '3', '', '3'),
(56, '2026-01-16 07:31:41', '/wasset/UserlevelsAdd', '-1', 'A', 'userlevels', 'UserLevelName', '3', '', 'DEPUTY HOD'),
(57, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'username', '3', '', 'HOD'),
(58, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'password_hash', '3', '', '********'),
(59, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'image', '3', '', NULL),
(60, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'email', '3', '', NULL),
(61, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'mobile', '3', '', NULL),
(62, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'isactivated', '3', '', '1'),
(63, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'profile', '3', '', NULL),
(64, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'user_level', '3', '', '3'),
(65, '2026-01-16 07:32:10', '/wasset/UsersAdd', '-1', 'A', 'users', 'id', '3', '', '3'),
(66, '2026-01-20 10:06:50', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(67, '2026-02-12 05:15:35', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(68, '2026-02-12 05:17:55', '/wasset/logout', '-1', 'logout', '::1', '', '', '', ''),
(69, '2026-02-12 05:18:22', '/wasset/login', 'manager', 'login', '::1', '', '', '', ''),
(70, '2026-04-20 10:54:51', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(71, '2026-04-21 04:10:48', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(72, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '21', '', '1'),
(73, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_number', '21', '', '11'),
(74, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '21', '', NULL),
(75, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '21', '', '1'),
(76, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '21', '', NULL),
(77, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '21', '', NULL),
(78, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '21', '', NULL),
(79, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '21', '', NULL),
(80, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '21', '', NULL),
(81, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '21', '', '0'),
(82, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '21', '', NULL),
(83, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '21', '', NULL),
(84, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '21', '', NULL),
(85, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '21', '', NULL),
(86, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '21', '', NULL),
(87, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '21', '', '2'),
(88, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '21', '', NULL),
(89, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '21', '', '1'),
(90, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '21', '', '1'),
(91, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '21', '', NULL),
(92, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '21', '', NULL),
(93, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '21', '', NULL),
(94, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '21', '', NULL),
(95, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '21', '', NULL),
(96, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '21', '', NULL),
(97, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '21', '', NULL),
(98, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '21', '', '2026'),
(99, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '21', '', '-1'),
(100, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '21', '', '2026'),
(101, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '21', '', '-1'),
(102, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '21', '', '::1'),
(103, '2026-04-21 07:21:17', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '21', '', '21'),
(104, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '22', '', '1'),
(105, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_number', '22', '', '70'),
(106, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '22', '', NULL),
(107, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '22', '', '1'),
(108, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '22', '', NULL),
(109, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '22', '', NULL),
(110, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '22', '', NULL),
(111, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '22', '', NULL),
(112, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '22', '', NULL),
(113, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '22', '', '0'),
(114, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '22', '', NULL),
(115, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '22', '', NULL),
(116, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '22', '', NULL),
(117, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '22', '', NULL),
(118, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '22', '', NULL),
(119, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '22', '', '2'),
(120, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '22', '', NULL),
(121, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '22', '', '1'),
(122, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '22', '', '1'),
(123, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '22', '', NULL),
(124, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '22', '', NULL),
(125, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '22', '', NULL),
(126, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '22', '', NULL),
(127, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '22', '', NULL),
(128, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '22', '', NULL),
(129, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '22', '', NULL),
(130, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '22', '', '2026'),
(131, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '22', '', '-1'),
(132, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '22', '', '2026'),
(133, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '22', '', '-1'),
(134, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '22', '', '::1'),
(135, '2026-04-21 09:13:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '22', '', '22'),
(136, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '23', '', '2'),
(137, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_number', '23', '', '40'),
(138, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '23', '', 'RHE-003'),
(139, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '23', '', '1'),
(140, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '23', '', NULL),
(141, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '23', '', NULL),
(142, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '23', '', NULL),
(143, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '23', '', NULL),
(144, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '23', '', NULL),
(145, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '23', '', '0'),
(146, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '23', '', NULL),
(147, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '23', '', NULL),
(148, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '23', '', NULL),
(149, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '23', '', NULL),
(150, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '23', '', NULL),
(151, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '23', '', '2'),
(152, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '23', '', '33'),
(153, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '23', '', '1'),
(154, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '23', '', '1'),
(155, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '23', '', NULL),
(156, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '23', '', NULL),
(157, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '23', '', NULL),
(158, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '23', '', NULL),
(159, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '23', '', NULL),
(160, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '23', '', NULL),
(161, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '23', '', NULL),
(162, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '23', '', '2026'),
(163, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '23', '', '-1'),
(164, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '23', '', '2026'),
(165, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '23', '', '-1'),
(166, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '23', '', '::1'),
(167, '2026-04-21 09:27:59', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '23', '', '23'),
(168, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '25', '', '1'),
(169, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '25', '', '1'),
(170, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '25', '', '11'),
(171, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '25', '', '11'),
(172, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '25', '', '11'),
(173, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '25', '', '11'),
(174, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '25', '', '11'),
(175, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '25', '', '1'),
(176, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '25', '', '11'),
(177, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '25', '', '2026-04-01'),
(178, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '25', '', NULL),
(179, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '25', '', NULL),
(180, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '25', '', NULL),
(181, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '25', '', '2'),
(182, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '25', '', NULL),
(183, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '25', '', '1'),
(184, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '25', '', '1'),
(185, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '25', '', 'yes'),
(186, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '25', '', 'yes'),
(187, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '25', '', '2026-04-01'),
(188, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '25', '', 'yes'),
(189, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '25', '', NULL),
(190, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '25', '', NULL),
(191, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '25', '', NULL),
(192, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '25', '', '2026'),
(193, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '25', '', '-1'),
(194, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '25', '', '2026'),
(195, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '25', '', '-1'),
(196, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '25', '', '::1'),
(197, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '25', '', 'RI-04'),
(198, '2026-04-21 09:59:36', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '25', '', '25'),
(199, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '2', '', '10'),
(200, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '2', '', '1'),
(201, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '2', '', '1'),
(202, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '2', '', NULL),
(203, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '2', '', NULL),
(204, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '2', '', NULL),
(205, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '2', '', NULL),
(206, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '2', '', NULL),
(207, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '2', '', NULL),
(208, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '2', '', '1'),
(209, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '2', '', '1'),
(210, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '2', '', '2'),
(211, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '2', '', 'northwest'),
(212, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '2', '', NULL),
(213, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '2', '', '11'),
(214, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '2', '', NULL),
(215, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '2', '', NULL),
(216, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '2', '', '01/04/2026'),
(217, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '2', '', NULL),
(218, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '2', '', '2026'),
(219, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '2', '', '-1'),
(220, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '2', '', '2026'),
(221, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '2', '', '-1'),
(222, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '2', '', '::1'),
(223, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '2', '', 'NA-RWH-01'),
(224, '2026-04-21 10:01:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '2', '', '2'),
(225, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '3', '', '11'),
(226, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '3', '', '1'),
(227, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '3', '', NULL),
(228, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '3', '', NULL),
(229, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '3', '', NULL),
(230, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '3', '', NULL),
(231, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '3', '', NULL),
(232, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '3', '', NULL),
(233, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '3', '', NULL),
(234, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '3', '', '1'),
(235, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '3', '', '1'),
(236, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '3', '', '2'),
(237, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '3', '', 'northwest'),
(238, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '3', '', NULL),
(239, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '3', '', '11'),
(240, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '3', '', NULL),
(241, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '3', '', NULL),
(242, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '3', '', '21/04/2026'),
(243, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '3', '', NULL),
(244, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '3', '', '2026'),
(245, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '3', '', '-1'),
(246, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '3', '', '2026'),
(247, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '3', '', '-1'),
(248, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '3', '', '::1'),
(249, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '3', '', 'NA-RWH-01'),
(250, '2026-04-21 10:04:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '3', '', '3'),
(251, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '4', '', '11'),
(252, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '4', '', '1'),
(253, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '4', '', NULL),
(254, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '4', '', NULL),
(255, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '4', '', NULL),
(256, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '4', '', NULL),
(257, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '4', '', NULL),
(258, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '4', '', NULL),
(259, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '4', '', NULL),
(260, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '4', '', '1'),
(261, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '4', '', '1'),
(262, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '4', '', '2'),
(263, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '4', '', 'north west'),
(264, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '4', '', 'ashwani'),
(265, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '4', '', '11'),
(266, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '4', '', NULL),
(267, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '4', '', NULL),
(268, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '4', '', '21/04/2026'),
(269, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '4', '', NULL),
(270, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '4', '', '2026'),
(271, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '4', '', '-1'),
(272, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '4', '', '2026'),
(273, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '4', '', '-1'),
(274, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '4', '', '::1'),
(275, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '4', '', 'NA-RWH-01'),
(276, '2026-04-21 10:05:52', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '4', '', '4'),
(277, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '5', '', '11'),
(278, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '5', '', '1'),
(279, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '5', '', NULL),
(280, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '5', '', NULL),
(281, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '5', '', NULL),
(282, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '5', '', NULL),
(283, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '5', '', NULL),
(284, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '5', '', NULL),
(285, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '5', '', NULL),
(286, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '5', '', '2'),
(287, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '5', '', '1'),
(288, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '5', '', '1'),
(289, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '5', '', NULL),
(290, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '5', '', NULL),
(291, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '5', '', '11'),
(292, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '5', '', NULL),
(293, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '5', '', NULL),
(294, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '5', '', '21/04/2026'),
(295, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '5', '', NULL),
(296, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '5', '', '2026'),
(297, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '5', '', '-1'),
(298, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '5', '', '2026'),
(299, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '5', '', '-1'),
(300, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '5', '', '::1'),
(301, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '5', '', 'NA-RWH-01'),
(302, '2026-04-21 10:11:39', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '5', '', '5'),
(303, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '9', '', '11'),
(304, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '9', '', '1'),
(305, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '9', '', NULL),
(306, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '9', '', NULL),
(307, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '9', '', NULL),
(308, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '9', '', NULL),
(309, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '9', '', NULL),
(310, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '9', '', NULL),
(311, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '9', '', NULL),
(312, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '9', '', '2'),
(313, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '9', '', '1'),
(314, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '9', '', '1'),
(315, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '9', '', NULL),
(316, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '9', '', NULL),
(317, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '9', '', '77'),
(318, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '9', '', NULL),
(319, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '9', '', NULL),
(320, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '9', '', '01/04/2026'),
(321, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '9', '', NULL),
(322, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '9', '', '2026'),
(323, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '9', '', '-1'),
(324, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '9', '', '2026'),
(325, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '9', '', '-1'),
(326, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '9', '', '::1'),
(327, '2026-04-21 10:45:48', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '9', '', '9'),
(328, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '17', '', '67'),
(329, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '17', '', '1'),
(330, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '17', '', '11'),
(331, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '17', '', NULL),
(332, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '17', '', NULL),
(333, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '17', '', NULL),
(334, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '17', '', NULL),
(335, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '17', '', NULL),
(336, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '17', '', NULL),
(337, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '17', '', '2'),
(338, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '17', '', '1'),
(339, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '17', '', '3'),
(340, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '17', '', NULL),
(341, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '17', '', NULL),
(342, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '17', '', '11'),
(343, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '17', '', NULL),
(344, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '17', '', 'Yes'),
(345, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '17', '', '22/04/2026'),
(346, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '17', '', NULL),
(347, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '17', '', '2026'),
(348, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '17', '', '-1'),
(349, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '17', '', '2026'),
(350, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '17', '', '-1'),
(351, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '17', '', '::1'),
(352, '2026-04-22 06:13:53', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '17', '', '17'),
(353, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '18', '', '009'),
(354, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '18', '', '1'),
(355, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '18', '', '11'),
(356, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '18', '', '11'),
(357, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '18', '', NULL),
(358, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '18', '', NULL),
(359, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '18', '', NULL),
(360, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '18', '', NULL),
(361, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '18', '', NULL),
(362, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '18', '', '2'),
(363, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '18', '', '1'),
(364, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '18', '', '2'),
(365, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '18', '', NULL),
(366, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '18', '', NULL),
(367, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '18', '', '34'),
(368, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '18', '', NULL),
(369, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '18', '', 'Yes'),
(370, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '18', '', '15/04/2026'),
(371, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '18', '', NULL),
(372, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '18', '', '2026'),
(373, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '18', '', '-1'),
(374, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '18', '', '2026'),
(375, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '18', '', '-1'),
(376, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '18', '', '::1'),
(377, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '18', '', 'RHW-RWH-01'),
(378, '2026-04-22 06:27:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '18', '', '18'),
(379, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '19', '', '888'),
(380, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '19', '', '1'),
(381, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '19', '', NULL),
(382, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '19', '', NULL),
(383, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '19', '', NULL),
(384, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '19', '', NULL),
(385, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '19', '', NULL),
(386, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '19', '', NULL),
(387, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '19', '', NULL),
(388, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '19', '', '2'),
(389, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '19', '', '1'),
(390, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '19', '', '4'),
(391, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '19', '', 'north west'),
(392, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '19', '', NULL),
(393, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '19', '', '989'),
(394, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '19', '', '22'),
(395, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '19', '', 'Yes'),
(396, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '19', '', '22/04/2026'),
(397, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '19', '', NULL),
(398, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '19', '', '2026'),
(399, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '19', '', '-1'),
(400, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '19', '', '2026'),
(401, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '19', '', '-1'),
(402, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '19', '', '::1'),
(403, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '19', '', 'NA-RWH-01'),
(404, '2026-04-22 06:28:19', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '19', '', '19'),
(405, '2026-04-22 07:15:45', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '20', '', '777'),
(406, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '20', '', '1'),
(407, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '20', '', NULL),
(408, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '20', '', NULL),
(409, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '20', '', NULL),
(410, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '20', '', NULL),
(411, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '20', '', NULL),
(412, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '20', '', NULL),
(413, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '20', '', NULL),
(414, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '20', '', '2'),
(415, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '20', '', '1'),
(416, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '20', '', '2'),
(417, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '20', '', NULL),
(418, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '20', '', NULL),
(419, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '20', '', '088'),
(420, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '20', '', NULL),
(421, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '20', '', NULL),
(422, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '20', '', '09/04/2026'),
(423, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '20', '', NULL),
(424, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '20', '', '2026'),
(425, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '20', '', '-1'),
(426, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '20', '', '2026'),
(427, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '20', '', '-1'),
(428, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '20', '', '::1'),
(429, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '20', '', 'NA-RWH-01'),
(430, '2026-04-22 07:15:46', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '20', '', '20'),
(431, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '21', '', '770'),
(432, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '21', '', '1'),
(433, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '21', '', NULL),
(434, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '21', '', NULL),
(435, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '21', '', NULL),
(436, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '21', '', NULL),
(437, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '21', '', NULL),
(438, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '21', '', NULL),
(439, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '21', '', NULL),
(440, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '21', '', '2'),
(441, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '21', '', '1'),
(442, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '21', '', '2'),
(443, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '21', '', NULL),
(444, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '21', '', NULL),
(445, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '21', '', '99'),
(446, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '21', '', NULL),
(447, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '21', '', 'Yes'),
(448, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '21', '', '22/04/2026'),
(449, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '21', '', NULL),
(450, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '21', '', '2026'),
(451, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '21', '', '-1'),
(452, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '21', '', '2026'),
(453, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '21', '', '-1'),
(454, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '21', '', '::1'),
(455, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '21', '', 'NA-RWH-01'),
(456, '2026-04-22 08:31:34', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '21', '', '21'),
(457, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '22', '', '999'),
(458, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '22', '', '1'),
(459, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '22', '', NULL),
(460, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '22', '', NULL),
(461, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '22', '', NULL),
(462, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '22', '', NULL),
(463, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '22', '', NULL),
(464, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '22', '', NULL),
(465, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '22', '', NULL),
(466, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '22', '', '2'),
(467, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '22', '', '1'),
(468, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '22', '', '2'),
(469, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '22', '', NULL),
(470, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '22', '', NULL),
(471, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '22', '', '99'),
(472, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '22', '', NULL),
(473, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '22', '', NULL),
(474, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '22', '', '15/04/2026'),
(475, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '22', '', NULL),
(476, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '22', '', '2026'),
(477, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '22', '', '-1'),
(478, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '22', '', '2026'),
(479, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '22', '', '-1'),
(480, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '22', '', '::1'),
(481, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '22', '', 'NA-RWH-01'),
(482, '2026-04-22 08:36:23', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '22', '', '22'),
(483, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '23', '', '333'),
(484, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '23', '', '1'),
(485, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '23', '', '3213'),
(486, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '23', '', NULL),
(487, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '23', '', NULL),
(488, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '23', '', NULL),
(489, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '23', '', NULL),
(490, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '23', '', NULL),
(491, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '23', '', NULL),
(492, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '23', '', '2'),
(493, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '23', '', '1'),
(494, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '23', '', '2'),
(495, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '23', '', NULL),
(496, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '23', '', NULL),
(497, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '23', '', '22'),
(498, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '23', '', NULL),
(499, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '23', '', 'Yes'),
(500, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '23', '', '01/04/2026'),
(501, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '23', '', NULL),
(502, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '23', '', '2026'),
(503, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '23', '', '-1'),
(504, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '23', '', '2026'),
(505, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '23', '', '-1'),
(506, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '23', '', '::1');
INSERT INTO `audittrail` (`Id`, `DateTime`, `Script`, `User`, `Action`, `Table`, `Field`, `KeyValue`, `OldValue`, `NewValue`) VALUES
(507, '2026-04-22 09:34:13', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '23', '', '23'),
(508, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '24', '', '11'),
(509, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '24', '', '1'),
(510, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '24', '', '11'),
(511, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '24', '', '11'),
(512, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '24', '', '11'),
(513, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '24', '', '11'),
(514, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '24', '', NULL),
(515, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '24', '', '11'),
(516, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '24', '', '11'),
(517, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '24', '', '2'),
(518, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '24', '', '1'),
(519, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '24', '', '4'),
(520, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '24', '', NULL),
(521, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '24', '', NULL),
(522, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '24', '', '11'),
(523, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '24', '', NULL),
(524, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '24', '', 'Yes'),
(525, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '24', '', '03/04/2026'),
(526, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '24', '', NULL),
(527, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '24', '', '2026'),
(528, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '24', '', '-1'),
(529, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '24', '', '2026'),
(530, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '24', '', '-1'),
(531, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '24', '', '::1'),
(532, '2026-04-22 09:36:33', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '24', '', '24'),
(533, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '25', '', '11'),
(534, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '25', '', '1'),
(535, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '25', '', '22'),
(536, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '25', '', '2223'),
(537, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '25', '', '22'),
(538, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '25', '', '2'),
(539, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '25', '', '22'),
(540, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '25', '', NULL),
(541, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '25', '', NULL),
(542, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '25', '', '2'),
(543, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '25', '', '1'),
(544, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '25', '', '2'),
(545, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '25', '', 'northe west'),
(546, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '25', '', NULL),
(547, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '25', '', '33'),
(548, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '25', '', NULL),
(549, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '25', '', NULL),
(550, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '25', '', '02/04/2026'),
(551, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '25', '', NULL),
(552, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '25', '', '2026'),
(553, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '25', '', '-1'),
(554, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '25', '', '2026'),
(555, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '25', '', '-1'),
(556, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '25', '', '::1'),
(557, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '25', '', 'RHE-RWH-01'),
(558, '2026-04-22 09:51:20', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '25', '', '25'),
(559, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '26', '', '6'),
(560, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '26', '', '1'),
(561, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '26', '', NULL),
(562, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '26', '', NULL),
(563, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '26', '', NULL),
(564, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '26', '', NULL),
(565, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '26', '', NULL),
(566, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '26', '', NULL),
(567, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '26', '', NULL),
(568, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '26', '', '2'),
(569, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '26', '', '1'),
(570, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '26', '', '2'),
(571, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '26', '', NULL),
(572, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '26', '', NULL),
(573, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '26', '', '33'),
(574, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '26', '', '33'),
(575, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '26', '', 'Yes'),
(576, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '26', '', '15/04/2026'),
(577, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '26', '', NULL),
(578, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '26', '', '2026'),
(579, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '26', '', '-1'),
(580, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '26', '', '2026'),
(581, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '26', '', '-1'),
(582, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '26', '', '::1'),
(583, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '26', '', 'RHE-RWH-02'),
(584, '2026-04-22 10:22:29', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '26', '', '26'),
(585, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '26', '', '1'),
(586, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '26', '', '1'),
(587, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '26', '', NULL),
(588, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '26', '', NULL),
(589, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '26', '', NULL),
(590, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '26', '', NULL),
(591, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '26', '', NULL),
(592, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '26', '', '0'),
(593, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '26', '', NULL),
(594, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '26', '', NULL),
(595, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '26', '', NULL),
(596, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '26', '', NULL),
(597, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '26', '', NULL),
(598, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '26', '', '2'),
(599, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '26', '', NULL),
(600, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '26', '', '1'),
(601, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '26', '', '4'),
(602, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '26', '', NULL),
(603, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '26', '', NULL),
(604, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '26', '', NULL),
(605, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '26', '', NULL),
(606, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '26', '', NULL),
(607, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '26', '', NULL),
(608, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '26', '', NULL),
(609, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '26', '', '2026'),
(610, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '26', '', '-1'),
(611, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '26', '', '2026'),
(612, '2026-04-22 10:23:40', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '26', '', '-1'),
(613, '2026-04-22 10:23:41', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '26', '', '::1'),
(614, '2026-04-22 10:23:41', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '26', '', 'RI-01'),
(615, '2026-04-22 10:23:41', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '26', '', '26'),
(616, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '27', '', '1'),
(617, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '27', '', '1'),
(618, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '27', '', NULL),
(619, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '27', '', NULL),
(620, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '27', '', NULL),
(621, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '27', '', NULL),
(622, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '27', '', NULL),
(623, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '27', '', '0'),
(624, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '27', '', NULL),
(625, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '27', '', NULL),
(626, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '27', '', NULL),
(627, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '27', '', NULL),
(628, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '27', '', NULL),
(629, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '27', '', '2'),
(630, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '27', '', NULL),
(631, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '27', '', '1'),
(632, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '27', '', '4'),
(633, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '27', '', NULL),
(634, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '27', '', NULL),
(635, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '27', '', NULL),
(636, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '27', '', NULL),
(637, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '27', '', NULL),
(638, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '27', '', NULL),
(639, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '27', '', NULL),
(640, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '27', '', '2026'),
(641, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '27', '', '-1'),
(642, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '27', '', '2026'),
(643, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '27', '', '-1'),
(644, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '27', '', '::1'),
(645, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '27', '', 'RI-02'),
(646, '2026-04-22 10:28:45', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '27', '', '27'),
(647, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '28', '', '1'),
(648, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '28', '', '1'),
(649, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '28', '', NULL),
(650, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '28', '', NULL),
(651, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '28', '', NULL),
(652, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '28', '', NULL),
(653, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '28', '', NULL),
(654, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '28', '', '1'),
(655, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '28', '', NULL),
(656, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '28', '', NULL),
(657, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '28', '', NULL),
(658, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '28', '', NULL),
(659, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '28', '', NULL),
(660, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '28', '', '2'),
(661, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '28', '', NULL),
(662, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '28', '', '1'),
(663, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '28', '', '4'),
(664, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '28', '', NULL),
(665, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '28', '', NULL),
(666, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '28', '', NULL),
(667, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '28', '', NULL),
(668, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '28', '', NULL),
(669, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '28', '', NULL),
(670, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '28', '', NULL),
(671, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '28', '', '2026'),
(672, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '28', '', '-1'),
(673, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '28', '', '2026'),
(674, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '28', '', '-1'),
(675, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '28', '', '::1'),
(676, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '28', '', 'RI-03'),
(677, '2026-04-22 10:34:54', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '28', '', '28'),
(678, '2026-04-22 10:39:52', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '29', '', '1'),
(679, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '29', '', '1'),
(680, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '29', '', NULL),
(681, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '29', '', NULL),
(682, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '29', '', NULL),
(683, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '29', '', NULL),
(684, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '29', '', NULL),
(685, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '29', '', '0'),
(686, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '29', '', NULL),
(687, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '29', '', NULL),
(688, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '29', '', NULL),
(689, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '29', '', NULL),
(690, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '29', '', NULL),
(691, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '29', '', '2'),
(692, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '29', '', NULL),
(693, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '29', '', '1'),
(694, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '29', '', '4'),
(695, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '29', '', NULL),
(696, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '29', '', NULL),
(697, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '29', '', NULL),
(698, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '29', '', NULL),
(699, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '29', '', NULL),
(700, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '29', '', NULL),
(701, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '29', '', NULL),
(702, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '29', '', '2026'),
(703, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '29', '', '-1'),
(704, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '29', '', '2026'),
(705, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '29', '', '-1'),
(706, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '29', '', '::1'),
(707, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '29', '', 'RI-BW-01'),
(708, '2026-04-22 10:39:53', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '29', '', '29'),
(709, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '30', '', '1'),
(710, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '30', '', '1'),
(711, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '30', '', NULL),
(712, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '30', '', NULL),
(713, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '30', '', NULL),
(714, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '30', '', NULL),
(715, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '30', '', NULL),
(716, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '30', '', '0'),
(717, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '30', '', NULL),
(718, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '30', '', NULL),
(719, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '30', '', NULL),
(720, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '30', '', NULL),
(721, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '30', '', NULL),
(722, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '30', '', '2'),
(723, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '30', '', NULL),
(724, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '30', '', '1'),
(725, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '30', '', '4'),
(726, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '30', '', NULL),
(727, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '30', '', NULL),
(728, '2026-04-22 10:43:01', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '30', '', NULL),
(729, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '30', '', NULL),
(730, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '30', '', NULL),
(731, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '30', '', NULL),
(732, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '30', '', NULL),
(733, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '30', '', '2026'),
(734, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '30', '', '-1'),
(735, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '30', '', '2026'),
(736, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '30', '', '-1'),
(737, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '30', '', '::1'),
(738, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '30', '', 'PTP-BW-01'),
(739, '2026-04-22 10:43:02', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '30', '', '30'),
(740, '2026-04-23 04:17:26', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(741, '2026-04-25 05:19:13', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(742, '2026-04-25 05:21:36', '/wasset/login', 'manager', 'login', '::1', '', '', '', ''),
(743, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'site_id', '27', '', '11'),
(744, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'is_available', '27', '', '1'),
(745, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'catchment_id', '27', '', '11'),
(746, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'total_roof_area_m2', '27', '', '33'),
(747, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'roof_area_percent', '27', '', '11'),
(748, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'pit_count', '27', '', '11'),
(749, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'pit_capacity_cum', '27', '', NULL),
(750, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'maintenance_status_id', '27', '', NULL),
(751, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'no_system_reason_id', '27', '', NULL),
(752, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'state', '27', '', '2'),
(753, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'line', '27', '', '1'),
(754, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'station', '27', '', '1'),
(755, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'district', '27', '', 'north west'),
(756, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'rwh_location', '27', '', 'delhi'),
(757, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'lat', '27', '', '333'),
(758, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'longitude', '27', '', '33'),
(759, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'rwh_cleaned_functional', '27', '', 'Yes'),
(760, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'date_of _cleaning', '27', '', '08/04/2026'),
(761, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'photograph_lat_long', '27', '', NULL),
(762, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'createdAt', '27', '', '2026'),
(763, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'createdBy', '27', '', 'manager'),
(764, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'updatedAt', '27', '', '2026'),
(765, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'updatedBy', '27', '', 'manager'),
(766, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'ip', '27', '', '::1'),
(767, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'rwh_code', '27', '', 'RI-RWH-01'),
(768, '2026-04-25 05:24:00', '/wasset/RwhAdd', 'manager', 'A', 'rwh', 'rwh_id', '27', '', '27'),
(769, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'site_id', '31', '', '1'),
(770, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'is_available', '31', '', '1'),
(771, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'distance_m', '31', '', '56'),
(772, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'latitude', '31', '', '45'),
(773, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'longitude', '31', '', NULL),
(774, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'diameter_m', '31', '', NULL),
(775, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'depth_m', '31', '', NULL),
(776, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'permission_valid', '31', '', '0'),
(777, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'authority_id', '31', '', '2'),
(778, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'approval_date', '31', '', NULL),
(779, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'validity_years', '31', '', NULL),
(780, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'no_permission_reason_id', '31', '', NULL),
(781, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'extraction_cum_per_day', '31', '', NULL),
(782, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'state', '31', '', '2'),
(783, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'district', '31', '', 'nortwest'),
(784, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'line', '31', '', '1'),
(785, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'station', '31', '', '4'),
(786, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_installed', '31', '', 'yes'),
(787, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'meter_functional', '31', '', 'yes'),
(788, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'calibration_meter_date', '31', '', '2026-04-25'),
(789, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'water_extraction_record', '31', '', 'not'),
(790, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'area_feed_borewell', '31', '', '23'),
(791, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'near_piezometer', '31', '', NULL),
(792, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'photograph_lat_long', '31', '', NULL),
(793, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdAt', '31', '', '2026'),
(794, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'createdBy', '31', '', '-1'),
(795, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'updatedAt', '31', '', '2026'),
(796, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'UpdatedBy', '31', '', '-1'),
(797, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'ip', '31', '', '::1'),
(798, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_code', '31', '', 'PTP-BW-02'),
(799, '2026-04-25 05:29:37', '/wasset/BorewellAdd', '-1', 'A', 'borewell', 'borewell_id', '31', '', '31'),
(800, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'site_id', '28', '', '1'),
(801, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'is_available', '28', '', '1'),
(802, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'catchment_id', '28', '', '33'),
(803, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'total_roof_area_m2', '28', '', '555'),
(804, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'roof_area_percent', '28', '', NULL),
(805, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_count', '28', '', NULL),
(806, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'pit_capacity_cum', '28', '', NULL),
(807, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'maintenance_status_id', '28', '', NULL),
(808, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'no_system_reason_id', '28', '', NULL),
(809, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'state', '28', '', '2'),
(810, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'line', '28', '', '1'),
(811, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'station', '28', '', '6'),
(812, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'district', '28', '', 'north west'),
(813, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_location', '28', '', 'delhi'),
(814, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'lat', '28', '', '44'),
(815, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'longitude', '28', '', NULL),
(816, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_cleaned_functional', '28', '', NULL),
(817, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'date_of _cleaning', '28', '', '17/04/2026'),
(818, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'photograph_lat_long', '28', '', NULL),
(819, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdAt', '28', '', '2026'),
(820, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'createdBy', '28', '', '-1'),
(821, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedAt', '28', '', '2026'),
(822, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'updatedBy', '28', '', '-1'),
(823, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'ip', '28', '', '::1'),
(824, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_code', '28', '', 'NSHP-RWH-01'),
(825, '2026-04-25 05:32:05', '/wasset/RwhAdd', '-1', 'A', 'rwh', 'rwh_id', '28', '', '28'),
(826, '2026-04-27 04:49:46', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(827, '2026-04-28 05:01:26', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(828, '2026-04-28 09:40:29', '/wasset/logout', '-1', 'logout', '::1', '', '', '', ''),
(829, '2026-04-28 09:46:58', '/wasset/login', '-1', 'login', '::1', '', '', '', ''),
(830, '2026-04-28 09:48:44', '/wasset/login', 'manager', 'login', '::1', '', '', '', ''),
(831, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'site_id', '32', '', '1'),
(832, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'is_available', '32', '', '1'),
(833, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'distance_m', '32', '', NULL),
(834, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'latitude', '32', '', '55'),
(835, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'longitude', '32', '', '77'),
(836, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'diameter_m', '32', '', '77'),
(837, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'depth_m', '32', '', '99'),
(838, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'permission_valid', '32', '', '1'),
(839, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'authority_id', '32', '', '2'),
(840, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'approval_date', '32', '', '2026-04-01'),
(841, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'validity_years', '32', '', '5'),
(842, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'no_permission_reason_id', '32', '', NULL),
(843, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'extraction_cum_per_day', '32', '', '56'),
(844, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'state', '32', '', '2'),
(845, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'district', '32', '', 'north west'),
(846, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'line', '32', '', '1'),
(847, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'station', '32', '', '4'),
(848, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'meter_installed', '32', '', 'yes'),
(849, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'meter_functional', '32', '', 'yes'),
(850, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'calibration_meter_date', '32', '', NULL),
(851, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'water_extraction_record', '32', '', NULL),
(852, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'area_feed_borewell', '32', '', NULL),
(853, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'near_piezometer', '32', '', '77'),
(854, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'photograph_lat_long', '32', '', NULL),
(855, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'createdAt', '32', '', '2026'),
(856, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'createdBy', '32', '', 'manager'),
(857, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'updatedAt', '32', '', '2026'),
(858, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'UpdatedBy', '32', '', 'manager'),
(859, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'ip', '32', '', '::1'),
(860, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'borewell_code', '32', '', 'PTP-BW-03'),
(861, '2026-04-28 10:06:55', '/wasset/BorewellAdd', 'manager', 'A', 'borewell', 'borewell_id', '32', '', '32'),
(862, '2026-04-29 05:13:30', '/wasset/login', '-1', 'login', '::1', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `authority_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`authority_id`, `name`) VALUES
(2, 'CGWA'),
(11, 'Delhi Jal Board'),
(1, 'DJB'),
(12, 'DMRC Water Department'),
(4, 'HGWA'),
(13, 'Municipal Corporation'),
(14, 'State Ground Water Authority'),
(3, 'UPGWA');

-- --------------------------------------------------------

--
-- Table structure for table `borewell`
--

CREATE TABLE `borewell` (
  `borewell_id` int NOT NULL,
  `borewell_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_id` int NOT NULL,
  `borewell_number` int NOT NULL DEFAULT '0',
  `is_available` tinyint(1) NOT NULL DEFAULT '0',
  `distance_m` int DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `diameter_m` decimal(5,2) DEFAULT NULL,
  `depth_m` decimal(6,2) DEFAULT NULL,
  `permission_valid` tinyint(1) DEFAULT NULL,
  `authority_id` int DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `validity_years` int DEFAULT NULL,
  `no_permission_reason_id` int DEFAULT NULL,
  `extraction_cum_per_day` decimal(8,2) DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `station` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meter_installed` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meter_functional` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration_meter_date` date DEFAULT NULL,
  `water_extraction_record` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_feed_borewell` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `near_piezometer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photograph_lat_long` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` int DEFAULT NULL,
  `createdBy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedAt` int DEFAULT NULL,
  `UpdatedBy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borewell`
--

INSERT INTO `borewell` (`borewell_id`, `borewell_code`, `site_id`, `borewell_number`, `is_available`, `distance_m`, `location`, `latitude`, `longitude`, `diameter_m`, `depth_m`, `permission_valid`, `authority_id`, `approval_date`, `validity_years`, `no_permission_reason_id`, `extraction_cum_per_day`, `state`, `district`, `line`, `station`, `meter_installed`, `meter_functional`, `calibration_meter_date`, `water_extraction_record`, `area_feed_borewell`, `near_piezometer`, `photograph_lat_long`, `createdAt`, `createdBy`, `updatedAt`, `UpdatedBy`, `ip`) VALUES
(1, NULL, 1, 101, 1, 120, NULL, 28.61393900, 77.20902100, 0.30, 60.00, 1, 1, '2024-01-15', 5, 1, 12.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '112', 'shastripark', 'manual pratiniyojan setu.pdf', NULL, NULL, NULL, NULL, NULL),
(2, NULL, 2, 102, 1, 150, NULL, 28.62000000, 77.21000000, 0.28, 55.00, 1, 2, '2024-02-20', 4, 1, 8.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 3, 103, 1, 90, NULL, 28.61550000, 77.22050000, 0.25, 50.00, 1, 3, '2024-03-10', 3, 1, 10.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 4, 104, 1, 180, NULL, 28.63020000, 77.19980000, 0.32, 70.00, 1, 4, '2024-04-05', 5, 1, 15.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 5, 105, 1, 135, NULL, 28.60570000, 77.21530000, 0.27, 65.00, 1, 1, '2024-05-12', 4, 1, 9.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 6, 106, 1, 160, NULL, 28.64010000, 77.20540000, 0.29, 55.00, 1, 2, '2024-06-18', 3, 1, 11.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 7, 107, 1, 110, NULL, 28.61880000, 77.19920000, 0.26, 45.00, 1, 3, '2024-07-22', 5, 1, 7.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 8, 108, 1, 140, NULL, 28.62590000, 77.22560000, 0.31, 75.00, 1, 4, '2024-08-30', 4, 1, 13.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 9, 109, 1, 100, NULL, 28.61030000, 77.23010000, 0.24, 50.00, 1, 1, '2024-09-14', 3, 1, 8.60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 10, 110, 1, 200, NULL, 28.65000000, 77.23000000, 0.25, 80.00, 1, 2, '2024-10-05', 5, 1, 14.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 1, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(23, 'RHE-003', 2, 40, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2', '33', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(25, 'RI-04', 1, 0, 1, 11, NULL, 11.00000000, 11.00000000, 11.00, 11.00, 1, 11, '2026-04-01', NULL, NULL, NULL, '2', NULL, '1', '1', 'yes', 'yes', '2026-04-01', 'yes', NULL, NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(26, 'RI-01', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2', NULL, '1', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(27, 'RI-02', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2', NULL, '1', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(28, 'RI-03', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2', NULL, '1', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(29, 'RI-BW-01', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2', NULL, '1', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(30, 'PTP-BW-01', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2', NULL, '1', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(31, 'PTP-BW-02', 1, 0, 1, 56, NULL, 45.00000000, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL, NULL, '2', 'nortwest', '1', '4', 'yes', 'yes', '2026-04-25', 'not', '23', NULL, NULL, 2026, '-1', 2026, '-1', '::1'),
(32, 'PTP-BW-03', 1, 0, 1, NULL, NULL, 55.00000000, 77.00000000, 77.00, 99.00, 1, 2, '2026-04-01', 5, NULL, 56.00, '2', 'north west', '1', '4', 'yes', 'yes', NULL, NULL, NULL, '77', NULL, 2026, 'manager', 2026, 'manager', '::1'),
(34, 'BW001', 1, 1, 1, NULL, NULL, NULL, NULL, 8.00, 120.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Yellow Line', 'Kashmere Gate', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(35, 'BW002', 2, 2, 1, NULL, NULL, NULL, NULL, 10.00, 135.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'North Delhi', 'Yellow Line', 'Civil Lines', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(36, 'BW003', 3, 3, 1, NULL, NULL, NULL, NULL, 10.00, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'North Delhi', 'Yellow Line', 'GTB Nagar', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(37, 'BW004', 4, 4, 0, NULL, NULL, NULL, NULL, 8.00, 110.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'East Delhi', 'Blue Line', 'Anand Vihar', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(38, 'BW005', 5, 5, 1, NULL, NULL, NULL, NULL, 10.00, 140.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'East Delhi', 'Blue Line', 'Kaushambi', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(39, 'BW006', 6, 6, 1, NULL, NULL, NULL, NULL, 12.00, 155.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Blue Line', 'Rajiv Chowk', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(40, 'BW007', 7, 7, 0, NULL, NULL, NULL, NULL, 8.00, 125.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Blue Line', 'Mandi House', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(41, 'BW008', 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, 145.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'South Delhi', 'Violet Line', 'Central Secretariat', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(42, 'BW001', 1, 1, 1, NULL, NULL, NULL, NULL, 8.00, 120.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Yellow Line', 'Kashmere Gate', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(43, 'BW002', 2, 2, 1, NULL, NULL, NULL, NULL, 10.00, 135.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'North Delhi', 'Yellow Line', 'Civil Lines', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(44, 'BW003', 3, 3, 1, NULL, NULL, NULL, NULL, 10.00, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'North Delhi', 'Yellow Line', 'GTB Nagar', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(45, 'BW004', 4, 4, 0, NULL, NULL, NULL, NULL, 8.00, 110.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'East Delhi', 'Blue Line', 'Anand Vihar', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(46, 'BW005', 5, 5, 1, NULL, NULL, NULL, NULL, 10.00, 140.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'East Delhi', 'Blue Line', 'Kaushambi', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(47, 'BW006', 6, 6, 1, NULL, NULL, NULL, NULL, 12.00, 155.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Blue Line', 'Rajiv Chowk', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(48, 'BW007', 7, 7, 0, NULL, NULL, NULL, NULL, 8.00, 125.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Blue Line', 'Mandi House', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(49, 'BW008', 8, 8, 1, NULL, NULL, NULL, NULL, 10.00, 145.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'South Delhi', 'Violet Line', 'Central Secretariat', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(50, 'BW001', 1, 1, 1, NULL, NULL, NULL, NULL, 8.00, 120.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Yellow Line', 'Kashmere Gate', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(51, 'BW002', 2, 2, 1, NULL, NULL, NULL, NULL, 10.00, 135.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'North Delhi', 'Yellow Line', 'Civil Lines', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(52, 'BW003', 3, 3, 1, NULL, NULL, NULL, NULL, 10.00, 150.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'North Delhi', 'Yellow Line', 'GTB Nagar', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(53, 'BW004', 4, 4, 0, NULL, NULL, NULL, NULL, 8.00, 110.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'East Delhi', 'Blue Line', 'Anand Vihar', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(54, 'BW005', 5, 5, 1, NULL, NULL, NULL, NULL, 10.00, 140.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'East Delhi', 'Blue Line', 'Kaushambi', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(55, 'BW006', 6, 6, 1, NULL, NULL, NULL, NULL, 12.00, 155.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Blue Line', 'Rajiv Chowk', 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL),
(56, 'BW007', 7, 7, 0, NULL, NULL, NULL, NULL, 8.00, 125.00, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Central Delhi', 'Blue Line', 'Mandi House', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catchment_type`
--

CREATE TABLE `catchment_type` (
  `catchment_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catchment_type`
--

INSERT INTO `catchment_type` (`catchment_id`, `name`) VALUES
(2, 'Parking area'),
(3, 'Road'),
(1, 'Roof-top');

-- --------------------------------------------------------

--
-- Table structure for table `line`
--

CREATE TABLE `line` (
  `line_id` int NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `line`
--

INSERT INTO `line` (`line_id`, `Name`) VALUES
(1, 'Line 1'),
(2, 'Line 2'),
(3, 'Line 3'),
(4, 'Line 3A'),
(5, 'Line 5'),
(6, 'Line 6'),
(7, 'Line 7'),
(8, 'Line 8'),
(9, 'Line 9'),
(10, 'Airport Express (Orange) Line'),
(11, 'Red Line'),
(12, 'Yellow Line'),
(13, 'Blue Line'),
(14, 'Green Line'),
(15, 'Violet Line'),
(16, 'Pink Line'),
(17, 'Magenta Line'),
(18, 'Grey Line'),
(19, 'Airport Express'),
(20, 'Red Line'),
(21, 'Yellow Line'),
(22, 'Blue Line'),
(23, 'Green Line'),
(24, 'Violet Line'),
(25, 'Pink Line'),
(26, 'Magenta Line'),
(27, 'Grey Line'),
(28, 'Airport Express'),
(29, 'Red Line'),
(30, 'Yellow Line'),
(31, 'Blue Line'),
(32, 'Green Line'),
(33, 'Violet Line'),
(34, 'Pink Line'),
(35, 'Magenta Line'),
(36, 'Grey Line'),
(37, 'Airport Express'),
(38, 'Red Line'),
(39, 'Yellow Line'),
(40, 'Blue Line'),
(41, 'Green Line'),
(42, 'Violet Line'),
(43, 'Pink Line'),
(44, 'Magenta Line'),
(45, 'Grey Line'),
(46, 'Airport Express'),
(47, 'Red Line'),
(48, 'Yellow Line'),
(49, 'Blue Line'),
(50, 'Green Line'),
(51, 'Violet Line'),
(52, 'Pink Line'),
(53, 'Magenta Line'),
(54, 'Grey Line'),
(55, 'Airport Express');

-- --------------------------------------------------------

--
-- Table structure for table `locations_near_a_station`
--

CREATE TABLE `locations_near_a_station` (
  `location_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations_near_a_station`
--

INSERT INTO `locations_near_a_station` (`location_id`, `name`) VALUES
(1, 'Depot'),
(2, 'Office'),
(3, 'Staff Quater'),
(4, 'Substation'),
(5, 'Station');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_status`
--

CREATE TABLE `maintenance_status` (
  `status_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintenance_status`
--

INSERT INTO `maintenance_status` (`status_id`, `name`) VALUES
(1, 'Cleaned and functional'),
(3, 'Rectification of non-functional RWH'),
(2, 'Target date for cleaning');

-- --------------------------------------------------------

--
-- Table structure for table `municipal_ward`
--

CREATE TABLE `municipal_ward` (
  `ward_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `municipal_ward`
--

INSERT INTO `municipal_ward` (`ward_id`, `name`) VALUES
(1, 'Ward A'),
(2, 'Ward B'),
(3, 'Ward C');

-- --------------------------------------------------------

--
-- Table structure for table `no_permission_reason`
--

CREATE TABLE `no_permission_reason` (
  `reason_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `no_permission_reason`
--

INSERT INTO `no_permission_reason` (`reason_id`, `name`) VALUES
(7, 'Application Not Submitted'),
(9, 'Authority Rejected'),
(2, 'Expired'),
(1, 'Nil'),
(10, 'Not Applicable'),
(3, 'Not Granted'),
(8, 'Permission Expired'),
(6, 'Permission Under Process');

-- --------------------------------------------------------

--
-- Table structure for table `phase`
--

CREATE TABLE `phase` (
  `phase_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phase`
--

INSERT INTO `phase` (`phase_id`, `name`) VALUES
(1, 'Phase-I'),
(2, 'Phase-II'),
(3, 'Phase-III'),
(4, 'Phase-IV');

-- --------------------------------------------------------

--
-- Table structure for table `revenue_district`
--

CREATE TABLE `revenue_district` (
  `district_id` int NOT NULL,
  `state_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revenue_district`
--

INSERT INTO `revenue_district` (`district_id`, `state_id`, `name`) VALUES
(1, 2, 'Central Delhi'),
(2, 2, 'East Delhi'),
(3, 2, 'New Delhi'),
(4, 2, 'North Delhi'),
(5, 2, 'North East Delhi'),
(6, 2, 'North West Delhi'),
(7, 2, 'Shahdara'),
(8, 2, 'South Delhi'),
(9, 2, 'South East Delhi'),
(10, 2, 'South West Delhi'),
(11, 2, 'West Delhi'),
(12, 1, 'Ahmednagar'),
(13, 1, 'Akola'),
(14, 1, 'Amravati'),
(15, 1, 'Aurangabad'),
(16, 1, 'Beed'),
(17, 1, 'Bhandara'),
(18, 1, 'Buldhana'),
(19, 1, 'Chandrapur'),
(20, 1, 'Dhule'),
(21, 1, 'Gadchiroli'),
(22, 1, 'Gondia'),
(23, 1, 'Hingoli'),
(24, 1, 'Jalgaon'),
(25, 1, 'Jalna'),
(26, 1, 'Kolhapur'),
(27, 1, 'Latur'),
(28, 1, 'Mumbai City'),
(29, 1, 'Mumbai Suburban'),
(30, 1, 'Nagpur'),
(31, 1, 'Nanded'),
(32, 1, 'Nandurbar'),
(33, 1, 'Nashik'),
(34, 1, 'Osmanabad'),
(35, 1, 'Palghar'),
(36, 1, 'Parbhani'),
(37, 1, 'Pune'),
(38, 1, 'Raigad'),
(39, 1, 'Ratnagiri'),
(40, 1, 'Sangli'),
(41, 1, 'Satara'),
(42, 1, 'Sindhudurg'),
(43, 1, 'Solapur'),
(44, 1, 'Thane'),
(45, 1, 'Wardha'),
(46, 1, 'Washim'),
(47, 1, 'Yavatmal'),
(48, 3, 'Agra'),
(49, 3, 'Aligarh'),
(50, 3, 'Ambedkar Nagar'),
(51, 3, 'Amethi'),
(52, 3, 'Amroha'),
(53, 3, 'Auraiya'),
(54, 3, 'Azamgarh'),
(55, 3, 'Baghpat'),
(56, 3, 'Bahraich'),
(57, 3, 'Ballia'),
(58, 3, 'Balrampur'),
(59, 3, 'Banda'),
(60, 3, 'Barabanki'),
(61, 3, 'Bareilly'),
(62, 3, 'Basti'),
(63, 3, 'Bhadohi'),
(64, 3, 'Bijnor'),
(65, 3, 'Bulandshahr'),
(66, 3, 'Chandauli'),
(67, 3, 'Chitrakoot'),
(68, 3, 'Deoria'),
(69, 3, 'Etah'),
(70, 3, 'Etawah'),
(71, 3, 'Farrukhabad'),
(72, 3, 'Fatehpur'),
(73, 3, 'Firozabad'),
(74, 3, 'Gautam Buddha Nagar'),
(75, 3, 'Ghaziabad'),
(76, 3, 'Ghazipur'),
(77, 3, 'Gonda'),
(78, 3, 'Gorakhpur'),
(79, 3, 'Hamirpur'),
(80, 3, 'Hapur'),
(81, 3, 'Hardoi'),
(82, 3, 'Hathras'),
(83, 3, 'Jalaun'),
(84, 3, 'Jaunpur'),
(85, 3, 'Jhansi'),
(86, 3, 'Kannauj'),
(87, 3, 'Kanpur Dehat'),
(88, 3, 'Kanpur Nagar'),
(89, 3, 'Kasganj'),
(90, 3, 'Kaushambi'),
(91, 3, 'Kushinagar'),
(92, 3, 'Lakhimpur Kheri'),
(93, 3, 'Lalitpur'),
(94, 3, 'Lucknow'),
(95, 3, 'Maharajganj'),
(96, 3, 'Mahoba'),
(97, 3, 'Mainpuri'),
(98, 3, 'Mathura'),
(99, 3, 'Mau'),
(100, 3, 'Meerut'),
(101, 3, 'Mirzapur'),
(102, 3, 'Moradabad'),
(103, 3, 'Muzaffarnagar'),
(104, 3, 'Pilibhit'),
(105, 3, 'Pratapgarh'),
(106, 3, 'Rae Bareli'),
(107, 3, 'Rampur'),
(108, 3, 'Saharanpur'),
(109, 3, 'Sambhal'),
(110, 3, 'Sant Kabir Nagar'),
(111, 3, 'Shahjahanpur'),
(112, 3, 'Shamli'),
(113, 3, 'Shravasti'),
(114, 3, 'Siddharthnagar'),
(115, 3, 'Sitapur'),
(116, 3, 'Sonbhadra'),
(117, 3, 'Sultanpur'),
(118, 3, 'Unnao'),
(119, 3, 'Varanasi'),
(120, 11, 'Ambala'),
(121, 11, 'Bhiwani'),
(122, 11, 'Charkhi Dadri'),
(123, 11, 'Faridabad'),
(124, 11, 'Fatehabad'),
(125, 11, 'Gurugram'),
(126, 11, 'Hisar'),
(127, 11, 'Jhajjar'),
(128, 11, 'Jind'),
(129, 11, 'Kaithal'),
(130, 11, 'Karnal'),
(131, 11, 'Kurukshetra'),
(132, 11, 'Mahendragarh'),
(133, 11, 'Nuh'),
(134, 11, 'Palwal'),
(135, 11, 'Panchkula'),
(136, 11, 'Panipat'),
(137, 11, 'Rewari'),
(138, 11, 'Rohtak'),
(139, 11, 'Sirsa'),
(140, 11, 'Sonipat'),
(141, 11, 'Yamunanagar');

-- --------------------------------------------------------

--
-- Table structure for table `rwh`
--

CREATE TABLE `rwh` (
  `rwh_id` int NOT NULL,
  `rwh_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_id` int NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '0',
  `catchment_id` int DEFAULT NULL,
  `total_roof_area_m2` decimal(9,2) DEFAULT NULL,
  `roof_area_percent` decimal(5,2) DEFAULT NULL,
  `pit_count` int DEFAULT NULL,
  `pit_capacity_cum` decimal(7,2) DEFAULT NULL,
  `maintenance_status_id` int DEFAULT NULL,
  `no_system_reason_id` int DEFAULT NULL,
  `line` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `station` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rwh_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rwh_cleaned_functional` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of _cleaning` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photograph_lat_long` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` int DEFAULT NULL,
  `createdBy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedAt` int DEFAULT NULL,
  `updatedBy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rwh`
--

INSERT INTO `rwh` (`rwh_id`, `rwh_code`, `site_id`, `is_available`, `catchment_id`, `total_roof_area_m2`, `roof_area_percent`, `pit_count`, `pit_capacity_cum`, `maintenance_status_id`, `no_system_reason_id`, `line`, `station`, `state`, `district`, `rwh_location`, `lat`, `longitude`, `rwh_cleaned_functional`, `date_of _cleaning`, `photograph_lat_long`, `createdAt`, `createdBy`, `updatedAt`, `updatedBy`, `ip`) VALUES
(1, NULL, 1, 1, 1, 1600.00, 60.00, 2, 7.50, 1, 1, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, 0, '', 0, '', ''),
(2, 'NA-RWH-01', 10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2', 'northwest', NULL, '11', NULL, NULL, '01/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(3, 'NA-RWH-01', 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2', 'northwest', NULL, '11', NULL, NULL, '21/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(4, 'NA-RWH-01', 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2', 'north west', 'ashwani', '11', NULL, NULL, '21/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(5, 'NA-RWH-01', 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2', NULL, NULL, '11', NULL, NULL, '21/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(9, NULL, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2', NULL, NULL, '77', NULL, NULL, '01/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(17, NULL, 67, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, '1', '3', '2', NULL, NULL, '11', NULL, 'Yes', '22/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(18, 'RHW-RWH-01', 9, 1, 11, 11.00, NULL, NULL, NULL, NULL, NULL, '1', '2', '2', NULL, NULL, '34', NULL, 'Yes', '15/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(19, 'NA-RWH-01', 888, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '4', '2', 'north west', NULL, '989', '22', 'Yes', '22/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(20, 'NA-RWH-01', 777, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', '2', NULL, NULL, '088', NULL, NULL, '09/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(21, 'NA-RWH-01', 770, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', '2', NULL, NULL, '99', NULL, 'Yes', '22/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(22, 'NA-RWH-01', 999, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', '2', NULL, NULL, '99', NULL, NULL, '15/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(23, NULL, 333, 1, 3213, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', '2', NULL, NULL, '22', NULL, 'Yes', '01/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(24, NULL, 11, 1, 11, 11.00, 11.00, 11, NULL, 11, 11, '1', '4', '2', NULL, NULL, '11', NULL, 'Yes', '03/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(25, 'RHE-RWH-01', 11, 1, 22, 2223.00, 22.00, 2, 22.00, NULL, NULL, '1', '2', '2', 'northe west', NULL, '33', NULL, NULL, '02/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(26, 'RHE-RWH-02', 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', '2', NULL, NULL, '33', '33', 'Yes', '15/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(27, 'RI-RWH-01', 11, 1, 11, 33.00, 11.00, 11, NULL, NULL, NULL, '1', '1', '2', 'north west', 'delhi', '333', '33', 'Yes', '08/04/2026', NULL, 2026, 'manager', 2026, 'manager', '::1'),
(28, 'NSHP-RWH-01', 1, 1, 33, 555.00, NULL, NULL, NULL, NULL, NULL, '1', '6', '2', 'north west', 'delhi', '44', NULL, NULL, '17/04/2026', NULL, 2026, '-1', 2026, '-1', '::1'),
(29, 'RWH001', 1, 1, NULL, 2500.00, NULL, 3, 75.00, NULL, NULL, 'Yellow Line', 'Kashmere Gate', 'Delhi', 'Central Delhi', 'Platform Area', '28.6671', '77.2276', 'Yes', '', NULL, NULL, 'admin', NULL, NULL, NULL),
(30, 'RWH002', 2, 1, NULL, 2200.00, NULL, 2, 60.00, NULL, NULL, 'Yellow Line', 'Civil Lines', 'Delhi', 'North Delhi', 'Parking Area', '28.6761', '77.2244', 'Yes', '', NULL, NULL, 'admin', NULL, NULL, NULL),
(31, 'RWH003', 3, 1, NULL, 3000.00, NULL, 4, 100.00, NULL, NULL, 'Blue Line', 'Rajiv Chowk', 'Delhi', 'Central Delhi', 'Depot Area', '28.6328', '77.2197', 'Yes', '', NULL, NULL, 'admin', NULL, NULL, NULL),
(32, 'RWH004', 4, 0, NULL, 1800.00, NULL, 2, 40.00, NULL, NULL, 'Blue Line', 'Anand Vihar', 'Delhi', 'East Delhi', 'Station Roof', '28.6468', '77.3152', 'No', '', NULL, NULL, 'admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `site_id` int NOT NULL,
  `line_id` int NOT NULL,
  `station_id` int NOT NULL,
  `structure_type_id` int NOT NULL,
  `phase_id` int NOT NULL,
  `state_id` int NOT NULL,
  `district_id` int NOT NULL,
  `ward_id` int NOT NULL,
  `locations_of_station_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`site_id`, `line_id`, `station_id`, `structure_type_id`, `phase_id`, `state_id`, `district_id`, `ward_id`, `locations_of_station_id`) VALUES
(1, 1, 1, 1, 1, 2, 2, 1, 0),
(2, 1, 1, 1, 1, 2, 2, 1, 0),
(3, 1, 2, 2, 2, 2, 2, 2, 0),
(4, 1, 3, 3, 3, 2, 2, 3, 0),
(5, 1, 4, 4, 1, 2, 2, 1, 0),
(6, 1, 5, 5, 2, 2, 2, 2, 0),
(7, 1, 1, 6, 3, 2, 2, 3, 0),
(8, 1, 2, 1, 1, 2, 2, 1, 0),
(9, 1, 3, 2, 2, 2, 2, 2, 0),
(10, 1, 4, 3, 3, 2, 2, 3, 0),
(11, 1, 5, 4, 1, 2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `name`) VALUES
(38, 'Andaman and Nicobar Islands'),
(4, 'Andhra Pradesh'),
(5, 'Arunachal Pradesh'),
(6, 'Assam'),
(7, 'Bihar'),
(39, 'Chandigarh'),
(8, 'Chhattisgarh'),
(40, 'Dadra and Nagar Haveli and Daman and Diu'),
(2, 'Delhi'),
(9, 'Goa'),
(10, 'Gujarat'),
(11, 'Haryana'),
(12, 'Himachal Pradesh'),
(41, 'Jammu and Kashmir'),
(13, 'Jharkhand'),
(14, 'Karnataka'),
(15, 'Kerala'),
(42, 'Ladakh'),
(43, 'Lakshadweep'),
(16, 'Madhya Pradesh'),
(1, 'Maharashtra'),
(17, 'Manipur'),
(18, 'Meghalaya'),
(19, 'Mizoram'),
(20, 'Nagaland'),
(21, 'Odisha'),
(44, 'Puducherry'),
(22, 'Punjab'),
(23, 'Rajasthan'),
(24, 'Sikkim'),
(25, 'Tamil Nadu'),
(26, 'Telangana'),
(27, 'Tripura'),
(3, 'Uttar Pradesh'),
(28, 'Uttarakhand'),
(29, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `station_id` int NOT NULL,
  `line_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`station_id`, `line_id`, `name`, `station_code`) VALUES
(1, 1, 'Rithala', 'RI'),
(2, 1, 'Rohini East', 'RHE'),
(3, 1, 'Rohini West', 'RHW'),
(4, 1, 'Pitampura', 'PTP'),
(5, 1, 'Kohat Enclave', 'KE'),
(6, 1, 'Netaji Subhash Place', 'NSHP'),
(7, 1, 'Kanhaiya Nagar', NULL),
(8, 1, 'Shakurpur', NULL),
(9, 1, 'Samaypur Badli', NULL),
(10, 1, 'Dilshad Garden', 'DSG'),
(11, 2, 'Samaypur Badli', NULL),
(12, 2, 'Jahangirpuri', NULL),
(13, 2, 'Adarsh Nagar', NULL),
(14, 2, 'Azadpur', NULL),
(15, 2, 'GTB Nagar', NULL),
(16, 2, 'Civil Lines', NULL),
(17, 2, 'Kashmere Gate', NULL),
(18, 2, 'Rajiv Chowk', NULL),
(19, 2, 'AIIMS', NULL),
(20, 2, 'HUDA City Centre', NULL),
(21, 3, 'Dwarka Sector 21', NULL),
(22, 3, 'Rajiv Chowk', NULL),
(23, 3, 'Mandi House', NULL),
(24, 3, 'Yamuna Bank', NULL),
(25, 3, 'Anand Vihar ISBT', NULL),
(26, 3, 'Noida City Centre', NULL),
(27, 3, 'Vaishali', NULL),
(28, 3, 'Rithala', NULL),
(29, 3, 'Janakpuri West', NULL),
(30, 3, 'Kirti Nagar', NULL),
(32, 1, 'Shaheed Sthal', 'SS'),
(33, 1, 'Mohan Nagar', 'MN'),
(34, 1, 'Raj Bagh', 'RB'),
(35, 1, 'Kaushambi', 'KS'),
(36, 1, 'Anand Vihar', 'AV'),
(37, 2, 'Kashmere Gate', 'KG'),
(38, 2, 'Civil Lines', 'CL'),
(39, 2, 'Vidhan Sabha', 'VS'),
(40, 2, 'GTB Nagar', 'GTB'),
(41, 2, 'Model Town', 'MT'),
(42, 3, 'Rajiv Chowk', 'RC'),
(43, 3, 'Barakhamba Road', 'BR'),
(44, 3, 'Mandi House', 'MH'),
(45, 3, 'Yamuna Bank', 'YB'),
(46, 3, 'Noida Sector 16', 'NS16'),
(47, 1, 'Shaheed Sthal', 'SS'),
(48, 1, 'Mohan Nagar', 'MN'),
(49, 1, 'Raj Bagh', 'RB'),
(50, 1, 'Kaushambi', 'KS'),
(51, 1, 'Anand Vihar', 'AV'),
(52, 2, 'Kashmere Gate', 'KG'),
(53, 2, 'Civil Lines', 'CL'),
(54, 2, 'Vidhan Sabha', 'VS'),
(55, 2, 'GTB Nagar', 'GTB'),
(56, 2, 'Model Town', 'MT'),
(57, 3, 'Rajiv Chowk', 'RC'),
(58, 3, 'Barakhamba Road', 'BR'),
(59, 3, 'Mandi House', 'MH'),
(60, 3, 'Yamuna Bank', 'YB'),
(61, 3, 'Noida Sector 16', 'NS16'),
(62, 1, 'Shaheed Sthal', 'SS'),
(63, 1, 'Mohan Nagar', 'MN'),
(64, 1, 'Raj Bagh', 'RB'),
(65, 1, 'Kaushambi', 'KS'),
(66, 1, 'Anand Vihar', 'AV'),
(67, 2, 'Kashmere Gate', 'KG'),
(68, 2, 'Civil Lines', 'CL'),
(69, 2, 'Vidhan Sabha', 'VS'),
(70, 2, 'GTB Nagar', 'GTB'),
(71, 2, 'Model Town', 'MT'),
(72, 3, 'Rajiv Chowk', 'RC'),
(73, 3, 'Barakhamba Road', 'BR'),
(74, 3, 'Mandi House', 'MH'),
(75, 3, 'Yamuna Bank', 'YB'),
(76, 3, 'Noida Sector 16', 'NS16'),
(77, 1, 'Shaheed Sthal', 'SS'),
(78, 1, 'Mohan Nagar', 'MN'),
(79, 1, 'Raj Bagh', 'RB'),
(80, 1, 'Kaushambi', 'KS'),
(81, 1, 'Anand Vihar', 'AV'),
(82, 2, 'Kashmere Gate', 'KG'),
(83, 2, 'Civil Lines', 'CL'),
(84, 2, 'Vidhan Sabha', 'VS'),
(85, 2, 'GTB Nagar', 'GTB'),
(86, 2, 'Model Town', 'MT'),
(87, 3, 'Rajiv Chowk', 'RC'),
(88, 3, 'Barakhamba Road', 'BR'),
(89, 3, 'Mandi House', 'MH'),
(90, 3, 'Yamuna Bank', 'YB'),
(91, 3, 'Noida Sector 16', 'NS16'),
(92, 1, 'Shaheed Sthal', 'SS'),
(93, 1, 'Mohan Nagar', 'MN'),
(94, 1, 'Raj Bagh', 'RB'),
(95, 1, 'Kaushambi', 'KS'),
(96, 1, 'Anand Vihar', 'AV'),
(97, 2, 'Kashmere Gate', 'KG'),
(98, 2, 'Civil Lines', 'CL'),
(99, 2, 'Vidhan Sabha', 'VS'),
(100, 2, 'GTB Nagar', 'GTB'),
(101, 2, 'Model Town', 'MT'),
(102, 3, 'Rajiv Chowk', 'RC'),
(103, 3, 'Barakhamba Road', 'BR'),
(104, 3, 'Mandi House', 'MH'),
(105, 3, 'Yamuna Bank', 'YB');

-- --------------------------------------------------------

--
-- Table structure for table `structure_type`
--

CREATE TABLE `structure_type` (
  `structure_type_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `structure_type`
--

INSERT INTO `structure_type` (`structure_type_id`, `name`) VALUES
(3, 'Depot'),
(6, 'Office'),
(5, 'RSS'),
(4, 'SQ'),
(1, 'Station (Elev)'),
(2, 'Station (UG)');

-- --------------------------------------------------------

--
-- Table structure for table `userlevelpermissions`
--

CREATE TABLE `userlevelpermissions` (
  `UserLevelID` int NOT NULL,
  `TableName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Permission` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userlevelpermissions`
--

INSERT INTO `userlevelpermissions` (`UserLevelID`, `TableName`, `Permission`) VALUES
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}authority', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}borewell', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}catchment_type', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}maintenance_status', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}municipal_ward', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}no_permission_reason', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}phase', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}revenue_district', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}rwh', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}site', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}state', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}station', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}structure_type', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}userlevelpermissions', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}userlevels', 0),
(-2, '{09B66DF2-3042-4D30-B82B-6A58E6DED404}users', 0),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}audittrail', 0),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}authority', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}borewell', 2031),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}catchment_type', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}line', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}locations_near_a_station', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}maintenance_status', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}municipal_ward', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}no_permission_reason', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}phase', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}revenue_district', 2016),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}rwh', 2031),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}site', 1408),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}state', 1408),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}station', 1920),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}structure_type', 1920),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}userlevelpermissions', 1920),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}userlevels', 1920),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}users', 1984),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}view_borewell_by_id', 2031),
(2, '{43F38EFB-847B-4102-A576-37947FDF7DCA}View1', 2031),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}audittrail', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}authority', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}borewell', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}catchment_type', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}line', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}locations_near_a_station', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}maintenance_status', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}municipal_ward', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}no_permission_reason', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}phase', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}revenue_district', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}rwh', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}site', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}state', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}station', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}structure_type', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}userlevelpermissions', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}userlevels', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}users', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}view_borewell_by_id', 458),
(3, '{43F38EFB-847B-4102-A576-37947FDF7DCA}View1', 458);

-- --------------------------------------------------------

--
-- Table structure for table `userlevels`
--

CREATE TABLE `userlevels` (
  `UserLevelID` int NOT NULL,
  `UserLevelName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userlevels`
--

INSERT INTO `userlevels` (`UserLevelID`, `UserLevelName`) VALUES
(-2, 'Anonymous'),
(-1, 'Administrator'),
(0, 'Default'),
(2, 'user'),
(3, 'DEPUTY HOD');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_level` int DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactivated` bit(1) NOT NULL DEFAULT b'0',
  `profile` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `user_level`, `password_hash`, `image`, `email`, `mobile`, `isactivated`, `profile`) VALUES
(1, 'borewell', 0, '1234', NULL, NULL, NULL, b'1', NULL),
(2, 'manager', 2, '12345', NULL, NULL, '7011914852', b'1', '{\"LoginRetryCount\":0,\"LastBadLoginDateTime\":\"\",\"LastPasswordChangedDate\":\"2026\\/02\\/12\",\"Sessions\":{\"2\":{\"SessionID\":\"o6a17c7fvigqfvfovla52j18g3\",\"LastAccessedDateTime\":\"2026\\/04\\/28 10:10:09\",\"ForceLogout\":false}},\"UserImage\":\"\"}'),
(4, 'admin', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'admin@dmrc.com', '9876543210', b'1', NULL),
(5, 'manager1', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'manager@dmrc.com', '9876543211', b'1', NULL),
(6, 'operator1', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'operator@dmrc.com', '9876543212', b'1', NULL),
(14, 'manager31', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'manager@dmrc.com', '9876543211', b'1', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_borewell_by_id`
-- (See below for the actual view)
--
CREATE TABLE `view_borewell_by_id` (
`borewell_id` int
,`site_id` int
,`borewell_number` int
,`is_available` tinyint(1)
,`distance_m` int
,`latitude` decimal(10,8)
,`longitude` decimal(11,8)
,`diameter_m` decimal(5,2)
,`depth_m` decimal(6,2)
,`permission_valid` tinyint(1)
,`authority_id` int
,`approval_date` date
,`validity_years` int
,`no_permission_reason_id` int
,`extraction_cum_per_day` decimal(8,2)
);

-- --------------------------------------------------------

--
-- Structure for view `view_borewell_by_id`
--
DROP TABLE IF EXISTS `view_borewell_by_id`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_borewell_by_id`  AS SELECT `borewell`.`borewell_id` AS `borewell_id`, `borewell`.`site_id` AS `site_id`, `borewell`.`borewell_number` AS `borewell_number`, `borewell`.`is_available` AS `is_available`, `borewell`.`distance_m` AS `distance_m`, `borewell`.`latitude` AS `latitude`, `borewell`.`longitude` AS `longitude`, `borewell`.`diameter_m` AS `diameter_m`, `borewell`.`depth_m` AS `depth_m`, `borewell`.`permission_valid` AS `permission_valid`, `borewell`.`authority_id` AS `authority_id`, `borewell`.`approval_date` AS `approval_date`, `borewell`.`validity_years` AS `validity_years`, `borewell`.`no_permission_reason_id` AS `no_permission_reason_id`, `borewell`.`extraction_cum_per_day` AS `extraction_cum_per_day` FROM `borewell` LIMIT 0, 1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audittrail`
--
ALTER TABLE `audittrail`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`authority_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `borewell`
--
ALTER TABLE `borewell`
  ADD PRIMARY KEY (`borewell_id`),
  ADD KEY `authority_id` (`authority_id`),
  ADD KEY `no_permission_reason_id` (`no_permission_reason_id`),
  ADD KEY `site_id` (`site_id`,`borewell_number`),
  ADD KEY `idx_lat_long` (`latitude`,`longitude`),
  ADD KEY `borewell_number` (`borewell_number`);

--
-- Indexes for table `catchment_type`
--
ALTER TABLE `catchment_type`
  ADD PRIMARY KEY (`catchment_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`line_id`);

--
-- Indexes for table `locations_near_a_station`
--
ALTER TABLE `locations_near_a_station`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `maintenance_status`
--
ALTER TABLE `maintenance_status`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `municipal_ward`
--
ALTER TABLE `municipal_ward`
  ADD PRIMARY KEY (`ward_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `no_permission_reason`
--
ALTER TABLE `no_permission_reason`
  ADD PRIMARY KEY (`reason_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`phase_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `revenue_district`
--
ALTER TABLE `revenue_district`
  ADD PRIMARY KEY (`district_id`) USING BTREE,
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `rwh`
--
ALTER TABLE `rwh`
  ADD PRIMARY KEY (`rwh_id`),
  ADD KEY `catchment_id` (`catchment_id`),
  ADD KEY `maintenance_status_id` (`maintenance_status_id`),
  ADD KEY `no_system_reason_id` (`no_system_reason_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`site_id`),
  ADD UNIQUE KEY `site_id` (`site_id`,`line_id`) USING BTREE,
  ADD KEY `station_id` (`station_id`),
  ADD KEY `structure_type_id` (`structure_type_id`),
  ADD KEY `phase_id` (`phase_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `ward_id` (`ward_id`),
  ADD KEY `locations_of_station` (`locations_of_station_id`) USING BTREE;

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`station_id`),
  ADD KEY `line_id` (`line_id`);

--
-- Indexes for table `structure_type`
--
ALTER TABLE `structure_type`
  ADD PRIMARY KEY (`structure_type_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `userlevelpermissions`
--
ALTER TABLE `userlevelpermissions`
  ADD PRIMARY KEY (`UserLevelID`,`TableName`);

--
-- Indexes for table `userlevels`
--
ALTER TABLE `userlevels`
  ADD PRIMARY KEY (`UserLevelID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audittrail`
--
ALTER TABLE `audittrail`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=863;

--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
  MODIFY `authority_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `borewell`
--
ALTER TABLE `borewell`
  MODIFY `borewell_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `catchment_type`
--
ALTER TABLE `catchment_type`
  MODIFY `catchment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `line`
--
ALTER TABLE `line`
  MODIFY `line_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `locations_near_a_station`
--
ALTER TABLE `locations_near_a_station`
  MODIFY `location_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maintenance_status`
--
ALTER TABLE `maintenance_status`
  MODIFY `status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `municipal_ward`
--
ALTER TABLE `municipal_ward`
  MODIFY `ward_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `no_permission_reason`
--
ALTER TABLE `no_permission_reason`
  MODIFY `reason_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phase`
--
ALTER TABLE `phase`
  MODIFY `phase_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `revenue_district`
--
ALTER TABLE `revenue_district`
  MODIFY `district_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `rwh`
--
ALTER TABLE `rwh`
  MODIFY `rwh_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `site_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `station_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `structure_type`
--
ALTER TABLE `structure_type`
  MODIFY `structure_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borewell`
--
ALTER TABLE `borewell`
  ADD CONSTRAINT `borewell_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `site` (`site_id`),
  ADD CONSTRAINT `borewell_ibfk_3` FOREIGN KEY (`no_permission_reason_id`) REFERENCES `no_permission_reason` (`reason_id`);

--
-- Constraints for table `revenue_district`
--
ALTER TABLE `revenue_district`
  ADD CONSTRAINT `FK_revenue_district_state` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `site_ibfk_1` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`),
  ADD CONSTRAINT `site_ibfk_2` FOREIGN KEY (`structure_type_id`) REFERENCES `structure_type` (`structure_type_id`),
  ADD CONSTRAINT `site_ibfk_3` FOREIGN KEY (`phase_id`) REFERENCES `phase` (`phase_id`),
  ADD CONSTRAINT `site_ibfk_4` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`),
  ADD CONSTRAINT `site_ibfk_5` FOREIGN KEY (`district_id`) REFERENCES `revenue_district` (`district_id`),
  ADD CONSTRAINT `site_ibfk_6` FOREIGN KEY (`ward_id`) REFERENCES `municipal_ward` (`ward_id`);

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `FK_station_line` FOREIGN KEY (`line_id`) REFERENCES `line` (`line_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
