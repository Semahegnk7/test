-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 02, 2024 at 03:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsmisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `posted_by` varchar(255) DEFAULT NULL,
  `publish_date` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `last_modified` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `content`, `posted_by`, `publish_date`, `thumbnail`, `title`, `status`, `last_modified`) VALUES
(122, ', sit amet consectetur adipisicing elit. Voluptas dolor, sunt corporis    ad deleniti provident quia at architecto quasi. Laudantium modi et    iusto consequuntur voluptatum quam asperiores voluptate, obcaecati eaque. quia at architecto quasi. Laudantium modi et    iusto', 'admin123', '2024-01-01 10:32:03 am', 'Hr Department hhh2024-01-01_11-12-33_am.jpg', 'Lorem ipsum dolor', 'Active', '2024-01-02 12:06:39 pm'),
(123, 'An advantage of having a website is your business information and details about your products and services can be accessed by anyone, no matter where they are on the planet or what time of day it is.', 'admin123', '2024-01-01 10:34:04 am', 'City Administrator2024-01-01_11-12-43_am.png', 'website is your business information ', 'Active', '2024-01-01 11:12:43 am'),
(124, 'The MatButton class applies to native button elements and captures the appearances for \"text button\", \"outlined button\", and \"contained button\" per the Material Design specification. MatButton additionally captures an additional \"flat\" appearance, which matches \"contained\" but without elevation.', 'admin123', '2024-01-01 10:35:55 am', 'Business\' Team2024-01-01_11-12-56_am.jpg', 'native button elements and captures the appearances', 'Active', '2024-01-01 11:12:56 am');

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `date_send` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reply_status` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `comp_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `date_send`, `email`, `message`, `name`, `reply_status`, `subject`, `address`, `comp_email`, `phone`) VALUES
(94, '2023-12-21 08:24:10 am', 'semahegnk@gmail.com', 'abebe beso bella', 'sem', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `document_type` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `uploaded_by` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `goth`
--

CREATE TABLE `goth` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `goth_name` varchar(255) DEFAULT NULL,
  `kebele_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goth`
--

INSERT INTO `goth` (`id`, `description`, `goth_name`, `kebele_name`) VALUES
(2, 'asfsafd', 'goth2', 'kebel 2'),
(3, 'Chelekileke goth', 'Chelekileke', 'Tulefa 02'),
(7, 'Bole zoth in tulefa 02 kebele', 'Bole', 'Tulefa 02');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(128);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `id` int(11) NOT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `educational_level` varchar(255) DEFAULT NULL,
  `employed_at` varchar(255) DEFAULT NULL,
  `employed_date` varchar(255) DEFAULT NULL,
  `employee_status` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `graduated_at` varchar(255) DEFAULT NULL,
  `graduated_date` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `termination_date` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `job_seeker_letter` varchar(255) DEFAULT NULL,
  `goth_name` varchar(255) DEFAULT NULL,
  `kebele_name` varchar(255) DEFAULT NULL,
  `trained_at` varchar(255) DEFAULT NULL,
  `trained_date` varchar(255) DEFAULT NULL,
  `skill_covered` varchar(255) DEFAULT NULL,
  `trained_end_date` varchar(255) DEFAULT NULL,
  `employment_type` varchar(255) DEFAULT NULL,
  `house_wife` varchar(255) DEFAULT NULL,
  `is_disabled` varchar(255) DEFAULT NULL,
  `return_from_arab` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `training_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`id`, `date_of_birth`, `educational_level`, `employed_at`, `employed_date`, `employee_status`, `first_name`, `gender`, `graduated_at`, `graduated_date`, `is_active`, `last_name`, `middle_name`, `password`, `phone`, `termination_date`, `user_name`, `department`, `description`, `job_seeker_letter`, `goth_name`, `kebele_name`, `trained_at`, `trained_date`, `skill_covered`, `trained_end_date`, `employment_type`, `house_wife`, `is_disabled`, `return_from_arab`, `experience`, `training_type`) VALUES
(26, '16', 'diploma', NULL, NULL, 'HIRED', 'nati', 'Female', 'sfj', '2023-11-15T21:00:00.000Z', b'1', 'Abeje', 'chala', '$2a$10$98PdYKUsVTALVSzCFlk08.JkCnMtbZ5JrGGRcITQXQhdxGyFFhvG2', '09257487', NULL, 'kafj', 'jsfj', 'sdfghjk', 'dfghj', 'test got', 'kebel 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '12', 'sgsg', 'qaza', NULL, 'HIRED', 'test', 'Male', 'sg', '2001-11-30T21:00:00.000Z', b'1', 'sgs', 'sgsg', '$2a$10$HEnpLW78Ur/lsNN5VIDC9uFmU50jn77b17aSPUmMZtaVcezEhhtW6', 'sgs', '', 'sgsg', 'sgs', 'dgsg', 'dgdg', 'new', 'kebel 2', 'dfgdsg', '1121-02-11', 'sgfsd', '55555-04-12', 'Permanent', NULL, NULL, NULL, NULL, NULL),
(42, '12', 'dsgsdg', NULL, NULL, 'SEEKER', 'dfgsd', 'Female', 'dgsg', '0122-12-31T21:32:44.000Z', b'0', 'sdgsg', 'sgfs', '$2a$10$zaqt6f994N5OaS0yW.elYO8JK510cZygjwOckL./.8gyOZ1DjwlPe', 'sgsg', NULL, 'sgsg', 'resert', 'dsgsd', '334', 'test got', 'kebel 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '12', '12', NULL, NULL, 'SEEKER', 'sdfgsdg', 'Male', 'sfsf', '2001-11-30T21:00:00.000Z', b'0', 'sfdfgsg', 'sdfgsdfg', '$2a$10$hnJa/B.gFXjhGYBe29tnm.uOdw6pxdMS4aLQbnxxt7P41LkUpTbAO', 'sdfgs', NULL, 'sfdgsg', 'computer ', '', 'dgdg', 'test got', 'kebel 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '12', '12', 'Sheno', NULL, 'HIRED', 'Amanu', 'Male', 'sfsf', '2001-11-30T21:00:00.000Z', b'1', 'sfdfgsg', 'feleke', '$2a$10$ElbmN0vZH5vDcon0GCqkA.nkNdPzD2klfbrU3JA9p0sxJJddy5qay', 'sdfgs', '2123-05-12', 'sfdgsg', 'computer ', '', 'dgdg', 'test got', 'kebel 2', 'sdfa', '12/12/2021', 'computer', '13/12/2024', 'Contract', NULL, NULL, NULL, NULL, NULL),
(47, '21', 'afa', NULL, NULL, 'TRAINED', 'sfdsfd', 'Female', 'dfgdfg', '2001-11-30T21:00:00.000Z', b'1', 'afda', 'safdsa', '$2a$10$8MjTNXxLLdDGdKIl4u6XV.T7ay3LGYJbhsa1dFRrlvniNKtSNzlpC', 'afda', NULL, 'amse@gmail.com', 'dgdsg', 'dfg', 'dfgdsg', 'new', 'kebel 2', 'sfafaf', '1212-02-12', 'dafd', '12121-12-31', NULL, NULL, NULL, NULL, NULL, NULL),
(48, '21', 'dgdg', NULL, NULL, 'SEEKER', 'gfsdgf', 'Male', 'dfgsdg', '2001-11-30T21:00:00.000Z', b'0', 'sgsg', 'sgfsg', '$2a$10$M6zSrKSY9P9nvoSWMc1Rw.WkTG5N/204iH/j2E6SqggZxwNtgiAmu', '3435646', NULL, 'amse@gmail.com2', 'dfgds', '', 'dgdg', 'new', 'kebel 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '24', 'Degree', NULL, NULL, 'HIRED', 'Melkamu', 'Male', 'DB', '2023-12-10T21:00:00.000Z', b'1', 'Sifter', 'Tebeje', '$2a$10$trggG9BR5uiNvQ6qWBYjreLJF6rQ2L2SyFjE4sb6kFVTmvfjHUKGe', '0965874123', NULL, 'melk@gamil.com', 'CS', 'Computer , communication', 'sfsaf', 'test got', 'kebel 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '12', 'afaf', NULL, NULL, 'TRAINED', 'sfaf', 'Female', 'sfaf', '2023-12-20T21:00:00.000Z', b'1', 'afa', 'afaf', '$2a$10$dmZUgSGjaHkjg3U1HHk4PeZCHwWIsW5YQFFrf3vTt0Jm9Q5RP44kO', 'afaf', NULL, 'sem@gmail.com', 'afa', '', 'sfsf', 'goth2', 'kebel 2', '', '0234-04-23', 'avdf', '0034-02-04', NULL, NULL, NULL, NULL, NULL, NULL),
(64, '12', 'afaf', NULL, NULL, 'Seeker', 'rsgf', 'Female', 'afa', '2023-12-29T21:00:00.000Z', b'0', 'sgs', 'sdfgsdg', '$2a$10$TwVViEDeSU33eanPNz3o../02Cvl3ByqwEQd.RzWRPS1bkTaADk42', 'sfsf', NULL, 'sfgsg@gmai.com', 'afa', '', '', 'goth2', 'kebel 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '23', 'sss', NULL, NULL, 'Seeker', 'sss', 'Female', 'sss', '2023-12-21T21:00:00.000Z', b'0', 'sss', 'ssss', '$2a$10$M6y4ks/bMUh066pNJLdZIuZNtz4RfXxoV9kV6kOpq5z.LSq4Li8J.', 'sss', NULL, 'sss@ss', 'sss', 'ss', 'ssss', 'Chelekileke', 'Tulefa 02', NULL, NULL, NULL, NULL, NULL, 'true', 'true', 'true', NULL, NULL),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, '$2a$10$bYNxeISZeiVSxk3Tql0jUO./7fgRLidHnptMGhoM6mTUuDMSw3MMa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '23', 'Degree', NULL, NULL, 'SEEKER', 'Amare', 'Female', 'Debre Berhan', '2021-06-08T21:00:00.000Z', b'0', 'Melkamu', 'terefe', '$2a$10$YD/PmGe6QgAI/x/QQvqtjOLdRfkp9L.6VKxYaimUhmtcdjDvXTpRm', 'jsfoiwre', NULL, 'am@gmail.com', 'CS', '', 'no', 'goth2', 'kebel 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '23', 'Illiterate', NULL, NULL, 'SEEKER', 'dfgsfg', 'Female', 'asfdf', '2023-12-21T21:00:00.000Z', b'0', 'akfaf', 'safas', '$2a$10$IItyHHHLiyl2XAz8jTo5RuuyExSGaAiBKmHUmSYKQ2wKSDo7LZSxe', '2938', NULL, 'ada@gmai.com', '', '', 'ada@gmai.com.docx', 'Chelekileke', 'Tulefa 02', NULL, NULL, NULL, NULL, NULL, 'true', 'true', '', '', NULL),
(85, '12', 'Illiterate', NULL, NULL, 'SEEKER', 'ghsfg', 'Female', 'dfgs', '2023-12-21T21:00:00.000Z', b'0', 'klsdgj', 'kdgj', '$2a$10$yiUXndSn6y6g/aSVT8n5iuf71pjLfNS7pusvnedO/fA2YSYPhYRxK', 'ksgj', NULL, 'ksgj@gmai.com', '', '', 'ksgj@gmai.com.pdf', 'goth2', 'kebel 2', NULL, NULL, NULL, NULL, NULL, '', 'true', '', '', NULL),
(126, '21', '5-8', NULL, NULL, 'SEEKER', 'Amanu', 'Male', 'Sheno', '2025-10-29T21:00:00.000Z', b'0', 'Aster', 'Melkamu', '$2a$10$zOh53kHP/n33HpBB93GTHeibTNm0.N0ipMojp7qjQfGjP/jnYYCS2', '4587956', NULL, 'amanu@gmaiil.com', '', '', '', 'Bole', 'Tulefa 02', NULL, NULL, NULL, NULL, NULL, '', 'true', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kebele`
--

CREATE TABLE `kebele` (
  `id` int(11) NOT NULL,
  `kebele_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kebele`
--

INSERT INTO `kebele` (`id`, `kebele_name`, `description`) VALUES
(3, 'kebel 2', 'kebele 2 description'),
(4, 'Tulefa 02', 'tulefa 02 kebele');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `content`, `status`, `subject`, `timestamp`, `type`, `user_id`) VALUES
(16, 'Jobseker named sem@gmail.com\'s status is changed to TRAINED By User namedamen@gmail.com', 0, 'Jobseeker Status Change', '2024-01-02_16-27-21_pm', 'info', 'mel@gmail.com'),
(17, 'Jobseker named sgsg\'s status is changed to HIRED By User named amen@gmail.com', 0, 'Jobseeker Status Change', '2024-01-02_16-32-32_pm', 'info', 'mayer'),
(13, 'Report with name one is Accepted By Zone user admin@hibretbank.com.et with remark afaf', 1, 'Report Accepted', '2023-12-28 15:12:13 pm', 'warning', 'amen@gmail.com'),
(5, 'Report with name test report status is changed from Draft to Reviewed By test', 1, 'Report Reviewed', '2023-12-28 15:12:43 pm', 'warning', 'test'),
(6, 'Report with name test report status is changed from Reviewed to Sent By test', 0, 'Report Sent', '2023-12-28 15:12:04 pm', 'warning', 'test'),
(7, 'Report with name test report is Rejected By Zone user ext with remark Oh What an amazing report but your document is not quite visible', 0, 'Report Rejected', '2023-12-28 15:12:21 pm', 'warning', 'test'),
(12, 'Report with name sfsaf is Accepted By Zone user admin@hibretbank.com.et with remark dfgsgsg', 1, 'Report Accepted', '2023-12-28 15:12:52 pm', 'warning', 'amen@gmail.com'),
(15, 'Jobseker named sem@gmail.com\'s status is changed to TRAINED By User namedamen@gmail.com', 1, 'Jobseeker Status Change', '2024-01-02_16-27-21_pm', 'info', 'amen@gmail.com'),
(10, 'Report with name sfasf status is changed from Draft to Reviewed By amen@gmail.com', 1, 'Report Reviewed', '2023-12-28 15:12:33 pm', 'success', 'amen@gmail.com'),
(11, 'Report with name dsfgsd status is changed from Draft to Reviewed By amen@gmail.com', 1, 'Report Reviewed', '2023-12-28 15:12:36 pm', 'success', 'amen@gmail.com'),
(14, 'Report with name sfsaf is Rejected By Zone user admin@hibretbank.com.et with remark afaf', 1, 'Report Rejected', '2023-12-28 15:12:23 pm', 'warning', 'amen@gmail.com'),
(18, 'Jobseker named sgsg\'s status is changed to HIRED By User named amen@gmail.com', 0, 'Jobseeker Status Change', '2024-01-02_16-32-32_pm', 'info', 'amen@gmail.com'),
(19, 'Jobseker named sgsg\'s status is changed to HIRED By User named amen@gmail.com', 0, 'Jobseeker Status Change', '2024-01-02_16-32-32_pm', 'info', 'mel@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `other_industry`
--

CREATE TABLE `other_industry` (
  `id` int(11) NOT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `core_values` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `industry_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `mission` longtext DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `thumnail` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `vission` longtext DEFAULT NULL,
  `leader_name` varchar(255) DEFAULT NULL,
  `leader_photo` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_industry`
--

INSERT INTO `other_industry` (`id`, `contact_info`, `core_values`, `description`, `industry_name`, `location`, `mission`, `short_description`, `thumnail`, `type`, `vission`, `leader_name`, `leader_photo`, `position`, `status`) VALUES
(2, '251967871695', 'Only since the late 19th century has Addis Ababa been the capital of the Ethiopian st', 'Addis Ababa, capital and largest city of Ethiopia. It is located on a well-watered plateau surrounded by hills and mountains in the geographic centre of the country.\n\nOnly since the late 19th century has Addis Ababa been the capital of the Ethiopian state. Its immediate predecessor, Entoto, was situated on a high tableland and was found to be unsatisfactory because of extreme cold and an acute shortage of firewood. The empress Taitu, wife of Emperor Menilek II (reigned 1889–1913), persuaded the emperor to build a house near the hot springs at the foot of the', 'Addis Ababa Technology', 'Addis Ababa', 'Only since the late 19th century has Addis Ababa been the capital of the Ethiopian state. Its immediate predecessor, Entoto, was situated on a high tableland and was found to', 'fasdfasdfas fasfd asdfasddf as dfasd', '2023-12-29_15-36-57_pm.jpg', 'Technology', 'Only since the late 19th century has Addis Ababa been the capital of the Ethiopian state. Its immediate predecessor, Entoto, was situated on a high tableland and was found to', 'sdfasdf', NULL, 'asdfad', 0),
(4, '85858544554', ' the building of the first phase was started in May 2006. Instruction began in January 2007 with the enrolment of 725 students in the Faculty of Education with two streams, namely Businesses Education and Natural Science teaching. In the academic', 'The foundation of the university was laid down in May 2005 and the building of the first phase was started in May 2006. Instruction began in January 2007 with the enrolment of 725 students in the Faculty of Education with two streams, namely Businesses Education and Natural Science teaching. In the academic year of 2007/8, three additional Faculties (Business and Economics, Health Science and Agriculture) were opened, and the enrolment reached 2483. Furthermore, the university broadened its program and enrolled 393 summer/students and 500 Extension/evening students in 2006 and 2007 respectively. After three more construction phases, in 2012 there were about 10,000 students at the university', 'Debre Birhan University', 'Debre Birhan ', 'According to the 2019 Registrar Office report, DBU has approximately 29,304 students pursuing regular and extension undergraduate and graduate studies. Of these, more than 11,000 are regular undergraduat', 'The foundation of the university was laid down in May 2005 and the building of the first phase was started in May 2006. Instruction began in January 2007 with the enrolment of 725 students in the Faculty of Education with two streams, namely Businesses', '2023-12-29_15-44-05_pm.jpg', ' University', 'and the enrolment reached 2483. Furthermore, the university broadened its program and enrolled 393 summer/students and 500 Extension/evening students in 2006 and 2007 respectively. After three more construction phases', NULL, NULL, NULL, 1),
(5, 'sf', 'sdf', 'asdf', 'sdfas', 'sf', 'sf', 'asd', '2023-12-29_16-40-37_pm.jpg', 'sdf', 'sf', 'asdf', '2023-12-29_16-40-37_pm.jpg', 'sadd', 1),
(6, 'dfgdf', 'sdfg', 'sdfg', 'dfg', 'fg', 'g', 'dfg', '2023-12-29_16-44-10_pmAddis-Ababa-Eth.jpg.jpg', 'dfdfg', 'dfg', 'dfg', '2023-12-29_16-44-10_pmshiba2.jpg.jpg', 'dfgsdfg', 0),
(7, 'bulga@gmail.com', 'e ability to store\n, retrieve, and process data.\n You may already know \nthat you can use', 'The full form of the Computer is Common Operating Machine Purposely Used for Technological and Educational Research. Computer.\nA computer is an electronic device that manipulates information, or data. It has the ability to store, retrieve, and process data. You may already know that you can use a computer to type documents, send email, play', 'mamaru industry', 'Bulga', 'Used for Technological and Educational Research. Computer.\nA compu', 'A computer is an electronic device that manipulates information, or data. It has the ability to store, retrieve, and process data. You may already know that you can use a computer to type documents, send email, play', '2023-12-30_12-17-35_pmAdmin2.png.png', 'Factory', 'e ability to store, retrieve, and process data. You may already know that you can use', 'Shewangizaw', '2023-12-30_12-17-36_pmdani bro.JPG.JPG', 'Director', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permission_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `description`, `permission_name`) VALUES
(1, 'Job Seeker Registration', 'JOB_SEEKER_REGISTRATION'),
(2, 'Upload bulk data', 'UPLOAD_BULK_DATA');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_added` varchar(255) DEFAULT NULL,
  `f_remark` varchar(255) DEFAULT NULL,
  `last_modified` varchar(255) DEFAULT NULL,
  `last_seen` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `uploaded_by` varchar(255) DEFAULT NULL,
  `sira_hidet` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `woreda` varchar(255) DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `Acceptance_Status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `name`, `attachment`, `status`, `date_added`, `f_remark`, `last_modified`, `last_seen`, `remark`, `uploaded_by`, `sira_hidet`, `office`, `woreda`, `zone`, `Acceptance_Status`) VALUES
(104, 'two', 'amen@gmail.com_2023-12-21_12-10-25_pm.pdf', 'Reviewed', '2023-12-21 12:10:25 pm', 'this is very good but its concerning', '2023-12-28 10:35:25 am', NULL, 'Deo to you', 'amen@gmail.com', 'PROCESS_EXPERT', 'Trained and Employee', NULL, NULL, 'Pending'),
(105, 'three', 'amen@gmail.com_2023-12-21_12-10-51_pm.pdf', 'Reviewed', '2023-12-21 12:10:51 pm', 'three desc', NULL, NULL, 'Deo to you', 'amen@gmail.com', 'PROCESS_EXPERT', 'Trained and Employee', NULL, NULL, 'Pending'),
(106, 'sfaf', 'amen@gmail.com_2023-12-21_12-13-42_pm.sql', 'Reviewed', '2023-12-21 12:13:42 pm', 'sfsfsfsf', NULL, NULL, 'sfsfsfsf', 'amen@gmail.com', 'PROCESS_EXPERT', 'Trained and Employee', NULL, NULL, 'Pending'),
(107, 'sfsaf', 'amen@gmail.com_2023-12-21_12-13-59_pm.xlsx', 'Draft', '2023-12-21 12:13:59 pm', 'afaf', NULL, NULL, 'dfgsgsg', 'amen@gmail.com', 'PROCESS_EXPERT', NULL, NULL, NULL, 'Rejected'),
(103, 'one', 'amen@gmail.com_2023-12-21_12-03-59_pm.pdf', 'Sent', '2023-12-21 12:03:59 pm', 'afaf', NULL, NULL, 'afaf', 'amen@gmail.com', 'PROCESS_EXPERT', 'Trained and Employee', NULL, NULL, 'Accepted'),
(108, 'asfdasf', 'amen@gmail.com_2023-12-21_12-14-14_pm.pdf', 'Reviewed', '2023-12-21 12:14:14 pm', NULL, NULL, NULL, 'afaf', 'amen@gmail.com', 'PROCESS_EXPERT', NULL, NULL, NULL, 'Pending'),
(109, 'dfgs', 'amen@gmail.com_2023-12-21_14-11-47_pm.pdf', 'Reviewed', '2023-12-21 14:11:47 pm', NULL, NULL, NULL, 'sgsg', 'amen@gmail.com', 'PROCESS_EXPERT', NULL, NULL, NULL, 'Pending'),
(110, 'sfafd', 'admin123_2023-12-21_14-45-00_pm.pdf', 'Sent', '2023-12-21 14:45:00 pm', NULL, NULL, NULL, 'sfsgf', 'admin123', 'ADMIN', NULL, NULL, NULL, 'Pending'),
(111, 'gfdsfg', 'admin123_2023-12-21_14-48-01_pm.png', 'Sent', '2023-12-21 14:48:01 pm', NULL, NULL, NULL, 'sgsgf', 'admin123', 'ADMIN', NULL, NULL, NULL, 'Pending'),
(113, 'sfasf', 'amen@gmail.com_2023-12-28_09-14-02_am.pdf', 'Reviewed', '2023-12-28 09:14:01 am', NULL, NULL, NULL, 'Deo to you', 'amen@gmail.com', 'PROCESS_EXPERT', NULL, NULL, NULL, 'Pending'),
(116, 'test report', 'test2023-12-28_15-19-05_pm.pdf', 'Draft', '2023-12-28 15:12:55 pm', 'Oh What an amazing report but your document is not quite visible', '2023-12-28 15:19:05 pm', NULL, 'Abel', 'test', 'INDUSTRY_EXTENSION', NULL, NULL, NULL, 'Rejected'),
(118, 'xfbxvvb', 'amen@gmail.com_2023-12-28_15-45-14_pm.pdf', 'Draft', '2023-12-28 15:45:14 pm', NULL, NULL, NULL, 'dsfgsgf', 'amen@gmail.com', 'PROCESS_EXPERT', NULL, NULL, NULL, 'Pending'),
(119, 'dsfgsd', 'amen@gmail.com_2023-12-28_15-45-27_pm.pdf', 'Reviewed', '2023-12-28 15:45:27 pm', NULL, NULL, NULL, 'Deo to you', 'amen@gmail.com', 'PROCESS_EXPERT', NULL, NULL, NULL, 'Pending'),
(120, 'fghdfghdfhg', 'amen@gmail.com_2023-12-28_15-45-47_pm.png', 'Draft', '2023-12-28 15:45:47 pm', NULL, NULL, NULL, 'dhgdfhg', 'amen@gmail.com', 'PROCESS_EXPERT', NULL, NULL, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `description`, `role_name`) VALUES
(1, 'admin role', 'ADMIN'),
(2, 'mayer role', 'MAYER'),
(3, 'sira hidet ', 'PROCESS_EXPERT'),
(4, 'the manager of process offices ', 'WOREDA_COORDINATOR'),
(5, 'zone coordinator for each process expert', 'ZONE_COORDINATOR'),
(6, 'education and training sira hidet (ትምህርትና ስልጠና የስራ ሂደት)', 'EDUCATION_AND_TRAINING'),
(7, 'Industry extension  work process', 'INDUSTRY_EXTENSION'),
(8, 'Market preparation (ገበያ ዝግጅት የስራ ሂደት)', 'MARKET_PREPARATION'),
(9, 'Planning work process( እቅድ እና ዝግጅት የስራ ሂደት)', 'PLANNING'),
(11, 'CAPACITY_BUILDING የስራ ሂደት)', 'CAPACITY_BUILDING'),
(12, 'WORK_AND_DEPLOYMENT( የተቁዋም አቅም ግንባታ)', 'WORK_AND_DEPLOYMENT'),
(13, 'sira hidet ', 'ZONE_PROCESS_EXPERT'),
(14, 'education and training sira hidet (ትምህርትና ስልጠና የስራ ሂደት)', 'ZONE_EDUCATION_AND_TRAINING'),
(15, 'Industry extension  work process', 'ZONE_INDUSTRY_EXTENSION'),
(16, 'Market preparation (ገበያ ዝግጅት የስራ ሂደት)', 'ZONE_MARKET_PREPARATION'),
(17, 'Planning work process( እቅድ እና ዝግጅት የስራ ሂደት)', 'ZONE_PLANNING'),
(18, 'CAPACITY_BUILDING የስራ ሂደት)', 'ZONE_CAPACITY_BUILDING'),
(19, 'WORK_AND_DEPLOYMENT( የተቁዋም አቅም ግንባታ)', 'ZONE_WORK_AND_DEPLOYMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `comp_values` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `eastablishment` varchar(255) DEFAULT NULL,
  `marque` varchar(255) DEFAULT NULL,
  `media_icon` varchar(255) DEFAULT NULL,
  `mission` varchar(255) DEFAULT NULL,
  `operationg_hour` varchar(255) DEFAULT NULL,
  `org_structure` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `public_reg` varchar(255) DEFAULT NULL,
  `vission` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `address`, `comp_values`, `company_email`, `eastablishment`, `marque`, `media_icon`, `mission`, `operationg_hour`, `org_structure`, `phone`, `public_reg`, `vission`) VALUES
(2, 'Bulg City Administrtaion', NULL, 'bulga@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'true', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `educational_level` varchar(255) DEFAULT NULL,
  `employee_status` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `hire_date` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `termination_date` varchar(255) DEFAULT NULL,
  `biography` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `sira_hidet` varchar(255) DEFAULT NULL,
  `woreda` varchar(255) DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `user_name`, `is_active`, `role`, `password`, `address`, `date_of_birth`, `department`, `educational_level`, `employee_status`, `experience`, `first_name`, `gender`, `hire_date`, `last_name`, `middle_name`, `phone`, `termination_date`, `biography`, `user_image`, `office`, `sira_hidet`, `woreda`, `zone`) VALUES
(49, 'admin123', b'1', 'ADMIN', '$2a$10$5WABmFJZHqa9walyxc..G.mcWkA8b0jAKtX9dDRyeDyUjoZSjw97S', 'aa', '2001-11-30T21:00:00.000Z', 'Information System', NULL, '098834234', 'che', 'Admin', '12', '2001-11-30T21:00:00.000Z', '123', 'User', 'Male', '2001-11-30T21:00:00.000Z', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'amen@gmail.com', b'1', 'PROCESS_EXPERT', '$2a$10$5WABmFJZHqa9walyxc..G.mcWkA8b0jAKtX9dDRyeDyUjoZSjw97S', 'afaf', NULL, 'afa', NULL, NULL, NULL, 'sfdasf', 'Female', NULL, 'afa', 'afasf', 'afa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'mel@gmail.com', b'1', 'WOREDA_COORDINATOR', '$2a$10$5WABmFJZHqa9walyxc..G.mcWkA8b0jAKtX9dDRyeDyUjoZSjw97S', 'kfa', NULL, 'afjafj', NULL, NULL, NULL, 'melaku', 'Male', NULL, 'mulualem', 'Terefe', 'fjafj', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'mayetb@hibretbank.com.et', b'1', 'ZONE_COORDINATOR', '$2a$10$5WABmFJZHqa9walyxc..G.mcWkA8b0jAKtX9dDRyeDyUjoZSjw97S', 'sfsf', NULL, 'sfsf', NULL, NULL, NULL, 'sfsfsf', 'Male', NULL, 'sfsf', 'sfsf', 'sfsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'admin@hibretbank.com.et', b'1', 'ZONE_PROCESS_EXPERT', '$2a$10$5WABmFJZHqa9walyxc..G.mcWkA8b0jAKtX9dDRyeDyUjoZSjw97S', 'sfdasf', NULL, 'afdafd', NULL, NULL, NULL, 'sfsfsf', 'Male', NULL, 'afaf', 'afasf', 'afaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'test', b'1', 'INDUSTRY_EXTENSION', '$2a$10$5WABmFJZHqa9walyxc..G.mcWkA8b0jAKtX9dDRyeDyUjoZSjw97S', 'sfasfda', NULL, 'afafa', NULL, NULL, NULL, 'test', 'Female', NULL, 'test', 'test', 'ssfaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'ext', b'1', 'ZONE_INDUSTRY_EXTENSION', '$2a$10$5WABmFJZHqa9walyxc..G.mcWkA8b0jAKtX9dDRyeDyUjoZSjw97S', 'sfsf', NULL, 'afasf', NULL, NULL, NULL, 'fhdfgh', 'Male', NULL, 'dfghdhg', 'dhdhg', 'asfasf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'mayer', b'1', 'MAYER', '$2a$10$OqOJvkjuf.pqd00z31QDUO7kCQuBEdZYmnEAqnjaXvgf3rYHq11x.', 'l;j;l', NULL, 'jk;lj', NULL, NULL, NULL, 'gdfghd', 'Male', NULL, 'dfghdfhg', 'dfghdf', 'jk;lj;l', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK79ol37dfpree5i58f8mbmdfm7` (`user_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goth`
--
ALTER TABLE `goth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kebele`
--
ALTER TABLE `kebele`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_industry`
--
ALTER TABLE `other_industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goth`
--
ALTER TABLE `goth`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_seeker`
--
ALTER TABLE `job_seeker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `kebele`
--
ALTER TABLE `kebele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `other_industry`
--
ALTER TABLE `other_industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
