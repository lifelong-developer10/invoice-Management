-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 11:14 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `session` char(32) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `last_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`, `session`, `ip`, `last_login`) VALUES
(1, 'Admin', 'admin', '$2y$10$bE/7nfOEdPWI3Lt09LBV4eji4f1Vc1CPi9nJdkAk/FNYYOgYjM2dK', 'test22@gmail.com', '20ba49c64752338fdcd2452dacda2c3a', '::1', 1732698950);

-- --------------------------------------------------------

--
-- Table structure for table `admin_expense`
--

CREATE TABLE `admin_expense` (
  `id` int(11) NOT NULL,
  `expense_name` varchar(200) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_expense`
--

INSERT INTO `admin_expense` (`id`, `expense_name`, `amount`, `detail`, `date`) VALUES
(2, 'Testing', '1200.00', 'for billing', '2007-07-02'),
(3, 'Tea', '200.00', '', '2023-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `holder` varchar(100) DEFAULT NULL,
  `swift` varchar(100) DEFAULT NULL,
  `account` varchar(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `name`, `holder`, `swift`, `account`, `ifsc`, `branch`, `status`, `date`) VALUES
(1, 'IDFC FIRST BANK', 'SEASPEED MARINE SERVICES LLP', 'IDFBINBBREM', '10066802970', 'IDFB0040172', 'NAVI MUMBAI-CBD BELAPUR ', 0, '2023-06-29 09:45:21'),
(2, 'IDFC FIRST BANK-INR', 'SEASPEED MARINE SERVICES LLP', 'IDFBINBBREM', '10066802970', 'IDFB0040172', 'IDFB0040172', 0, '2023-06-30 05:14:02'),
(3, 'THE FEDERAL BANK-NRO', 'SACHIN MADAN PAWAR', 'FDRLINBB', '15810100077861', 'FDRL0001581', 'K-8 TO 13, EMPIRE ESTATE, PHASE 1, CHINCHWAD,PUNE ', 0, '2023-06-30 05:18:09'),
(4, 'THE FEDERAL BANK-USD', 'SACHIN MADAN PAWAR', 'FDRLINBB', '15812100002212', 'FDRL0001581', 'K-8 TO 13, EMPIRE ESTATE, PHASE 1, CHINCHWAD,PUNE ', 0, '2023-06-30 05:19:28'),
(7, 'INDUSIND BANK-INR', 'SEASPEED MARINE SERVICES LLP', 'INDBINBB', '259762345738', 'INDB0000599', 'UNIT NO 18/19/36, B-WING, SHREE NAND DHAM, MAHARAS', 0, '2023-07-01 16:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `gst_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `gst_id`, `address`, `contact`, `email`) VALUES
(1, 'Speed marine\r\n', '', '2,Shriram colony tembalaiwadi ,gur market yard kolhapur', 2147483647, 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `state` varchar(35) NOT NULL,
  `city` varchar(35) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `userid`, `fname`, `lname`, `email`, `phone`, `state`, `city`, `created_date`, `status`) VALUES
(3, 1001, 'ram', 'test', 'afsd@gmao.com', '23432423423', 'mh', 'fsadfsd', '2021-12-30 00:09:11', 'New Lead'),
(4, 1001, 'Sudhakar', 'JAdhav', 'tesa_sud@gmail.com', '2342342342', 'mh', 'Pune', '2021-12-30 00:16:38', 'New Lead');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `cname` varchar(90) NOT NULL,
  `address` text NOT NULL,
  `vat` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `cname`, `address`, `vat`, `phone`, `email`, `date`) VALUES
