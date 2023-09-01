-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 10:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wpc`
--

-- --------------------------------------------------------

--
-- Table structure for table `annual_pay`
--

CREATE TABLE `annual_pay` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annual_pay`
--

INSERT INTO `annual_pay` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'Registered Nurse', 1, 1),
(2, 'Software Developer', 1, 1),
(3, 'Marketing Manager', 1, 1),
(4, 'Financial Analyst', 1, 1),
(5, 'Mechanical Engineer', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

CREATE TABLE `apply_job` (
  `id` int(11) NOT NULL,
  `job_publish_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_address` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `candidate_num` varchar(255) DEFAULT NULL,
  `total_year_exp` varchar(255) DEFAULT NULL,
  `educa_qualifcation` text DEFAULT NULL,
  `skill_set` text DEFAULT NULL,
  `expeted_salary` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`id`, `job_publish_id`, `job_title`, `candidate_name`, `candidate_address`, `candidate_email`, `candidate_num`, `total_year_exp`, `educa_qualifcation`, `skill_set`, `expeted_salary`, `files`, `application_date`, `remarks`, `status`, `entry_by`, `created_at`) VALUES
(2, 2, 'Senior BI Engineer', 'Bijon', 'Dhaka', 'mdbijon@gmail.com', '01915728982', '7 Yrs 5 Months', 'MSC', 'Soft Dev.', '5000', '/backend/files/JnT9wFEZM8JeK1gLjq4X.doc', '2023-08-29', '', 8, 1, '2023-08-29 10:44:24'),
(3, 2, 'Senior BI Engineer', 'Kabir', 'Dhaka', 'kabir@gmail.com', '01915728983', '10 Yrs', 'MSC', 'TEST', '1050', '/backend/files/mURkiEiAo1NR9wFEJ2No.pdf', '2023-08-29', '', 2, 1, '2023-08-29 10:45:32'),
(4, 2, 'Senior BI Engineer', 'Jannat', 'DHK', 'jannat@gmail.com', '01915728984', '10 Yrs', 'TEST', 'Computer', '50000', '/backend/files/FHSfhhsLtpUDx5w1yGaX.doc', '2023-08-29', NULL, 8, NULL, '2023-08-29 10:46:47'),
(5, 1, 'Software Engineer', 'Kabir ahmed', 'DHK', 'karim@gmail.com', '01915728985', '10 Yrs', 'TEST', 'DK', '50000', '/backend/files/BEMMoAGUMb0lFvg49YPF.pdf', '2023-08-29', NULL, NULL, NULL, '2023-08-29 11:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `datetimie` varchar(255) DEFAULT NULL,
  `entry_by` int(11) NOT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addres` varchar(225) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `datetimie`, `entry_by`, `email`, `phone`, `addres`, `status`, `created_at`) VALUES
(1, 'Jon', '2023-07-13T10:10', 1, 'mdbijon@gmail.com', '48787878', '234', NULL, '2023-07-17 09:16:33'),
(2, 'Konas', '2023-07-21T10:05', 1, 'aaaaaaa@gmail.com', '234234', 'Dhaka', NULL, '2023-07-17 09:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'HSBC BANK', 1, 1),
(2, 'BARCLAYS BANK', 1, 1),
(3, 'SANTANDER BANK', 1, 1),
(4, 'HALIFAX BANK', 1, 1),
(5, 'NATWEST BANK', 1, 1),
(6, 'LLOYDS BANK', 1, 1),
(7, 'TSB BANK', 1, 1),
(8, 'TESCO BANK', 1, 1),
(9, 'CO-OPERATIVE BANK', 1, 1),
(10, 'BANK OF SCOTLAND', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_short_code`
--

CREATE TABLE `bank_short_code` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_short_code`
--

INSERT INTO `bank_short_code` (`id`, `bank_id`, `name`, `status`, `entry_by`) VALUES
(1, 9, '56854', 1, 1),
(2, 2, '11545', 1, 1),
(3, 2, '165586', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `circumstances`
--

CREATE TABLE `circumstances` (
  `id` int(11) NOT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `joning_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `type_of_doc` text DEFAULT NULL,
  `passport_upload_docs` text DEFAULT NULL,
  `visa_upload_documents` text DEFAULT NULL,
  `euss_upload_documents` text DEFAULT NULL,
  `nid_upload_documents` text DEFAULT NULL,
  `other_upload_documents` text DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ni_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `date_of_confirmation` date DEFAULT NULL,
  `contact_start_date` date DEFAULT NULL,
  `contact_end_date` date DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `leave_sanction_auth` varchar(255) DEFAULT NULL,
  `education_details` text DEFAULT NULL,
  `job_details` text DEFAULT NULL,
  `key_respons` text DEFAULT NULL,
  `training_details` varchar(255) DEFAULT NULL,
  `emger_contact_name` varchar(255) DEFAULT NULL,
  `emger_email` varchar(255) DEFAULT NULL,
  `emger_contact_no` varchar(255) DEFAULT NULL,
  `emger_address` varchar(255) DEFAULT NULL,
  `certifi_title` varchar(255) DEFAULT NULL,
  `certifi_license_number` varchar(255) DEFAULT NULL,
  `certifi_start_date` date DEFAULT NULL,
  `certifi_end_date` date DEFAULT NULL,
  `contact_info_post_code` varchar(255) DEFAULT NULL,
  `contact_info_address` varchar(255) DEFAULT NULL,
  `contact_info_address_1` varchar(255) DEFAULT NULL,
  `contact_info_address_2` varchar(255) DEFAULT NULL,
  `contact_info_address_3` varchar(255) DEFAULT NULL,
  `contact_info_city_country` varchar(255) DEFAULT NULL,
  `contact_info_country_id` varchar(255) DEFAULT NULL,
  `pass_no` varchar(255) DEFAULT NULL,
  `pass_nationality` varchar(255) DEFAULT NULL,
  `pass_place_birth` varchar(255) DEFAULT NULL,
  `pass_issued_by` varchar(255) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pass_expire_date` date DEFAULT NULL,
  `pass_review_date` date DEFAULT NULL,
  `visa_brp_np` varchar(255) DEFAULT NULL,
  `visa_nationality` varchar(255) DEFAULT NULL,
  `visa_country_residence` varchar(255) DEFAULT NULL,
  `visa_issuedby` varchar(255) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `visa_expire_date` date DEFAULT NULL,
  `visa_eligbible_review_date` date DEFAULT NULL,
  `visa_current_yesno` varchar(255) DEFAULT NULL,
  `visa_remarks` text DEFAULT NULL,
  `ess_ref_no` varchar(255) DEFAULT NULL,
  `ess_nationality` varchar(255) DEFAULT NULL,
  `ess_issued_by` varchar(255) DEFAULT NULL,
  `ess_issued_date` date DEFAULT NULL,
  `ess_expire_date` date DEFAULT NULL,
  `ess_eligible_review_date` date DEFAULT NULL,
  `ess_current_visa` varchar(255) DEFAULT NULL,
  `ess_remarks` varchar(255) DEFAULT NULL,
  `nid_number` text DEFAULT NULL,
  `nid_nationality` varchar(255) DEFAULT NULL,
  `nid_country_residence` varchar(255) DEFAULT NULL,
  `nid_issue_date` date DEFAULT NULL,
  `nid_expire_date` date DEFAULT NULL,
  `nid_eli_review_date` date DEFAULT NULL,
  `nid_current_visa` varchar(255) DEFAULT NULL,
  `nid_remarks` varchar(255) DEFAULT NULL,
  `others_doc_name` varchar(255) DEFAULT NULL,
  `others_ref_name` varchar(255) DEFAULT NULL,
  `others_nationality` varchar(255) DEFAULT NULL,
  `others_issue_date` date DEFAULT NULL,
  `others_expire_date` date DEFAULT NULL,
  `others_eligb_review_date` date DEFAULT NULL,
  `others_visa_sts` varchar(255) DEFAULT NULL,
  `others_remarks` varchar(255) DEFAULT NULL,
  `pay_group` varchar(255) DEFAULT NULL,
  `pay_annual_pay` varchar(255) DEFAULT NULL,
  `pay_wedges_pay_mode` varchar(255) DEFAULT NULL,
  `pay_payment_type` varchar(255) DEFAULT NULL,
  `pay_basic_daily_wedges` varchar(255) DEFAULT NULL,
  `pay_min_working_hour` varchar(255) DEFAULT NULL,
  `pay_tax_code` varchar(255) DEFAULT NULL,
  `pay_tax_ref` varchar(200) DEFAULT NULL,
  `pay_percentage` varchar(200) DEFAULT NULL,
  `pay_payment_mode` varchar(200) DEFAULT NULL,
  `pay_bank_name` varchar(200) DEFAULT NULL,
  `pay_branch_name` varchar(200) DEFAULT NULL,
  `pay_account_no` text DEFAULT NULL,
  `pay_sort_code` text DEFAULT NULL,
  `pay_remarks` text DEFAULT NULL,
  `payment_da` text DEFAULT NULL,
  `payment_hra` text DEFAULT NULL,
  `payment_conven_ta` text DEFAULT NULL,
  `payment_perfomance` text DEFAULT NULL,
  `payment_monthly_al` text DEFAULT NULL,
  `ni_dedu_da` text DEFAULT NULL,
  `ni_dedu_hra` text DEFAULT NULL,
  `ni_dedu_conven_ta` text DEFAULT NULL,
  `ni_dedu_perfomance` text DEFAULT NULL,
  `ni_dedu_monthly_al` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circumstances`
--

INSERT INTO `circumstances` (`id`, `employe_id`, `designation_id`, `department_id`, `name`, `email`, `age`, `gender`, `address`, `salary`, `phone`, `joning_date`, `date_of_birth`, `image`, `type_of_doc`, `passport_upload_docs`, `visa_upload_documents`, `euss_upload_documents`, `nid_upload_documents`, `other_upload_documents`, `employee_code`, `first_name`, `middle_name`, `last_name`, `ni_no`, `marital_status`, `country_id`, `employee_type`, `date_of_confirmation`, `contact_start_date`, `contact_end_date`, `job_location`, `reporting_authority`, `leave_sanction_auth`, `education_details`, `job_details`, `key_respons`, `training_details`, `emger_contact_name`, `emger_email`, `emger_contact_no`, `emger_address`, `certifi_title`, `certifi_license_number`, `certifi_start_date`, `certifi_end_date`, `contact_info_post_code`, `contact_info_address`, `contact_info_address_1`, `contact_info_address_2`, `contact_info_address_3`, `contact_info_city_country`, `contact_info_country_id`, `pass_no`, `pass_nationality`, `pass_place_birth`, `pass_issued_by`, `pass_date`, `pass_expire_date`, `pass_review_date`, `visa_brp_np`, `visa_nationality`, `visa_country_residence`, `visa_issuedby`, `visa_issued_date`, `visa_expire_date`, `visa_eligbible_review_date`, `visa_current_yesno`, `visa_remarks`, `ess_ref_no`, `ess_nationality`, `ess_issued_by`, `ess_issued_date`, `ess_expire_date`, `ess_eligible_review_date`, `ess_current_visa`, `ess_remarks`, `nid_number`, `nid_nationality`, `nid_country_residence`, `nid_issue_date`, `nid_expire_date`, `nid_eli_review_date`, `nid_current_visa`, `nid_remarks`, `others_doc_name`, `others_ref_name`, `others_nationality`, `others_issue_date`, `others_expire_date`, `others_eligb_review_date`, `others_visa_sts`, `others_remarks`, `pay_group`, `pay_annual_pay`, `pay_wedges_pay_mode`, `pay_payment_type`, `pay_basic_daily_wedges`, `pay_min_working_hour`, `pay_tax_code`, `pay_tax_ref`, `pay_percentage`, `pay_payment_mode`, `pay_bank_name`, `pay_branch_name`, `pay_account_no`, `pay_sort_code`, `pay_remarks`, `payment_da`, `payment_hra`, `payment_conven_ta`, `payment_perfomance`, `payment_monthly_al`, `ni_dedu_da`, `ni_dedu_hra`, `ni_dedu_conven_ta`, `ni_dedu_perfomance`, `ni_dedu_monthly_al`, `entry_by`, `created_at`, `status`) VALUES
(1, 6, 7, 6, 'Mrs. Jan Ahmed', 'OnlinessSit2221@gmail.com', 'eed', '1', 'fsdfsdf', 34234234.00, '324234', '2023-08-30', '2023-08-16', '/backend/files/I0ZYJ7wmwlVnZ1ZEe6Z9.jpg', '/backend/files/3iJXaelLRTTkIHBlVNq2.jpg', '/backend/files/sWe1DbkAU7lBaLTLQq57.jpg', '/backend/files/3Gqsx9Qm9HWakp3GoJDE.jpg', '/backend/files/kJDdkiRXW3igzULbs1RZ.jpg', NULL, '/backend/files/qQRq3ozkjgiEnkX2pTnl.jpg', 'EMP-006', 'Mrs.', 'Jan', 'Ahmed', 'sdfsdf', 'Widow', 10, 'FULL TIME', '2023-08-17', '2023-08-10', '2023-08-17', 'sdfs', '', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 's@gmail.com', 's', 'sdf', 'sfs', 'sdf', '2023-08-21', '2023-08-27', 'asdd', 'fsdf', 'sdf', 'sdf', 'sdfsdf', '2023-08-17', '2', 'dgdfg', '3', '2023-08-24', '3245', '0000-00-00', '0000-00-00', '0000-00-00', 'sdf', '3', '4', 'sdfsdf', '2023-08-17', '2023-08-18', '2023-08-17', '', '', 'sdfs', '6', '234234', '2023-08-21', '2023-08-24', '2023-08-25', 'No', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'undefined', '', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 23:22:16', 1),
(2, 5, 3, 4, 'Mr. Bijon Ahmed', 'onlinesoft@gmail.com', '33f1111', '1', 'fgfdgf1111', 330000.00, 'sdff1111', '2023-08-10', '2023-08-24', '/backend/files/yLueQNQHCDh4PEdlOmzf.jpg', '/backend/files/mK9pawBkTAUCnlnLLVZ8.jpg', '/backend/files/qtjiMkUrXLvCpHnPXfot.jpg', '/backend/files/ackvh94E74xeWVcqbHPt.jpg', '/backend/files/aGTivb3cUepDtHEyj9dm.jpg', '/backend/files/08gLujAFSq6VKfQTbuKi.jpg', NULL, 'EMP-005', 'Mr.', 'Bijon', 'Ahmed', 'dsff1111', 'Single', 4, 'FULL TIME', '2023-08-16', '2023-08-23', '2023-08-31', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgf1111', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgdfgdfg111111', 'dfgdfg@gmail.comf1111', '353434f1111', 'sdfsdff1111', 'sdfsdff1111', 'sdfsdf111111', '2023-08-24', '2023-08-17', 'wewerf1111', 'werwer111111', 'dsfsdfsdf', 'dfdfdsf', 'dsfsdfsdf', '2023-08-31', '6', 'sdfsdf111111', '3', '2023-08-23', 'sdfsdf111111', '2023-08-18', '2023-08-24', '2023-08-25', 'sdf111111', '9', '5', 'sdfsdfsdf111111', '2023-08-22', '2023-08-16', '2023-08-24', 'Yes', '111111111111111111111111', 'sdfsdf11111', '11', 'sdfsdfsdf', '2023-08-31', '2023-08-16', '2023-08-25', 'Yes', 'asdasdf11111f11111f11111', '216548748', '2', '2', '2023-08-24', '2023-08-31', '2023-08-31', 'Yes', 'asdasdf11111f11111f11111', 'asd', 'sadasdasd', '2', '2023-08-17', '2023-08-23', '2023-08-23', 'Yes', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'Cash', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'true', 'true', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 23:38:09', 1),
(3, 3, 8, 4, 'Mrs. Raheem Ahmd', 'Raheem@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-003', 'Mrs.', 'Raheem', 'Ahmd', '11122233445', 'Single', 9, 'LEFT', '0000-00-00', '0000-00-00', '0000-00-00', 'Test', 'Test', 'Test', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', '2023-08-23', '2023-08-31', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', '5', 'Pay Group', '4', 'null', 'Pay Group', '0000-00-00', '0000-00-00', '0000-00-00', 'Pay Group', '11', '10', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'No', 'Pay Group', 'Pay Group', '3', 'Pay Group', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'Pay Group', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'Pay Group', 'Pay Group', '5', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-16 14:13:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countrycode`, `countryname`, `code`) VALUES
(1, 'ABW', 'Aruba', 'AW'),
(2, 'AFG', 'Afghanistan', 'AF'),
(3, 'AGO', 'Angola', 'AO'),
(4, 'AIA', 'Anguilla', 'AI'),
(5, 'ALA', 'Åland', 'AX'),
(6, 'ALB', 'Albania', 'AL'),
(7, 'AND', 'Andorra', 'AD'),
(8, 'ARE', 'United Arab Emirates', 'AE'),
(9, 'ARG', 'Argentina', 'AR'),
(10, 'ARM', 'Armenia', 'AM'),
(11, 'ASM', 'American Samoa', 'AS'),
(12, 'ATA', 'Antarctica', 'AQ'),
(13, 'ATF', 'French Southern Territories', 'TF'),
(14, 'ATG', 'Antigua and Barbuda', 'AG'),
(15, 'AUS', 'Australia', 'AU'),
(16, 'AUT', 'Austria', 'AT'),
(17, 'AZE', 'Azerbaijan', 'AZ'),
(18, 'BDI', 'Burundi', 'BI'),
(19, 'BEL', 'Belgium', 'BE'),
(20, 'BEN', 'Benin', 'BJ'),
(21, 'BES', 'Bonaire', 'BQ'),
(22, 'BFA', 'Burkina Faso', 'BF'),
(23, 'BGD', 'Bangladesh', 'BD'),
(24, 'BGR', 'Bulgaria', 'BG'),
(25, 'BHR', 'Bahrain', 'BH'),
(26, 'BHS', 'Bahamas', 'BS'),
(27, 'BIH', 'Bosnia and Herzegovina', 'BA'),
(28, 'BLM', 'Saint Barthélemy', 'BL'),
(29, 'BLR', 'Belarus', 'BY'),
(30, 'BLZ', 'Belize', 'BZ'),
(31, 'BMU', 'Bermuda', 'BM'),
(32, 'BOL', 'Bolivia', 'BO'),
(33, 'BRA', 'Brazil', 'BR'),
(34, 'BRB', 'Barbados', 'BB'),
(35, 'BRN', 'Brunei', 'BN'),
(36, 'BTN', 'Bhutan', 'BT'),
(37, 'BVT', 'Bouvet Island', 'BV'),
(38, 'BWA', 'Botswana', 'BW'),
(39, 'CAF', 'Central African Republic', 'CF'),
(40, 'CAN', 'Canada', 'CA'),
(41, 'CCK', 'Cocos [Keeling] Islands', 'CC'),
(42, 'CHE', 'Switzerland', 'CH'),
(43, 'CHL', 'Chile', 'CL'),
(44, 'CHN', 'China', 'CN'),
(45, 'CIV', 'Ivory Coast', 'CI'),
(46, 'CMR', 'Cameroon', 'CM'),
(47, 'COD', 'Democratic Republic of the Congo', 'CD'),
(48, 'COG', 'Republic of the Congo', 'CG'),
(49, 'COK', 'Cook Islands', 'CK'),
(50, 'COL', 'Colombia', 'CO'),
(51, 'COM', 'Comoros', 'KM'),
(52, 'CPV', 'Cape Verde', 'CV'),
(53, 'CRI', 'Costa Rica', 'CR'),
(54, 'CUB', 'Cuba', 'CU'),
(55, 'CUW', 'Curacao', 'CW'),
(56, 'CXR', 'Christmas Island', 'CX'),
(57, 'CYM', 'Cayman Islands', 'KY'),
(58, 'CYP', 'Cyprus', 'CY'),
(59, 'CZE', 'Czech Republic', 'CZ'),
(60, 'DEU', 'Germany', 'DE'),
(61, 'DJI', 'Djibouti', 'DJ'),
(62, 'DMA', 'Dominica', 'DM'),
(63, 'DNK', 'Denmark', 'DK'),
(64, 'DOM', 'Dominican Republic', 'DO'),
(65, 'DZA', 'Algeria', 'DZ'),
(66, 'ECU', 'Ecuador', 'EC'),
(67, 'EGY', 'Egypt', 'EG'),
(68, 'ERI', 'Eritrea', 'ER'),
(69, 'ESH', 'Western Sahara', 'EH'),
(70, 'ESP', 'Spain', 'ES'),
(71, 'EST', 'Estonia', 'EE'),
(72, 'ETH', 'Ethiopia', 'ET'),
(73, 'FIN', 'Finland', 'FI'),
(74, 'FJI', 'Fiji', 'FJ'),
(75, 'FLK', 'Falkland Islands', 'FK'),
(76, 'FRA', 'France', 'FR'),
(77, 'FRO', 'Faroe Islands', 'FO'),
(78, 'FSM', 'Micronesia', 'FM'),
(79, 'GAB', 'Gabon', 'GA'),
(80, 'GBR', 'United Kingdom', 'GB'),
(81, 'GEO', 'Georgia', 'GE'),
(82, 'GGY', 'Guernsey', 'GG'),
(83, 'GHA', 'Ghana', 'GH'),
(84, 'GIB', 'Gibraltar', 'GI'),
(85, 'GIN', 'Guinea', 'GN'),
(86, 'GLP', 'Guadeloupe', 'GP'),
(87, 'GMB', 'Gambia', 'GM'),
(88, 'GNB', 'Guinea-Bissau', 'GW'),
(89, 'GNQ', 'Equatorial Guinea', 'GQ'),
(90, 'GRC', 'Greece', 'GR'),
(91, 'GRD', 'Grenada', 'GD'),
(92, 'GRL', 'Greenland', 'GL'),
(93, 'GTM', 'Guatemala', 'GT'),
(94, 'GUF', 'French Guiana', 'GF'),
(95, 'GUM', 'Guam', 'GU'),
(96, 'GUY', 'Guyana', 'GY'),
(97, 'HKG', 'Hong Kong', 'HK'),
(98, 'HMD', 'Heard Island and McDonald Islands', 'HM'),
(99, 'HND', 'Honduras', 'HN'),
(100, 'HRV', 'Croatia', 'HR'),
(101, 'HTI', 'Haiti', 'HT'),
(102, 'HUN', 'Hungary', 'HU'),
(103, 'IDN', 'Indonesia', 'ID'),
(104, 'IMN', 'Isle of Man', 'IM'),
(105, 'IND', 'India', 'IN'),
(106, 'IOT', 'British Indian Ocean Territory', 'IO'),
(107, 'IRL', 'Ireland', 'IE'),
(108, 'IRN', 'Iran', 'IR'),
(109, 'IRQ', 'Iraq', 'IQ'),
(110, 'ISL', 'Iceland', 'IS'),
(111, 'ISR', 'Israel', 'IL'),
(112, 'ITA', 'Italy', 'IT'),
(113, 'JAM', 'Jamaica', 'JM'),
(114, 'JEY', 'Jersey', 'JE'),
(115, 'JOR', 'Jordan', 'JO'),
(116, 'JPN', 'Japan', 'JP'),
(117, 'KAZ', 'Kazakhstan', 'KZ'),
(118, 'KEN', 'Kenya', 'KE'),
(119, 'KGZ', 'Kyrgyzstan', 'KG'),
(120, 'KHM', 'Cambodia', 'KH'),
(121, 'KIR', 'Kiribati', 'KI'),
(122, 'KNA', 'Saint Kitts and Nevis', 'KN'),
(123, 'KOR', 'South Korea', 'KR'),
(124, 'KWT', 'Kuwait', 'KW'),
(125, 'LAO', 'Laos', 'LA'),
(126, 'LBN', 'Lebanon', 'LB'),
(127, 'LBR', 'Liberia', 'LR'),
(128, 'LBY', 'Libya', 'LY'),
(129, 'LCA', 'Saint Lucia', 'LC'),
(130, 'LIE', 'Liechtenstein', 'LI'),
(131, 'LKA', 'Sri Lanka', 'LK'),
(132, 'LSO', 'Lesotho', 'LS'),
(133, 'LTU', 'Lithuania', 'LT'),
(134, 'LUX', 'Luxembourg', 'LU'),
(135, 'LVA', 'Latvia', 'LV'),
(136, 'MAC', 'Macao', 'MO'),
(137, 'MAF', 'Saint Martin', 'MF'),
(138, 'MAR', 'Morocco', 'MA'),
(139, 'MCO', 'Monaco', 'MC'),
(140, 'MDA', 'Moldova', 'MD'),
(141, 'MDG', 'Madagascar', 'MG'),
(142, 'MDV', 'Maldives', 'MV'),
(143, 'MEX', 'Mexico', 'MX'),
(144, 'MHL', 'Marshall Islands', 'MH'),
(145, 'MKD', 'Macedonia', 'MK'),
(146, 'MLI', 'Mali', 'ML'),
(147, 'MLT', 'Malta', 'MT'),
(148, 'MMR', 'Myanmar [Burma]', 'MM'),
(149, 'MNE', 'Montenegro', 'ME'),
(150, 'MNG', 'Mongolia', 'MN'),
(151, 'MNP', 'Northern Mariana Islands', 'MP'),
(152, 'MOZ', 'Mozambique', 'MZ'),
(153, 'MRT', 'Mauritania', 'MR'),
(154, 'MSR', 'Montserrat', 'MS'),
(155, 'MTQ', 'Martinique', 'MQ'),
(156, 'MUS', 'Mauritius', 'MU'),
(157, 'MWI', 'Malawi', 'MW'),
(158, 'MYS', 'Malaysia', 'MY'),
(159, 'MYT', 'Mayotte', 'YT'),
(160, 'NAM', 'Namibia', 'NA'),
(161, 'NCL', 'New Caledonia', 'NC'),
(162, 'NER', 'Niger', 'NE'),
(163, 'NFK', 'Norfolk Island', 'NF'),
(164, 'NGA', 'Nigeria', 'NG'),
(165, 'NIC', 'Nicaragua', 'NI'),
(166, 'NIU', 'Niue', 'NU'),
(167, 'NLD', 'Netherlands', 'NL'),
(168, 'NOR', 'Norway', 'NO'),
(169, 'NPL', 'Nepal', 'NP'),
(170, 'NRU', 'Nauru', 'NR'),
(171, 'NZL', 'New Zealand', 'NZ'),
(172, 'OMN', 'Oman', 'OM'),
(173, 'PAK', 'Pakistan', 'PK'),
(174, 'PAN', 'Panama', 'PA'),
(175, 'PCN', 'Pitcairn Islands', 'PN'),
(176, 'PER', 'Peru', 'PE'),
(177, 'PHL', 'Philippines', 'PH'),
(178, 'PLW', 'Palau', 'PW'),
(179, 'PNG', 'Papua New Guinea', 'PG'),
(180, 'POL', 'Poland', 'PL'),
(181, 'PRI', 'Puerto Rico', 'PR'),
(182, 'PRK', 'North Korea', 'KP'),
(183, 'PRT', 'Portugal', 'PT'),
(184, 'PRY', 'Paraguay', 'PY'),
(185, 'PSE', 'Palestine', 'PS'),
(186, 'PYF', 'French Polynesia', 'PF'),
(187, 'QAT', 'Qatar', 'QA'),
(188, 'REU', 'Réunion', 'RE'),
(189, 'ROU', 'Romania', 'RO'),
(190, 'RUS', 'Russia', 'RU'),
(191, 'RWA', 'Rwanda', 'RW'),
(192, 'SAU', 'Saudi Arabia', 'SA'),
(193, 'SDN', 'Sudan', 'SD'),
(194, 'SEN', 'Senegal', 'SN'),
(195, 'SGP', 'Singapore', 'SG'),
(196, 'SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
(197, 'SHN', 'Saint Helena', 'SH'),
(198, 'SJM', 'Svalbard and Jan Mayen', 'SJ'),
(199, 'SLB', 'Solomon Islands', 'SB'),
(200, 'SLE', 'Sierra Leone', 'SL'),
(201, 'SLV', 'El Salvador', 'SV'),
(202, 'SMR', 'San Marino', 'SM'),
(203, 'SOM', 'Somalia', 'SO'),
(204, 'SPM', 'Saint Pierre and Miquelon', 'PM'),
(205, 'SRB', 'Serbia', 'RS'),
(206, 'SSD', 'South Sudan', 'SS'),
(207, 'STP', 'São Tomé and Príncipe', 'ST'),
(208, 'SUR', 'Suriname', 'SR'),
(209, 'SVK', 'Slovakia', 'SK'),
(210, 'SVN', 'Slovenia', 'SI'),
(211, 'SWE', 'Sweden', 'SE'),
(212, 'SWZ', 'Swaziland', 'SZ'),
(213, 'SXM', 'Sint Maarten', 'SX'),
(214, 'SYC', 'Seychelles', 'SC'),
(215, 'SYR', 'Syria', 'SY'),
(216, 'TCA', 'Turks and Caicos Islands', 'TC'),
(217, 'TCD', 'Chad', 'TD'),
(218, 'TGO', 'Togo', 'TG'),
(219, 'THA', 'Thailand', 'TH'),
(220, 'TJK', 'Tajikistan', 'TJ'),
(221, 'TKL', 'Tokelau', 'TK'),
(222, 'TKM', 'Turkmenistan', 'TM'),
(223, 'TLS', 'East Timor', 'TL'),
(224, 'TON', 'Tonga', 'TO'),
(225, 'TTO', 'Trinidad and Tobago', 'TT'),
(226, 'TUN', 'Tunisia', 'TN'),
(227, 'TUR', 'Turkey', 'TR'),
(228, 'TUV', 'Tuvalu', 'TV'),
(229, 'TWN', 'Taiwan', 'TW'),
(230, 'TZA', 'Tanzania', 'TZ'),
(231, 'UGA', 'Uganda', 'UG'),
(232, 'UKR', 'Ukraine', 'UA'),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'UM'),
(234, 'URY', 'Uruguay', 'UY'),
(235, 'USA', 'United States', 'US'),
(236, 'UZB', 'Uzbekistan', 'UZ'),
(237, 'VAT', 'Vatican City', 'VA'),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'VC'),
(239, 'VEN', 'Venezuela', 'VE'),
(240, 'VGB', 'British Virgin Islands', 'VG'),
(241, 'VIR', 'U.S. Virgin Islands', 'VI'),
(242, 'VNM', 'Vietnam', 'VN'),
(243, 'VUT', 'Vanuatu', 'VU'),
(244, 'WLF', 'Wallis and Futuna', 'WF'),
(245, 'WSM', 'Samoa', 'WS'),
(246, 'XKX', 'Kosovo', 'XK'),
(247, 'YEM', 'Yemen', 'YE'),
(248, 'ZAF', 'South Africa', 'ZA'),
(249, 'ZMB', 'Zambia', 'ZM'),
(250, 'ZWE', 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Research and development', 1, 1, '2023-07-15 21:33:10'),
(2, 'Operations', 1, 1, '2023-07-15 21:33:24'),
(3, 'fhfghfghfgh1111', 1, 1, '2023-07-16 09:57:04'),
(4, 'Marketing and sales', 1, 1, '2023-07-16 09:57:51'),
(5, 'Human resources', 1, 1, '2023-07-16 09:57:58'),
(6, 'Customer service', 1, 1, '2023-07-16 09:58:07'),
(7, 'Accounting and finance', 1, 1, '2023-07-16 09:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Chairman', 1, 1, '2023-07-15 21:56:25'),
(2, 'Director', 1, 1, '2023-07-15 22:01:20'),
(3, 'Managing Director', 1, 1, '2023-07-16 09:54:43'),
(4, 'Chief Executive Officer (CEO)', 1, 1, '2023-07-16 09:54:51'),
(5, 'Chief Financial Officer (CFO)', 1, 1, '2023-07-16 09:55:05'),
(6, 'Secretary', 1, 1, '2023-07-16 09:55:12'),
(7, 'Chief Operating Officer (COO)', 1, 1, '2023-07-16 09:55:23'),
(8, 'Chief Technology Officer (CTO)', 1, 1, '2023-07-16 09:55:30'),
(9, 'Vice President', 1, 1, '2023-07-16 09:55:37'),
(10, 'Manager', 1, 1, '2023-07-16 09:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `duty_roster`
--

CREATE TABLE `duty_roster` (
  `id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duty_roster`
--

INSERT INTO `duty_roster` (`id`, `department_id`, `designation_id`, `shift_id`, `from_date`, `to_date`, `entry_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 9, 1, '2021-09-07', '2023-09-07', 1, 1, '2023-09-01 18:45:45', '2023-09-01 19:34:33'),
(2, 2, 8, 4, '2023-09-07', '2023-09-07', 1, 1, '2023-09-01 18:46:09', '2023-09-01 18:46:09'),
(3, 7, 8, 1, '2023-09-07', '2023-09-29', 1, 1, '2023-09-01 19:21:54', '2023-09-01 19:21:54'),
(4, 6, 8, 2, '2023-09-07', '2023-09-22', 1, 1, '2023-09-01 19:22:23', '2023-09-01 19:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `joning_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `type_of_doc` text DEFAULT NULL,
  `passport_upload_docs` text DEFAULT NULL,
  `visa_upload_documents` text DEFAULT NULL,
  `euss_upload_documents` text DEFAULT NULL,
  `nid_upload_documents` text DEFAULT NULL,
  `other_upload_documents` text DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ni_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `date_of_confirmation` date DEFAULT NULL,
  `contact_start_date` date DEFAULT NULL,
  `contact_end_date` date DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `leave_sanction_auth` varchar(255) DEFAULT NULL,
  `education_details` text DEFAULT NULL,
  `job_details` text DEFAULT NULL,
  `key_respons` text DEFAULT NULL,
  `training_details` varchar(255) DEFAULT NULL,
  `emger_contact_name` varchar(255) DEFAULT NULL,
  `emger_email` varchar(255) DEFAULT NULL,
  `emger_contact_no` varchar(255) DEFAULT NULL,
  `emger_address` varchar(255) DEFAULT NULL,
  `certifi_title` varchar(255) DEFAULT NULL,
  `certifi_license_number` varchar(255) DEFAULT NULL,
  `certifi_start_date` date DEFAULT NULL,
  `certifi_end_date` date DEFAULT NULL,
  `contact_info_post_code` varchar(255) DEFAULT NULL,
  `contact_info_address` varchar(255) DEFAULT NULL,
  `contact_info_address_1` varchar(255) DEFAULT NULL,
  `contact_info_address_2` varchar(255) DEFAULT NULL,
  `contact_info_address_3` varchar(255) DEFAULT NULL,
  `contact_info_city_country` varchar(255) DEFAULT NULL,
  `contact_info_country_id` varchar(255) DEFAULT NULL,
  `pass_no` varchar(255) DEFAULT NULL,
  `pass_nationality` varchar(255) DEFAULT NULL,
  `pass_place_birth` varchar(255) DEFAULT NULL,
  `pass_issued_by` varchar(255) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pass_expire_date` date DEFAULT NULL,
  `pass_review_date` date DEFAULT NULL,
  `visa_brp_np` varchar(255) DEFAULT NULL,
  `visa_nationality` varchar(255) DEFAULT NULL,
  `visa_country_residence` varchar(255) DEFAULT NULL,
  `visa_issuedby` varchar(255) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `visa_expire_date` date DEFAULT NULL,
  `visa_eligbible_review_date` date DEFAULT NULL,
  `visa_current_yesno` varchar(255) DEFAULT NULL,
  `visa_remarks` text DEFAULT NULL,
  `ess_ref_no` varchar(255) DEFAULT NULL,
  `ess_nationality` varchar(255) DEFAULT NULL,
  `ess_issued_by` varchar(255) DEFAULT NULL,
  `ess_issued_date` date DEFAULT NULL,
  `ess_expire_date` date DEFAULT NULL,
  `ess_eligible_review_date` date DEFAULT NULL,
  `ess_current_visa` varchar(255) DEFAULT NULL,
  `ess_remarks` varchar(255) DEFAULT NULL,
  `nid_number` text DEFAULT NULL,
  `nid_nationality` varchar(255) DEFAULT NULL,
  `nid_country_residence` varchar(255) DEFAULT NULL,
  `nid_issue_date` date DEFAULT NULL,
  `nid_expire_date` date DEFAULT NULL,
  `nid_eli_review_date` date DEFAULT NULL,
  `nid_current_visa` varchar(255) DEFAULT NULL,
  `nid_remarks` varchar(255) DEFAULT NULL,
  `others_doc_name` varchar(255) DEFAULT NULL,
  `others_ref_name` varchar(255) DEFAULT NULL,
  `others_nationality` varchar(255) DEFAULT NULL,
  `others_issue_date` date DEFAULT NULL,
  `others_expire_date` date DEFAULT NULL,
  `others_eligb_review_date` date DEFAULT NULL,
  `others_visa_sts` varchar(255) DEFAULT NULL,
  `others_remarks` varchar(255) DEFAULT NULL,
  `pay_group` varchar(255) DEFAULT NULL,
  `pay_annual_pay` varchar(255) DEFAULT NULL,
  `pay_wedges_pay_mode` varchar(255) DEFAULT NULL,
  `pay_payment_type` varchar(255) DEFAULT NULL,
  `pay_basic_daily_wedges` varchar(255) DEFAULT NULL,
  `pay_min_working_hour` varchar(255) DEFAULT NULL,
  `pay_tax_code` varchar(255) DEFAULT NULL,
  `pay_tax_ref` varchar(200) DEFAULT NULL,
  `pay_percentage` varchar(200) DEFAULT NULL,
  `pay_payment_mode` varchar(200) DEFAULT NULL,
  `pay_bank_name` varchar(200) DEFAULT NULL,
  `pay_branch_name` varchar(200) DEFAULT NULL,
  `pay_account_no` text DEFAULT NULL,
  `pay_sort_code` text DEFAULT NULL,
  `pay_remarks` text DEFAULT NULL,
  `payment_da` text DEFAULT NULL,
  `payment_hra` text DEFAULT NULL,
  `payment_conven_ta` text DEFAULT NULL,
  `payment_perfomance` text DEFAULT NULL,
  `payment_monthly_al` text DEFAULT NULL,
  `ni_dedu_da` text DEFAULT NULL,
  `ni_dedu_hra` text DEFAULT NULL,
  `ni_dedu_conven_ta` text DEFAULT NULL,
  `ni_dedu_perfomance` text DEFAULT NULL,
  `ni_dedu_monthly_al` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `designation_id`, `department_id`, `name`, `email`, `age`, `gender`, `address`, `salary`, `phone`, `joning_date`, `date_of_birth`, `image`, `type_of_doc`, `passport_upload_docs`, `visa_upload_documents`, `euss_upload_documents`, `nid_upload_documents`, `other_upload_documents`, `employee_code`, `first_name`, `middle_name`, `last_name`, `ni_no`, `marital_status`, `country_id`, `employee_type`, `date_of_confirmation`, `contact_start_date`, `contact_end_date`, `job_location`, `reporting_authority`, `leave_sanction_auth`, `education_details`, `job_details`, `key_respons`, `training_details`, `emger_contact_name`, `emger_email`, `emger_contact_no`, `emger_address`, `certifi_title`, `certifi_license_number`, `certifi_start_date`, `certifi_end_date`, `contact_info_post_code`, `contact_info_address`, `contact_info_address_1`, `contact_info_address_2`, `contact_info_address_3`, `contact_info_city_country`, `contact_info_country_id`, `pass_no`, `pass_nationality`, `pass_place_birth`, `pass_issued_by`, `pass_date`, `pass_expire_date`, `pass_review_date`, `visa_brp_np`, `visa_nationality`, `visa_country_residence`, `visa_issuedby`, `visa_issued_date`, `visa_expire_date`, `visa_eligbible_review_date`, `visa_current_yesno`, `visa_remarks`, `ess_ref_no`, `ess_nationality`, `ess_issued_by`, `ess_issued_date`, `ess_expire_date`, `ess_eligible_review_date`, `ess_current_visa`, `ess_remarks`, `nid_number`, `nid_nationality`, `nid_country_residence`, `nid_issue_date`, `nid_expire_date`, `nid_eli_review_date`, `nid_current_visa`, `nid_remarks`, `others_doc_name`, `others_ref_name`, `others_nationality`, `others_issue_date`, `others_expire_date`, `others_eligb_review_date`, `others_visa_sts`, `others_remarks`, `pay_group`, `pay_annual_pay`, `pay_wedges_pay_mode`, `pay_payment_type`, `pay_basic_daily_wedges`, `pay_min_working_hour`, `pay_tax_code`, `pay_tax_ref`, `pay_percentage`, `pay_payment_mode`, `pay_bank_name`, `pay_branch_name`, `pay_account_no`, `pay_sort_code`, `pay_remarks`, `payment_da`, `payment_hra`, `payment_conven_ta`, `payment_perfomance`, `payment_monthly_al`, `ni_dedu_da`, `ni_dedu_hra`, `ni_dedu_conven_ta`, `ni_dedu_perfomance`, `ni_dedu_monthly_al`, `entry_by`, `created_at`, `status`) VALUES
(1, 8, 4, 'Employee-1', 'bijon@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-001', NULL, NULL, NULL, NULL, NULL, NULL, 'CONTRACTUAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-07-16 11:11:49', 1),
(2, 4, 5, 'Ibraheem', 'Ibraheem@gmail.com', '2', '1', 'Dhaka , Bangladesh', 50000.00, '112233456', '2023-07-28', '2023-07-27', '/backend/files/0HjRR3tDHvFgdwr00NAB.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-002', 'null', 'null', 'null', 'null', 'null', 0, 'CONTRACTUAL', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '', 1, '2023-07-16 11:12:51', 0),
(3, 8, 4, 'Raheem', 'Raheem@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-003', 'null', 'null', 'null', 'null', 'null', 0, 'CONTRACTUAL', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '', 1, '2023-07-16 11:11:49', 0),
(4, 6, 6, 'Employee-3', 'we2022@gmail.com', '444', '1', '333', 34343.00, '343434', '2023-08-08', '2023-08-08', '/backend/files/ESzCAGIDj20ZJNLXthmy.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-004', 'Md.', 'Gazi', 'Uddin', '343434', 'Married', 8, 'CONTRACTUAL', '2023-08-29', '2023-08-17', '2023-08-18', 'fdg', 'dfg', 'dfg', 'dfg', 'dfg', 'dfgdfgdfg', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', NULL, 'null', 'null', 'null', 'null', 1, '2023-08-08 09:55:34', 0),
(5, 3, 4, 'Employee-4', 'onlinesoft@gmail.com', '33f1111', '1', 'fgfdgf1111', 330000.00, 'sdff1111', '2023-08-10', '2023-08-24', '/backend/files/yLueQNQHCDh4PEdlOmzf.jpg', '/backend/files/mK9pawBkTAUCnlnLLVZ8.jpg', '/backend/files/qtjiMkUrXLvCpHnPXfot.jpg', '/backend/files/ackvh94E74xeWVcqbHPt.jpg', '/backend/files/aGTivb3cUepDtHEyj9dm.jpg', '/backend/files/08gLujAFSq6VKfQTbuKi.jpg', NULL, 'EMP-005', 'df1111', 'sdff1111', 'sdff1111', 'dsff1111', 'Single', 4, 'SUSPEND', '2023-08-16', '2023-08-23', '2023-08-31', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgf1111', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgdfgdfg111111', 'dfgdfg@gmail.comf1111', '353434f1111', 'sdfsdff1111', 'sdfsdff1111', 'sdfsdf111111', '2023-08-24', '2023-08-17', 'wewerf1111', 'werwer111111', 'dsfsdfsdf', 'dfdfdsf', 'dsfsdfsdf', '2023-08-31', '6', 'sdfsdf111111', '3', '2023-08-23', 'sdfsdf111111', '2023-08-18', '2023-08-24', '2023-08-25', 'sdf111111', '9', '5', 'sdfsdfsdf111111', '2023-08-22', '2023-08-16', '2023-08-24', 'Yes', '111111111111111111111111', 'sdfsdf11111', '11', 'sdfsdfsdf', '2023-08-31', '2023-08-16', '2023-08-25', 'Yes', 'asdasdf11111f11111f11111', '216548748', '2', '2', '2023-08-24', '2023-08-31', '2023-08-31', 'Yes', 'asdasdf11111f11111f11111', 'asd', 'sadasdasd', '2', '2023-08-17', '2023-08-23', '2023-08-23', 'Yes', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'Cash', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'true', 'true', 'false', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 11:10:11', 1),
(6, 7, 6, 'ssssssdf sdfsdf dsfsdf', 'OnlinessSit2221@gmail.com', 'eed', '1', 'fsdfsdf', 34234234.00, '324234', '2023-08-30', '2023-08-16', '/backend/files/I0ZYJ7wmwlVnZ1ZEe6Z9.jpg', '/backend/files/3iJXaelLRTTkIHBlVNq2.jpg', '/backend/files/sWe1DbkAU7lBaLTLQq57.jpg', '/backend/files/3Gqsx9Qm9HWakp3GoJDE.jpg', '/backend/files/kJDdkiRXW3igzULbs1RZ.jpg', NULL, '/backend/files/qQRq3ozkjgiEnkX2pTnl.jpg', 'EMP-006', 'ssssssdf', 'sdfsdf', 'dsfsdf', 'sdfsdf', 'Widow', 10, 'SUSPEND', '2023-08-17', '2023-08-10', '2023-08-17', 'sdfs', '', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 's@gmail.com', 's', 'sdf', 'sfs', 'sdf', '2023-08-21', '2023-08-27', 'asdd', 'fsdf', 'sdf', 'sdf', 'sdfsdf', '2023-08-17', '2', 'dgdfg', '3', '2023-08-24', '3245', '0000-00-00', '0000-00-00', '0000-00-00', 'sdf', '3', '4', 'sdfsdf', '2023-08-17', '2023-08-18', '2023-08-17', '', '', 'sdfs', '6', '234234', '2023-08-21', '2023-08-24', '2023-08-25', 'No', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2023-08-15 21:39:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs`
--

CREATE TABLE `employee_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL COMMENT 'primary key of employee table',
  `title` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_docs`
--

INSERT INTO `employee_docs` (`id`, `emp_id`, `title`, `note`, `doc_name`, `doc`, `entry_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Title-1', 'Note', NULL, '/backend/files/0LtHc43MXnbUgWIXk2KX.sql', 1, 1, '2023-07-13 04:41:50', '2023-07-28 04:42:07'),
(2, 1, 'Documents of bijon', 'Documents of bijonDocuments of bijonDocuments of bijonDocuments of bijonDocuments of bijonDocuments of bijon', NULL, '/backend/files/K9jKMJLLg7gBS5tMEdmT.sql', 1, 1, '2023-07-28 04:33:22', '2023-07-28 04:33:22'),
(3, 3, 'Raheem122', 'RaheemRaheemRaheem', NULL, '/backend/files/K9jKMJLLg7gBS5tMEdmT.sql', 1, 1, '2023-07-28 04:45:56', '2023-07-28 04:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_holidays`
--

CREATE TABLE `employee_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL COMMENT 'PK Of employees table',
  `holiday` varchar(255) NOT NULL,
  `used_holiday` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_holidays`
--

INSERT INTO `employee_holidays` (`id`, `employee_id`, `holiday`, `used_holiday`, `created_at`, `updated_at`) VALUES
(1, 80, '28', 0, '2023-07-21 11:42:56', '2023-07-21 11:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'FULL TIME', 1, 1),
(2, 'CONTRACTUAL', 1, 1),
(3, 'SUSPEND', 1, 1),
(4, 'PART TIME', 1, 1),
(5, 'LEFT', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generate_offer_letter`
--

CREATE TABLE `generate_offer_letter` (
  `id` int(11) NOT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `offerd_salary` int(11) DEFAULT NULL,
  `dateofjoining` date DEFAULT NULL,
  `msg_body` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generate_offer_letter`
--

INSERT INTO `generate_offer_letter` (`id`, `candidate_name`, `payment_type`, `offerd_salary`, `dateofjoining`, `msg_body`, `entry_by`, `created_at`) VALUES
(1, 'Bijon', 'Hour', 545, '2023-08-17', '\n        Bijon\n        Greater London,England,London,United Kingdom ,SE18 4AT\n        2023-08-29\n        Transcend Global Ltd\n        Unit 5, Plumstead Business Centre,44 Plumstead High Street,London,SE18 1SL,United Kingdom\n        Dear MD Bijon,\n        Following your recent interview, I am writing to offer you the post of MARKETING DIRECTOR at the salary of 545 per Hour,\n        starting on 2023-08-17.\n        Full details of the post’s terms and conditions of employment are in your attached Employment Contract.\n        As explained during the interview, this job offer is made subject to satisfactory results from necessary pre-employment checks.\n        There will also be a probationary period of three months which will have to be completed satisfactorily.\n        This is a Full Time .On starting, you will report to Bijon.\n        If you have any queries on the contents of this letter, the attached Employment Contractor the pre-employment checks,\n        please do not hesitate to contact me on 007957165444.\n        To accept this offer, please sign and date the attached copy of this letter in the spaces indicated,\n        scan it in legible format and send it back to us by replying to rashed@transcendglobal.co.uk.\n        We are delighted to offer you this opportunity and look forward to you joining the organisation and working with you.\n        This letter is part of your contract of employment.\n        Yours sincerely,\n        Bijon\n        MARKETING DIRECTOR\n        I am very pleased to accept the job offer on the terms and conditions detailed in this letter and the Written\n        Statement of Terms and Conditions of Employment\n        Signed and date ………………………………………………………………………………………………\n        [Successful candidate to write their signature with date]\n        Name ……………………………………………………………………………………………………………….\n        [Successful candidate to print their full name in capital letters]', 1, '2023-08-29 19:01:02'),
(2, 'Jannat', 'Day', 65000, '2023-09-01', '\n        Jannat\n        Greater London,England,London,United Kingdom ,SE18 4AT\n        2023-08-29\n        Transcend Global Ltd\n        Unit 5, Plumstead Business Centre,44 Plumstead High Street,London,SE18 1SL,United Kingdom\n        Dear MD Jannat,\n        Following your recent interview, I am writing to offer you the post of MARKETING DIRECTOR at the salary of 65000 per Day,\n        starting on 2023-09-01.\n        Full details of the post’s terms and conditions of employment are in your attached Employment Contract.\n        As explained during the interview, this job offer is made subject to satisfactory results from necessary pre-employment checks.\n        There will also be a probationary period of three months which will have to be completed satisfactorily.\n        This is a Full Time .On starting, you will report to Jannat.\n        If you have any queries on the contents of this letter, the attached Employment Contractor the pre-employment checks,\n        please do not hesitate to contact me on 007957165444.\n        To accept this offer, please sign and date the attached copy of this letter in the spaces indicated,\n        scan it in legible format and send it back to us by replying to rashed@transcendglobal.co.uk.\n        We are delighted to offer you this opportunity and look forward to you joining the organisation and working with you.\n        This letter is part of your contract of employment.\n        Yours sincerely,\n        Jannat\n        MARKETING DIRECTOR\n        I am very pleased to accept the job offer on the terms and conditions detailed in this letter and the Written\n        Statement of Terms and Conditions of Employment\n        Signed and date ………………………………………………………………………………………………\n        [Successful candidate to write their signature with date]\n        Name ……………………………………………………………………………………………………………….\n        [Successful candidate to print their full name in capital letters]', 1, '2023-08-29 19:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `grace_period`
--

CREATE TABLE `grace_period` (
  `id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `work_in_time` varchar(255) DEFAULT NULL,
  `grace_period` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grace_period`
--

INSERT INTO `grace_period` (`id`, `department_id`, `designation_id`, `shift_id`, `work_in_time`, `grace_period`, `entry_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 9, 1, '10:25', '02:02', 1, 1, '2023-09-01 18:45:45', '2023-09-01 18:53:21'),
(2, 2, 8, 4, '10:25', '02:02', 1, 1, '2023-09-01 18:46:09', '2023-09-01 18:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', 1, NULL, NULL),
(2, 'Good Friday', 1, NULL, NULL),
(3, 'Early May Bank Holiday', 1, NULL, NULL),
(4, 'Spring Bank Holiday', 1, NULL, NULL),
(5, 'Christmas Day', 1, NULL, NULL),
(6, 'Boxing Day', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `joblist`
--

CREATE TABLE `joblist` (
  `id` int(11) NOT NULL,
  `job_type_code` varchar(255) DEFAULT NULL,
  `soc_code` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `job_description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `joblist`
--

INSERT INTO `joblist` (`id`, `job_type_code`, `soc_code`, `department`, `job_title`, `job_description`, `created_at`, `entry_by`) VALUES
(1, 'New', 23231111, 'MARKETING DIRECTOR12', 'MARKETING DIRECTOR5', 'MARKETING DIRECTOR666', '2023-08-18 10:01:37', 1),
(2, 'New', 3542, 'FIELD SALES CONSULTANT', 'FIELD SALES CONSULTANT', 'FIELD SALES CONSULTANT', '2023-08-18 10:02:27', 1),
(3, 'Existing', 4877, 'INTERNET DEVELOPER', 'INTERNET DEVELOPER', 'INTERNET DEVELOPER', '2023-08-18 10:02:46', 1),
(4, 'Existing', 2137, 'Web Developer', 'Web Developer', 'Web Developer', '2023-08-18 10:03:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobpost`
--

CREATE TABLE `jobpost` (
  `id` int(11) NOT NULL,
  `soc_code` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `job_code` varchar(255) DEFAULT NULL,
  `job_description` varchar(255) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `working_hour` varchar(255) DEFAULT NULL,
  `job_exp_min` varchar(255) DEFAULT NULL,
  `job_exp_max` varchar(255) DEFAULT NULL,
  `basic_salary_min` varchar(255) DEFAULT NULL,
  `basic_salary_max` varchar(255) DEFAULT NULL,
  `peroid` varchar(255) DEFAULT NULL,
  `number_of_vacanci` varchar(255) DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `skill_set` varchar(255) DEFAULT NULL,
  `age_min` varchar(255) DEFAULT NULL,
  `age_max` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `job_post_date` date DEFAULT NULL,
  `job_close_date` date DEFAULT NULL,
  `authrosi_officer` varchar(255) DEFAULT NULL,
  `authrosi_officer_desg` varchar(255) DEFAULT NULL,
  `contact_numb` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `lan_requirment` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobpost`
--

INSERT INTO `jobpost` (`id`, `soc_code`, `job_title`, `department`, `job_code`, `job_description`, `employee_type`, `working_hour`, `job_exp_min`, `job_exp_max`, `basic_salary_min`, `basic_salary_max`, `peroid`, `number_of_vacanci`, `job_location`, `qualification`, `skill_set`, `age_min`, `age_max`, `gender`, `job_post_date`, `job_close_date`, `authrosi_officer`, `authrosi_officer_desg`, `contact_numb`, `email`, `role`, `lan_requirment`, `entry_by`, `created_at`) VALUES
(1, '120', 'aa', 'sad', 'asd', 'sd', 'CONTRACTUAL', '1.5', '5', '5', '123', '', '3', '22', '22', '2df', 'sdf', '12', '22', '2', '2023-08-18', '2023-08-24', 'dsfsdf', 'sdf', 'sdf', 'we2022@gmail.com', 'Yes', 'English Proficiency - Minimum of  UKVI IELTS 4 or  equivalent for international candidates only', 1, '2023-08-18 11:35:23'),
(2, '121', 'sdf', 'sdf', 'sdf', 'sdf', 'FULL TIME', '4.5', '6', '6', '23', '', '2', '22', 'asdasd', 'ad', 'ad', 'asd', 'asd', '1', '2023-08-18', '2023-08-24', 'asd', 'asd', 'asd', 'a@gmail.com', 'Yes', 'Not Required', 1, '2023-08-18 11:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `jobpublish`
--

CREATE TABLE `jobpublish` (
  `id` int(11) NOT NULL,
  `soc_code` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `job_description` text DEFAULT NULL,
  `publish_website_url_1` varchar(255) DEFAULT NULL,
  `file_1` varchar(255) DEFAULT NULL,
  `publish_website_url_2` varchar(255) DEFAULT NULL,
  `file_2` varchar(255) NOT NULL,
  `entry_by` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobpublish`
--

INSERT INTO `jobpublish` (`id`, `soc_code`, `job_title`, `department`, `job_description`, `publish_website_url_1`, `file_1`, `publish_website_url_2`, `file_2`, `entry_by`, `status`, `created_at`) VALUES
(1, '249', 'Software Engineer', 'IT', 'Vacancy\r\n2\r\n\r\nJob Context\r\nWe are looking for talented and experienced (2+ years) software developers, who will be able to work on any kind of PHP framework and ReactJS.\r\nJob Responsibilities\r\nDevelop, Test, Deploy maintain and improve web applications\r\nAdvanced programming Skill in PHP or Python\r\nExperience at least one php framework Cakephp, Laravel, Zend etc. or Django\r\nExperience in git command and it usages.\r\nExperience with cloud-based infrastructure and platform services\r\nExperience with ReactJS, jQuery or Angular etc.\r\nExperience with MySQL, MongoDB, PostgreSQL.\r\nAbility to express ideas clearly within the team\r\nKnowledge in open source product like Wordpress/ Magento/ osCommerce etc.\r\nGood Knowledge in XHTML, CSS, HTML5 etc.\r\nShould have experience in integrating 3rd party APIs like Google map, payment gateways, service APIs etc\r\nShould have knowledge working in Linux Environment\r\nManage individual project priorities, deadlines and deliverables.\r\nEmployment Status\r\nFull-time\r\n\r\nWorkplace\r\nWork at office\r\nEducational Requirements\r\nBachelor/ Master Degree from any recognized Institute.\r\nSkills Required: Git, PHP (OOP), REST API development experience, Software Developer\r\nExperience Requirements\r\nAt least 2 year(s)\r\nThe applicants should have experience in the following area(s):\r\nAPI Development, CakePHP, jQuery/PrototypeJs, Laravel, Programmer/ Software Engineer, ReactJS, Software Architect, Software Development, Software Implementation, Team Leader (Software)\r\nAdditional Requirements\r\nAge 22 to 35 years\r\nBoth males and females are allowed to apply\r\nKnowledge in Docker is plus.\r\nGood understanding of requirements analysis and database design.\r\nTeam player with excellent English Communication skills\r\nMust be able to handle multiple projects and deadline\r\nTechnical blog or open source contribution will be considered as added advantage.\r\nJob Location\r\nDhaka\r\n\r\nSalary\r\nNegotiable\r\nSalary based on the experience and expertise.\r\nCompensation & Other Benefits\r\nMedical allowance, Performance bonus, Weekly 2 holidays, Insurance\r\nLunch Facilities: Full Subsidize\r\nSalary Review: Yearly\r\nFestival Bonus: 2\r\nExcellent environment to learn\r\nOther benefits as per company policy\r\nJob Source\r\nBdjobs.com Online Job Posting.', 'http://localhost:3000/recruitment/new-job-publish', '/backend/files/mzsNSlHj0YWhRyQyhnnU.pdf', 'http://localhost:3000/recruitment/new-job-publish', '', '1', 1, '2023-08-18 14:56:59'),
(2, '248', 'Senior BI Engineer', 'Information Technology', 'Job Context\r\nBJIT Limited is looking for a creative and passionate Business Intelligence Engineer.\r\nJob Responsibilities\r\nRecognize business requirements in the context of BI and create data models to transform raw data into relevant insights.\r\nUsing Power BI, create dashboards and interactive visual reports.\r\nDefine key performance indicators (KPIs) with specific objectives and track them regularly.\r\nAnalyze data and display it in reports to aid decision-making.\r\nConvert business needs into technical specifications and establish a timetable for job completion.\r\nCreate, test, and deploy Power BI scripts, as well as execute efficient deep analysis.\r\nUse Power BI to run DAX queries and functions.\r\nCreate charts and data documentation with explanations of algorithms, parameters, models, and relationships.\r\nConstruct a data warehouse.\r\nUse SQL queries to get the best results.\r\nMake technological adjustments to current BI systems to improve their performance.\r\nFor a better understanding of the data, use filters and visualizations.\r\nAnalyze current ETL procedures to define and create new systems.\r\nEmployment Status\r\nFull-time\r\n\r\nWorkplace\r\nWork at office\r\nEducational Requirements\r\nGraduated in CSE or relevant subject.\r\nExperience Requirements\r\nAt least 4 year(s)\r\nAdditional Requirements\r\nAge at least 25 years\r\nBackground with BI tools and systems such as Power BI, Tableau, SAP, Odoo.\r\nPrior experience in data-related tasks.\r\nUnderstanding of the Microsoft BI Stack.\r\nMastery in data analytics.\r\nShould be proficient in software development.\r\nBe familiar with MS SQL Server BI Stack tools and technologies, such as SSRS and TSQL, Power Query, MDX, Power BI, and DAX.\r\nAnalytical thinking for converting data into relevant reports and graphics.\r\nCapable of enabling row-level data security.\r\nKnowledge of Power BI application security layer models.\r\nAbility to run DAX queries on Power BI desktop.\r\nProficient in doing advanced-level computations on the data set.\r\nExcellent communication skills are required to communicate needs with client and internal teams successfully Workplace.\r\nNice to have working knowledge on large data set.\r\nJob Location\r\nDhaka\r\n\r\nSalary\r\nNegotiable\r\nCompensation & Other Benefits\r\nProvident Fund\r\nGratuity\r\nWeekly two holidays.\r\nLeave encashment\r\nMedical benefit (Employee Only)\r\nLunch Facilities: Partially subsidized.\r\nSalary Review: Yearly.\r\nFestival Bonus: 3 (Yearly).\r\nFacilities for skill development.\r\nSponsorship for professional certification.\r\nWPPF (Profit Sharing).\r\nTeam retreat.\r\nJob Source\r\nBdjobs.com Online Job Posting.', 'http://localhost:3000/recruitment/new-job-publishsend', '/backend/files/aLRcWk7RPTf72Net6pFs.pdf', 'http://localhost:3000/recruitment/new-job-publishsend', '/backend/files/RNPl2GOMYcs07VeZg40v.pdf', '1', 1, '2023-08-29 01:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `job_status`
--

CREATE TABLE `job_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_status`
--

INSERT INTO `job_status` (`id`, `name`, `status`) VALUES
(1, 'Application Received', 1),
(2, 'Short listed', 1),
(3, 'Interview', 1),
(4, 'Online Screen Test', 1),
(5, 'Written Test', 1),
(6, 'Telephone Interview', 1),
(7, 'Job Offered', 1),
(8, 'Hired', 1),
(9, 'Hold', 1),
(10, 'Rejected', 1);

-- --------------------------------------------------------

--
-- Table structure for table `late_policy`
--

CREATE TABLE `late_policy` (
  `id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `max_grade_period` varchar(255) DEFAULT NULL,
  `no_days_allow` varchar(255) DEFAULT NULL,
  `day_salary_deducted` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `late_policy`
--

INSERT INTO `late_policy` (`id`, `department_id`, `designation_id`, `shift_id`, `max_grade_period`, `no_days_allow`, `day_salary_deducted`, `created_at`, `updated_at`, `entry_by`, `status`) VALUES
(1, 7, 10, 2, '2222', '23', '23', '2023-09-01 15:02:00', '2023-09-01 15:42:46', 1, 1),
(2, 4, 7, 2, '33', '33', '33', '2023-09-01 15:02:07', '2023-09-01 15:02:07', 1, 1),
(3, 4, 7, 4, '55', '56', '5', '2023-09-01 15:02:18', '2023-09-01 15:02:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=active\r\n2=assign to customer\r\n0=inactive',
  `entry_by` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead`
--

INSERT INTO `lead` (`id`, `name`, `email`, `phone`, `address`, `status`, `entry_by`, `create_at`) VALUES
(1, 'jons', 'jons@gmail.com', '85787878', '0', 1, NULL, '2023-07-17 18:24:15'),
(2, 'dfsssdfgdfg', 'jsn@gmail.com', '48787878', 'dhaka', 1, 1, '2023-07-17 18:26:37'),
(3, 'jashim123', 'jashim@gmail.com', '65485454', 'Dhaka', 1, 1, '2023-07-17 18:34:51'),
(4, 'kakakak', 'kakakak@gmail.com', '2669999', 'Dhaka', 2, 1, '2023-07-17 18:35:56'),
(5, 'nilima', 'nilima@gmail.com', '487878', 'dhaka', 2, 1, '2023-07-17 18:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `leave_allocation`
--

CREATE TABLE `leave_allocation` (
  `id` int(11) NOT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `maximum_no_annual` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `leave_in_hand` varchar(255) DEFAULT NULL,
  `effective_year` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_allocation`
--

INSERT INTO `leave_allocation` (`id`, `employee_type`, `employe_id`, `year`, `maximum_no_annual`, `leave_type`, `leave_in_hand`, `effective_year`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FULL TIME', 6, '2024', '265', 'Unauthorised Absence', '65', '22222222222', 1, '2023-08-30 17:47:18', '2023-08-31 03:27:51'),
(2, 'FULL TIME', 6, '2021', '265', 'Unauthorised Absence', '5', '2021', 1, '2023-08-30 17:47:18', '2023-08-30 17:47:18'),
(3, 'FULL TIME', 6, '2026', '265', 'Unauthorised Absence', '70', '2022', 1, '2023-08-30 18:12:00', '2023-08-30 18:12:00'),
(4, 'FULL TIME', 5, '2021', '265', 'Unauthorised Absence', '10', '2022', 1, '2023-08-31 03:34:26', '2023-08-31 03:34:26'),
(5, 'FULL TIME', 5, '2023', '265', 'Unauthorised Absence', '5', '2023', 1, '2023-08-31 03:35:16', '2023-08-31 03:35:16'),
(7, 'LEFT', 3, '2026', '150', 'Unauthorised Absence', '5', '2026', 1, '2023-08-31 03:48:27', '2023-08-31 03:48:27'),
(8, 'LEFT', 3, '2024', '150', 'Unauthorised Absence', '145', '2014', 1, '2023-08-31 03:48:59', '2023-08-31 03:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 = Casual Leave, 2 = Medical Leave',
  `application_date` date NOT NULL,
  `start_date` date NOT NULL,
  `previous_start_date` date DEFAULT NULL,
  `end_date` date NOT NULL,
  `previous_end_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `dp_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Approved, 3 = Declined',
  `dp_approved_by` tinyint(4) DEFAULT NULL,
  `dp_approved_date` date DEFAULT NULL,
  `hr_status` tinyint(4) DEFAULT NULL,
  `hr_approved_by` tinyint(4) DEFAULT NULL,
  `hr_approved_date` date DEFAULT NULL,
  `application_date_changed_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_list`
--

CREATE TABLE `leave_list` (
  `id` int(11) NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `frm_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `no_of_days` varchar(255) DEFAULT NULL,
  `holiday_description` varchar(255) DEFAULT NULL,
  `holiday_type_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_list`
--

INSERT INTO `leave_list` (`id`, `day`, `frm_date`, `to_date`, `no_of_days`, `holiday_description`, `holiday_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Friday', '2023-08-03', '2023-08-31', '434', 'Description-1', 3, 1, '2023-08-30 05:57:54', '2023-08-30 06:54:51'),
(2, 'thrusday', '2023-08-30', '2023-09-27', '3', 'Description-2', 3, 1, '2023-08-30 05:59:11', '2023-08-30 05:59:11'),
(3, 'tuesday', '2023-08-24', '2023-08-31', '33', 'Description-3', 5, 1, '2023-08-30 06:07:15', '2023-08-30 06:07:15'),
(4, 'sunday', '2023-08-24', '2023-08-31', '333', 'Description-4', 4, 1, '2023-08-30 06:08:00', '2023-08-30 06:08:00'),
(5, 'monday', '2023-08-01', '2023-08-17', '16', 'Description-5', 3, 1, '2023-08-30 06:20:10', '2023-08-30 06:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `leave_rule`
--

CREATE TABLE `leave_rule` (
  `id` int(11) NOT NULL,
  `employee_type_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `maximum_no_annual` varchar(150) DEFAULT NULL,
  `effective_from` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_rule`
--

INSERT INTO `leave_rule` (`id`, `employee_type_id`, `leave_type_id`, `maximum_no_annual`, `effective_from`, `effective_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '265', '2023-01-01', '2023-12-31', 1, '2023-08-30 13:01:21', '2023-08-30 16:40:56'),
(2, 2, 7, '160', '2023-01-01', '2023-12-31', 1, '2023-08-30 13:02:06', '2023-08-30 16:40:26'),
(3, 5, 1, '150', '2024-01-01', '2024-12-31', 1, '2023-08-31 03:48:09', '2023-08-31 03:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Unauthorised Absence', 'U', 1, '2023-08-30 11:37:29', '2023-08-30 11:51:33'),
(2, 'Paternity Leave', 'PT', 1, '2023-08-30 11:39:39', '2023-08-30 11:51:40'),
(3, 'Holiday', 'H', 1, '2023-08-30 11:51:54', '2023-08-30 11:51:54'),
(4, 'Parental Leave', 'PL', 1, '2023-08-30 11:52:06', '2023-08-30 11:52:06'),
(5, 'Public Duties', 'P', 1, '2023-08-30 11:52:17', '2023-08-30 11:52:17'),
(6, 'Maternity Leave', 'M', 1, '2023-08-30 11:52:28', '2023-08-30 11:52:28'),
(7, 'Jury Service', 'J', 1, '2023-08-30 11:52:41', '2023-08-30 11:52:41'),
(8, 'Bereavement Leave', 'B', 1, '2023-08-30 11:52:50', '2023-08-30 11:52:50'),
(9, 'Antenatal', 'AN', 1, '2023-08-30 11:53:01', '2023-08-30 11:53:01'),
(10, 'Adoption Leave', 'AL', 1, '2023-08-30 11:53:11', '2023-08-30 11:53:11'),
(11, 'Authorised Absence', 'A', 1, '2023-08-30 11:53:25', '2023-08-30 11:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orgainsation_profile_1`
--

CREATE TABLE `orgainsation_profile_1` (
  `id` int(11) NOT NULL,
  `organisation_name` varchar(255) DEFAULT NULL,
  `type_of_organisation` varchar(255) DEFAULT NULL,
  `registration_no` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `organisatin_email_id` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `landline_number` varchar(255) DEFAULT NULL,
  `trading_name` varchar(255) DEFAULT NULL,
  `trading_period` varchar(255) DEFAULT NULL,
  `nameofsector` varchar(255) DEFAULT NULL,
  `have_you_change_organisation` varchar(255) DEFAULT NULL,
  `did_your_organisation_faced` varchar(255) DEFAULT NULL,
  `your_logo` varchar(255) DEFAULT NULL,
  `auth_person_first_name` varchar(255) DEFAULT NULL,
  `auth_person_last_name` varchar(255) DEFAULT NULL,
  `auth_person_designation` varchar(255) DEFAULT NULL,
  `auth_person_phone_no` varchar(255) DEFAULT NULL,
  `auth_person_email` varchar(255) DEFAULT NULL,
  `auth_person_did_you_have_history` varchar(255) DEFAULT NULL,
  `auth_person_prof_id` varchar(255) DEFAULT NULL,
  `key_contact_first_name` varchar(255) DEFAULT NULL,
  `key_contact_last_name` varchar(255) DEFAULT NULL,
  `key_contact_designation` varchar(255) DEFAULT NULL,
  `key_contact_phone_no` varchar(255) DEFAULT NULL,
  `key_contact_email` varchar(255) DEFAULT NULL,
  `key_contact_do_you_have_history` varchar(255) DEFAULT NULL,
  `key_contact_prof_id` varchar(255) DEFAULT NULL,
  `level_1_first_name` varchar(255) DEFAULT NULL,
  `level_1_last_name` varchar(255) DEFAULT NULL,
  `level_1_designation` varchar(255) DEFAULT NULL,
  `level_1_phone_no` varchar(255) DEFAULT NULL,
  `level_1_email` varchar(255) DEFAULT NULL,
  `level_1_prof_id` varchar(255) DEFAULT NULL,
  `level_1_do_you_have_a_history` varchar(255) DEFAULT NULL,
  `orgian_post_code` varchar(255) DEFAULT NULL,
  `orgian_address` varchar(255) DEFAULT NULL,
  `orgian_level_1` varchar(255) DEFAULT NULL,
  `orgian_level_2` varchar(255) DEFAULT NULL,
  `orgian_level_3` varchar(255) DEFAULT NULL,
  `orgian_city` varchar(255) DEFAULT NULL,
  `orgian_country` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orgainsation_profile_1`
--

INSERT INTO `orgainsation_profile_1` (`id`, `organisation_name`, `type_of_organisation`, `registration_no`, `contact_no`, `organisatin_email_id`, `website`, `landline_number`, `trading_name`, `trading_period`, `nameofsector`, `have_you_change_organisation`, `did_your_organisation_faced`, `your_logo`, `auth_person_first_name`, `auth_person_last_name`, `auth_person_designation`, `auth_person_phone_no`, `auth_person_email`, `auth_person_did_you_have_history`, `auth_person_prof_id`, `key_contact_first_name`, `key_contact_last_name`, `key_contact_designation`, `key_contact_phone_no`, `key_contact_email`, `key_contact_do_you_have_history`, `key_contact_prof_id`, `level_1_first_name`, `level_1_last_name`, `level_1_designation`, `level_1_phone_no`, `level_1_email`, `level_1_prof_id`, `level_1_do_you_have_a_history`, `orgian_post_code`, `orgian_address`, `orgian_level_1`, `orgian_level_2`, `orgian_level_3`, `orgian_city`, `orgian_country`, `entry_by`) VALUES
(1, 'ss', 'Limited Liability Partnership-LLP', 'sss', 'ss', 's', 's', 'ss', 's', 'Over 6 to 12 months', 'Accommodation and Food Service Activities', 'Yes', 'Yes', '/backend/files/uylTV9LJquZb4gbDvRqt.png', 'sdf', 'dsf', 'dsf', 'sdf', 'sdf', 'Yes', '', 'sdf', 'sdf', 'sdf', '', 'sdfs', 'No', '/backend/files/zrLqeYHTk5O6a0KtjU8y.png', 'sdf', 'sdf', 'sdf', 'sf', 'sdf', '', 'Yes', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orgainsation_profile_2`
--

CREATE TABLE `orgainsation_profile_2` (
  `id` int(11) NOT NULL,
  `mon_status` varchar(150) DEFAULT NULL,
  `mon_open` varchar(150) DEFAULT NULL,
  `mon_close` varchar(150) DEFAULT NULL,
  `tuesday_status` varchar(150) DEFAULT NULL,
  `tuesday_open` varchar(150) DEFAULT NULL,
  `tuesday_close` varchar(150) DEFAULT NULL,
  `wed_status` varchar(150) DEFAULT NULL,
  `wed_open` varchar(150) DEFAULT NULL,
  `wed_close` varchar(150) DEFAULT NULL,
  `thursday_status` varchar(150) DEFAULT NULL,
  `thursday_open` varchar(150) DEFAULT NULL,
  `thursday_close` varchar(150) DEFAULT NULL,
  `friday_status` varchar(150) DEFAULT NULL,
  `friday_open` varchar(150) DEFAULT NULL,
  `friday_close` varchar(150) DEFAULT NULL,
  `satday_status` varchar(150) DEFAULT NULL,
  `satday_open` varchar(150) DEFAULT NULL,
  `satday_close` varchar(150) DEFAULT NULL,
  `sunday_status` varchar(150) DEFAULT NULL,
  `sunday_open` varchar(150) DEFAULT NULL,
  `sunday_close` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orgainsation_profile_2`
--

INSERT INTO `orgainsation_profile_2` (`id`, `mon_status`, `mon_open`, `mon_close`, `tuesday_status`, `tuesday_open`, `tuesday_close`, `wed_status`, `wed_open`, `wed_close`, `thursday_status`, `thursday_open`, `thursday_close`, `friday_status`, `friday_open`, `friday_close`, `satday_status`, `satday_open`, `satday_close`, `sunday_status`, `sunday_open`, `sunday_close`) VALUES
(1, 'Open', '01:30', '03:30', 'Open', '02:00', '02:00', 'Closed', '03:30', '03:30', 'Open', '02:00', '02:00', 'Closed', '02:30', '03:00', 'Open', '03:30', '03:30', 'Open', '05:00', '04:30');

-- --------------------------------------------------------

--
-- Table structure for table `orgainsation_profile_3`
--

CREATE TABLE `orgainsation_profile_3` (
  `id` int(11) NOT NULL,
  `docs_type_1` int(11) DEFAULT NULL,
  `docs_type_2` int(11) DEFAULT NULL,
  `docs_type_3` int(11) DEFAULT NULL,
  `docs_type_4` int(11) DEFAULT NULL,
  `docs_type_5` int(11) DEFAULT NULL,
  `docs_type_6` int(11) DEFAULT NULL,
  `docs_type_7` int(11) DEFAULT NULL,
  `docs_type_8` int(11) DEFAULT NULL,
  `docs_type_9` int(11) DEFAULT NULL,
  `docs_type_10` int(11) DEFAULT NULL,
  `docs_type_11` int(11) DEFAULT NULL,
  `docs_type_12` int(11) DEFAULT NULL,
  `docs_type_13` int(11) DEFAULT NULL,
  `docs_type_14` int(11) DEFAULT NULL,
  `docs_type_15` int(11) DEFAULT NULL,
  `docs_type_16` int(11) DEFAULT NULL,
  `docs_type_17` int(11) DEFAULT NULL,
  `docs_type_18` int(11) DEFAULT NULL,
  `type_of_doc_1` varchar(255) DEFAULT NULL,
  `type_of_doc_2` varchar(255) DEFAULT NULL,
  `type_of_doc_3` varchar(255) DEFAULT NULL,
  `type_of_doc_4` varchar(255) DEFAULT NULL,
  `type_of_doc_5` varchar(255) DEFAULT NULL,
  `type_of_doc_6` varchar(255) DEFAULT NULL,
  `type_of_doc_7` varchar(255) DEFAULT NULL,
  `type_of_doc_8` varchar(255) DEFAULT NULL,
  `type_of_doc_9` varchar(255) DEFAULT NULL,
  `type_of_doc_10` varchar(255) DEFAULT NULL,
  `type_of_doc_11` varchar(255) DEFAULT NULL,
  `type_of_doc_12` varchar(255) DEFAULT NULL,
  `type_of_doc_13` varchar(255) DEFAULT NULL,
  `type_of_doc_14` varchar(255) DEFAULT NULL,
  `type_of_doc_15` varchar(255) DEFAULT NULL,
  `type_of_doc_16` varchar(255) DEFAULT NULL,
  `type_of_doc_17` varchar(255) DEFAULT NULL,
  `type_of_doc_18` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orgainsation_profile_3`
--

INSERT INTO `orgainsation_profile_3` (`id`, `docs_type_1`, `docs_type_2`, `docs_type_3`, `docs_type_4`, `docs_type_5`, `docs_type_6`, `docs_type_7`, `docs_type_8`, `docs_type_9`, `docs_type_10`, `docs_type_11`, `docs_type_12`, `docs_type_13`, `docs_type_14`, `docs_type_15`, `docs_type_16`, `docs_type_17`, `docs_type_18`, `type_of_doc_1`, `type_of_doc_2`, `type_of_doc_3`, `type_of_doc_4`, `type_of_doc_5`, `type_of_doc_6`, `type_of_doc_7`, `type_of_doc_8`, `type_of_doc_9`, `type_of_doc_10`, `type_of_doc_11`, `type_of_doc_12`, `type_of_doc_13`, `type_of_doc_14`, `type_of_doc_15`, `type_of_doc_16`, `type_of_doc_17`, `type_of_doc_18`) VALUES
(1, 4, 4, 4, 16, 6, 1, 6, 5, 16, 17, 7, 3, 3, 5, 4, 6, 2, 18, '/backend/files/Y5rfcV4fr0wRonn8I7QJ.png', '/backend/files/YI3nssMSOXMpyv3UZoM8.png', '/backend/files/BEZIgPktayigvCbCM2HG.png', '/backend/files/Ig6n0908xj4yWrRD4rna.png', '/backend/files/jlPHtR5bTJ0vclwbjoLa.png', '/backend/files/ptwzRGRe9XKh30nSz0TZ.png', '/backend/files/dOXH9I3TMcZRsmiECocB.png', '/backend/files/iyiHlMSu5hadLlJxZJ20.png', '/backend/files/A9WJEYskA98sMkT8kUMf.png', '/backend/files/mHbxxU0oe39JYrjG3aLs.png', '/backend/files/xbXWlzki3XpvDcFj1SYV.png', '/backend/files/ESEwzbt8FPdSuXqZyWbo.png', '/backend/files/DipaxAG1NdkOtvUwVpWe.png', '/backend/files/iUEgwyzRAFkeAG6yzWx1.png', '/backend/files/FZddD3KXzPVEwoA8tpth.png', '/backend/files/xAn3FURCaBPwYgSmN8wM.png', '/backend/files/6G8FcZr6aZuFpNviiSCc.png', '/backend/files/jUkBNqT9AqqveQmvmu4h.png');

-- --------------------------------------------------------

--
-- Table structure for table `organogram_hierarchy`
--

CREATE TABLE `organogram_hierarchy` (
  `id` int(11) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `reportign_auth` varchar(255) DEFAULT NULL,
  `name_report_auth` varchar(255) DEFAULT NULL,
  `level_id_authority` varchar(255) DEFAULT NULL,
  `designation_report_auth` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organogram_hierarchy`
--

INSERT INTO `organogram_hierarchy` (`id`, `level_id`, `employee_id`, `designation`, `reportign_auth`, `name_report_auth`, `level_id_authority`, `designation_report_auth`, `entry_by`, `created_at`) VALUES
(1, 1, 1, 'Test designation', 'Yes', 'Name of Reporting Authority', '1', '', 1, '2023-08-20 10:47:14'),
(2, 3, 2, 'Designation', 'No', 'Bijon', '2', 'Faisal Bhai!!!!!!!!!!!!!', 1, '2023-08-20 10:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `organogram_level`
--

CREATE TABLE `organogram_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organogram_level`
--

INSERT INTO `organogram_level` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Level-1', 1, 1, '2023-08-20 03:07:40'),
(2, 'Level-2', 1, 1, '2023-08-20 03:07:58'),
(3, 'Level-3', 1, 1, '2023-08-20 03:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Payment_type',
  `working_hour` varchar(255) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `name`, `working_hour`, `rate`, `status`, `entry_by`) VALUES
(1, 'Bank', '120', 100.00, 1, 1),
(2, 'Bank', '12', 15.00, 1, 1),
(3, 'Bank', '12', 30.00, 1, 1),
(4, 'Crypto', '6', 40.00, 1, 1),
(5, 'Crypto', '120', 100.00, 1, 1),
(6, 'TT', '33', 3333.00, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_pay_item`
--

CREATE TABLE `payroll_pay_item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Head',
  `in_percent` varchar(255) DEFAULT NULL,
  `in_rupees` varchar(255) DEFAULT NULL,
  `min_value` varchar(255) DEFAULT NULL,
  `max_value` varchar(255) DEFAULT NULL,
  `effective_frm` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_pay_item`
--

INSERT INTO `payroll_pay_item` (`id`, `name`, `in_percent`, `in_rupees`, `min_value`, `max_value`, `effective_frm`, `effective_to`, `status`, `entry_by`) VALUES
(1, 'Test', '5', 'Yes', '15', '254', '2023-08-27', '2023-08-27', 1, 1),
(2, '213333', 'sdfsdf', '34', '33', '33', '2023-08-24', '2023-08-31', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pay_group`
--

CREATE TABLE `pay_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay_group`
--

INSERT INTO `pay_group` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'Administrative Staff', 1, 1),
(2, 'Technical Team', 1, 1),
(3, 'Sales Team', 1, 1),
(4, 'Customer Service', 1, 1),
(5, 'Management', 1, 1),
(6, 'Production Workers', 1, 1),
(7, 'Finance and Accounting', 1, 1),
(8, 'Marketing and Communications', 1, 1),
(9, 'Research and Development (R&D)', 1, 1),
(10, 'Operations and Logistics', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 'Smokee BBQ', 1, NULL, '2023-07-21 09:38:13', '2023-07-21 09:38:13'),
(2, 'Project-3', 1, 1, '2023-07-21 09:38:13', '2023-07-21 09:38:13'),
(3, 'Project-2', 1, 1, NULL, NULL),
(4, 'Project-1', 1, 1, NULL, NULL),
(5, 'sdfwwww', 1, 1, NULL, NULL),
(6, 'undefined', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `name`, `status`) VALUES
(1, 'New Year\'s Day1', 1),
(2, 'Cashier', 1),
(3, 'Manager', 1);

-- --------------------------------------------------------

--
-- Table structure for table `send_message`
--

CREATE TABLE `send_message` (
  `id` int(11) NOT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `candidate_cc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `send_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `send_message`
--

INSERT INTO `send_message` (`id`, `candidate_name`, `candidate_email`, `subject`, `candidate_cc`, `description`, `file`, `send_by`, `created_at`) VALUES
(3, 'fgdfg', 'mdbijon@gmail.com', 'sdf', 'mdbijon@gmail.com', 'mdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.com', NULL, 1, '2023-08-19 04:33:25'),
(4, 'dsfsfsdf', 'mdbijon@gmail.com', 'ssss', '', 'In Laravel, you can easily attach files to a model using the attach method, especially when dealing with relationships like Eloquent\'s BelongsToMany or HasMany relationships. However, since you mentioned attaching files, I\'ll assume you\'re working with file uploads in the context of a form submission.', '/backend/files/SVfaIInZEZCDCGheQiF2.png', 1, '2023-08-19 05:02:28'),
(5, 'dfgdfg', 'mdbijon@gmail.com', 'ssss', '', 'sfdsf', '/backend/files/GwEyNFbWS6qZzWUCwjOE.png', 1, '2023-08-19 05:14:41'),
(6, 'dsfdsfsdf', 'mdbijon@gmail.com', 'fdgdfg', '', 'fggfdg', '', 1, '2023-08-19 06:30:44'),
(7, 'Md. Gazi Giash Uddin', 'ib@gmail.com', 'New Subject', '', 'Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate', '/backend/files/88wrHYRxDG94tmZ0Endb.png', 1, '2023-08-19 06:31:37'),
(8, 'Ibraheem', 'mdbijon@gmail.com', 'New Subject', '', 'ffff', '/backend/files/m6RklwhKmcSifwgvTfH0.png', 1, '2023-08-19 06:45:59'),
(9, 'Abdur Rahman Ibraheem', 'mdbijon@gmail.com', 'New Subject', '', 'If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:', '/backend/files/u1ujrkQMqTX6ES7VZh69.png', 1, '2023-08-19 06:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `shift_manage`
--

CREATE TABLE `shift_manage` (
  `id` int(11) NOT NULL,
  `shift_code` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `work_in_time` varchar(255) DEFAULT NULL,
  `work_out_time` varchar(255) DEFAULT NULL,
  `break_time_from` varchar(255) DEFAULT NULL,
  `break_time_to` varchar(255) DEFAULT NULL,
  `shift_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift_manage`
--

INSERT INTO `shift_manage` (`id`, `shift_code`, `department_id`, `designation_id`, `work_in_time`, `work_out_time`, `break_time_from`, `break_time_to`, `shift_description`, `created_at`, `updated_at`, `entry_by`, `status`) VALUES
(1, 'SHIFT-001', 7, 9, '10:02', '12:02', '02:02', '02:02', 'SHIFT-001', '2023-09-01 13:44:54', '2023-09-01 14:18:25', 1, 1),
(2, 'SHIFT-002', 6, 8, '10:02', '02:02', '15:22', '02:08', 'SHIFT-002', '2023-09-01 13:45:12', '2023-09-01 14:18:32', 1, 1),
(4, 'SHIFT-003', 7, 9, '10:25', '10:02', '11:01', '12:05', 'SHIFT-003', '2023-09-01 13:45:41', '2023-09-01 14:18:38', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sign_in_outs`
--

CREATE TABLE `sign_in_outs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `sign_in` datetime DEFAULT NULL,
  `sign_out` datetime DEFAULT NULL,
  `break_time` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sign_in_outs`
--

INSERT INTO `sign_in_outs` (`id`, `user_id`, `date`, `sign_in`, `sign_out`, `break_time`, `created_at`, `updated_at`) VALUES
(1, 3, '2022-12-08', '2022-12-08 09:52:56', '2022-12-08 19:17:42', '00:00:00', '2022-12-08 09:52:56', '2022-12-08 19:17:42'),
(2, 5, '2022-12-08', '2022-12-12 09:15:00', '2022-12-12 19:20:00', '00:00:00', '2022-12-08 11:07:46', '2022-12-15 10:15:38'),
(3, 5, '2022-12-08', '2022-12-01 09:30:00', '2022-12-01 19:00:00', '00:00:00', '2022-12-08 11:09:00', '2022-12-08 11:09:00'),
(4, 5, '2022-12-08', '2022-12-05 09:30:00', '2022-12-05 19:20:00', '00:00:00', '2022-12-08 11:09:46', '2022-12-08 11:09:46'),
(5, 5, '2022-12-08', '2022-12-06 10:00:00', '2022-12-06 20:05:00', '00:00:00', '2022-12-08 11:10:22', '2022-12-08 11:11:21'),
(6, 5, '2022-12-08', '2022-12-07 00:00:00', '2022-12-07 00:00:00', '00:00:00', '2022-12-08 11:12:07', '2022-12-16 14:08:25'),
(7, 5, '2022-12-08', '2022-12-08 09:30:00', '2022-12-08 19:00:00', '00:00:00', '2022-12-08 11:12:50', '2022-12-08 11:12:50'),
(8, 7, '2022-12-08', '2022-12-08 12:01:47', '2022-12-08 19:00:35', '00:00:00', '2022-12-08 12:01:47', '2022-12-08 19:00:35'),
(9, 4, '2022-12-13', '2022-12-13 10:00:10', '2022-12-13 19:26:08', '00:00:00', '2022-12-13 10:00:10', '2022-12-13 19:26:08'),
(10, 7, '2022-12-13', '2022-12-13 10:19:01', '2022-12-13 19:03:31', '01:00:00', '2022-12-13 10:19:01', '2022-12-13 19:03:31'),
(11, 3, '2022-12-14', '2022-12-14 09:51:20', '2022-12-14 19:17:08', '00:00:00', '2022-12-14 09:51:20', '2022-12-14 19:17:08'),
(12, 7, '2022-12-14', '2022-12-14 10:17:14', '2022-12-14 19:09:10', '00:50:00', '2022-12-14 10:17:14', '2022-12-14 19:09:10'),
(13, 4, '2022-12-15', '2022-12-15 10:00:07', '2022-12-15 19:18:10', '00:00:00', '2022-12-15 10:00:07', '2022-12-15 19:18:10'),
(14, 5, '2022-12-15', '2022-12-13 10:01:00', '2022-12-13 18:38:00', '00:00:00', '2022-12-15 10:16:24', '2022-12-15 10:16:24'),
(15, 5, '2022-12-15', '2022-12-14 11:01:00', '2022-12-14 20:20:00', '00:00:00', '2022-12-15 10:16:54', '2022-12-15 10:17:47'),
(16, 3, '2022-12-16', '2022-12-16 09:53:07', '2022-12-16 19:24:33', '00:00:00', '2022-12-16 09:53:07', '2022-12-16 19:24:33'),
(17, 3, '2022-12-16', '2022-12-01 09:48:00', '2022-12-01 19:05:00', '00:00:00', '2022-12-16 12:34:06', '2022-12-16 12:34:06'),
(18, 3, '2022-12-16', '2022-12-02 09:57:00', '2022-12-02 19:07:00', '00:00:00', '2022-12-16 12:34:59', '2022-12-16 12:34:59'),
(19, 3, '2022-12-16', '2022-12-06 09:45:00', '2022-12-06 19:07:00', '00:00:00', '2022-12-16 12:35:49', '2022-12-16 12:35:49'),
(20, 3, '2022-12-16', '2022-12-10 09:47:00', '2022-12-10 19:05:00', '00:00:00', '2022-12-16 12:36:53', '2022-12-16 12:36:53'),
(21, 3, '2022-12-16', '2022-12-12 09:54:00', '2022-12-12 19:37:00', '00:00:00', '2022-12-16 12:37:47', '2022-12-16 12:37:47'),
(22, 4, '2022-12-16', '2022-12-03 09:49:00', '2022-12-03 19:13:00', '00:00:00', '2022-12-16 12:39:06', '2022-12-16 12:39:06'),
(23, 4, '2022-12-16', '2022-12-05 09:37:00', '2022-12-05 19:28:00', '00:00:00', '2022-12-16 12:39:47', '2022-12-16 12:39:47'),
(24, 4, '2022-12-16', '2022-12-07 09:48:00', '2022-12-07 19:30:00', '00:00:00', '2022-12-16 12:40:28', '2022-12-16 12:40:28'),
(25, 4, '2022-12-16', '2022-12-09 09:50:00', '2022-12-09 19:20:00', '00:00:00', '2022-12-16 12:41:19', '2022-12-16 12:41:19'),
(26, 7, '2022-12-16', '2022-12-03 10:58:00', '2022-12-03 19:11:00', '00:30:00', '2022-12-16 12:42:50', '2022-12-16 12:42:50'),
(27, 7, '2022-12-16', '2022-12-05 10:11:00', '2022-12-05 19:06:00', '00:30:00', '2022-12-16 12:43:41', '2022-12-16 12:43:41'),
(28, 7, '2022-12-16', '2022-12-06 10:05:00', '2022-12-06 19:03:00', '00:40:00', '2022-12-16 12:44:28', '2022-12-16 12:44:28'),
(29, 7, '2022-12-16', '2022-12-07 10:13:00', '2022-12-07 19:20:00', '00:40:00', '2022-12-16 12:45:20', '2022-12-16 12:46:05'),
(30, 5, '2022-12-16', '2022-12-07 10:00:00', '2022-12-07 18:25:00', '00:10:00', '2022-12-16 13:06:25', '2022-12-16 13:06:25'),
(31, 6, '2022-12-16', '2022-12-01 10:33:00', '2022-12-01 19:32:00', '01:00:00', '2022-12-16 13:09:14', '2022-12-16 13:09:14'),
(32, 6, '2022-12-16', '2022-12-02 10:28:00', '2022-12-02 19:07:00', '00:40:00', '2022-12-16 13:09:59', '2022-12-16 13:09:59'),
(33, 6, '2022-12-16', '2022-12-03 10:57:00', '2022-12-03 19:04:00', '00:40:00', '2022-12-16 13:22:20', '2022-12-16 13:22:20'),
(34, 6, '2022-12-16', '2022-12-05 10:35:00', '2022-12-05 19:03:00', '00:30:00', '2022-12-16 13:22:57', '2022-12-16 13:22:57'),
(35, 6, '2022-12-16', '2022-12-06 10:36:00', '2022-12-06 19:10:00', '00:40:00', '2022-12-16 13:23:30', '2022-12-16 13:23:30'),
(36, 6, '2022-12-16', '2022-12-07 10:33:00', '2022-12-07 20:24:00', '01:00:00', '2022-12-16 13:24:00', '2022-12-16 13:24:00'),
(37, 6, '2022-12-16', '2022-12-08 10:52:00', '2022-12-08 21:10:00', '01:00:00', '2022-12-16 13:24:39', '2022-12-16 13:24:39'),
(38, 6, '2022-12-16', '2022-12-09 12:30:00', '2022-12-09 19:00:00', '00:20:00', '2022-12-16 13:25:16', '2022-12-16 13:25:16'),
(39, 6, '2022-12-16', '2022-12-10 10:25:00', '2022-12-10 19:16:00', '00:40:00', '2022-12-16 13:25:50', '2022-12-16 13:25:50'),
(40, 6, '2022-12-16', '2022-12-12 10:22:00', '2022-12-12 19:13:00', '01:00:00', '2022-12-16 13:26:28', '2022-12-16 13:26:28'),
(41, 8, '2022-12-16', '2022-12-05 11:15:00', '2022-12-05 18:34:00', '00:30:00', '2022-12-16 13:27:53', '2022-12-16 13:27:53'),
(42, 8, '2022-12-16', '2022-12-12 12:15:00', '2022-12-12 19:10:00', '00:30:00', '2022-12-16 13:29:41', '2022-12-16 13:29:41'),
(43, 8, '2022-12-16', '2022-12-13 11:31:00', '2022-12-13 18:30:00', '00:30:00', '2022-12-16 13:30:29', '2022-12-16 13:30:29'),
(44, 8, '2022-12-16', '2022-12-14 11:12:00', '2022-12-14 18:56:00', '00:30:00', '2022-12-16 13:31:36', '2022-12-16 13:31:36'),
(45, 8, '2022-12-16', '2022-12-15 11:06:00', '2022-12-15 19:18:00', '01:00:00', '2022-12-16 13:32:17', '2022-12-16 13:32:17'),
(46, 8, '2022-12-16', '2022-12-01 11:08:00', '2022-12-01 19:05:00', '01:00:00', '2022-12-16 14:04:32', '2022-12-16 14:04:32'),
(47, 4, '2022-12-17', '2022-12-17 09:28:50', '2022-12-17 19:07:22', '00:00:00', '2022-12-17 09:28:50', '2022-12-17 19:07:22'),
(48, 4, '2022-12-19', '2022-12-19 09:54:02', '2022-12-19 19:19:31', '00:00:00', '2022-12-19 09:54:02', '2022-12-19 19:19:31'),
(49, 7, '2022-12-19', '2022-12-19 10:16:03', '2022-12-19 19:08:30', '00:40:00', '2022-12-19 10:16:03', '2022-12-19 19:08:30'),
(50, 3, '2022-12-20', '2022-12-20 09:53:53', '2022-12-20 19:05:23', '00:00:00', '2022-12-20 09:53:53', '2022-12-20 19:05:23'),
(51, 7, '2022-12-20', '2022-12-20 10:15:10', '2022-12-20 19:01:49', '00:40:00', '2022-12-20 10:15:10', '2022-12-20 19:01:49'),
(52, 4, '2022-12-21', '2022-12-21 09:43:22', '2022-12-21 19:07:58', '00:00:00', '2022-12-21 09:43:22', '2022-12-21 19:07:58'),
(53, 7, '2022-12-21', '2022-12-21 10:08:35', '2022-12-21 19:03:34', '00:36:00', '2022-12-21 10:08:35', '2022-12-21 19:03:34'),
(54, 3, '2022-12-22', '2022-12-22 09:43:55', '2022-12-22 19:19:42', '00:00:00', '2022-12-22 09:43:55', '2022-12-22 19:19:42'),
(55, 4, '2022-12-23', '2022-12-23 10:04:40', '2022-12-23 19:14:02', '00:00:00', '2022-12-23 10:04:40', '2022-12-23 19:14:02'),
(56, 3, '2022-12-24', '2022-12-24 10:42:39', '2022-12-24 17:09:14', '00:00:00', '2022-12-24 10:42:39', '2022-12-24 17:09:14'),
(57, 7, '2022-12-26', '2022-12-26 11:06:38', '2022-12-26 16:46:34', '00:00:00', '2022-12-26 11:06:38', '2022-12-26 16:46:34'),
(58, 7, '2022-12-27', '2022-12-27 10:58:33', '2022-12-27 17:29:01', '00:00:00', '2022-12-27 10:58:33', '2022-12-27 17:29:01'),
(59, 3, '2022-12-28', '2022-12-28 09:43:18', '2022-12-28 19:12:01', '00:00:00', '2022-12-28 09:43:18', '2022-12-28 19:12:01'),
(60, 7, '2022-12-28', '2022-12-28 10:09:11', '2022-12-28 19:00:20', '00:40:00', '2022-12-28 10:09:11', '2022-12-28 19:00:20'),
(61, 3, '2022-12-29', '2022-12-29 09:47:56', '2022-12-29 19:06:59', '00:00:00', '2022-12-29 09:47:56', '2022-12-29 19:06:59'),
(62, 7, '2022-12-29', '2022-12-29 10:09:24', '2022-12-29 19:00:47', '00:45:00', '2022-12-29 10:09:24', '2022-12-29 19:00:47'),
(63, 5, '2022-12-29', '2022-12-19 09:34:00', '2022-12-19 19:04:00', '00:00:00', '2022-12-29 12:46:45', '2022-12-29 12:46:45'),
(64, 5, '2022-12-29', '2022-12-20 09:30:00', '2022-12-20 19:07:00', '00:00:00', '2022-12-29 12:47:30', '2022-12-29 12:47:30'),
(65, 5, '2022-12-29', '2022-12-21 09:29:00', '2022-12-21 17:55:00', '00:00:00', '2022-12-29 12:48:16', '2022-12-29 12:48:16'),
(66, 8, '2022-12-29', '2022-12-22 11:54:00', '2022-12-22 19:20:00', '00:40:00', '2022-12-29 13:36:43', '2022-12-29 13:36:43'),
(67, 6, '2022-12-29', '2022-12-17 14:41:00', '2022-12-17 17:54:00', '00:00:00', '2022-12-29 13:43:40', '2022-12-29 13:43:40'),
(68, 6, '2022-12-29', '2022-12-19 12:00:00', '2022-12-19 19:02:00', '00:50:00', '2022-12-29 14:03:55', '2022-12-29 14:17:12'),
(69, 6, '2022-12-29', '2022-12-20 11:38:00', '2022-12-20 19:04:00', '00:30:00', '2022-12-29 14:04:44', '2022-12-29 14:04:44'),
(70, 6, '2022-12-29', '2022-12-21 00:00:00', '2022-12-21 00:00:00', '00:00:00', '2022-12-29 14:05:32', '2023-01-03 16:39:48'),
(71, 6, '2022-12-29', '2022-12-22 00:00:00', '2022-12-22 00:00:00', '00:00:00', '2022-12-29 14:06:32', '2023-01-03 16:40:42'),
(72, 6, '2022-12-29', '2022-12-23 11:13:00', '2022-12-23 19:10:00', '00:30:00', '2022-12-29 14:07:11', '2022-12-29 14:07:11'),
(73, 6, '2022-12-29', '2022-12-24 11:21:00', '2022-12-29 17:00:00', '00:15:00', '2022-12-29 14:07:56', '2022-12-29 14:07:56'),
(74, 6, '2022-12-29', '2022-12-26 12:47:00', '2022-12-29 17:03:00', '00:10:00', '2022-12-29 14:08:29', '2022-12-29 14:08:29'),
(75, 6, '2022-12-29', '2022-12-27 12:03:00', '2022-12-27 17:10:00', '00:20:00', '2022-12-29 14:08:58', '2022-12-29 14:08:58'),
(76, 6, '2022-12-29', '2022-12-28 11:05:00', '2022-12-28 19:13:00', '00:40:00', '2022-12-29 14:09:29', '2022-12-29 14:09:29'),
(77, 4, '2022-12-30', '2022-12-30 09:43:15', '2022-12-30 17:55:59', '00:00:00', '2022-12-30 09:43:15', '2022-12-30 17:55:59'),
(78, 4, '2022-12-31', '2022-12-31 10:46:57', '2022-12-31 17:30:41', '00:00:00', '2022-12-31 10:46:57', '2022-12-31 17:30:41'),
(79, 4, '2023-01-02', '2023-01-02 10:43:42', '2023-01-02 17:27:48', '00:00:00', '2023-01-02 10:43:42', '2023-01-02 17:27:48'),
(80, 3, '2023-01-03', '2023-01-03 09:59:55', '2023-01-03 19:05:06', '00:00:00', '2023-01-03 09:59:55', '2023-01-03 19:05:06'),
(81, 4, '2023-01-03', '2023-01-03 10:01:49', '2023-01-03 19:05:51', '00:00:00', '2023-01-03 10:01:49', '2023-01-03 19:05:51'),
(82, 7, '2023-01-03', '2023-01-03 10:06:00', '2023-01-03 19:03:16', '00:39:00', '2023-01-03 10:06:00', '2023-01-03 19:03:16'),
(83, 6, '2023-01-03', '2023-01-03 10:34:22', '2023-01-03 19:04:44', '01:00:00', '2023-01-03 10:34:22', '2023-01-03 19:04:44'),
(84, 6, '2023-01-03', '2022-12-29 11:15:00', '2022-12-29 19:02:00', '00:45:00', '2023-01-03 16:27:48', '2023-01-03 16:29:58'),
(85, 6, '2023-01-03', '2022-12-30 11:52:00', '2022-12-30 19:33:00', '00:45:00', '2023-01-03 16:28:51', '2023-01-03 16:28:51'),
(86, 6, '2023-01-03', '2022-12-21 11:21:00', '2022-12-21 19:00:00', '01:00:00', '2023-01-03 16:31:11', '2023-01-03 16:31:11'),
(87, 6, '2023-01-03', '2022-12-22 11:05:00', '2022-12-22 19:00:00', '00:45:00', '2023-01-03 16:32:30', '2023-01-03 16:32:30'),
(88, 4, '2023-01-04', '2023-01-04 09:51:38', '2023-01-04 19:10:51', '00:00:00', '2023-01-04 09:51:38', '2023-01-04 19:10:51'),
(89, 7, '2023-01-04', '2023-01-04 10:07:22', '2023-01-04 11:00:07', '00:00:00', '2023-01-04 10:07:22', '2023-01-04 11:00:07'),
(90, 6, '2023-01-04', '2023-01-04 11:41:27', '2023-01-04 19:03:11', '00:30:00', '2023-01-04 11:41:27', '2023-01-04 19:03:11'),
(91, 3, '2023-01-05', '2023-01-05 09:47:44', '2023-01-05 19:18:02', '00:00:00', '2023-01-05 09:47:44', '2023-01-05 19:18:02'),
(92, 7, '2023-01-05', '2023-01-05 10:00:45', '2023-01-05 19:08:41', '01:00:00', '2023-01-05 10:00:45', '2023-01-05 19:08:41'),
(93, 6, '2023-01-05', '2023-01-05 11:02:25', '2023-01-05 19:16:19', '00:30:00', '2023-01-05 11:02:25', '2023-01-05 19:16:19'),
(94, 8, '2023-01-05', '2023-01-05 11:14:05', '2023-01-05 19:12:10', '00:30:00', '2023-01-05 11:14:05', '2023-01-05 19:12:10'),
(95, 5, '2023-01-05', '2023-01-03 09:50:00', '2023-01-03 19:07:00', '00:00:00', '2023-01-05 22:18:16', '2023-01-05 22:18:16'),
(96, 5, '2023-01-05', '2023-01-04 10:05:00', '2023-01-04 19:01:00', '00:00:00', '2023-01-05 22:18:55', '2023-01-05 22:18:55'),
(97, 5, '2023-01-05', '2023-01-05 09:38:00', '2023-01-05 19:00:00', '00:00:00', '2023-01-05 22:19:23', '2023-01-05 22:19:23'),
(98, 4, '2023-01-06', '2023-01-06 10:01:05', '2023-01-06 19:10:52', '00:00:00', '2023-01-06 10:01:05', '2023-01-06 19:10:52'),
(99, 6, '2023-01-06', '2023-01-06 10:38:12', '2023-01-06 19:52:47', '01:00:00', '2023-01-06 10:38:12', '2023-01-06 19:52:47'),
(100, 3, '2023-01-07', '2023-01-07 09:49:22', '2023-01-07 19:07:45', '00:00:00', '2023-01-07 09:49:22', '2023-01-07 19:07:45'),
(101, 6, '2023-01-07', '2023-01-07 10:58:05', '2023-01-07 19:30:18', '00:30:00', '2023-01-07 10:58:05', '2023-01-07 19:30:18'),
(102, 4, '2023-01-09', '2023-01-09 09:43:05', '2023-01-09 19:25:14', '00:00:00', '2023-01-09 09:43:05', '2023-01-09 19:25:14'),
(103, 3, '2023-01-09', '2023-01-09 09:44:04', '2023-01-09 19:25:51', '00:00:00', '2023-01-09 09:44:04', '2023-01-09 19:25:51'),
(104, 7, '2023-01-09', '2023-01-09 10:13:41', '2023-01-09 19:01:47', '00:30:00', '2023-01-09 10:13:41', '2023-01-09 19:01:47'),
(105, 6, '2023-01-09', '2023-01-09 10:32:05', '2023-01-09 19:14:39', '00:30:00', '2023-01-09 10:32:05', '2023-01-09 19:14:39'),
(106, 8, '2023-01-09', '2023-01-09 11:36:39', '2023-01-09 19:02:55', '00:30:00', '2023-01-09 11:36:39', '2023-01-09 19:02:55'),
(107, 5, '2023-01-10', '2023-01-09 09:50:00', '2023-01-09 19:05:00', '00:16:00', '2023-01-10 08:05:59', '2023-01-10 08:05:59'),
(108, 4, '2023-01-10', '2023-01-10 09:58:02', '2023-01-10 19:07:01', '00:00:00', '2023-01-10 09:58:02', '2023-01-10 19:07:01'),
(109, 3, '2023-01-10', '2023-01-10 09:58:09', '2023-01-10 19:06:22', '00:00:00', '2023-01-10 09:58:09', '2023-01-10 19:06:22'),
(110, 6, '2023-01-10', '2023-01-10 10:43:43', '2023-01-10 19:05:46', '01:00:00', '2023-01-10 10:43:43', '2023-01-10 19:05:46'),
(111, 8, '2023-01-10', '2023-01-10 11:08:19', '2023-01-10 19:00:29', '00:30:00', '2023-01-10 11:08:19', '2023-01-10 19:00:29'),
(112, 5, '2023-01-11', '2023-01-10 09:49:00', '2023-01-10 19:02:00', '00:00:00', '2023-01-11 07:54:24', '2023-01-11 07:54:24'),
(113, 3, '2023-01-11', '2023-01-11 09:52:15', '2023-01-11 19:05:54', '00:00:00', '2023-01-11 09:52:15', '2023-01-11 19:05:54'),
(114, 7, '2023-01-11', '2023-01-11 10:04:54', '2023-01-11 18:56:52', '01:00:00', '2023-01-11 10:04:54', '2023-01-11 18:56:52'),
(115, 6, '2023-01-11', '2023-01-11 10:40:30', '2023-01-11 19:05:29', '01:00:00', '2023-01-11 10:40:30', '2023-01-11 19:05:29'),
(116, 8, '2023-01-11', '2023-01-11 11:28:17', '2023-01-11 19:35:49', '00:30:00', '2023-01-11 11:28:17', '2023-01-11 19:35:49'),
(117, 5, '2023-01-12', '2023-01-11 09:26:00', '2023-01-11 19:02:00', '00:00:00', '2023-01-12 08:12:16', '2023-01-12 08:12:16'),
(118, 4, '2023-01-12', '2023-01-12 09:36:12', '2023-01-12 19:28:03', '00:00:00', '2023-01-12 09:36:12', '2023-01-12 19:28:03'),
(119, 7, '2023-01-12', '2023-01-12 10:23:21', '2023-01-12 19:20:16', '01:00:00', '2023-01-12 10:23:21', '2023-01-12 19:20:16'),
(120, 6, '2023-01-12', '2023-01-12 11:19:33', '2023-01-12 19:21:45', '01:00:00', '2023-01-12 11:19:33', '2023-01-12 19:21:45'),
(121, 8, '2023-01-12', '2023-01-12 11:35:00', '2023-01-12 18:50:00', '01:00:00', '2023-01-12 11:35:27', '2023-02-03 14:27:21'),
(122, 5, '2023-01-12', '2023-01-12 09:36:00', '2023-01-12 19:08:00', '00:00:00', '2023-01-12 14:08:35', '2023-01-12 14:08:35'),
(123, 3, '2023-01-13', '2023-01-13 09:42:30', '2023-01-13 19:13:17', '00:00:00', '2023-01-13 09:42:30', '2023-01-13 19:13:17'),
(124, 6, '2023-01-13', '2023-01-13 10:41:00', '2023-01-13 19:12:00', '01:00:00', '2023-01-13 10:41:36', '2023-01-18 10:51:29'),
(125, 4, '2023-01-14', '2023-01-14 09:45:18', '2023-01-14 19:12:58', '00:00:00', '2023-01-14 09:45:18', '2023-01-14 19:12:58'),
(126, 6, '2023-01-14', '2023-01-14 13:47:54', '2023-01-14 19:09:47', '00:00:00', '2023-01-14 13:47:54', '2023-01-14 19:09:47'),
(127, 3, '2023-01-16', '2023-01-16 09:43:21', '2023-01-16 19:27:39', '00:00:00', '2023-01-16 09:43:21', '2023-01-16 19:27:39'),
(128, 4, '2023-01-16', '2023-01-16 09:56:54', '2023-01-16 17:28:14', '00:00:00', '2023-01-16 09:56:54', '2023-01-16 17:28:14'),
(129, 6, '2023-01-16', '2023-01-16 11:10:54', '2023-01-16 19:10:35', '00:30:00', '2023-01-16 11:10:54', '2023-01-16 19:10:35'),
(130, 8, '2023-01-16', '2023-01-16 11:29:59', '2023-01-16 18:50:57', '00:30:00', '2023-01-16 11:29:59', '2023-01-16 18:50:57'),
(131, 3, '2023-01-17', '2023-01-17 09:46:18', '2023-01-17 19:47:24', '00:00:00', '2023-01-17 09:46:18', '2023-01-17 19:47:24'),
(132, 4, '2023-01-17', '2023-01-17 09:49:19', '2023-01-17 19:45:19', '00:00:00', '2023-01-17 09:49:19', '2023-01-17 19:45:19'),
(133, 6, '2023-01-17', '2023-01-17 10:11:54', '2023-01-17 19:11:57', '01:00:00', '2023-01-17 10:11:54', '2023-01-17 19:11:57'),
(134, 8, '2023-01-17', '2023-01-17 11:11:00', '2023-01-17 19:10:00', '00:30:00', '2023-01-17 11:20:58', '2023-01-18 11:12:04'),
(135, 3, '2023-01-18', '2023-01-18 09:47:34', '2023-01-18 19:20:44', '00:00:00', '2023-01-18 09:47:34', '2023-01-18 19:20:44'),
(136, 6, '2023-01-18', '2023-01-18 10:30:54', '2023-01-18 19:04:54', '01:00:00', '2023-01-18 10:30:54', '2023-01-18 19:04:54'),
(137, 5, '2023-01-18', '2023-01-16 09:32:00', '2023-01-16 19:00:00', '00:00:00', '2023-01-18 11:02:24', '2023-01-18 11:02:24'),
(138, 5, '2023-01-18', '2023-01-03 00:00:00', '2023-01-03 00:00:00', '00:00:00', '2023-01-18 11:12:46', '2023-01-18 11:17:05'),
(139, 5, '2023-01-18', '2023-01-04 00:00:00', '2023-01-04 00:00:00', '00:00:00', '2023-01-18 11:13:24', '2023-01-18 11:17:34'),
(140, 8, '2023-01-18', '2023-01-03 11:19:00', '2023-01-03 19:13:00', '00:30:00', '2023-01-18 11:18:12', '2023-01-18 11:18:12'),
(141, 8, '2023-01-18', '2023-01-04 11:18:00', '2023-01-04 19:07:00', '01:00:00', '2023-01-18 11:18:45', '2023-01-18 11:18:45'),
(142, 4, '2023-01-19', '2023-01-19 09:53:58', '2023-01-19 19:28:10', '00:00:00', '2023-01-19 09:53:58', '2023-01-19 19:28:10'),
(143, 5, '2023-01-19', '2023-01-19 09:54:00', '2023-01-19 19:10:00', '00:00:00', '2023-01-19 09:54:08', '2023-01-28 22:21:29'),
(144, 5, '2023-01-19', '2023-01-19 09:46:00', '2023-01-19 07:00:00', '00:00:00', '2023-01-19 10:00:51', '2023-01-19 10:00:51'),
(145, 8, '2023-01-19', '2023-01-19 11:58:00', '2023-01-19 18:49:00', '00:30:00', '2023-01-19 11:58:27', '2023-02-03 14:08:58'),
(146, 6, '2023-01-19', '2023-01-19 13:47:52', '2023-01-19 19:08:40', '00:00:00', '2023-01-19 13:47:52', '2023-01-19 19:08:40'),
(147, 3, '2023-01-20', '2023-01-20 09:55:27', '2023-01-20 19:32:57', '00:00:00', '2023-01-20 09:55:27', '2023-01-20 19:32:57'),
(148, 7, '2023-01-21', '2023-01-21 09:54:59', '2023-01-21 19:16:53', '00:00:00', '2023-01-21 09:54:59', '2023-01-21 19:16:53'),
(149, 3, '2023-01-23', '2023-01-23 09:43:01', '2023-01-23 19:19:35', '00:00:00', '2023-01-23 09:43:01', '2023-01-23 19:19:35'),
(150, 4, '2023-01-23', '2023-01-23 09:43:30', '2023-01-23 19:18:13', '00:00:00', '2023-01-23 09:43:30', '2023-01-23 19:18:13'),
(151, 7, '2023-01-23', '2023-01-23 10:00:47', '2023-01-23 19:10:08', '00:50:00', '2023-01-23 10:00:47', '2023-01-23 19:10:08'),
(152, 6, '2023-01-23', '2023-01-23 10:05:37', '2023-01-23 19:26:41', '00:30:00', '2023-01-23 10:05:37', '2023-01-23 19:26:41'),
(153, 8, '2023-01-23', '2023-01-23 11:50:51', '2023-01-23 19:09:16', '00:30:00', '2023-01-23 11:50:51', '2023-01-23 19:09:16'),
(154, 4, '2023-01-24', '2023-01-24 09:45:42', '2023-01-24 19:07:00', '00:00:00', '2023-01-24 09:45:42', '2023-01-24 19:07:00'),
(155, 3, '2023-01-24', '2023-01-24 09:46:00', '2023-01-24 19:05:13', '00:00:00', '2023-01-24 09:46:00', '2023-01-24 19:05:13'),
(156, 7, '2023-01-24', '2023-01-24 09:56:07', '2023-01-24 19:04:00', '00:50:00', '2023-01-24 09:56:07', '2023-01-24 19:04:00'),
(157, 6, '2023-01-24', '2023-01-24 10:24:13', '2023-01-24 19:15:49', '00:30:00', '2023-01-24 10:24:13', '2023-01-24 19:15:49'),
(158, 8, '2023-01-24', '2023-01-24 11:10:23', '2023-01-24 19:12:10', '00:30:00', '2023-01-24 11:10:23', '2023-01-24 19:12:10'),
(159, 4, '2023-01-25', '2023-01-25 09:35:25', '2023-01-25 19:17:02', '00:00:00', '2023-01-25 09:35:25', '2023-01-25 19:17:02'),
(160, 7, '2023-01-25', '2023-01-25 09:55:30', '2023-01-25 19:09:33', '00:45:00', '2023-01-25 09:55:30', '2023-01-25 19:09:33'),
(161, 6, '2023-01-25', '2023-01-25 11:18:35', '2023-01-25 19:09:58', '00:30:00', '2023-01-25 11:18:35', '2023-01-25 19:09:58'),
(162, 8, '2023-01-25', '2023-01-25 11:21:00', '2023-01-25 19:03:00', '00:30:00', '2023-01-25 19:03:19', '2023-02-03 14:10:03'),
(163, 3, '2023-01-26', '2023-01-26 09:46:03', '2023-01-26 19:06:05', '00:00:00', '2023-01-26 09:46:03', '2023-01-26 19:06:05'),
(164, 7, '2023-01-26', '2023-01-26 10:02:02', '2023-01-26 19:04:09', '00:53:00', '2023-01-26 10:02:02', '2023-01-26 19:04:09'),
(165, 6, '2023-01-26', '2023-01-26 11:04:20', '2023-01-26 19:03:43', '01:00:00', '2023-01-26 11:04:20', '2023-01-26 19:03:43'),
(166, 4, '2023-01-27', '2023-01-27 10:00:27', '2023-01-27 19:22:33', '00:00:00', '2023-01-27 10:00:27', '2023-01-27 19:22:33'),
(167, 6, '2023-01-27', '2023-01-27 10:57:30', '2023-01-27 21:30:07', '01:00:00', '2023-01-27 10:57:30', '2023-01-27 21:30:07'),
(168, 3, '2023-01-28', '2023-01-28 09:45:14', '2023-01-28 19:18:21', '00:00:00', '2023-01-28 09:45:14', '2023-01-28 19:18:21'),
(169, 6, '2023-01-28', '2023-01-28 11:42:40', '2023-01-28 19:10:24', '01:00:00', '2023-01-28 11:42:40', '2023-01-28 19:10:24'),
(170, 5, '2023-01-28', '2023-01-23 09:23:00', '2023-01-23 19:14:00', '00:00:00', '2023-01-28 22:20:12', '2023-01-28 22:20:12'),
(171, 5, '2023-01-28', '2023-01-24 09:24:00', '2023-01-24 19:01:00', '00:00:00', '2023-01-28 22:22:05', '2023-01-28 22:22:05'),
(172, 5, '2023-01-28', '2023-01-25 10:00:00', '2023-01-25 19:22:00', '00:00:00', '2023-01-28 22:22:39', '2023-01-28 22:22:39'),
(173, 5, '2023-01-28', '2023-01-26 09:53:00', '2023-01-26 19:09:00', '00:00:00', '2023-01-28 22:23:11', '2023-01-28 22:23:11'),
(174, 4, '2023-01-30', '2023-01-30 09:46:06', '2023-01-30 19:22:42', '00:00:00', '2023-01-30 09:46:06', '2023-01-30 19:22:42'),
(175, 3, '2023-01-30', '2023-01-30 09:46:36', '2023-01-30 19:23:07', '00:00:00', '2023-01-30 09:46:36', '2023-01-30 19:23:07'),
(176, 7, '2023-01-30', '2023-01-30 09:58:49', '2023-01-30 19:27:13', '00:45:00', '2023-01-30 09:58:49', '2023-01-30 19:27:13'),
(177, 6, '2023-01-30', '2023-01-30 10:26:44', '2023-01-30 19:05:44', '00:30:00', '2023-01-30 10:26:44', '2023-01-30 19:05:44'),
(178, 8, '2023-01-30', '2023-01-30 11:26:33', '2023-01-30 18:56:37', '00:30:00', '2023-01-30 11:26:33', '2023-01-30 18:56:37'),
(179, 3, '2023-01-31', '2023-01-31 09:50:22', '2023-01-31 19:09:07', '00:00:00', '2023-01-31 09:50:22', '2023-01-31 19:09:07'),
(180, 4, '2023-01-31', '2023-01-31 09:50:37', '2023-01-31 19:12:41', '00:00:00', '2023-01-31 09:50:37', '2023-01-31 19:12:41'),
(181, 7, '2023-01-31', '2023-01-31 10:12:56', '2023-01-31 19:06:05', '00:40:00', '2023-01-31 10:12:56', '2023-01-31 19:06:05'),
(182, 6, '2023-01-31', '2023-01-31 11:05:47', '2023-01-31 19:38:21', '00:30:00', '2023-01-31 11:05:47', '2023-01-31 19:38:21'),
(183, 4, '2023-02-01', '2023-02-01 09:36:20', '2023-02-01 19:10:08', '00:00:00', '2023-02-01 09:36:20', '2023-02-01 19:10:08'),
(184, 7, '2023-02-01', '2023-02-01 10:00:39', '2023-02-01 19:06:39', '00:30:00', '2023-02-01 10:00:39', '2023-02-01 19:06:39'),
(185, 6, '2023-02-01', '2023-02-01 11:21:15', '2023-02-01 19:10:05', '01:00:00', '2023-02-01 11:21:15', '2023-02-01 19:10:05'),
(186, 7, '2023-02-02', '2023-02-02 10:00:32', '2023-02-02 19:07:07', '00:30:00', '2023-02-02 10:00:32', '2023-02-02 19:07:07'),
(187, 4, '2023-02-02', '2023-02-02 10:04:34', '2023-02-02 19:10:58', '00:00:00', '2023-02-02 10:04:34', '2023-02-02 19:10:58'),
(188, 6, '2023-02-02', '2023-02-02 10:16:07', '2023-02-02 19:15:19', '01:00:00', '2023-02-02 10:16:07', '2023-02-02 19:15:19'),
(189, 3, '2023-02-03', '2023-02-03 09:45:01', '2023-02-03 19:10:06', '00:00:00', '2023-02-03 09:45:01', '2023-02-03 19:10:06'),
(190, 6, '2023-02-03', '2023-02-03 10:26:43', '2023-02-03 20:08:56', '01:00:00', '2023-02-03 10:26:43', '2023-02-03 20:08:56'),
(191, 5, '2023-02-03', '2023-01-30 09:50:00', '2023-01-30 19:06:00', '00:00:00', '2023-02-03 14:04:52', '2023-02-03 14:04:52'),
(192, 5, '2023-02-03', '2023-01-31 10:30:00', '2023-01-31 19:04:00', '00:00:00', '2023-02-03 14:06:59', '2023-02-03 14:06:59'),
(193, 8, '2023-02-03', '2023-01-18 13:18:00', '2023-01-18 18:57:00', '00:10:00', '2023-02-03 14:13:44', '2023-02-03 14:13:44'),
(194, 8, '2023-02-03', '2023-01-26 11:13:00', '2023-01-26 19:03:00', '00:30:00', '2023-02-03 14:14:28', '2023-02-03 14:14:28'),
(195, 8, '2023-02-03', '2023-01-31 11:11:00', '2023-02-03 18:50:00', '00:30:00', '2023-02-03 14:15:21', '2023-02-03 14:15:21'),
(196, 3, '2023-02-04', '2023-02-04 09:38:21', '2023-02-04 19:07:45', '00:00:00', '2023-02-04 09:38:21', '2023-02-04 19:07:45'),
(197, 7, '2023-02-04', '2023-02-04 09:59:28', '2023-02-04 19:02:25', '00:45:00', '2023-02-04 09:59:28', '2023-02-04 19:02:25'),
(198, 6, '2023-02-04', '2023-02-04 10:54:32', '2023-02-04 19:43:31', '01:00:00', '2023-02-04 10:54:32', '2023-02-04 19:43:31'),
(199, 3, '2023-02-06', '2023-02-06 09:48:40', '2023-02-06 19:07:53', '00:00:00', '2023-02-06 09:48:40', '2023-02-06 19:07:53'),
(200, 7, '2023-02-06', '2023-02-06 09:52:54', '2023-02-06 19:05:05', '00:35:00', '2023-02-06 09:52:54', '2023-02-06 19:05:05'),
(201, 6, '2023-02-06', '2023-02-06 10:19:38', '2023-02-06 19:09:06', '01:00:00', '2023-02-06 10:19:38', '2023-02-06 19:09:06'),
(202, 4, '2023-02-07', '2023-02-07 09:45:22', '2023-02-07 19:32:27', '00:00:00', '2023-02-07 09:45:22', '2023-02-07 19:32:27'),
(203, 3, '2023-02-07', '2023-02-07 09:46:07', '2023-02-07 19:31:12', '00:00:00', '2023-02-07 09:46:07', '2023-02-07 19:31:12'),
(204, 7, '2023-02-07', '2023-02-07 09:54:30', '2023-02-07 19:21:19', '00:45:00', '2023-02-07 09:54:30', '2023-02-07 19:21:19'),
(205, 6, '2023-02-07', '2023-02-07 10:15:41', '2023-02-07 19:23:32', '01:00:00', '2023-02-07 10:15:41', '2023-02-07 19:23:32'),
(206, 4, '2023-02-08', '2023-02-08 09:43:00', '2023-02-08 19:08:00', '00:00:00', '2023-02-08 09:43:20', '2023-02-22 12:57:48'),
(207, 7, '2023-02-08', '2023-02-08 09:58:11', '2023-02-08 18:58:07', '01:00:00', '2023-02-08 09:58:11', '2023-02-08 18:58:07'),
(208, 6, '2023-02-08', '2023-02-08 10:08:54', '2023-02-08 19:08:46', '01:00:00', '2023-02-08 10:08:54', '2023-02-08 19:08:46'),
(209, 3, '2023-02-09', '2023-02-09 09:47:24', '2023-02-09 19:05:35', '00:00:00', '2023-02-09 09:47:24', '2023-02-09 19:05:35'),
(210, 7, '2023-02-09', '2023-02-09 10:02:23', '2023-02-09 19:00:23', '00:40:00', '2023-02-09 10:02:23', '2023-02-09 19:00:23'),
(211, 6, '2023-02-09', '2023-02-09 10:45:57', '2023-02-09 19:09:12', '00:30:00', '2023-02-09 10:45:57', '2023-02-09 19:09:12'),
(212, 5, '2023-02-09', '2023-02-01 09:52:00', '2023-02-01 19:01:00', '01:00:00', '2023-02-09 14:56:27', '2023-02-09 14:56:27'),
(213, 5, '2023-02-09', '2023-02-02 09:57:00', '2023-02-02 19:02:00', '00:00:00', '2023-02-09 14:56:52', '2023-02-09 14:57:56'),
(214, 5, '2023-02-09', '2023-02-06 09:54:00', '2023-02-06 19:03:00', '00:00:00', '2023-02-09 14:58:29', '2023-02-09 14:58:29'),
(215, 5, '2023-02-09', '2023-02-07 09:31:00', '2023-02-07 19:12:00', '00:00:00', '2023-02-09 14:59:07', '2023-02-09 14:59:07'),
(216, 5, '2023-02-09', '2023-02-08 09:43:00', '2023-02-08 19:23:00', '00:00:00', '2023-02-09 14:59:37', '2023-02-09 14:59:37'),
(217, 3, '2023-02-10', '2023-02-10 09:45:07', '2023-02-10 19:13:45', '00:00:00', '2023-02-10 09:45:07', '2023-02-10 19:13:45'),
(218, 7, '2023-02-10', '2023-02-10 10:02:51', '2023-02-10 19:08:11', '01:00:00', '2023-02-10 10:02:51', '2023-02-10 19:08:11'),
(219, 6, '2023-02-10', '2023-02-10 10:24:04', '2023-02-10 19:21:27', '01:00:00', '2023-02-10 10:24:04', '2023-02-10 19:21:27'),
(220, 4, '2023-02-11', '2023-02-11 09:58:08', '2023-02-11 19:31:42', '00:00:00', '2023-02-11 09:58:08', '2023-02-11 19:31:42'),
(221, 7, '2023-02-11', '2023-02-11 10:03:00', '2023-02-11 19:02:59', '00:50:00', '2023-02-11 10:03:00', '2023-02-11 19:02:59'),
(222, 6, '2023-02-11', '2023-02-11 10:16:32', '2023-02-11 19:05:07', '00:30:00', '2023-02-11 10:16:32', '2023-02-11 19:05:07'),
(223, 4, '2023-02-13', '2023-02-13 09:42:49', '2023-02-13 19:23:48', '00:00:00', '2023-02-13 09:42:49', '2023-02-13 19:23:48'),
(224, 3, '2023-02-13', '2023-02-13 09:44:05', '2023-02-13 19:24:33', '00:00:00', '2023-02-13 09:44:05', '2023-02-13 19:24:33'),
(225, 7, '2023-02-13', '2023-02-13 09:59:24', '2023-02-13 19:05:13', '00:43:00', '2023-02-13 09:59:24', '2023-02-13 19:05:13'),
(226, 6, '2023-02-13', '2023-02-13 11:40:08', '2023-02-13 19:29:00', '01:00:00', '2023-02-13 11:40:08', '2023-02-13 19:29:00'),
(227, 3, '2023-02-14', '2023-02-14 09:50:36', '2023-02-14 19:35:18', '00:00:00', '2023-02-14 09:50:36', '2023-02-14 19:35:18'),
(228, 7, '2023-02-14', '2023-02-14 10:04:30', '2023-02-14 19:04:23', '01:20:00', '2023-02-14 10:04:30', '2023-02-14 19:04:23'),
(229, 6, '2023-02-14', '2023-02-14 10:18:36', '2023-02-14 20:58:21', '01:00:00', '2023-02-14 10:18:36', '2023-02-14 20:58:21'),
(230, 4, '2023-02-15', '2023-02-15 09:57:59', '2023-02-15 19:24:53', '00:00:00', '2023-02-15 09:57:59', '2023-02-15 19:24:53'),
(231, 7, '2023-02-15', '2023-02-15 10:12:30', '2023-02-15 19:13:04', '00:43:00', '2023-02-15 10:12:30', '2023-02-15 19:13:04'),
(232, 6, '2023-02-15', '2023-02-15 10:36:30', '2023-02-15 19:08:36', '01:45:00', '2023-02-15 10:36:30', '2023-02-15 19:08:36'),
(233, 5, '2023-02-16', '2023-02-13 09:55:00', '2023-02-13 19:08:00', '00:00:00', '2023-02-16 05:01:50', '2023-02-16 05:01:50'),
(234, 5, '2023-02-16', '2023-02-14 10:00:00', '2023-02-14 19:40:00', '00:00:00', '2023-02-16 05:02:24', '2023-02-16 05:02:24'),
(235, 5, '2023-02-16', '2023-02-15 09:53:00', '2023-02-15 20:02:00', '00:00:00', '2023-02-16 05:02:55', '2023-02-16 05:02:55'),
(236, 3, '2023-02-16', '2023-02-16 09:57:31', '2023-02-16 19:06:43', '00:00:00', '2023-02-16 09:57:31', '2023-02-16 19:06:43'),
(237, 7, '2023-02-16', '2023-02-16 10:00:47', '2023-02-16 19:02:43', '01:00:00', '2023-02-16 10:00:47', '2023-02-16 19:02:43'),
(238, 6, '2023-02-16', '2023-02-16 10:27:13', '2023-02-16 19:10:51', '00:30:00', '2023-02-16 10:27:13', '2023-02-16 19:10:51'),
(239, 4, '2023-02-17', '2023-02-17 09:34:33', '2023-02-17 19:26:24', '00:00:00', '2023-02-17 09:34:33', '2023-02-17 19:26:24'),
(240, 7, '2023-02-17', '2023-02-17 10:03:21', '2023-02-17 19:06:45', '00:50:00', '2023-02-17 10:03:21', '2023-02-17 19:06:45'),
(241, 6, '2023-02-17', '2023-02-17 10:45:38', '2023-02-17 19:08:29', '01:00:00', '2023-02-17 10:45:38', '2023-02-17 19:08:29'),
(242, 3, '2023-02-18', '2023-02-18 09:44:39', '2023-02-18 19:08:27', '00:00:00', '2023-02-18 09:44:39', '2023-02-18 19:08:27'),
(243, 6, '2023-02-18', '2023-02-18 10:38:16', '2023-02-18 19:17:55', '00:30:00', '2023-02-18 10:38:16', '2023-02-18 19:17:55'),
(244, 7, '2023-02-18', '2023-02-18 11:17:45', '2023-02-18 18:53:26', '00:40:00', '2023-02-18 11:17:45', '2023-02-18 18:53:26'),
(245, 3, '2023-02-20', '2023-02-20 09:47:37', '2023-02-20 19:15:51', '00:00:00', '2023-02-20 09:47:37', '2023-02-20 19:15:51'),
(246, 4, '2023-02-20', '2023-02-20 09:49:50', '2023-02-20 19:17:31', '00:00:00', '2023-02-20 09:49:50', '2023-02-20 19:17:31'),
(247, 7, '2023-02-20', '2023-02-20 10:00:07', '2023-02-20 18:31:22', '00:35:00', '2023-02-20 10:00:07', '2023-02-20 18:31:22'),
(248, 6, '2023-02-20', '2023-02-20 10:02:26', '2023-02-20 19:14:55', '01:00:00', '2023-02-20 10:02:26', '2023-02-20 19:14:55'),
(249, 4, '2023-02-21', '2023-02-21 09:42:38', '2023-02-21 19:08:05', '00:00:00', '2023-02-21 09:42:38', '2023-02-21 19:08:05'),
(250, 3, '2023-02-21', '2023-02-21 09:45:01', '2023-02-21 19:09:53', '00:00:00', '2023-02-21 09:45:01', '2023-02-21 19:09:53'),
(251, 7, '2023-02-21', '2023-02-21 10:01:01', '2023-02-21 18:57:46', '01:00:00', '2023-02-21 10:01:01', '2023-02-21 18:57:46'),
(252, 6, '2023-02-21', '2023-02-21 10:27:27', '2023-02-21 19:06:51', '00:30:00', '2023-02-21 10:27:27', '2023-02-21 19:06:51'),
(253, 3, '2023-02-22', '2023-02-22 09:48:11', '2023-02-22 19:12:34', '00:00:00', '2023-02-22 09:48:11', '2023-02-22 19:12:34'),
(254, 7, '2023-02-22', '2023-02-22 10:02:29', '2023-02-22 19:04:56', '01:45:00', '2023-02-22 10:02:29', '2023-02-22 19:04:56'),
(255, 6, '2023-02-22', '2023-02-22 11:16:31', '2023-02-22 19:13:26', '01:00:00', '2023-02-22 11:16:31', '2023-02-22 19:13:26'),
(256, 4, '2023-02-22', '2023-02-06 09:54:00', '2023-02-06 15:00:00', '00:00:00', '2023-02-22 12:59:22', '2023-02-22 12:59:22'),
(257, 5, '2023-02-22', '2023-02-16 10:02:00', '2023-02-22 19:09:00', '00:00:00', '2023-02-22 13:59:19', '2023-02-22 13:59:19'),
(258, 5, '2023-02-22', '2023-02-20 09:43:00', '2023-02-20 19:08:00', '00:00:00', '2023-02-22 14:00:02', '2023-02-22 14:00:02'),
(259, 5, '2023-02-22', '2023-02-21 09:57:00', '2023-02-21 19:09:00', '01:00:00', '2023-02-22 14:00:36', '2023-02-22 14:00:36'),
(260, 5, '2023-02-22', '2023-02-22 10:02:00', '2023-02-22 19:50:00', '00:00:00', '2023-02-22 20:37:07', '2023-02-22 20:37:07'),
(261, 4, '2023-02-23', '2023-02-23 09:46:09', '2023-02-23 19:15:07', '00:00:00', '2023-02-23 09:46:09', '2023-02-23 19:15:07'),
(262, 7, '2023-02-23', '2023-02-23 10:03:53', '2023-02-23 19:00:49', '01:00:00', '2023-02-23 10:03:53', '2023-02-23 19:00:49'),
(263, 6, '2023-02-23', '2023-02-23 10:29:00', '2023-02-23 19:14:30', '01:00:00', '2023-02-23 10:29:00', '2023-02-23 19:14:30'),
(264, 8, '2023-02-23', '2023-02-23 11:12:00', '2023-02-23 19:40:00', '01:00:00', '2023-02-23 11:12:24', '2023-02-24 11:13:17'),
(265, 3, '2023-02-24', '2023-02-24 09:47:45', '2023-02-24 19:07:38', '00:00:00', '2023-02-24 09:47:45', '2023-02-24 19:07:38'),
(266, 7, '2023-02-24', '2023-02-24 10:39:04', '2023-02-24 19:00:05', '01:00:00', '2023-02-24 10:39:04', '2023-02-24 19:00:05'),
(267, 6, '2023-02-24', '2023-02-24 10:52:54', '2023-02-24 19:04:08', '01:00:00', '2023-02-24 10:52:54', '2023-02-24 19:04:08'),
(268, 8, '2023-02-24', '2023-02-01 11:48:00', '2023-02-01 19:13:00', '00:30:00', '2023-02-24 11:05:28', '2023-02-24 11:05:28'),
(269, 8, '2023-02-24', '2023-02-02 11:48:00', '2023-02-02 18:59:00', '00:30:00', '2023-02-24 11:06:06', '2023-02-24 11:06:06'),
(270, 8, '2023-02-24', '2023-02-06 10:24:00', '2023-02-06 19:37:00', '01:00:00', '2023-02-24 11:06:44', '2023-02-24 11:06:44'),
(271, 8, '2023-02-24', '2023-02-07 10:44:00', '2023-02-07 20:15:00', '01:00:00', '2023-02-24 11:07:22', '2023-02-24 11:07:22'),
(272, 8, '2023-02-24', '2023-02-08 11:38:00', '2023-02-08 18:54:00', '00:30:00', '2023-02-24 11:07:58', '2023-02-24 11:07:58'),
(273, 8, '2023-02-24', '2023-02-09 11:24:00', '2023-02-09 17:53:00', '00:40:00', '2023-02-24 11:08:41', '2023-02-24 11:08:41'),
(274, 8, '2023-02-24', '2023-02-13 11:15:00', '2023-02-13 19:03:00', '00:30:00', '2023-02-24 11:09:15', '2023-02-24 11:09:15'),
(275, 8, '2023-02-24', '2023-02-14 11:31:00', '2023-02-14 19:04:00', '00:35:00', '2023-02-24 11:09:46', '2023-02-24 11:09:46'),
(276, 8, '2023-02-24', '2023-02-15 11:20:00', '2023-02-15 18:20:00', '00:50:00', '2023-02-24 11:10:34', '2023-02-24 11:10:34'),
(277, 8, '2023-02-24', '2023-02-16 10:53:00', '2023-02-16 18:54:00', '01:00:00', '2023-02-24 11:11:14', '2023-02-24 11:11:14'),
(278, 8, '2023-02-24', '2023-02-20 11:25:00', '2023-02-20 19:03:00', '00:35:00', '2023-02-24 11:11:49', '2023-02-24 11:11:49'),
(279, 8, '2023-02-24', '2023-02-21 11:16:00', '2023-02-21 19:05:00', '00:30:00', '2023-02-24 11:12:18', '2023-02-24 11:12:18'),
(280, 8, '2023-02-24', '2023-02-22 11:01:00', '2023-02-22 19:12:00', '01:00:00', '2023-02-24 11:12:51', '2023-02-24 11:12:51'),
(281, 4, '2023-02-25', '2023-02-25 09:44:25', '2023-02-25 19:14:22', '00:00:00', '2023-02-25 09:44:25', '2023-02-25 19:14:22'),
(282, 7, '2023-02-25', '2023-02-25 10:00:06', '2023-02-25 19:02:52', '01:00:00', '2023-02-25 10:00:06', '2023-02-25 19:02:52'),
(283, 6, '2023-02-25', '2023-02-25 10:36:11', '2023-02-25 19:25:06', '00:30:00', '2023-02-25 10:36:11', '2023-02-25 19:25:06'),
(284, 3, '2023-02-27', '2023-02-27 09:45:10', '2023-02-27 19:08:13', '00:00:00', '2023-02-27 09:45:10', '2023-02-27 19:08:13'),
(285, 4, '2023-02-27', '2023-02-27 09:45:45', '2023-02-27 19:09:33', '00:00:00', '2023-02-27 09:45:45', '2023-02-27 19:09:33'),
(286, 7, '2023-02-27', '2023-02-27 09:58:48', '2023-02-27 19:04:16', '00:44:00', '2023-02-27 09:58:48', '2023-02-27 19:04:16'),
(287, 8, '2023-02-27', '2023-02-27 11:34:00', '2023-02-27 19:00:00', '00:30:00', '2023-02-27 11:34:33', '2023-02-28 17:46:22'),
(288, 3, '2023-02-28', '2023-02-28 09:42:46', '2023-02-28 19:09:03', '00:00:00', '2023-02-28 09:42:46', '2023-02-28 19:09:03'),
(289, 4, '2023-02-28', '2023-02-28 09:43:16', '2023-02-28 19:09:19', '00:00:00', '2023-02-28 09:43:16', '2023-02-28 19:09:19'),
(290, 7, '2023-02-28', '2023-02-28 10:11:11', '2023-02-28 18:55:57', '00:56:00', '2023-02-28 10:11:11', '2023-02-28 18:55:57'),
(291, 6, '2023-02-28', '2023-02-28 10:44:00', '2023-02-28 19:05:00', '00:40:00', '2023-02-28 10:44:46', '2023-03-02 12:10:44'),
(292, 5, '2023-02-28', '2023-02-27 09:48:00', '2023-02-27 19:03:00', '00:00:00', '2023-02-28 10:52:31', '2023-02-28 10:57:18'),
(293, 5, '2023-02-28', '2023-02-28 09:36:00', '2023-02-28 19:04:00', '00:00:00', '2023-02-28 10:58:05', '2023-02-28 10:58:05'),
(294, 8, '2023-02-28', '2023-02-28 11:37:00', '2023-02-28 19:00:00', '00:40:00', '2023-02-28 11:37:19', '2023-03-02 12:09:23'),
(295, 4, '2023-03-01', '2023-03-01 09:41:54', '2023-03-01 19:17:23', '00:00:00', '2023-03-01 09:41:54', '2023-03-01 19:17:23'),
(296, 7, '2023-03-01', '2023-03-01 10:02:00', '2023-03-01 19:04:02', '00:50:00', '2023-03-01 10:02:00', '2023-03-01 19:04:02'),
(297, 5, '2023-03-01', '2023-03-01 10:38:00', '2023-03-01 19:54:00', '00:00:00', '2023-03-01 10:38:04', '2023-03-02 08:50:53'),
(298, 8, '2023-03-01', '2023-03-01 11:07:00', '2023-03-01 18:39:00', '00:30:00', '2023-03-01 11:07:58', '2023-04-04 15:58:34'),
(299, 6, '2023-03-01', '2023-03-01 11:26:35', '2023-03-01 19:04:04', '00:30:00', '2023-03-01 11:26:35', '2023-03-01 19:04:04'),
(300, 3, '2023-03-02', '2023-03-02 09:55:33', '2023-03-02 19:17:34', '00:00:00', '2023-03-02 09:55:33', '2023-03-02 19:17:34'),
(301, 5, '2023-03-02', '2023-03-02 10:08:00', '2023-03-02 19:02:00', '00:00:00', '2023-03-02 10:08:59', '2023-03-03 05:24:48'),
(302, 7, '2023-03-02', '2023-03-02 10:10:07', '2023-03-02 18:57:21', '01:00:00', '2023-03-02 10:10:07', '2023-03-02 18:57:21'),
(303, 6, '2023-03-02', '2023-03-02 10:25:30', '2023-03-02 19:12:00', '00:30:00', '2023-03-02 10:25:30', '2023-03-02 19:12:00'),
(304, 8, '2023-03-02', '2023-03-02 11:32:40', '2023-03-02 19:01:37', '00:30:00', '2023-03-02 11:32:40', '2023-03-02 19:01:37'),
(305, 4, '2023-03-03', '2023-03-03 09:47:25', '2023-03-03 19:11:07', '00:00:00', '2023-03-03 09:47:25', '2023-03-03 19:11:07'),
(306, 6, '2023-03-03', '2023-03-03 10:39:17', '2023-03-03 20:07:33', '00:30:00', '2023-03-03 10:39:17', '2023-03-03 20:07:33'),
(307, 7, '2023-03-03', '2023-03-03 11:00:12', '2023-03-03 19:02:24', '00:40:00', '2023-03-03 11:00:12', '2023-03-03 19:02:24'),
(308, 3, '2023-03-04', '2023-03-04 09:56:58', '2023-03-04 19:26:59', '00:00:00', '2023-03-04 09:56:58', '2023-03-04 19:26:59'),
(309, 7, '2023-03-04', '2023-03-04 10:06:05', '2023-03-04 19:05:41', '00:48:00', '2023-03-04 10:06:05', '2023-03-04 19:05:41'),
(310, 6, '2023-03-04', '2023-03-04 11:05:13', '2023-03-04 19:04:52', '00:30:00', '2023-03-04 11:05:13', '2023-03-04 19:04:52'),
(311, 5, '2023-03-06', '2023-03-06 09:39:00', '2023-03-06 17:02:00', '00:00:00', '2023-03-06 09:39:11', '2023-03-07 10:09:52'),
(312, 3, '2023-03-06', '2023-03-06 09:43:17', '2023-03-06 19:22:29', '00:00:00', '2023-03-06 09:43:17', '2023-03-06 19:22:29'),
(313, 4, '2023-03-06', '2023-03-06 09:47:09', '2023-03-06 19:17:58', '00:00:00', '2023-03-06 09:47:09', '2023-03-06 19:17:58'),
(314, 7, '2023-03-06', '2023-03-06 10:03:53', '2023-03-06 19:08:32', '00:50:00', '2023-03-06 10:03:53', '2023-03-06 19:08:32'),
(315, 6, '2023-03-06', '2023-03-06 10:28:53', '2023-03-06 19:24:46', '01:15:00', '2023-03-06 10:28:53', '2023-03-06 19:24:46'),
(316, 4, '2023-03-07', '2023-03-07 09:54:16', '2023-03-07 19:27:02', '00:00:00', '2023-03-07 09:54:16', '2023-03-07 19:27:02'),
(317, 3, '2023-03-07', '2023-03-07 09:56:03', '2023-03-07 19:26:23', '00:00:00', '2023-03-07 09:56:03', '2023-03-07 19:26:23'),
(318, 5, '2023-03-07', '2023-03-07 09:57:14', '2023-03-07 19:15:42', '00:00:00', '2023-03-07 09:57:14', '2023-03-07 19:15:42'),
(319, 7, '2023-03-07', '2023-03-07 10:03:14', '2023-03-07 19:01:31', '00:50:00', '2023-03-07 10:03:14', '2023-03-07 19:01:31'),
(320, 6, '2023-03-07', '2023-03-07 11:45:35', '2023-03-07 19:16:37', '00:15:00', '2023-03-07 11:45:35', '2023-03-07 19:16:37'),
(321, 8, '2023-03-07', '2023-03-07 11:46:00', '2023-03-07 19:02:00', '00:40:00', '2023-03-07 11:46:00', '2023-04-04 16:28:12'),
(322, 4, '2023-03-08', '2023-03-08 09:36:23', '2023-03-08 19:24:03', '00:00:00', '2023-03-08 09:36:23', '2023-03-08 19:24:03'),
(323, 6, '2023-03-08', '2023-03-08 10:44:13', '2023-03-08 19:04:40', '00:20:00', '2023-03-08 10:44:13', '2023-03-08 19:04:40'),
(324, 7, '2023-03-08', '2023-03-08 11:03:52', '2023-03-08 19:18:19', '01:40:00', '2023-03-08 11:03:52', '2023-03-08 19:18:19'),
(325, 4, '2023-03-09', '2023-03-09 09:45:18', '2023-03-09 19:16:59', '00:00:00', '2023-03-09 09:45:18', '2023-03-09 19:16:59'),
(326, 5, '2023-03-09', '2023-03-09 09:49:00', '2023-03-09 19:19:00', '00:00:00', '2023-03-09 09:49:33', '2023-03-11 18:23:33'),
(327, 7, '2023-03-09', '2023-03-09 10:00:12', '2023-03-09 19:10:21', '00:53:00', '2023-03-09 10:00:12', '2023-03-09 19:10:21'),
(328, 5, '2023-03-09', '2023-03-08 10:29:00', '2023-03-08 18:55:00', '00:57:00', '2023-03-09 10:00:37', '2023-03-09 10:00:37'),
(329, 6, '2023-03-09', '2023-03-09 11:08:48', '2023-03-09 19:08:29', '00:30:00', '2023-03-09 11:08:48', '2023-03-09 19:08:29'),
(330, 3, '2023-03-10', '2023-03-10 09:42:52', '2023-03-10 19:05:10', '00:00:00', '2023-03-10 09:42:52', '2023-03-10 19:05:10'),
(331, 7, '2023-03-10', '2023-03-10 10:02:33', '2023-03-10 18:52:10', '01:00:00', '2023-03-10 10:02:33', '2023-03-10 18:52:10'),
(332, 6, '2023-03-10', '2023-03-10 15:10:42', '2023-03-10 19:01:34', '00:00:00', '2023-03-10 15:10:42', '2023-03-10 19:01:34'),
(333, 3, '2023-03-11', '2023-03-11 09:42:07', '2023-03-11 19:05:21', '00:00:00', '2023-03-11 09:42:07', '2023-03-11 19:05:21'),
(334, 7, '2023-03-11', '2023-03-11 10:01:17', '2023-03-11 18:58:37', '01:00:00', '2023-03-11 10:01:17', '2023-03-11 18:58:37'),
(335, 6, '2023-03-11', '2023-03-11 14:26:17', '2023-03-11 19:01:00', '00:00:00', '2023-03-11 14:26:17', '2023-03-11 19:01:00'),
(336, 3, '2023-03-13', '2023-03-13 09:48:00', '2023-03-13 19:15:00', '00:00:00', '2023-03-13 09:48:21', '2023-03-14 14:04:41'),
(337, 4, '2023-03-13', '2023-03-13 09:48:55', '2023-03-13 19:18:18', '00:00:00', '2023-03-13 09:48:55', '2023-03-13 19:18:18'),
(338, 6, '2023-03-13', '2023-03-13 10:23:06', '2023-03-13 19:07:46', '01:00:00', '2023-03-13 10:23:06', '2023-03-13 19:07:46'),
(339, 3, '2023-03-14', '2023-03-14 09:45:23', '2023-03-14 19:27:12', '00:00:00', '2023-03-14 09:45:23', '2023-03-14 19:27:12'),
(340, 4, '2023-03-14', '2023-03-14 09:49:25', '2023-03-14 19:26:04', '00:00:00', '2023-03-14 09:49:25', '2023-03-14 19:26:04'),
(341, 5, '2023-03-14', '2023-03-14 09:53:00', '2023-03-14 19:17:00', '00:00:00', '2023-03-14 09:53:52', '2023-03-15 10:43:44'),
(342, 7, '2023-03-14', '2023-03-14 10:00:11', '2023-03-14 19:11:18', '00:51:00', '2023-03-14 10:00:11', '2023-03-14 19:11:18'),
(343, 6, '2023-03-14', '2023-03-14 10:47:00', '2023-03-14 23:55:00', '01:00:00', '2023-03-14 10:47:40', '2023-03-15 15:52:02'),
(344, 8, '2023-03-14', '2023-03-14 11:28:27', '2023-03-14 22:32:34', '01:00:00', '2023-03-14 11:28:27', '2023-03-14 22:32:34'),
(345, 3, '2023-03-15', '2023-03-15 10:00:25', '2023-03-15 19:08:17', '00:00:00', '2023-03-15 10:00:25', '2023-03-15 19:08:17'),
(346, 7, '2023-03-15', '2023-03-15 10:04:48', '2023-03-15 19:03:50', '00:50:00', '2023-03-15 10:04:48', '2023-03-15 19:03:50'),
(347, 5, '2023-03-15', '2023-03-15 10:05:48', '2023-03-15 19:04:51', '00:00:00', '2023-03-15 10:05:48', '2023-03-15 19:04:51'),
(348, 8, '2023-03-15', '2023-03-15 11:14:34', '2023-03-15 19:05:17', '00:30:00', '2023-03-15 11:14:34', '2023-03-15 19:05:17'),
(349, 6, '2023-03-15', '2023-03-15 12:47:57', '2023-03-15 19:05:02', '00:30:00', '2023-03-15 12:47:57', '2023-03-15 19:05:02'),
(350, 3, '2023-03-16', '2023-03-16 09:36:42', '2023-03-16 19:23:13', '00:00:00', '2023-03-16 09:36:42', '2023-03-16 19:23:13'),
(351, 7, '2023-03-16', '2023-03-16 10:03:08', '2023-03-16 19:00:47', '00:40:00', '2023-03-16 10:03:08', '2023-03-16 19:00:47'),
(352, 8, '2023-03-16', '2023-03-16 11:08:53', '2023-03-16 19:15:33', '00:30:00', '2023-03-16 11:08:53', '2023-03-16 19:15:33'),
(353, 6, '2023-03-16', '2023-03-16 11:35:12', '2023-03-16 19:06:08', '00:30:00', '2023-03-16 11:35:12', '2023-03-16 19:06:08'),
(354, 5, '2023-03-16', '2023-03-16 09:44:00', '2023-03-16 19:16:00', '00:00:00', '2023-03-16 19:16:31', '2023-03-22 14:41:25'),
(355, 4, '2023-03-17', '2023-03-17 09:35:00', '2023-03-17 19:12:00', '00:00:00', '2023-03-17 09:35:59', '2023-03-21 10:13:12'),
(356, 6, '2023-03-17', '2023-03-17 10:36:00', '2023-03-17 19:07:00', '01:00:00', '2023-03-17 10:36:18', '2023-03-21 10:14:39'),
(357, 8, '2023-03-20', '2023-03-20 11:48:01', '2023-03-20 18:31:45', '00:30:00', '2023-03-20 11:48:01', '2023-03-20 18:31:45'),
(358, 5, '2023-03-21', '2023-03-20 09:52:00', '2023-03-20 17:19:00', '00:00:00', '2023-03-21 08:04:14', '2023-03-21 08:05:06'),
(359, 3, '2023-03-21', '2023-03-21 09:46:49', '2023-03-21 19:06:21', '00:00:00', '2023-03-21 09:46:49', '2023-03-21 19:06:21'),
(360, 4, '2023-03-21', '2023-03-21 09:47:54', '2023-03-21 19:08:02', '00:00:00', '2023-03-21 09:47:54', '2023-03-21 19:08:02'),
(361, 7, '2023-03-21', '2023-03-21 10:06:18', '2023-03-21 19:12:19', '00:44:00', '2023-03-21 10:06:18', '2023-03-21 19:12:19'),
(362, 4, '2023-03-21', '2023-03-18 09:58:00', '2023-03-18 19:03:00', '00:00:00', '2023-03-21 10:15:41', '2023-03-21 10:15:41'),
(363, 6, '2023-03-21', '2023-03-18 10:57:00', '2023-03-18 19:00:00', '01:00:00', '2023-03-21 10:16:26', '2023-03-21 10:16:26'),
(364, 3, '2023-03-22', '2023-03-22 09:37:10', '2023-03-22 19:28:04', '00:00:00', '2023-03-22 09:37:10', '2023-03-22 19:28:04'),
(365, 5, '2023-03-22', '2023-03-22 09:12:00', '2023-03-22 19:15:00', '00:43:00', '2023-03-22 09:51:22', '2023-03-30 02:13:03'),
(366, 8, '2023-03-22', '2023-03-22 11:12:00', '2023-03-22 19:38:00', '01:00:00', '2023-03-22 11:12:28', '2023-04-04 16:29:46'),
(367, 4, '2023-03-22', '2023-03-20 09:51:00', '2023-03-20 19:23:00', '00:00:00', '2023-03-22 12:56:28', '2023-03-22 12:56:28'),
(368, 3, '2023-03-22', '2023-03-20 09:51:00', '2023-03-20 19:24:00', '00:00:00', '2023-03-22 13:28:14', '2023-03-22 13:28:14'),
(369, 5, '2023-03-22', '2023-03-21 09:54:00', '2023-03-21 19:03:00', '00:00:00', '2023-03-22 14:40:38', '2023-03-22 14:40:38'),
(370, 4, '2023-03-23', '2023-03-23 09:37:00', '2023-03-23 19:06:00', '00:00:00', '2023-03-23 09:37:54', '2023-04-05 12:34:42'),
(371, 7, '2023-03-23', '2023-03-23 10:10:45', '2023-03-23 17:57:50', '00:10:00', '2023-03-23 10:10:45', '2023-03-23 17:57:50'),
(372, 8, '2023-03-23', '2023-03-23 11:34:07', '2023-03-23 18:05:40', '00:00:00', '2023-03-23 11:34:07', '2023-03-23 18:05:40'),
(373, 4, '2023-03-24', '2023-03-24 09:50:29', '2023-03-24 19:11:56', '00:00:00', '2023-03-24 09:50:29', '2023-03-24 19:11:56'),
(374, 3, '2023-03-25', '2023-03-25 09:32:55', '2023-03-25 19:07:20', '00:00:00', '2023-03-25 09:32:55', '2023-03-25 19:07:20'),
(375, 3, '2023-03-27', '2023-03-27 09:46:33', '2023-03-27 19:23:53', '00:00:00', '2023-03-27 07:46:33', '2023-03-27 17:23:53'),
(376, 4, '2023-03-27', '2023-03-27 09:53:23', '2023-03-27 19:22:24', '00:00:00', '2023-03-27 07:53:23', '2023-03-27 17:22:24'),
(377, 7, '2023-03-27', '2023-03-27 10:31:08', '2023-03-27 17:15:03', '00:00:00', '2023-03-27 08:31:08', '2023-03-27 15:15:03'),
(378, 6, '2023-03-27', '2023-03-27 10:54:24', '2023-03-27 18:25:40', '00:10:00', '2023-03-27 08:54:24', '2023-03-27 16:25:40'),
(379, 8, '2023-03-27', '2023-03-27 11:48:27', '2023-03-27 18:31:10', '00:00:00', '2023-03-27 09:48:27', '2023-03-27 16:31:10'),
(380, 4, '2023-03-28', '2023-03-28 09:37:45', '2023-03-28 19:33:37', '00:00:00', '2023-03-28 07:37:45', '2023-03-28 17:33:37'),
(381, 7, '2023-03-28', '2023-03-28 10:12:46', '2023-03-28 18:34:01', '00:00:00', '2023-03-28 08:12:46', '2023-03-28 16:34:01'),
(382, 6, '2023-03-28', '2023-03-28 11:04:15', '2023-03-28 21:13:46', '00:00:00', '2023-03-28 09:04:15', '2023-03-28 19:13:46'),
(383, 5, '2023-03-28', '2023-03-28 10:57:00', '2023-03-28 18:47:00', '00:27:00', '2023-03-28 09:12:12', '2023-03-30 02:12:19'),
(384, 3, '2023-03-29', '2023-03-29 09:56:00', '2023-03-29 19:10:00', '00:00:00', '2023-03-29 07:56:40', '2023-04-04 15:15:52'),
(385, 5, '2023-03-29', '2023-03-29 10:54:00', '2023-03-29 18:16:00', '00:52:00', '2023-03-29 08:48:03', '2023-03-30 02:13:40'),
(386, 6, '2023-03-29', '2023-03-29 11:01:55', '2023-03-29 20:02:05', '00:15:00', '2023-03-29 09:01:55', '2023-03-29 18:02:05'),
(387, 8, '2023-03-29', '2023-03-29 11:14:00', '2023-03-29 19:05:00', '00:00:00', '2023-03-29 17:05:37', '2023-04-04 15:20:22'),
(388, 5, '2023-03-30', '2023-03-27 09:47:00', '2023-03-27 19:14:00', '00:50:00', '2023-03-30 02:11:29', '2023-03-30 02:11:29'),
(389, 5, '2023-03-30', '2023-03-30 10:00:00', '2023-03-30 18:33:00', '01:00:00', '2023-03-30 02:14:25', '2023-03-30 02:14:25'),
(390, 4, '2023-03-30', '2023-03-30 09:49:00', '2023-03-30 19:26:00', '00:00:00', '2023-03-30 07:49:56', '2023-04-04 15:17:22'),
(391, 6, '2023-03-30', '2023-03-30 11:13:00', '2023-03-30 18:49:00', '00:30:00', '2023-03-30 09:13:08', '2023-04-04 15:18:13'),
(392, 8, '2023-03-30', '2023-03-30 11:13:00', '2023-03-30 19:17:00', '01:00:00', '2023-03-30 09:13:53', '2023-04-04 15:19:16'),
(393, 8, '2023-04-03', '2023-04-03 11:14:00', '2023-04-03 18:52:00', '01:50:00', '2023-04-03 09:14:26', '2023-04-25 11:48:03'),
(394, 4, '2023-04-04', '2023-04-04 09:44:22', '2023-04-04 19:26:07', '00:00:00', '2023-04-04 07:44:22', '2023-04-04 17:26:07'),
(395, 3, '2023-04-04', '2023-04-04 09:45:01', '2023-04-04 19:25:10', '00:00:00', '2023-04-04 07:45:01', '2023-04-04 17:25:10'),
(396, 5, '2023-04-04', '2023-04-04 09:58:00', '2023-04-04 18:45:00', '00:20:00', '2023-04-04 07:59:18', '2023-05-02 09:55:56');
INSERT INTO `sign_in_outs` (`id`, `user_id`, `date`, `sign_in`, `sign_out`, `break_time`, `created_at`, `updated_at`) VALUES
(397, 8, '2023-04-04', '2023-04-04 10:44:11', '2023-04-04 18:53:22', '00:00:00', '2023-04-04 08:44:11', '2023-04-04 16:53:22'),
(398, 7, '2023-04-04', '2023-04-04 10:58:43', '2023-04-04 18:52:32', '00:20:00', '2023-04-04 08:58:43', '2023-04-04 16:52:32'),
(399, 7, '2023-04-04', '2023-04-04 10:59:03', NULL, '0', '2023-04-04 08:59:03', '2023-04-04 08:59:03'),
(400, 3, '2023-04-04', '2023-03-31 09:44:00', '2023-03-31 19:11:00', '00:00:00', '2023-04-04 15:21:32', '2023-04-04 15:21:32'),
(401, 6, '2023-04-04', '2023-03-31 11:00:00', '2023-03-31 19:28:00', '00:30:00', '2023-04-04 15:22:27', '2023-04-04 15:22:27'),
(402, 8, '2023-04-04', '2023-03-06 09:25:00', '2023-03-06 23:58:00', '01:30:00', '2023-04-04 16:27:28', '2023-04-04 16:27:28'),
(403, 8, '2023-04-04', '2023-03-21 11:15:00', '2023-03-21 18:56:00', '01:00:00', '2023-04-04 16:30:46', '2023-04-04 16:30:46'),
(404, 8, '2023-04-04', '2023-03-28 11:06:00', '2023-03-28 18:45:00', '01:00:00', '2023-04-04 16:35:14', '2023-04-04 16:35:14'),
(405, 3, '2023-04-05', '2023-04-05 09:57:02', '2023-04-05 19:03:26', '00:00:00', '2023-04-05 07:57:02', '2023-04-05 17:03:26'),
(406, 4, '2023-04-05', '2023-04-05 09:57:35', '2023-04-05 19:07:43', '00:00:00', '2023-04-05 07:57:35', '2023-04-05 17:07:43'),
(407, 8, '2023-04-05', '2023-04-05 11:31:00', '2023-04-05 19:45:00', '01:00:00', '2023-04-05 09:31:20', '2023-04-25 11:49:10'),
(408, 7, '2023-04-05', '2023-03-20 10:06:00', '2023-03-20 19:14:00', '01:00:00', '2023-04-05 12:41:11', '2023-04-05 12:41:11'),
(409, 6, '2023-04-05', '2023-03-20 10:30:00', '2023-03-20 19:10:00', '01:00:00', '2023-04-05 13:20:12', '2023-04-05 13:20:12'),
(410, 6, '2023-04-05', '2023-03-21 12:03:00', '2023-03-21 19:00:00', '00:30:00', '2023-04-05 13:20:56', '2023-04-05 13:20:56'),
(411, 6, '2023-04-05', '2023-03-22 10:31:00', '2023-03-22 19:07:00', '00:40:00', '2023-04-05 13:21:36', '2023-04-05 13:21:36'),
(412, 6, '2023-04-05', '2023-03-23 10:40:00', '2023-03-23 17:46:00', '01:00:00', '2023-04-05 13:22:10', '2023-04-05 13:22:10'),
(413, 6, '2023-04-05', '2023-03-24 10:46:00', '2023-03-24 18:18:00', '00:40:00', '2023-04-05 13:22:41', '2023-04-05 13:22:41'),
(414, 6, '2023-04-05', '2023-03-25 10:37:00', '2023-03-25 16:45:00', '00:10:00', '2023-04-05 13:23:18', '2023-04-05 13:23:18'),
(415, 4, '2023-04-06', '2023-04-06 10:04:38', '2023-04-06 19:10:38', '00:00:00', '2023-04-06 08:04:38', '2023-04-06 17:10:38'),
(416, 3, '2023-04-06', '2023-04-06 10:04:44', '2023-04-06 19:10:49', '00:00:00', '2023-04-06 08:04:44', '2023-04-06 17:10:49'),
(417, 7, '2023-04-06', '2023-04-06 10:09:30', '2023-04-06 18:45:58', '00:30:00', '2023-04-06 08:09:30', '2023-04-06 16:45:58'),
(418, 8, '2023-04-06', '2023-04-06 10:21:00', '2023-04-06 20:00:00', '01:00:00', '2023-04-06 08:21:09', '2023-04-25 11:50:29'),
(419, 4, '2023-04-07', '2023-04-07 09:38:36', '2023-04-07 19:39:37', '00:00:00', '2023-04-07 07:38:36', '2023-04-07 17:39:37'),
(420, 3, '2023-04-08', '2023-04-08 09:37:22', '2023-04-08 19:13:32', '00:00:00', '2023-04-08 07:37:22', '2023-04-08 17:13:32'),
(421, 3, '2023-04-10', '2023-04-10 09:43:03', '2023-04-10 19:26:15', '00:00:00', '2023-04-10 07:43:03', '2023-04-10 17:26:15'),
(422, 4, '2023-04-10', '2023-04-10 09:48:56', '2023-04-10 19:26:14', '00:00:00', '2023-04-10 07:48:56', '2023-04-10 17:26:14'),
(423, 7, '2023-04-10', '2023-04-10 10:09:17', '2023-04-10 18:57:28', '00:30:00', '2023-04-10 08:09:17', '2023-04-10 16:57:28'),
(424, 8, '2023-04-10', '2023-04-10 11:29:17', '2023-04-10 18:37:14', '00:00:00', '2023-04-10 09:29:17', '2023-04-10 16:37:14'),
(425, 3, '2023-04-11', '2023-04-11 09:51:24', '2023-04-11 19:28:03', '00:00:00', '2023-04-11 07:51:24', '2023-04-11 17:28:03'),
(426, 4, '2023-04-11', '2023-04-11 09:51:30', '2023-04-11 19:27:23', '00:00:00', '2023-04-11 07:51:30', '2023-04-11 17:27:23'),
(427, 7, '2023-04-11', '2023-04-11 10:58:22', '2023-04-11 19:00:10', '00:00:00', '2023-04-11 08:58:22', '2023-04-11 17:00:10'),
(428, 8, '2023-04-11', '2023-04-11 11:09:08', '2023-04-11 18:55:40', '00:00:00', '2023-04-11 09:09:08', '2023-04-11 16:55:40'),
(429, 3, '2023-04-12', '2023-04-12 09:49:45', '2023-04-12 19:17:25', '00:00:00', '2023-04-12 07:49:45', '2023-04-12 17:17:25'),
(430, 8, '2023-04-12', '2023-04-12 11:49:59', '2023-04-12 18:44:07', '00:00:00', '2023-04-12 09:49:59', '2023-04-12 16:44:07'),
(431, 3, '2023-04-13', '2023-04-13 09:48:21', '2023-04-13 19:08:28', '00:00:00', '2023-04-13 07:48:21', '2023-04-13 17:08:28'),
(432, 4, '2023-04-13', '2023-04-13 09:49:28', '2023-04-13 19:05:15', '00:00:00', '2023-04-13 07:49:28', '2023-04-13 17:05:15'),
(433, 7, '2023-04-13', '2023-04-13 10:06:24', '2023-04-13 18:46:34', '00:30:00', '2023-04-13 08:06:24', '2023-04-13 16:46:34'),
(434, 8, '2023-04-13', '2023-04-13 11:07:31', '2023-04-13 18:05:26', '00:00:00', '2023-04-13 09:07:31', '2023-04-13 16:05:26'),
(435, 3, '2023-04-14', '2023-04-14 09:44:28', '2023-04-14 19:09:00', '00:00:00', '2023-04-14 07:44:28', '2023-04-14 17:09:00'),
(436, 4, '2023-04-15', '2023-04-15 09:58:39', '2023-04-15 19:09:19', '00:00:00', '2023-04-15 07:58:39', '2023-04-15 17:09:19'),
(437, 3, '2023-04-17', '2023-04-17 09:43:52', '2023-04-17 19:13:29', '00:00:00', '2023-04-17 07:43:52', '2023-04-17 17:13:29'),
(438, 7, '2023-04-17', '2023-04-17 10:10:10', '2023-04-17 18:57:25', '00:30:00', '2023-04-17 08:10:10', '2023-04-17 16:57:25'),
(439, 8, '2023-04-17', '2023-04-17 11:30:00', '2023-04-17 19:30:00', '01:00:00', '2023-04-17 09:30:28', '2023-04-25 11:53:57'),
(440, 3, '2023-04-18', '2023-04-18 09:45:10', '2023-04-18 19:10:30', '00:00:00', '2023-04-18 07:45:10', '2023-04-18 17:10:30'),
(441, 4, '2023-04-18', '2023-04-18 09:45:58', '2023-04-18 19:09:48', '00:00:00', '2023-04-18 07:45:58', '2023-04-18 17:09:48'),
(442, 7, '2023-04-18', '2023-04-18 11:05:25', '2023-04-18 18:55:10', '01:00:00', '2023-04-18 09:05:25', '2023-04-18 16:55:10'),
(443, 8, '2023-04-18', '2023-04-18 11:33:31', '2023-04-18 18:52:48', '00:00:00', '2023-04-18 09:33:31', '2023-04-18 16:52:48'),
(444, 8, '2023-04-19', '2023-04-19 11:55:00', '2023-04-19 19:06:00', '01:00:00', '2023-04-19 06:11:55', '2023-04-25 11:54:41'),
(445, 3, '2023-04-19', '2023-04-19 09:58:00', '2023-04-19 19:08:00', '00:00:00', '2023-04-19 07:58:56', '2023-04-25 10:23:29'),
(446, 4, '2023-04-19', '2023-04-19 09:59:00', '2023-04-19 19:09:00', '00:00:00', '2023-04-19 07:59:45', '2023-04-25 10:45:11'),
(447, 3, '2023-04-22', '2023-04-22 09:46:39', '2023-04-22 19:07:24', '00:00:00', '2023-04-22 07:46:39', '2023-04-22 17:07:24'),
(448, 7, '2023-04-24', '2023-04-24 10:02:35', '2023-04-24 19:03:30', '00:44:00', '2023-04-24 08:02:35', '2023-04-24 17:03:30'),
(449, 3, '2023-04-24', '2023-04-24 10:04:23', '2023-04-24 19:20:22', '00:00:00', '2023-04-24 08:04:23', '2023-04-24 17:20:22'),
(450, 4, '2023-04-24', '2023-04-24 10:05:00', '2023-04-24 19:18:45', '00:00:00', '2023-04-24 08:05:00', '2023-04-24 17:18:45'),
(451, 7, '2023-04-25', '2023-04-25 09:57:56', '2023-04-25 18:52:24', '00:45:00', '2023-04-25 07:57:56', '2023-04-25 16:52:24'),
(452, 3, '2023-04-25', '2023-04-25 10:00:08', '2023-04-25 19:08:49', '00:00:00', '2023-04-25 08:00:08', '2023-04-25 17:08:49'),
(453, 4, '2023-04-25', '2023-04-25 10:00:49', '2023-04-25 19:07:58', '00:00:00', '2023-04-25 08:00:49', '2023-04-25 17:07:58'),
(454, 8, '2023-04-25', '2023-04-25 11:42:00', '2023-04-25 19:08:00', '00:40:00', '2023-04-25 09:52:32', '2023-05-02 09:43:31'),
(455, 3, '2023-04-25', '2023-04-20 09:42:00', '2023-04-20 19:10:00', '00:00:00', '2023-04-25 10:24:32', '2023-04-25 10:24:32'),
(456, 3, '2023-04-25', '2023-04-03 09:56:00', '2023-04-03 19:24:00', '00:00:00', '2023-04-25 10:32:54', '2023-04-25 10:32:54'),
(457, 4, '2023-04-25', '2023-04-20 09:46:00', '2023-04-20 19:09:00', '00:00:00', '2023-04-25 10:46:12', '2023-04-25 10:46:12'),
(458, 4, '2023-04-25', '2023-04-21 09:40:00', '2023-04-21 19:27:00', '00:00:00', '2023-04-25 10:46:54', '2023-04-25 10:46:54'),
(459, 4, '2023-04-25', '2023-04-01 09:44:00', '2023-04-01 19:06:00', '00:00:00', '2023-04-25 10:48:02', '2023-04-25 10:48:02'),
(460, 4, '2023-04-25', '2023-04-03 09:54:00', '2023-04-03 19:19:00', '00:00:00', '2023-04-25 10:56:09', '2023-04-25 10:56:09'),
(461, 7, '2023-04-25', '2023-04-03 10:12:00', '2023-04-03 17:20:00', '00:20:00', '2023-04-25 11:36:27', '2023-04-25 11:36:27'),
(462, 8, '2023-04-25', '2023-04-20 11:00:00', '2023-04-20 21:00:00', '01:10:00', '2023-04-25 11:56:06', '2023-04-25 11:56:06'),
(463, 3, '2023-04-26', '2023-04-26 09:47:28', '2023-04-26 19:14:24', '00:00:00', '2023-04-26 07:47:28', '2023-04-26 17:14:24'),
(464, 4, '2023-04-26', '2023-04-26 09:48:17', '2023-04-26 19:16:03', '00:00:00', '2023-04-26 07:48:17', '2023-04-26 17:16:03'),
(465, 6, '2023-04-26', '2023-04-26 10:01:18', '2023-04-26 20:51:01', '00:30:00', '2023-04-26 08:01:18', '2023-04-26 18:51:01'),
(466, 8, '2023-04-26', '2023-04-26 11:22:40', '2023-04-26 19:19:45', '01:00:00', '2023-04-26 09:22:40', '2023-04-26 17:19:45'),
(467, 3, '2023-04-27', '2023-04-27 09:53:00', '2023-04-27 19:11:32', '00:00:00', '2023-04-27 07:53:00', '2023-04-27 17:11:32'),
(468, 4, '2023-04-27', '2023-04-27 09:54:00', '2023-04-27 19:11:17', '00:00:00', '2023-04-27 07:54:00', '2023-04-27 17:11:17'),
(469, 7, '2023-04-27', '2023-04-27 10:02:39', '2023-04-27 18:56:37', '00:40:00', '2023-04-27 08:02:39', '2023-04-27 16:56:37'),
(470, 8, '2023-04-27', '2023-04-27 11:58:36', '2023-04-27 18:41:51', '00:30:00', '2023-04-27 09:58:36', '2023-04-27 16:41:51'),
(471, 9, '2023-04-27', '2023-04-27 16:54:56', NULL, '0', '2023-04-27 14:54:56', '2023-04-27 14:54:56'),
(472, 6, '2023-04-27', '2023-04-27 11:08:00', '2023-04-27 19:10:00', '00:30:00', '2023-04-27 17:10:23', '2023-05-02 11:25:05'),
(473, 3, '2023-04-28', '2023-04-28 09:59:25', '2023-04-28 19:04:17', '00:00:00', '2023-04-28 07:59:25', '2023-04-28 17:04:17'),
(474, 6, '2023-04-28', '2023-04-28 09:59:38', '2023-04-28 20:12:26', '01:00:00', '2023-04-28 07:59:38', '2023-04-28 18:12:26'),
(475, 4, '2023-04-29', '2023-04-29 09:44:16', '2023-04-29 20:06:33', '00:00:00', '2023-04-29 07:44:16', '2023-04-29 18:06:33'),
(476, 6, '2023-04-29', '2023-04-29 11:04:39', '2023-04-29 19:11:11', '01:00:00', '2023-04-29 09:04:39', '2023-04-29 17:11:11'),
(477, 4, '2023-05-01', '2023-05-01 10:36:00', '2023-05-01 17:20:00', '00:00:00', '2023-05-01 08:36:12', '2023-05-25 08:34:53'),
(478, 3, '2023-05-02', '2023-05-02 09:49:02', '2023-05-02 19:14:02', '00:00:00', '2023-05-02 07:49:02', '2023-05-02 17:14:02'),
(479, 4, '2023-05-02', '2023-05-02 09:50:16', '2023-05-02 19:13:56', '00:00:00', '2023-05-02 07:50:16', '2023-05-02 17:13:56'),
(480, 6, '2023-05-02', '2023-05-02 10:45:03', '2023-05-02 18:57:23', '01:00:00', '2023-05-02 08:45:03', '2023-05-02 16:57:23'),
(481, 7, '2023-05-02', '2023-05-02 11:04:27', '2023-05-02 18:55:05', '01:00:00', '2023-05-02 09:04:27', '2023-05-02 16:55:05'),
(482, 8, '2023-05-02', '2023-05-02 11:36:03', '2023-05-02 17:49:21', '00:10:00', '2023-05-02 09:36:03', '2023-05-02 15:49:21'),
(483, 5, '2023-05-02', '2023-04-25 12:03:00', '2023-04-25 19:00:00', '00:20:00', '2023-05-02 09:57:39', '2023-05-02 09:57:39'),
(484, 6, '2023-05-02', '2023-04-01 11:13:00', '2023-04-01 19:04:00', '00:40:00', '2023-05-02 12:14:22', '2023-05-02 12:14:22'),
(485, 6, '2023-05-02', '2023-04-03 11:02:00', '2023-04-03 19:03:00', '01:00:00', '2023-05-02 12:15:25', '2023-05-02 12:15:25'),
(486, 6, '2023-05-02', '2023-04-04 11:07:00', '2023-04-04 19:51:00', '01:00:00', '2023-05-02 12:16:05', '2023-05-02 12:16:05'),
(487, 6, '2023-05-02', '2023-04-05 10:20:00', '2023-04-05 19:32:00', '00:40:00', '2023-05-02 12:17:19', '2023-05-02 12:17:19'),
(488, 6, '2023-05-02', '2023-04-06 10:41:00', '2023-04-06 19:10:00', '00:40:00', '2023-05-02 12:17:58', '2023-05-02 12:17:58'),
(489, 6, '2023-05-02', '2023-04-07 10:25:00', '2023-04-07 19:00:00', '01:00:00', '2023-05-02 12:18:28', '2023-05-02 12:18:28'),
(490, 6, '2023-05-02', '2023-04-08 11:04:00', '2023-04-08 19:30:00', '01:00:00', '2023-05-02 12:19:21', '2023-05-02 12:19:21'),
(491, 6, '2023-05-02', '2023-04-10 10:36:00', '2023-04-10 19:00:00', '00:40:00', '2023-05-02 12:20:17', '2023-05-02 12:20:17'),
(492, 6, '2023-05-02', '2023-04-11 10:40:00', '2023-04-11 20:22:00', '01:00:00', '2023-05-02 12:21:00', '2023-05-02 12:21:00'),
(493, 6, '2023-05-02', '2023-04-12 11:33:00', '2023-04-12 19:05:00', '00:30:00', '2023-05-02 12:21:50', '2023-05-02 12:21:50'),
(494, 6, '2023-05-02', '2023-04-13 10:50:00', '2023-04-13 19:50:00', '00:30:00', '2023-05-02 12:22:38', '2023-05-02 12:22:38'),
(495, 6, '2023-05-02', '2023-04-14 10:15:00', '2023-04-14 19:44:00', '01:00:00', '2023-05-02 12:23:36', '2023-05-02 12:23:36'),
(496, 6, '2023-05-02', '2023-04-15 11:12:00', '2023-04-15 19:05:00', '00:50:00', '2023-05-02 12:24:23', '2023-05-02 12:24:23'),
(497, 6, '2023-05-02', '2023-04-17 10:57:00', '2023-04-17 19:00:00', '01:00:00', '2023-05-02 15:14:58', '2023-05-02 15:14:58'),
(498, 6, '2023-05-02', '2023-04-18 14:22:00', '2023-04-18 19:00:00', '00:15:00', '2023-05-02 15:15:45', '2023-05-02 15:15:45'),
(499, 6, '2023-05-02', '2023-04-20 10:51:00', '2023-04-20 19:50:00', '01:00:00', '2023-05-02 15:16:44', '2023-05-02 15:16:44'),
(500, 6, '2023-05-02', '2023-04-24 11:29:00', '2023-04-24 19:18:00', '00:30:00', '2023-05-02 15:17:33', '2023-05-02 15:17:33'),
(501, 6, '2023-05-02', '2023-04-25 10:05:00', '2023-04-25 19:08:00', '00:50:00', '2023-05-02 15:18:23', '2023-05-02 15:18:23'),
(502, 9, '2023-05-02', '2023-05-02 18:30:52', NULL, '0', '2023-05-02 16:30:52', '2023-05-02 16:30:52'),
(503, 8, '2023-05-03', '2023-05-03 08:35:46', '2023-05-03 19:59:08', '01:45:00', '2023-05-03 06:35:46', '2023-05-03 17:59:08'),
(504, 4, '2023-05-03', '2023-05-03 09:43:55', '2023-05-03 19:14:35', '00:00:00', '2023-05-03 07:43:55', '2023-05-03 17:14:35'),
(505, 3, '2023-05-03', '2023-05-03 09:43:57', '2023-05-03 19:14:16', '00:00:00', '2023-05-03 07:43:57', '2023-05-03 17:14:16'),
(506, 7, '2023-05-03', '2023-05-03 10:04:14', '2023-05-03 19:00:18', '01:00:00', '2023-05-03 08:04:14', '2023-05-03 17:00:18'),
(507, 6, '2023-05-03', '2023-05-03 10:17:17', '2023-05-03 19:10:15', '01:00:00', '2023-05-03 08:17:17', '2023-05-03 17:10:15'),
(508, 3, '2023-05-04', '2023-05-04 09:58:50', '2023-05-04 19:16:54', '00:00:00', '2023-05-04 07:58:50', '2023-05-04 17:16:54'),
(509, 4, '2023-05-04', '2023-05-04 09:58:56', '2023-05-04 19:15:28', '00:00:00', '2023-05-04 07:58:56', '2023-05-04 17:15:28'),
(510, 6, '2023-05-04', '2023-05-04 10:05:59', '2023-05-04 21:12:55', '00:30:00', '2023-05-04 08:05:59', '2023-05-04 19:12:55'),
(511, 7, '2023-05-04', '2023-05-04 10:12:21', '2023-05-04 19:00:33', '01:00:00', '2023-05-04 08:12:21', '2023-05-04 17:00:33'),
(512, 8, '2023-05-04', '2023-05-04 10:50:50', '2023-05-04 19:58:44', '01:00:00', '2023-05-04 08:50:50', '2023-05-04 17:58:44'),
(513, 4, '2023-05-05', '2023-05-05 09:46:58', '2023-05-05 19:29:49', '00:00:00', '2023-05-05 07:46:58', '2023-05-05 17:29:49'),
(514, 6, '2023-05-05', '2023-05-05 12:06:31', '2023-05-05 19:04:20', '01:00:00', '2023-05-05 10:06:31', '2023-05-05 17:04:20'),
(515, 8, '2023-05-05', '2023-05-05 10:35:00', '2023-05-05 19:16:00', '01:00:00', '2023-05-05 17:17:25', '2023-05-26 14:07:39'),
(516, 5, '2023-05-06', '2023-05-06 08:29:42', NULL, '0', '2023-05-06 06:29:42', '2023-05-06 06:29:42'),
(517, 3, '2023-05-06', '2023-05-06 09:43:48', '2023-05-06 19:13:17', '00:00:00', '2023-05-06 07:43:48', '2023-05-06 17:13:17'),
(518, 8, '2023-05-06', '2023-05-06 10:54:04', '2023-05-06 19:41:13', '00:30:00', '2023-05-06 08:54:04', '2023-05-06 17:41:13'),
(519, 6, '2023-05-06', '2023-05-06 11:48:11', '2023-05-06 19:08:32', '00:30:00', '2023-05-06 09:48:11', '2023-05-06 17:08:32'),
(520, 3, '2023-05-08', '2023-05-08 10:42:53', '2023-05-08 17:53:50', '00:00:00', '2023-05-08 08:42:53', '2023-05-08 15:53:50'),
(521, 7, '2023-05-08', '2023-05-08 11:04:37', '2023-05-08 17:04:21', '00:42:00', '2023-05-08 09:04:37', '2023-05-08 15:04:21'),
(522, 6, '2023-05-08', '2023-05-08 11:10:21', '2023-05-08 17:00:11', '00:00:00', '2023-05-08 09:10:21', '2023-05-08 15:00:11'),
(523, 3, '2023-05-09', '2023-05-09 09:49:48', '2023-05-09 19:07:51', '00:00:00', '2023-05-09 07:49:48', '2023-05-09 17:07:51'),
(524, 4, '2023-05-09', '2023-05-09 09:51:00', '2023-05-09 19:05:00', '00:00:00', '2023-05-09 07:51:44', '2023-05-25 08:36:05'),
(525, 7, '2023-05-09', '2023-05-09 10:03:58', '2023-05-09 18:58:58', '01:00:00', '2023-05-09 08:03:58', '2023-05-09 16:58:58'),
(526, 6, '2023-05-09', '2023-05-09 13:43:35', '2023-05-09 19:07:33', '00:00:00', '2023-05-09 11:43:35', '2023-05-09 17:07:33'),
(527, 4, '2023-05-10', '2023-05-10 09:46:05', '2023-05-10 19:10:26', '00:00:00', '2023-05-10 07:46:05', '2023-05-10 17:10:26'),
(528, 3, '2023-05-10', '2023-05-10 09:46:34', '2023-05-10 19:08:25', '00:00:00', '2023-05-10 07:46:34', '2023-05-10 17:08:25'),
(529, 7, '2023-05-10', '2023-05-10 10:04:51', '2023-05-10 18:55:00', '00:55:00', '2023-05-10 08:04:51', '2023-05-10 16:55:00'),
(530, 6, '2023-05-10', '2023-05-10 10:32:32', '2023-05-10 19:02:21', '01:00:00', '2023-05-10 08:32:32', '2023-05-10 17:02:21'),
(531, 9, '2023-05-10', '2023-05-10 13:13:11', NULL, '0', '2023-05-10 11:13:11', '2023-05-10 11:13:11'),
(532, 4, '2023-05-11', '2023-05-11 09:40:46', '2023-05-11 19:07:39', '00:00:00', '2023-05-11 07:40:46', '2023-05-11 17:07:39'),
(533, 3, '2023-05-11', '2023-05-11 09:41:09', '2023-05-11 19:08:10', '00:00:00', '2023-05-11 07:41:09', '2023-05-11 17:08:10'),
(534, 6, '2023-05-11', '2023-05-11 12:18:50', '2023-05-11 19:07:07', '00:30:00', '2023-05-11 10:18:50', '2023-05-11 17:07:07'),
(535, 3, '2023-05-12', '2023-05-12 09:29:16', '2023-05-12 19:16:06', '00:00:00', '2023-05-12 07:29:16', '2023-05-12 17:16:06'),
(536, 4, '2023-05-13', '2023-05-13 09:54:15', '2023-05-13 19:37:55', '00:00:00', '2023-05-13 07:54:15', '2023-05-13 17:37:55'),
(537, 6, '2023-05-13', '2023-05-13 11:11:53', '2023-05-13 19:49:27', '00:40:00', '2023-05-13 09:11:53', '2023-05-13 17:49:27'),
(538, 4, '2023-05-15', '2023-05-15 09:45:30', '2023-05-15 19:31:23', '00:00:00', '2023-05-15 07:45:30', '2023-05-15 17:31:23'),
(539, 6, '2023-05-15', '2023-05-15 09:51:52', '2023-05-15 19:07:44', '00:30:00', '2023-05-15 07:51:52', '2023-05-15 17:07:44'),
(540, 7, '2023-05-15', '2023-05-15 10:22:47', '2023-05-15 19:16:23', '01:00:00', '2023-05-15 08:22:47', '2023-05-15 17:16:23'),
(541, 3, '2023-05-15', '2023-05-15 11:03:08', '2023-05-15 19:31:07', '00:00:00', '2023-05-15 09:03:08', '2023-05-15 17:31:07'),
(542, 8, '2023-05-15', '2023-05-15 11:25:02', '2023-05-15 17:17:22', '00:30:00', '2023-05-15 09:25:02', '2023-05-15 15:17:22'),
(543, 3, '2023-05-16', '2023-05-16 09:43:42', '2023-05-16 19:08:48', '00:00:00', '2023-05-16 07:43:42', '2023-05-16 17:08:48'),
(544, 4, '2023-05-16', '2023-05-16 09:55:26', '2023-05-16 19:06:04', '00:00:00', '2023-05-16 07:55:26', '2023-05-16 17:06:04'),
(545, 7, '2023-05-16', '2023-05-16 10:02:51', '2023-05-16 18:58:52', '01:00:00', '2023-05-16 08:02:51', '2023-05-16 16:58:52'),
(546, 6, '2023-05-16', '2023-05-16 10:47:16', '2023-05-16 19:33:14', '00:45:00', '2023-05-16 08:47:16', '2023-05-16 17:33:14'),
(547, 8, '2023-05-16', '2023-05-16 11:39:32', '2023-05-16 18:49:36', '00:35:00', '2023-05-16 09:39:32', '2023-05-16 16:49:36'),
(548, 4, '2023-05-17', '2023-05-17 09:43:42', '2023-05-17 19:05:15', '00:00:00', '2023-05-17 07:43:42', '2023-05-17 17:05:15'),
(549, 3, '2023-05-17', '2023-05-17 10:00:25', '2023-05-17 19:05:53', '00:00:00', '2023-05-17 08:00:25', '2023-05-17 17:05:53'),
(550, 6, '2023-05-17', '2023-05-17 10:56:47', '2023-05-17 19:04:34', '00:45:00', '2023-05-17 08:56:47', '2023-05-17 17:04:34'),
(551, 8, '2023-05-17', '2023-05-17 11:12:37', '2023-05-17 17:47:06', '00:30:00', '2023-05-17 09:12:37', '2023-05-17 15:47:06'),
(552, 7, '2023-05-18', '2023-05-18 09:54:53', '2023-05-18 19:00:48', '01:00:00', '2023-05-18 07:54:53', '2023-05-18 17:00:48'),
(553, 4, '2023-05-18', '2023-05-18 09:56:11', '2023-05-18 19:15:06', '00:00:00', '2023-05-18 07:56:11', '2023-05-18 17:15:06'),
(554, 3, '2023-05-18', '2023-05-18 09:59:41', '2023-05-18 19:15:31', '00:00:00', '2023-05-18 07:59:41', '2023-05-18 17:15:31'),
(555, 6, '2023-05-18', '2023-05-18 10:00:37', '2023-05-18 19:06:18', '00:30:00', '2023-05-18 08:00:37', '2023-05-18 17:06:18'),
(556, 8, '2023-05-18', '2023-05-18 11:05:33', '2023-05-18 19:43:01', '01:00:00', '2023-05-18 09:05:33', '2023-05-18 17:43:01'),
(557, 4, '2023-05-19', '2023-05-19 09:51:04', '2023-05-19 19:22:46', '00:00:00', '2023-05-19 07:51:04', '2023-05-19 17:22:46'),
(558, 6, '2023-05-19', '2023-05-19 10:06:00', '2023-05-19 21:40:00', '02:00:00', '2023-05-19 08:06:44', '2023-05-26 13:06:52'),
(559, 3, '2023-05-20', '2023-05-20 09:47:27', '2023-05-20 19:09:46', '00:00:00', '2023-05-20 07:47:27', '2023-05-20 17:09:46'),
(560, 4, '2023-05-22', '2023-05-22 09:43:53', '2023-05-22 19:17:12', '00:00:00', '2023-05-22 07:43:53', '2023-05-22 17:17:12'),
(561, 3, '2023-05-22', '2023-05-22 09:45:33', '2023-05-22 19:17:53', '00:00:00', '2023-05-22 07:45:33', '2023-05-22 17:17:53'),
(562, 7, '2023-05-22', '2023-05-22 09:52:46', '2023-05-22 18:57:39', '01:00:00', '2023-05-22 07:52:46', '2023-05-22 16:57:39'),
(563, 6, '2023-05-22', '2023-05-22 09:58:03', '2023-05-22 19:03:40', '01:00:00', '2023-05-22 07:58:03', '2023-05-22 17:03:40'),
(564, 3, '2023-05-23', '2023-05-23 09:52:00', '2023-05-23 19:30:00', '00:00:00', '2023-05-23 07:52:53', '2023-05-25 08:37:29'),
(565, 4, '2023-05-23', '2023-05-23 09:54:01', '2023-05-23 19:31:37', '00:00:00', '2023-05-23 07:54:01', '2023-05-23 17:31:37'),
(566, 7, '2023-05-23', '2023-05-23 09:56:10', '2023-05-23 18:55:09', '01:00:00', '2023-05-23 07:56:10', '2023-05-23 16:55:09'),
(567, 6, '2023-05-23', '2023-05-23 11:59:27', '2023-05-23 20:02:02', '00:00:00', '2023-05-23 09:59:27', '2023-05-23 18:02:02'),
(568, 8, '2023-05-23', '2023-05-23 12:07:00', '2023-05-23 18:45:00', '00:10:00', '2023-05-23 10:07:29', '2023-05-25 08:38:38'),
(569, 3, '2023-05-24', '2023-05-24 09:48:10', '2023-05-24 19:25:57', '00:00:00', '2023-05-24 07:48:10', '2023-05-24 17:25:57'),
(570, 4, '2023-05-24', '2023-05-24 09:48:25', '2023-05-24 19:22:15', '00:00:00', '2023-05-24 07:48:25', '2023-05-24 17:22:15'),
(571, 7, '2023-05-24', '2023-05-24 09:52:10', '2023-05-24 19:02:19', '01:00:00', '2023-05-24 07:52:10', '2023-05-24 17:02:19'),
(572, 6, '2023-05-24', '2023-05-24 10:07:41', '2023-05-24 19:18:15', '02:00:00', '2023-05-24 08:07:41', '2023-05-24 17:18:15'),
(573, 3, '2023-05-25', '2023-05-25 09:53:37', '2023-05-25 19:07:04', '00:00:00', '2023-05-25 07:53:37', '2023-05-25 17:07:04'),
(574, 4, '2023-05-25', '2023-05-25 09:54:30', '2023-05-25 19:05:55', '00:00:00', '2023-05-25 07:54:30', '2023-05-25 17:05:55'),
(575, 7, '2023-05-25', '2023-05-25 09:59:38', '2023-05-25 19:01:24', '01:12:00', '2023-05-25 07:59:38', '2023-05-25 17:01:24'),
(576, 6, '2023-05-25', '2023-05-25 10:04:58', '2023-05-25 19:09:15', '01:00:00', '2023-05-25 08:04:58', '2023-05-25 17:09:15'),
(577, 1, '2023-05-25', '2023-05-25 11:06:33', NULL, '0', '2023-05-25 09:06:33', '2023-05-25 09:06:33'),
(578, 3, '2023-05-26', '2023-05-26 09:50:38', '2023-05-26 19:14:50', '00:00:00', '2023-05-26 07:50:38', '2023-05-26 17:14:50'),
(579, 6, '2023-05-26', '2023-05-26 10:08:39', '2023-05-26 19:06:56', '01:00:00', '2023-05-26 08:08:39', '2023-05-26 17:06:56'),
(580, 8, '2023-05-26', '2023-05-24 11:15:00', '2023-05-24 19:30:00', '01:00:00', '2023-05-26 14:08:34', '2023-05-26 14:08:34'),
(581, 8, '2023-05-26', '2023-05-25 11:10:00', '2023-05-25 18:40:00', '00:40:00', '2023-05-26 14:09:03', '2023-05-26 14:09:03'),
(582, 6, '2023-05-27', '2023-05-27 10:07:22', '2023-05-27 19:08:54', '01:00:00', '2023-05-27 08:07:22', '2023-05-27 17:08:54'),
(583, 4, '2023-05-27', '2023-05-27 10:15:28', '2023-05-27 19:17:54', '00:00:00', '2023-05-27 08:15:28', '2023-05-27 17:17:54'),
(584, 3, '2023-05-29', '2023-05-29 10:45:23', '2023-05-29 17:21:42', '00:00:00', '2023-05-29 08:45:23', '2023-05-29 15:21:42'),
(585, 7, '2023-05-30', '2023-05-30 09:57:39', '2023-05-30 19:16:04', '01:00:00', '2023-05-30 07:57:39', '2023-05-30 17:16:04'),
(586, 6, '2023-05-30', '2023-05-30 10:07:13', '2023-05-30 19:12:19', '00:30:00', '2023-05-30 08:07:13', '2023-05-30 17:12:19'),
(587, 3, '2023-05-30', '2023-05-30 10:07:27', '2023-05-30 19:45:15', '00:00:00', '2023-05-30 08:07:27', '2023-05-30 17:45:15'),
(588, 4, '2023-05-30', '2023-05-30 10:07:57', '2023-05-30 19:42:43', '00:00:00', '2023-05-30 08:07:57', '2023-05-30 17:42:43'),
(589, 4, '2023-05-31', '2023-05-31 09:46:35', '2023-05-31 19:23:15', '00:00:00', '2023-05-31 07:46:35', '2023-05-31 17:23:15'),
(590, 7, '2023-05-31', '2023-05-31 09:57:14', '2023-05-31 19:05:15', '01:00:00', '2023-05-31 07:57:14', '2023-05-31 17:05:15'),
(591, 6, '2023-05-31', '2023-05-31 10:02:02', '2023-05-31 20:14:30', '00:30:00', '2023-05-31 08:02:02', '2023-05-31 18:14:30'),
(592, 4, '2023-06-01', '2023-06-01 09:39:41', '2023-06-01 19:25:07', '00:00:00', '2023-06-01 07:39:41', '2023-06-01 17:25:07'),
(593, 7, '2023-06-01', '2023-06-01 09:59:42', '2023-06-01 19:02:31', '01:06:00', '2023-06-01 07:59:42', '2023-06-01 17:02:31'),
(594, 6, '2023-06-01', '2023-06-01 11:29:30', '2023-06-01 19:12:53', '00:45:00', '2023-06-01 09:29:30', '2023-06-01 17:12:53'),
(595, 3, '2023-06-01', '2023-06-01 12:44:22', '2023-06-01 19:29:02', '00:00:00', '2023-06-01 10:44:22', '2023-06-01 17:29:02'),
(596, 8, '2023-06-01', '2023-05-30 11:05:00', '2023-05-30 16:10:00', '00:10:00', '2023-06-01 13:19:58', '2023-06-01 13:19:58'),
(597, 5, '2023-06-01', '2023-05-08 12:45:00', '2023-05-08 16:20:00', '00:10:00', '2023-06-01 14:10:59', '2023-06-01 14:10:59'),
(598, 5, '2023-06-01', '2023-05-13 10:08:00', '2023-05-13 14:12:00', '00:01:00', '2023-06-01 14:11:53', '2023-06-01 14:11:53'),
(599, 5, '2023-06-01', '2023-05-20 10:27:00', '2023-05-20 18:36:00', '00:15:00', '2023-06-01 14:12:32', '2023-06-01 14:12:32'),
(600, 5, '2023-06-01', '2023-05-29 10:18:00', '2023-05-29 15:10:00', '00:00:00', '2023-06-01 14:13:26', '2023-06-01 14:13:26'),
(601, 4, '2023-06-02', '2023-06-02 09:45:10', '2023-06-02 19:19:21', '00:00:00', '2023-06-02 07:45:10', '2023-06-02 17:19:21'),
(602, 6, '2023-06-02', '2023-06-02 10:05:06', '2023-06-02 19:04:41', '01:00:00', '2023-06-02 08:05:06', '2023-06-02 17:04:41'),
(603, 3, '2023-06-03', '2023-06-03 09:53:39', '2023-06-03 19:18:05', '00:00:00', '2023-06-03 07:53:39', '2023-06-03 17:18:05'),
(604, 6, '2023-06-03', '2023-06-03 12:42:46', '2023-06-03 19:07:17', '00:20:00', '2023-06-03 10:42:46', '2023-06-03 17:07:17'),
(605, 3, '2023-06-05', '2023-06-05 09:44:39', '2023-06-05 19:21:38', '00:00:00', '2023-06-05 07:44:39', '2023-06-05 17:21:38'),
(606, 7, '2023-06-05', '2023-06-05 10:05:53', '2023-06-05 19:05:35', '01:00:00', '2023-06-05 08:05:53', '2023-06-05 17:05:35'),
(607, 6, '2023-06-05', '2023-06-05 10:06:37', '2023-06-05 19:03:43', '00:45:00', '2023-06-05 08:06:37', '2023-06-05 17:03:43'),
(608, 4, '2023-06-05', '2023-06-05 10:06:48', '2023-06-05 19:20:23', '00:00:00', '2023-06-05 08:06:48', '2023-06-05 17:20:23'),
(609, 3, '2023-06-06', '2023-06-06 09:44:58', '2023-06-06 19:11:07', '00:00:00', '2023-06-06 07:44:58', '2023-06-06 17:11:07'),
(610, 7, '2023-06-06', '2023-06-06 10:00:24', '2023-06-06 19:06:12', '01:00:00', '2023-06-06 08:00:24', '2023-06-06 17:06:12'),
(611, 6, '2023-06-06', '2023-06-06 11:01:53', '2023-06-06 19:09:48', '00:00:00', '2023-06-06 09:01:53', '2023-06-06 17:09:48'),
(612, 3, '2023-06-07', '2023-06-07 09:40:20', '2023-06-07 19:31:19', '00:00:00', '2023-06-07 07:40:20', '2023-06-07 17:31:19'),
(613, 4, '2023-06-07', '2023-06-07 09:43:17', '2023-06-07 19:30:31', '00:00:00', '2023-06-07 07:43:17', '2023-06-07 17:30:31'),
(614, 7, '2023-06-07', '2023-06-07 09:58:02', '2023-06-07 19:02:45', '00:40:00', '2023-06-07 07:58:02', '2023-06-07 17:02:45'),
(615, 6, '2023-06-07', '2023-06-07 10:09:22', '2023-06-07 19:34:11', '00:30:00', '2023-06-07 08:09:22', '2023-06-07 17:34:11'),
(616, 3, '2023-06-08', '2023-06-08 09:47:07', '2023-06-08 19:08:42', '00:00:00', '2023-06-08 07:47:07', '2023-06-08 17:08:42'),
(617, 7, '2023-06-08', '2023-06-08 10:00:24', '2023-06-08 19:05:21', '01:00:00', '2023-06-08 08:00:24', '2023-06-08 17:05:21'),
(618, 6, '2023-06-08', '2023-06-08 10:13:08', '2023-06-08 19:12:23', '01:00:00', '2023-06-08 08:13:08', '2023-06-08 17:12:23'),
(619, 3, '2023-06-09', '2023-06-09 09:39:55', '2023-06-09 19:13:32', '00:00:00', '2023-06-09 07:39:55', '2023-06-09 17:13:32'),
(620, 6, '2023-06-09', '2023-06-09 10:17:41', '2023-06-09 19:08:03', '01:00:00', '2023-06-09 08:17:41', '2023-06-09 17:08:03'),
(621, 4, '2023-06-09', '2023-06-08 09:32:00', '2023-06-08 19:06:00', '00:00:00', '2023-06-09 09:06:44', '2023-06-09 09:06:44'),
(622, 8, '2023-06-09', '2023-06-05 11:36:00', '2023-06-05 19:06:00', '00:30:00', '2023-06-09 10:33:20', '2023-06-09 10:33:20'),
(623, 8, '2023-06-09', '2023-06-06 11:36:00', '2023-06-06 19:35:00', '01:00:00', '2023-06-09 10:33:48', '2023-06-09 10:33:48'),
(624, 8, '2023-06-09', '2023-06-07 11:37:00', '2023-06-07 18:07:00', '00:30:00', '2023-06-09 10:34:23', '2023-06-09 10:34:23'),
(625, 4, '2023-06-10', '2023-06-10 09:36:02', '2023-06-10 19:18:27', '00:00:00', '2023-06-10 07:36:02', '2023-06-10 17:18:27'),
(626, 6, '2023-06-10', '2023-06-10 10:13:07', '2023-06-10 19:02:09', '00:45:00', '2023-06-10 08:13:07', '2023-06-10 17:02:09'),
(627, 3, '2023-06-12', '2023-06-12 09:46:05', '2023-06-12 19:19:54', '00:00:00', '2023-06-12 07:46:05', '2023-06-12 17:19:54'),
(628, 4, '2023-06-12', '2023-06-12 09:46:36', '2023-06-12 19:18:00', '00:00:00', '2023-06-12 07:46:36', '2023-06-12 17:18:00'),
(629, 7, '2023-06-12', '2023-06-12 09:58:43', '2023-06-12 19:03:08', '01:00:00', '2023-06-12 07:58:43', '2023-06-12 17:03:08'),
(630, 6, '2023-06-12', '2023-06-12 10:03:00', '2023-06-12 19:02:32', '00:30:00', '2023-06-12 08:03:00', '2023-06-12 17:02:32'),
(631, 4, '2023-06-13', '2023-06-13 09:38:16', '2023-06-13 19:25:43', '00:00:00', '2023-06-13 07:38:16', '2023-06-13 17:25:43'),
(632, 3, '2023-06-13', '2023-06-13 09:57:07', '2023-06-13 19:25:37', '00:00:00', '2023-06-13 07:57:07', '2023-06-13 17:25:37'),
(633, 7, '2023-06-13', '2023-06-13 09:58:19', '2023-06-13 19:05:27', '01:00:00', '2023-06-13 07:58:19', '2023-06-13 17:05:27'),
(634, 6, '2023-06-13', '2023-06-13 10:03:12', '2023-06-13 20:35:17', '00:00:00', '2023-06-13 08:03:12', '2023-06-13 18:35:17'),
(635, 4, '2023-06-14', '2023-06-14 09:46:20', '2023-06-14 19:29:23', '00:00:00', '2023-06-14 07:46:20', '2023-06-14 17:29:23'),
(636, 3, '2023-06-14', '2023-06-14 09:57:00', '2023-06-14 19:31:06', '00:00:00', '2023-06-14 07:57:00', '2023-06-14 17:31:06'),
(637, 6, '2023-06-14', '2023-06-14 11:20:53', '2023-06-14 19:06:55', '00:30:00', '2023-06-14 09:20:53', '2023-06-14 17:06:55'),
(638, 3, '2023-06-15', '2023-06-15 09:53:53', '2023-06-15 19:34:11', '00:00:00', '2023-06-15 07:53:53', '2023-06-15 17:34:11'),
(639, 4, '2023-06-15', '2023-06-15 09:56:27', '2023-06-15 19:33:10', '00:00:00', '2023-06-15 07:56:27', '2023-06-15 17:33:10'),
(640, 7, '2023-06-15', '2023-06-15 10:02:48', '2023-06-15 19:03:33', '01:00:00', '2023-06-15 08:02:48', '2023-06-15 17:03:33'),
(641, 6, '2023-06-15', '2023-06-15 10:46:11', '2023-06-15 19:32:38', '00:30:00', '2023-06-15 08:46:11', '2023-06-15 17:32:38'),
(642, 4, '2023-06-16', '2023-06-16 09:50:39', '2023-06-16 19:42:08', '00:00:00', '2023-06-16 07:50:39', '2023-06-16 17:42:08'),
(643, 6, '2023-06-16', '2023-06-16 10:27:45', '2023-06-16 19:10:23', '01:00:00', '2023-06-16 08:27:45', '2023-06-16 17:10:23'),
(644, 3, '2023-06-17', '2023-06-17 09:47:40', '2023-06-17 20:00:08', '00:00:00', '2023-06-17 07:47:40', '2023-06-17 18:00:08'),
(645, 6, '2023-06-17', '2023-06-17 10:11:07', '2023-06-17 19:25:27', '00:30:00', '2023-06-17 08:11:07', '2023-06-17 17:25:27'),
(646, 3, '2023-06-19', '2023-06-19 09:46:06', '2023-06-19 19:33:26', '00:00:00', '2023-06-19 07:46:06', '2023-06-19 17:33:26'),
(647, 4, '2023-06-19', '2023-06-19 09:47:30', '2023-06-19 19:32:27', '00:00:00', '2023-06-19 07:47:30', '2023-06-19 17:32:27'),
(648, 7, '2023-06-19', '2023-06-19 10:00:47', '2023-06-19 19:10:22', '01:00:00', '2023-06-19 08:00:47', '2023-06-19 17:10:22'),
(649, 6, '2023-06-19', '2023-06-19 10:09:19', '2023-06-19 19:12:05', '00:30:00', '2023-06-19 08:09:19', '2023-06-19 17:12:05'),
(650, 3, '2023-06-20', '2023-06-20 09:44:53', '2023-06-20 19:19:26', '00:00:00', '2023-06-20 07:44:53', '2023-06-20 17:19:26'),
(651, 4, '2023-06-20', '2023-06-20 09:49:06', '2023-06-20 19:16:44', '00:00:00', '2023-06-20 07:49:06', '2023-06-20 17:16:44'),
(652, 7, '2023-06-20', '2023-06-20 10:01:29', '2023-06-20 16:56:01', '01:00:00', '2023-06-20 08:01:29', '2023-06-20 14:56:01'),
(653, 6, '2023-06-20', '2023-06-20 11:12:46', '2023-06-20 19:30:49', '00:30:00', '2023-06-20 09:12:46', '2023-06-20 17:30:49'),
(654, 3, '2023-06-21', '2023-06-21 09:38:02', '2023-06-21 19:38:42', '00:00:00', '2023-06-21 07:38:02', '2023-06-21 17:38:42'),
(655, 7, '2023-06-21', '2023-06-21 10:04:49', '2023-06-21 19:03:07', '01:00:00', '2023-06-21 08:04:49', '2023-06-21 17:03:07'),
(656, 6, '2023-06-21', '2023-06-21 10:06:12', '2023-06-21 19:10:20', '00:30:00', '2023-06-21 08:06:12', '2023-06-21 17:10:20'),
(657, 4, '2023-06-21', '2023-06-21 11:45:25', '2023-06-21 19:38:28', '00:00:00', '2023-06-21 09:45:25', '2023-06-21 17:38:28'),
(658, 3, '2023-06-22', '2023-06-22 09:44:17', '2023-06-22 19:06:12', '00:00:00', '2023-06-22 07:44:17', '2023-06-22 17:06:12'),
(659, 4, '2023-06-22', '2023-06-22 09:57:00', '2023-06-22 19:05:06', '00:00:00', '2023-06-22 07:57:00', '2023-06-22 17:05:06'),
(660, 6, '2023-06-22', '2023-06-22 10:36:38', '2023-06-22 19:03:28', '00:30:00', '2023-06-22 08:36:38', '2023-06-22 17:03:28'),
(661, 7, '2023-06-22', '2023-06-22 10:42:26', '2023-06-22 19:00:54', '01:00:00', '2023-06-22 08:42:26', '2023-06-22 17:00:54'),
(662, 3, '2023-06-23', '2023-06-23 09:45:28', '2023-06-23 19:11:42', '00:00:00', '2023-06-23 07:45:28', '2023-06-23 17:11:42'),
(663, 6, '2023-06-23', '2023-06-23 10:04:16', '2023-06-23 19:04:57', '01:00:00', '2023-06-23 08:04:16', '2023-06-23 17:04:57'),
(664, 8, '2023-06-23', '2023-06-21 12:05:00', '2023-06-21 19:14:00', '00:30:00', '2023-06-23 11:40:44', '2023-06-23 11:40:44'),
(665, 8, '2023-06-23', '2023-06-22 11:25:00', '2023-06-22 19:34:00', '01:00:00', '2023-06-23 11:41:13', '2023-06-23 11:41:13'),
(666, 3, '2023-06-24', '2023-06-24 09:44:25', '2023-06-24 19:17:12', '00:00:00', '2023-06-24 07:44:25', '2023-06-24 17:17:12'),
(667, 6, '2023-06-24', '2023-06-24 10:02:17', '2023-06-24 19:08:25', '00:30:00', '2023-06-24 08:02:17', '2023-06-24 17:08:25'),
(668, 4, '2023-06-26', '2023-06-26 09:44:24', '2023-06-26 19:30:16', '00:00:00', '2023-06-26 07:44:24', '2023-06-26 17:30:16'),
(669, 3, '2023-06-26', '2023-06-26 09:45:19', '2023-06-26 19:34:31', '00:00:00', '2023-06-26 07:45:19', '2023-06-26 17:34:31'),
(670, 6, '2023-06-26', '2023-06-26 14:11:31', '2023-06-26 19:08:54', '00:00:00', '2023-06-26 12:11:31', '2023-06-26 17:08:54'),
(671, 3, '2023-06-27', '2023-06-27 09:47:56', '2023-06-27 19:28:10', '00:00:00', '2023-06-27 07:47:56', '2023-06-27 17:28:10'),
(672, 4, '2023-06-27', '2023-06-27 09:49:00', '2023-06-27 19:15:00', '00:00:00', '2023-06-27 07:49:40', '2023-07-03 11:20:07'),
(673, 6, '2023-06-27', '2023-06-27 10:06:24', '2023-06-27 19:02:53', '01:00:00', '2023-06-27 08:06:24', '2023-06-27 17:02:53'),
(674, 3, '2023-06-28', '2023-06-28 09:52:31', '2023-06-28 19:01:11', '00:00:00', '2023-06-28 07:52:31', '2023-06-28 17:01:11'),
(675, 4, '2023-06-28', '2023-06-28 09:53:37', '2023-06-28 19:00:21', '00:00:00', '2023-06-28 07:53:37', '2023-06-28 17:00:21'),
(676, 3, '2023-06-29', '2023-06-29 09:47:54', '2023-06-29 19:05:00', '00:00:00', '2023-06-29 07:47:54', '2023-06-29 17:05:00'),
(677, 3, '2023-06-30', '2023-06-30 09:43:27', '2023-06-30 19:13:41', '00:00:00', '2023-06-30 07:43:27', '2023-06-30 17:13:41'),
(678, 4, '2023-06-30', '2023-06-30 09:43:54', '2023-06-30 19:13:56', '00:00:00', '2023-06-30 07:43:54', '2023-06-30 17:13:56'),
(679, 6, '2023-06-30', '2023-06-30 10:25:23', '2023-06-30 19:18:27', '01:00:00', '2023-06-30 08:25:23', '2023-06-30 17:18:27'),
(680, 4, '2023-07-01', '2023-07-01 09:51:37', '2023-07-01 19:27:08', '00:00:00', '2023-07-01 07:51:37', '2023-07-01 17:27:08'),
(681, 6, '2023-07-01', '2023-07-01 10:10:54', '2023-07-01 19:12:03', '01:00:00', '2023-07-01 08:10:54', '2023-07-01 17:12:03'),
(682, 3, '2023-07-03', '2023-07-03 09:45:17', '2023-07-03 19:22:50', '00:00:00', '2023-07-03 07:45:17', '2023-07-03 17:22:50'),
(683, 4, '2023-07-03', '2023-07-03 09:45:39', '2023-07-03 19:22:03', '00:00:00', '2023-07-03 07:45:39', '2023-07-03 17:22:03'),
(684, 6, '2023-07-03', '2023-07-03 10:03:25', '2023-07-03 19:21:49', '01:00:00', '2023-07-03 08:03:25', '2023-07-03 17:21:49'),
(685, 8, '2023-07-03', '2023-06-26 11:23:00', '2023-06-26 19:03:00', '00:30:00', '2023-07-03 11:41:03', '2023-07-03 11:41:03'),
(686, 8, '2023-07-03', '2023-06-27 11:44:00', '2023-06-27 19:13:00', '00:15:00', '2023-07-03 11:41:39', '2023-07-03 11:41:39'),
(687, 5, '2023-07-03', '2023-06-10 10:10:00', '2023-06-10 15:45:00', '00:10:00', '2023-07-03 11:43:13', '2023-07-03 11:45:13'),
(688, 5, '2023-07-03', '2023-06-30 00:00:00', '2023-06-30 00:00:00', '00:00:00', '2023-07-03 11:44:06', '2023-07-04 10:58:06'),
(689, 3, '2023-07-04', '2023-07-04 10:03:12', '2023-07-04 19:36:19', '00:00:00', '2023-07-04 08:03:12', '2023-07-04 17:36:19'),
(690, 4, '2023-07-04', '2023-07-04 10:03:16', '2023-07-04 19:33:39', '00:00:00', '2023-07-04 08:03:16', '2023-07-04 17:33:39'),
(691, 11, '2023-07-04', '2023-07-04 10:05:04', NULL, '0', '2023-07-04 08:05:04', '2023-07-04 08:05:04'),
(692, 7, '2023-07-04', '2023-07-04 10:13:53', '2023-07-04 19:17:03', '01:00:00', '2023-07-04 08:13:53', '2023-07-04 17:17:03'),
(693, 6, '2023-07-04', '2023-07-04 11:43:01', '2023-07-04 19:04:42', '00:00:00', '2023-07-04 09:43:01', '2023-07-04 17:04:42'),
(694, 3, '2023-07-05', '2023-07-05 09:45:02', '2023-07-05 19:15:52', '00:00:00', '2023-07-05 07:45:02', '2023-07-05 17:15:52'),
(695, 4, '2023-07-05', '2023-07-05 09:45:09', '2023-07-05 19:15:23', '00:00:00', '2023-07-05 07:45:09', '2023-07-05 17:15:23'),
(696, 7, '2023-07-05', '2023-07-05 10:02:02', '2023-07-05 19:03:54', '01:00:00', '2023-07-05 08:02:02', '2023-07-05 17:03:54'),
(697, 6, '2023-07-05', '2023-07-05 10:19:20', '2023-07-05 19:12:44', '00:15:00', '2023-07-05 08:19:20', '2023-07-05 17:12:44'),
(698, 3, '2023-07-06', '2023-07-06 09:48:58', '2023-07-06 19:24:45', '00:00:00', '2023-07-06 07:48:58', '2023-07-06 17:24:45'),
(699, 7, '2023-07-06', '2023-07-06 10:01:13', '2023-07-06 19:02:12', '01:00:00', '2023-07-06 08:01:13', '2023-07-06 17:02:12'),
(700, 4, '2023-07-06', '2023-07-06 10:25:19', '2023-07-06 19:25:59', '00:00:00', '2023-07-06 08:25:19', '2023-07-06 17:25:59'),
(701, 6, '2023-07-06', '2023-07-06 12:07:59', '2023-07-06 19:03:13', '00:30:00', '2023-07-06 10:07:59', '2023-07-06 17:03:13'),
(702, 4, '2023-07-07', '2023-07-07 10:00:04', '2023-07-07 19:17:52', '00:00:00', '2023-07-07 08:00:04', '2023-07-07 17:17:52'),
(703, 6, '2023-07-07', '2023-07-07 12:57:33', '2023-07-07 19:11:55', '00:15:00', '2023-07-07 10:57:33', '2023-07-07 17:11:55'),
(704, 3, '2023-07-08', '2023-07-08 09:45:13', '2023-07-08 19:58:25', '00:00:00', '2023-07-08 07:45:13', '2023-07-08 17:58:25'),
(705, 6, '2023-07-08', '2023-07-08 11:34:39', NULL, '0', '2023-07-08 09:34:39', '2023-07-08 09:34:39'),
(706, 4, '2023-07-10', '2023-07-10 09:45:08', '2023-07-10 19:09:21', '00:00:00', '2023-07-10 07:45:08', '2023-07-10 17:09:21'),
(707, 4, '2023-07-10', '2023-07-10 09:45:22', NULL, '0', '2023-07-10 07:45:22', '2023-07-10 07:45:22'),
(708, 3, '2023-07-10', '2023-07-10 09:52:09', '2023-07-10 19:08:34', '00:00:00', '2023-07-10 07:52:09', '2023-07-10 17:08:34'),
(709, 6, '2023-07-10', '2023-07-10 10:23:42', '2023-07-10 19:08:10', '00:30:00', '2023-07-10 08:23:42', '2023-07-10 17:08:10'),
(710, 7, '2023-07-10', '2023-07-10 11:16:24', '2023-07-10 19:03:26', '01:00:00', '2023-07-10 09:16:24', '2023-07-10 17:03:26'),
(711, 4, '2023-07-11', '2023-07-11 09:49:13', '2023-07-11 19:21:47', '00:00:00', '2023-07-11 07:49:13', '2023-07-11 17:21:47'),
(712, 3, '2023-07-11', '2023-07-11 09:49:42', '2023-07-11 19:22:41', '00:00:00', '2023-07-11 07:49:42', '2023-07-11 17:22:41'),
(713, 4, '2023-07-11', '2023-07-11 09:49:42', NULL, '0', '2023-07-11 07:49:42', '2023-07-11 07:49:42'),
(714, 6, '2023-07-11', '2023-07-11 12:17:22', '2023-07-11 19:02:46', '00:30:00', '2023-07-11 10:17:22', '2023-07-11 17:02:46'),
(715, 3, '2023-07-12', '2023-07-12 09:53:18', '2023-07-12 19:04:45', '00:00:00', '2023-07-12 07:53:18', '2023-07-12 17:04:45'),
(716, 6, '2023-07-12', '2023-07-12 10:38:20', '2023-07-12 19:05:45', '00:30:00', '2023-07-12 08:38:20', '2023-07-12 17:05:45'),
(717, 4, '2023-07-12', '2023-07-12 13:39:27', '2023-07-12 19:11:28', '00:00:00', '2023-07-12 11:39:27', '2023-07-12 17:11:28'),
(718, 4, '2023-07-13', '2023-07-13 09:41:36', '2023-07-13 19:16:12', '00:00:00', '2023-07-13 07:41:36', '2023-07-13 17:16:12'),
(719, 3, '2023-07-13', '2023-07-13 09:42:40', '2023-07-13 19:16:29', '00:00:00', '2023-07-13 07:42:40', '2023-07-13 17:16:29'),
(720, 6, '2023-07-13', '2023-07-13 22:37:14', NULL, '0', '2023-07-13 20:37:14', '2023-07-13 20:37:14'),
(721, 3, '2023-07-14', '2023-07-14 09:57:25', '2023-07-14 19:19:31', '00:00:00', '2023-07-14 07:57:25', '2023-07-14 17:19:31'),
(722, 6, '2023-07-14', '2023-07-14 15:47:15', '2023-07-14 19:21:19', '00:00:00', '2023-07-14 13:47:15', '2023-07-14 17:21:19'),
(723, 4, '2023-07-15', '2023-07-15 09:40:31', '2023-07-15 19:45:54', '00:00:00', '2023-07-15 07:40:31', '2023-07-15 17:45:54'),
(724, 6, '2023-07-15', '2023-07-15 10:14:45', NULL, '0', '2023-07-15 08:14:45', '2023-07-15 08:14:45'),
(725, 3, '2023-07-17', '2023-07-17 09:48:24', '2023-07-17 19:33:31', '00:00:00', '2023-07-17 07:48:24', '2023-07-17 17:33:31'),
(726, 4, '2023-07-17', '2023-07-17 09:49:58', '2023-07-17 19:33:39', '00:00:00', '2023-07-17 07:49:58', '2023-07-17 17:33:39'),
(727, 7, '2023-07-17', '2023-07-17 10:02:38', '2023-07-17 19:02:44', '01:00:00', '2023-07-17 08:02:38', '2023-07-17 17:02:44'),
(728, 3, '2023-07-18', '2023-07-18 09:44:42', '2023-07-18 19:17:43', '00:00:00', '2023-07-18 07:44:42', '2023-07-18 17:17:43'),
(729, 4, '2023-07-18', '2023-07-18 09:53:35', '2023-07-18 19:19:07', '00:00:00', '2023-07-18 07:53:35', '2023-07-18 17:19:07'),
(730, 4, '2023-07-18', '2023-07-18 09:54:21', NULL, '0', '2023-07-18 07:54:21', '2023-07-18 07:54:21'),
(731, 6, '2023-07-18', '2023-07-18 10:03:20', '2023-07-18 19:42:00', '01:00:00', '2023-07-18 08:03:20', '2023-07-18 17:42:00'),
(732, 11, '2023-07-18', '2023-07-18 14:55:33', '2023-07-18 19:01:03', '01:00:00', '2023-07-18 12:55:33', '2023-07-18 17:01:03'),
(733, 12, '2023-07-18', '2023-07-18 18:25:50', '2023-07-18 18:26:32', '01:00:00', '2023-07-18 16:25:50', '2023-07-18 16:26:32'),
(734, 3, '2023-07-19', '2023-07-19 09:42:59', '2023-07-19 19:25:01', '00:00:00', '2023-07-19 07:42:59', '2023-07-19 17:25:01'),
(735, 11, '2023-07-19', '2023-07-19 09:53:28', '2023-07-19 19:15:16', '01:00:00', '2023-07-19 07:53:28', '2023-07-19 17:15:16'),
(736, 12, '2023-07-19', '2023-07-19 10:00:27', '2023-07-19 19:17:51', '00:00:00', '2023-07-19 08:00:27', '2023-07-19 17:17:51'),
(737, 7, '2023-07-19', '2023-07-19 10:01:30', '2023-07-19 19:06:34', '01:00:00', '2023-07-19 08:01:30', '2023-07-19 17:06:34'),
(738, 4, '2023-07-19', '2023-07-19 10:05:36', '2023-07-19 16:18:36', '00:00:00', '2023-07-19 08:05:36', '2023-07-19 14:18:36'),
(739, 6, '2023-07-19', '2023-07-19 10:39:34', '2023-07-19 19:07:24', '00:45:00', '2023-07-19 08:39:34', '2023-07-19 17:07:24'),
(740, 3, '2023-07-20', '2023-07-20 09:52:16', NULL, '0', '2023-07-20 07:52:16', '2023-07-20 07:52:16'),
(741, 12, '2023-07-20', '2023-07-20 09:57:54', NULL, '0', '2023-07-20 07:57:54', '2023-07-20 07:57:54'),
(742, 6, '2023-07-20', '2023-07-20 09:59:55', '2023-07-20 19:11:17', '01:00:00', '2023-07-20 07:59:55', '2023-07-20 17:11:17'),
(743, 11, '2023-07-20', '2023-07-20 10:00:19', '2023-07-20 19:03:10', '01:00:00', '2023-07-20 08:00:19', '2023-07-20 17:03:10'),
(744, 7, '2023-07-20', '2023-07-20 10:02:57', '2023-07-20 19:20:28', '01:00:00', '2023-07-20 08:02:57', '2023-07-20 17:20:28'),
(745, 4, '2023-07-21', '2023-07-21 09:44:49', '2023-07-21 19:27:58', '00:00:00', '2023-07-21 07:44:49', '2023-07-21 17:27:58'),
(746, 6, '2023-07-21', '2023-07-21 09:55:20', '2023-07-21 19:07:59', '01:00:00', '2023-07-21 07:55:20', '2023-07-21 17:07:59'),
(747, 11, '2023-07-21', '2023-07-21 09:57:13', '2023-07-21 17:03:48', '01:00:00', '2023-07-21 07:57:13', '2023-07-21 15:03:48'),
(748, 1, '2023-07-25', '2023-07-25 03:31:51', NULL, '0', '2023-07-25 02:31:51', '2023-07-25 02:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL COMMENT 'primary key of project table',
  `emp_id` varchar(255) DEFAULT NULL COMMENT 'primary key of employee table',
  `type` tinyint(4) DEFAULT 1,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `done_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Processing, 3 = Done',
  `email_files` varchar(3) DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `emp_id`, `type`, `start_date`, `end_date`, `done_date`, `image`, `entry_by`, `status`, `email_files`, `created_at`, `updated_at`) VALUES
(1, 'bijon1114144', 'sdlkflskdfsdf\r\nsdf\r\nsdf', 3, '2', 1, '2023-07-19', '2023-07-26', NULL, '/backend/files/QESG49nK6XzDuTd953Lm.env', 1, 1, 'No', NULL, NULL),
(2, 'Tesssss', 'fasd', 4, '1', 1, '2023-07-14', '2023-07-28', NULL, '/backend/files/tAWzPRjL7xUKnSUcOpW3.env', 1, 2, 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_master`
--

CREATE TABLE `tax_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Tax Code',
  `percentage_of_deduction` varchar(255) DEFAULT NULL,
  `tax_reference` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_master`
--

INSERT INTO `tax_master` (`id`, `name`, `percentage_of_deduction`, `tax_reference`, `status`, `entry_by`) VALUES
(1, '56854', '1010', 'txt', 1, 1),
(2, '11545', '1011', 'testing', 1, 1),
(3, '165586', '125', 'text', 1, 1),
(4, 'TaxCode41548574', 'sss6999', 'sfsdf', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `name`) VALUES
(1, '01:30'),
(2, '02:00'),
(3, '02:30'),
(4, '03:00'),
(5, '03:30'),
(6, '04:00'),
(7, '04:30'),
(8, '05:00'),
(9, '05:30'),
(10, '06:00'),
(11, '06:30'),
(12, '07:00'),
(13, '07:30'),
(14, '08:00'),
(15, '08:30'),
(16, '09:00'),
(17, '09:30'),
(18, '10:00'),
(19, '10:30'),
(20, '11:00'),
(21, '11:30'),
(22, '12:00'),
(23, '12:30'),
(24, '13:00'),
(25, '13:30'),
(26, '14:00'),
(27, '14:30'),
(28, '15:00'),
(29, '15:30'),
(30, '16:00'),
(31, '16:30'),
(32, '17:00'),
(33, '17:30'),
(34, '18:00'),
(35, '18:30'),
(36, '19:00'),
(37, '19:30'),
(38, '20:00'),
(39, '20:30'),
(40, '21:00'),
(41, '21:30'),
(42, '22:00'),
(43, '22:30'),
(44, '23:00'),
(45, '23:30'),
(46, '00:00');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_documents`
--

CREATE TABLE `type_of_documents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_of_documents`
--

INSERT INTO `type_of_documents` (`id`, `name`, `status`) VALUES
(1, 'PAYEE And Account Reference Letter From HMRC', 1),
(2, 'Latest RTI from Accountant', 1),
(3, 'Employer Liability Insurance Certificate', 1),
(4, 'Proof of Business Premises (Tenancy Agreement)', 1),
(5, 'Copy Of Lease Or Freehold Property', 1),
(6, 'Business Bank statement for 1 Month', 1),
(7, 'Business Bank statement for 2 Month', 1),
(8, 'Business Bank statement for 3 Month', 1),
(9, 'SIGNED Annual account (if the business is over 18 months old)', 1),
(10, 'VAT Certificate (if registered)', 1),
(11, 'Copy of Health and safety star Rating (Applicable for food business only)', 1),
(12, 'Registered Business License or Certificate', 1),
(13, 'Franchise Agreement', 1),
(14, 'Governing Body Registration', 1),
(15, 'Copy Of Health & Safety Star Rating', 1),
(16, 'Audited Annual Account (if you have)', 1),
(17, 'Regulatory body certificate if applicable to your business such as ACCA, FCA , OFCOM, IATA, ARLA', 1),
(18, 'Others Document', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `phone_number` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL,
  `github` varchar(225) DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `show_password` varchar(225) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `employee_id`, `name`, `email`, `image`, `phone_number`, `address`, `website`, `github`, `twitter`, `instagram`, `facebook`, `show_password`, `email_verified_at`, `password`, `remember_token`, `entry_by`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 4, 'Md. Gazi Uddin', 'admin@gmail.com', '/backend/files/2LRy0wweiDi1mISlUSyv.jpg', '343434', '', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'admin', NULL, '$2a$12$KTM4o4shushdJtyHggJOEuoVzhTde88F2M2VZ1B89egoavVyQOycG', NULL, 1, '2023-06-22 03:20:43', '2023-07-14 04:47:21', 1),
(2, 1, NULL, 'jonas', 'jonas@gmail.com', NULL, '234234', 'sss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b.tEN9wEKcZfEHKfqvo2peiwWic44z3mKKe7TboP3nUeYO1zyPYoi', NULL, NULL, NULL, NULL, 1),
(3, 3, NULL, 'aaaaaaa155', 'aaaaaaa@gmail.com', '/backend/files/b8JI42ZAQPstMGbEoUjh.png', '54877', 'adsfsdf', NULL, NULL, NULL, NULL, NULL, 'password ', NULL, '', NULL, 1, NULL, '2023-07-14 04:41:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_register`
--

CREATE TABLE `visitor_register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(150) DEFAULT NULL,
  `reference` varchar(150) DEFAULT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitor_register`
--

INSERT INTO `visitor_register` (`id`, `name`, `designation`, `email_id`, `contact_no`, `address`, `date`, `time`, `reference`, `created_at`, `updated_at`) VALUES
(1, 'Md. Gazi Giash Uddin Bijon', 'Programmer', 'mdbijon@gmail.com', '018945789788', 'Mirpur-1', '2023-09-28', '10:25', 'Reference', '2023-09-01', '2023-09-01'),
(2, 'Md. Gazi Giash Uddin Bijon', 'Programmer', 'mdbijon@gmail.com', '018945789788', 'Mirpur-1', '2023-09-28', '10:25', 'Reference', '2023-09-01', '2023-09-01'),
(3, 'Md. Gazi Giash Uddin Bijon', 'Programmer', 'mdbijon@gmail.com', '018945789788', 'Mirpur-1', '2023-09-28', '10:25', 'Reference', '2023-09-01', '2023-09-01'),
(4, 'Jannat', 'Student', 'janant@gmail.com', '26598989', 'DHK', '2023-09-02', '10:25', 'sss', '2023-09-01', '2023-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `wedges_pay_mode`
--

CREATE TABLE `wedges_pay_mode` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual_pay`
--
ALTER TABLE `annual_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_short_code`
--
ALTER TABLE `bank_short_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circumstances`
--
ALTER TABLE `circumstances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duty_roster`
--
ALTER TABLE `duty_roster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_docs`
--
ALTER TABLE `employee_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_employee_holidays_used_holiday` (`used_holiday`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `generate_offer_letter`
--
ALTER TABLE `generate_offer_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grace_period`
--
ALTER TABLE `grace_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joblist`
--
ALTER TABLE `joblist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobpost`
--
ALTER TABLE `jobpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobpublish`
--
ALTER TABLE `jobpublish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_status`
--
ALTER TABLE `job_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `late_policy`
--
ALTER TABLE `late_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_allocation`
--
ALTER TABLE `leave_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_list`
--
ALTER TABLE `leave_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_rule`
--
ALTER TABLE `leave_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orgainsation_profile_1`
--
ALTER TABLE `orgainsation_profile_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orgainsation_profile_2`
--
ALTER TABLE `orgainsation_profile_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orgainsation_profile_3`
--
ALTER TABLE `orgainsation_profile_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organogram_hierarchy`
--
ALTER TABLE `organogram_hierarchy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organogram_level`
--
ALTER TABLE `organogram_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_pay_item`
--
ALTER TABLE `payroll_pay_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_group`
--
ALTER TABLE `pay_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_message`
--
ALTER TABLE `send_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_manage`
--
ALTER TABLE `shift_manage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shift_code` (`shift_code`);

--
-- Indexes for table `sign_in_outs`
--
ALTER TABLE `sign_in_outs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_master`
--
ALTER TABLE `tax_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_documents`
--
ALTER TABLE `type_of_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_register`
--
ALTER TABLE `visitor_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wedges_pay_mode`
--
ALTER TABLE `wedges_pay_mode`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual_pay`
--
ALTER TABLE `annual_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bank_short_code`
--
ALTER TABLE `bank_short_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `circumstances`
--
ALTER TABLE `circumstances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `duty_roster`
--
ALTER TABLE `duty_roster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_docs`
--
ALTER TABLE `employee_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_type`
--
ALTER TABLE `employee_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generate_offer_letter`
--
ALTER TABLE `generate_offer_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grace_period`
--
ALTER TABLE `grace_period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `joblist`
--
ALTER TABLE `joblist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobpost`
--
ALTER TABLE `jobpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobpublish`
--
ALTER TABLE `jobpublish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_status`
--
ALTER TABLE `job_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `late_policy`
--
ALTER TABLE `late_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lead`
--
ALTER TABLE `lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_allocation`
--
ALTER TABLE `leave_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_list`
--
ALTER TABLE `leave_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_rule`
--
ALTER TABLE `leave_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orgainsation_profile_1`
--
ALTER TABLE `orgainsation_profile_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orgainsation_profile_2`
--
ALTER TABLE `orgainsation_profile_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orgainsation_profile_3`
--
ALTER TABLE `orgainsation_profile_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `organogram_hierarchy`
--
ALTER TABLE `organogram_hierarchy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organogram_level`
--
ALTER TABLE `organogram_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payroll_pay_item`
--
ALTER TABLE `payroll_pay_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_group`
--
ALTER TABLE `pay_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `send_message`
--
ALTER TABLE `send_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shift_manage`
--
ALTER TABLE `shift_manage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sign_in_outs`
--
ALTER TABLE `sign_in_outs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=749;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax_master`
--
ALTER TABLE `tax_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `type_of_documents`
--
ALTER TABLE `type_of_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `visitor_register`
--
ALTER TABLE `visitor_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wedges_pay_mode`
--
ALTER TABLE `wedges_pay_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