(6, 'SAVANA SHIPPING LLC', 'SAVANA SHIPPING LLC', '8th Floor, Arenco Tower, Sheikh Zayed Road, Dubai, UAE', 0, 2147483647, 'mp@savanaship.com', '2023-08-05 07:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `gst_type`
--

CREATE TABLE `gst_type` (
  `id` int(250) NOT NULL,
  `business_type` varchar(250) NOT NULL,
  `market_gst` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst_type`
--

INSERT INTO `gst_type` (`id`, `business_type`, `market_gst`) VALUES
(1, 'Hotel Management', 12),
(2, 'Transport Business', 18),
(3, 'Renting Rooms', 18),
(4, 'Jewellery', 3),
(5, 'Agriculture Equipment', 12),
(6, 'Restuarant Business', 18);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_name` varchar(255) NOT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `bank` int(11) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `vat_no` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `formatid` varchar(20) NOT NULL DEFAULT 'N/A',
  `invoice_data` varchar(2000) NOT NULL COMMENT 'php array serialize, name=>amount=>tax',
  `invoice_data_tax` varchar(1000) NOT NULL,
  `invoice_data_qty` varchar(300) DEFAULT NULL,
  `company_address` varchar(300) NOT NULL,
  `bill_to_address` varchar(300) NOT NULL,
  `total_amt` int(11) NOT NULL,
  `paid_amt` int(11) NOT NULL,
  `date` date NOT NULL,
  `user_type` varchar(40) NOT NULL DEFAULT 'Other',
  `orderid` int(11) NOT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `day_stay` varchar(255) DEFAULT NULL,
  `fees` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `swf` varchar(255) DEFAULT NULL,
  `signon_date` varchar(255) DEFAULT NULL,
  `signoff_date` varchar(255) DEFAULT NULL,
  `panama_medical` varchar(255) DEFAULT NULL,
  `ilo_medical` varchar(255) DEFAULT NULL,
  `P_I` varchar(255) DEFAULT NULL,
  `description` text,
  `vessel_name` text,
  `dateofrecharge` varchar(255) DEFAULT NULL,
  `recharge_amount` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `staff_salary` varchar(255) DEFAULT NULL,
  `boiler_suit` varchar(255) DEFAULT NULL,
  `safety_shoes` varchar(255) DEFAULT NULL,
  `panama_pde` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cap` varchar(1000) DEFAULT NULL,
  `whiteshirt_blackpant` varchar(1000) DEFAULT NULL,
  `apron` varchar(1000) DEFAULT NULL,
  `ecdis` varchar(1000) DEFAULT NULL,
  `total` varchar(1000) NOT NULL,
  `gst` varchar(1000) NOT NULL,
  `subtotal` varchar(1000) NOT NULL,
  `ExamName` varchar(1000) DEFAULT NULL,
  `Dept` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_name`, `currency`, `bank`, `company_name`, `vat_no`, `contact_no`, `email`, `formatid`, `invoice_data`, `invoice_data_tax`, `invoice_data_qty`, `company_address`, `bill_to_address`, `total_amt`, `paid_amt`, `date`, `user_type`, `orderid`, `rate`, `day_stay`, `fees`, `unit`, `swf`, `signon_date`, `signoff_date`, `panama_medical`, `ilo_medical`, `P_I`, `description`, `vessel_name`, `dateofrecharge`, `recharge_amount`, `rank`, `mobile_number`, `staff_salary`, `boiler_suit`, `safety_shoes`, `panama_pde`, `name`, `cap`, `whiteshirt_blackpant`, `apron`, `ecdis`, `total`, `gst`, `subtotal`, `ExamName`, `Dept`) VALUES
(9, 'September 28', '₹', 4, 'SAVANA SHIPPING LLC', NULL, '2147483647', 'mp@savanaship.com', '30', '', '', NULL, '8th Floor, Arenco Tower, Sheikh Zayed Road, Dubai, UAE', '', 11200, 5000, '2024-09-28', 'Other', 0, NULL, NULL, '750000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11200.00', '12', '10000', NULL, NULL),
(8, 'Gold Industry', '₹', 1, 'SAVANA SHIPPING LLC', NULL, '2147483647', 'mp@savanaship.com', '30', '', '', NULL, '8th Floor, Arenco Tower, Sheikh Zayed Road, Dubai, UAE', '', 3090, 2000, '2024-09-18', 'Other', 0, NULL, NULL, '50000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090.00', '3', '3000', NULL, NULL),
(11, 'Gold Industry', '₹', 3, 'SAVANA SHIPPING LLC', NULL, '2147483647', 'mp@savanaship.com', '32', '', '', NULL, '8th Floor, Arenco Tower, Sheikh Zayed Road, Dubai, UAE', '', 61800, 25000, '2024-10-22', 'Other', 0, '800000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gold Chain', NULL, NULL, NULL, NULL, '61800.00', '3', '60000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_columns`
--

CREATE TABLE `invoice_columns` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_columns`
--

INSERT INTO `invoice_columns` (`id`, `name`, `label`, `status`, `date`) VALUES
(14, 'rate', 'RATE', 0, '2023-06-22 10:29:13'),
(16, 'day_stay', 'DAY STAY', 0, '2023-06-22 10:29:37'),
(20, 'fees', 'FEE`S', 0, '2023-06-29 05:08:17'),
(21, 'unit', 'UNIT', 0, '2023-06-29 05:08:32'),
(23, 'swf', 'SWF', 0, '2023-06-29 05:10:27'),
(25, 'signon_date', 'SIGN-ON DATE', 0, '2023-06-29 11:48:44'),
(26, 'signoff_date', 'SIGN-OFF DATE', 0, '2023-06-29 11:49:04'),
(28, 'panama_medical', 'PANAMA MEDICAL', 0, '2023-06-29 11:49:32'),
(29, 'ilo_medical', 'ILO MEDICAL', 0, '2023-06-29 11:49:48'),
(30, 'P_I', 'P & I MEDICAL', 0, '2023-06-29 11:50:06'),
(31, 'description', 'DESCRIPTION', 0, '2023-06-29 11:53:00'),
(32, 'vessel_name', 'VESSEL NAME', 0, '2023-06-29 13:36:25'),
(33, 'dateofrecharge', 'DATE OF RECHARGE', 0, '2023-06-29 13:38:25'),
(34, 'recharge_amount', 'RECHARGE AMOUNT USD', 0, '2023-06-29 13:38:49'),
(35, 'rank', 'RANK', 0, '2023-06-29 13:39:57'),
(36, 'mobile_number', 'MOBILE NUMBER', 0, '2023-06-29 13:40:14'),
(37, 'staff_salary', 'HQSE STAFF SALARY', 0, '2023-06-29 13:42:06'),
(38, 'boiler_suit', 'BOILER SUITS', 0, '2023-06-29 13:46:01'),
(39, 'safety_shoes', 'SAFETY SHOES', 0, '2023-06-29 13:46:15'),
(40, 'panama_pde', 'PANAMA PDE', 0, '2023-06-29 13:48:27'),
(41, 'name', 'NAME', 0, '2023-06-29 13:49:00'),
(42, 'cap', 'CAP', 0, '2023-07-04 13:33:49'),
(43, 'whiteshirt_blackpant', 'White Shirt & Black Pant', 0, '2023-07-04 13:35:17'),
(44, 'apron', 'Cook Apron', 0, '2023-07-04 13:35:35'),
(45, 'ecdis', 'TYPE SPECIFIC ECDIS', 0, '2023-07-04 13:39:00'),
(46, 'total', 'TOTAL', 0, '2024-03-20 04:32:43'),
(47, 'gst', 'GST', 0, '2024-03-20 04:34:12'),
(48, 'subtotal', 'SUBTOTAL', 0, '2024-03-20 04:34:18'),
(50, 'ExamName', 'ExamName', 0, '2024-10-15 13:51:07'),
(51, 'Dept', 'Dept', 0, '2024-10-15 13:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_format`
--

CREATE TABLE `invoice_format` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `columns` varchar(300) DEFAULT NULL,
  `labels` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_format`
--

INSERT INTO `invoice_format` (`id`, `name`, `columns`, `labels`, `date`) VALUES
(3, 'SAVANA SHIPPIPNG LLC', 'description, vessel_name, fees, swf, total_usd', 'DESCRIPTION, VESSEL NAME, FEE`S, SWF, TOTAL USD', '2023-07-03 12:42:02'),
(30, 'Only for GST', 'total, gst, subtotal, fees', 'TOTAL, GST, SUBTOTAL, FEE`S', '2024-03-28 11:17:53'),
(32, 'Gold Shopping', 'total, gst, subtotal, name, rate', 'TOTAL, GST, SUBTOTAL, NAME, RATE', '2024-10-22 03:50:27');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `payment` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_id` varchar(30) DEFAULT NULL,
  `fund_account` varchar(30) DEFAULT NULL,
  `sponsor` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `signup_package` varchar(20) DEFAULT NULL,
  `epin` varchar(20) DEFAULT NULL,
  `address` varchar(400) NOT NULL,
  `country` varchar(40) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `join_time` date NOT NULL,
  `activation_date` varchar(70) NOT NULL,
  `placement_leg` enum('A','B','C','D','E') NOT NULL DEFAULT 'A',
  `A` int(11) NOT NULL DEFAULT '0',
  `B` int(11) NOT NULL DEFAULT '0',
  `C` int(11) NOT NULL DEFAULT '0',
  `D` int(11) NOT NULL DEFAULT '0',
  `E` int(11) NOT NULL DEFAULT '0',
  `total_sponsor` int(11) NOT NULL,
  `total_member_pv` int(11) NOT NULL,
  `total_a` int(11) NOT NULL DEFAULT '0',
  `total_b` int(11) NOT NULL DEFAULT '0',
  `total_c` int(11) NOT NULL DEFAULT '0',
  `total_d` int(11) NOT NULL DEFAULT '0',
  `total_e` int(11) NOT NULL DEFAULT '0',
  `paid_a` int(11) NOT NULL DEFAULT '0',
  `paid_b` int(11) NOT NULL DEFAULT '0',
  `paid_c` int(11) NOT NULL DEFAULT '0',
  `paid_d` int(11) NOT NULL DEFAULT '0',
  `paid_e` int(11) NOT NULL DEFAULT '0',
  `rank` varchar(30) NOT NULL DEFAULT 'Customer',
  `registration_ip` varchar(20) NOT NULL,
  `session` char(32) NOT NULL,
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT '0.00',
  `mypv` int(11) NOT NULL DEFAULT '0',
  `total_a_pv` varchar(5) NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) NOT NULL DEFAULT '0',
  `paid_a_pv` int(11) NOT NULL,
  `paid_b_pv` int(11) NOT NULL,
  `my_img` varchar(30) DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','In-active') NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) NOT NULL DEFAULT '0',
  `my_business` varchar(10) NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) NOT NULL DEFAULT '0',
  `secret` int(11) NOT NULL,
  `gift_level` int(11) NOT NULL DEFAULT '0',
  `type` varchar(11) NOT NULL,
  `f_type` varchar(20) NOT NULL,
  `latlng` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `phone`, `gender`, `payment`, `username`, `password`, `contact_id`, `fund_account`, `sponsor`, `position`, `signup_package`, `epin`, `address`, `country`, `state`, `city`, `join_time`, `activation_date`, `placement_leg`, `A`, `B`, `C`, `D`, `E`, `total_sponsor`, `total_member_pv`, `total_a`, `total_b`, `total_c`, `total_d`, `total_e`, `paid_a`, `paid_b`, `paid_c`, `paid_d`, `paid_e`, `rank`, `registration_ip`, `session`, `last_login`, `last_login_ip`, `topup`, `mypv`, `total_a_pv`, `total_b_pv`, `total_c_pv`, `total_d_pv`, `total_e_pv`, `paid_a_pv`, `paid_b_pv`, `my_img`, `status`, `total_a_matching_incm`, `total_b_matching_incm`, `total_c_matching_incm`, `total_d_matching_incm`, `total_e_matching_incm`, `my_business`, `total_a_investment`, `total_b_investment`, `paid_a_matching_incm`, `paid_b_matching_incm`, `secret`, `gift_level`, `type`, `f_type`, `latlng`, `updated_at`) VALUES
(1001, 'Akshay Narwadre', 'axolotlsindia2@gmail.com', '9764823404', '', '', '1001', '$2y$10$PP3EwGsrqOr2u.wcv8DVm.NHgaFnSIkAwKWvQlKUHqBIBkDS1A/Em', NULL, NULL, '1000', '', '1', 'Wallet', '1728376', 'India', 'Assam', '121', '2021-10-29', '2023-05-12', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '', '894b04f9a5c0ae38ac7fe422886286e4', 1686123776, '103.174.140.67', '1.00', 0, '0', '0', '', '', '', 2, 1, NULL, 'Active', '0', '0', '', '', '', '0', '0', '0', '0', '0', 1, 1, 'red', '', '18.30,20.30', '2023-06-20 11:32:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_expense`
--
ALTER TABLE `admin_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gst_type`
--
ALTER TABLE `gst_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `business_type` (`business_type`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_columns`
--
ALTER TABLE `invoice_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_format`
--
ALTER TABLE `invoice_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD UNIQUE KEY `secret` (`secret`),
  ADD KEY `sponsor` (`sponsor`),
  ADD KEY `poisition` (`position`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_expense`
--
ALTER TABLE `admin_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gst_type`
--
ALTER TABLE `gst_type`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invoice_columns`
--
ALTER TABLE `invoice_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `invoice_format`
--
ALTER TABLE `invoice_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `secret` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
