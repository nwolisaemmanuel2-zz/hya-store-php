-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 16, 2018 at 01:31 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(175) NOT NULL,
  `password` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `full_name`, `email`, `password`, `join_date`, `last_login`, `permissions`) VALUES
(1, 'Emmanuel Ekene', 'nwolisaemmanuel', '$2y$10$O5949kgCJ4V7yH0V21Avp.j8hNAud/SKFPCWTjSZ6AcO0oYruzsp6', '2017-10-02 17:30:28', '2018-02-16 13:19:27', 'admin,sale'),
(2, 'Kofi Ama', 'kofiama', '$2y$10$vGXXAg06zhfajU5lV9o.A.Fnhumi9vGdPdzSh62m/nh7XdsYaCIiW', '2017-10-03 08:05:58', '2018-02-15 22:03:32', 'sale'),
(3, 'Ama Yaa', 'ama12', '$2y$10$zT4jOknYVFqsgPLX9VPC8ugH5XxYg4tKIo97jtkbKLNQYOoz0spQu', '2018-02-15 22:34:11', '0000-00-00 00:00:00', 'sale'),
(4, 'Emmanuel John', 'john12', '$2y$10$VWaTd.1EQZfkVGJvZ9P0Fe.X72lJxWw4/7aUIazabyjH9oVRuxksC', '2018-02-15 22:41:46', '0000-00-00 00:00:00', 'sale'),
(5, 'kofi ama', 'kofi123', '$2y$10$.uLLdLM0aRsFuEOxyy7Q6OsO9vYgTVwPQ8nkju8L4Yjgje15uKJme', '2018-02-16 11:47:15', '2018-02-16 13:22:40', 'sale');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`transaction_id`, `date`, `name`, `invoice`, `amount`, `remarks`, `balance`) VALUES
(1, '02/13/2018', '', 'IN-330282', '100', 'cool', -100),
(2, '02/13/2018', 'hh', 'IN-529053', '23', 'df', -23),
(3, '02/13/2018', '', 'IN-23252', '', '', -100),
(4, '02/13/2018', '', 'IN-26330', '200', 'paid', -300),
(5, '02/15/2018', '', 'IN-232333', '100', 'good', -400);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(1, 'Kwame Emmanuel', 'Kumasi Ghana', '0201703337', '2000', 'Vitamin', '2018-02-14', 'good'),
(2, 'KOFI JOHN', 'ADUM KUMASI GHANA', '0542494320', '1000', 'COKE', '2018-02-19', 'TIS IS GOOD');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` enum('Member','Administrator','') NOT NULL DEFAULT 'Member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(2, 'Vitamin ', 'Vitamin D', ' this product is good ', '', '45', '50', '5', '', 0, -5, 10, '2018-12-21', '2018-02-13'),
(3, 'Vitamin ', 'Vitamin C', ' GOOD ', '', '15', '20', '5', '', 0, -5, 11, '2018-02-24', '2018-02-13'),
(4, 'Vitamin ', 'Vitamin A', ' NICE', '', '4', '5', '1', '', 0, -9999989, 15, '2018-02-21', '2018-02-13'),
(5, 'coca cola', 'big coke', ' 1.5L', '', '7', '9', '2', 'Kath company', 0, 19, 20, '2018-02-23', '2018-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases_item`
--

INSERT INTO `purchases_item` (`id`, `name`, `qty`, `cost`, `invoice`) VALUES
(1, 'Vitamin ', 0, '0', ''),
(2, 'Vitamin ', 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`) VALUES
(1, 'RS-30320230', 'Admin', '01/30/18', 'cash', '12', '1', '20', '', ''),
(2, 'RS-32203', 'Admin', '02/13/18', 'cash', '150', '', '200', '', ''),
(3, 'RS-232230', 'Admin', '02/13/18', 'cash', '125', '', '200', '', ''),
(4, 'RS-0293323', 'Admin', '02/13/18', 'cash', '5', '', '20', '', ''),
(5, 'RS-32023535', 'Admin', '02/14/18', 'cash', '20', '', '20', '', ''),
(6, 'RS-5002237', 'Cashier Pharmacy', '02/15/18', 'cash', '', '', '100', '', ''),
(7, 'RS-3300327', 'Cashier Pharmacy', '02/15/18', 'cash', '40', '', '100', '', ''),
(8, 'RS-363330', 'Cashier Pharmacy', '02/15/18', 'cash', '20', '', '789', '', ''),
(9, 'RS-330320', 'Cashier Pharmacy', '02/15/18', 'cash', '20', '', '80', '', ''),
(10, 'RS-430320', 'Cashier Pharmacy', '02/15/18', 'cash', '20', '', '40', '', ''),
(11, 'RS-3630334', 'Admin', '02/15/18', 'cash', '50000500', '', '400000', '', ''),
(12, 'RS-28232230', 'Admin', '02/15/18', 'cash', '20', '', '20', '', ''),
(13, 'RS-32737332', '', '02/15/18', 'cash', '20', '', '50', '', ''),
(14, 'RS-27302280', '', '02/16/18', 'cash', '20', '', '20', '', ''),
(15, 'RS-9233333', '', '02/16/18', 'cash', '10', '', '20', '', ''),
(16, 'RS-3343383', '', '02/16/18', 'cash', '9', '', '10', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(1, 'RS-30320230', '1', '1', '12', '1', 'kkjsj', 'jj', 'jjjk ', '12', '', '01/30/18'),
(2, 'RS-32203', '2', '3', '150', '15', 'Vitamin ', 'Vitamin D', ' this product is good', '50', '', '02/13/18'),
(3, 'RS-232230', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/13/18'),
(4, 'RS-232230', '2', '2', '100', '10', 'Vitamin ', 'Vitamin D', ' this product is good ', '50', '', '02/13/18'),
(5, 'RS-232230', '4', '1', '5', '1', 'Vitamin ', 'Vitamin A', ' NICE', '5', '', '02/13/18'),
(6, 'RS-0293323', '4', '1', '5', '1', 'Vitamin ', 'Vitamin A', ' NICE', '5', '', '02/13/18'),
(7, 'RS-32023535', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/14/18'),
(8, 'RS-3300327', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(9, 'RS-3300327', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(10, 'RS-32233607', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(11, 'RS-363330', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(12, 'RS-330320', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(13, 'RS-430320', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(14, 'RS-3630334', '2', '10', '500', '50', 'Vitamin ', 'Vitamin D', ' this product is good ', '50', '', '02/15/18'),
(15, 'RS-3630334', '4', '10000000', '50000000', '10000000', 'Vitamin ', 'Vitamin A', ' NICE', '5', '', '02/15/18'),
(16, 'RS-28232230', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(17, 'RS-9223532', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(18, 'RS-9223532', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(19, 'RS-32737332', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/15/18'),
(20, 'RS-27302280', '3', '1', '20', '5', 'Vitamin ', 'Vitamin C', ' GOOD ', '20', '', '02/16/18'),
(21, 'RS-9233333', '4', '2', '10', '2', 'Vitamin ', 'Vitamin A', ' NICE', '5', '', '02/16/18'),
(22, 'RS-3343383', '5', '1', '9', '2', 'coca cola', 'big coke', ' 1.5L', '9', '', '02/16/18');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(1, 'Kath company', 'Accra Ghana', '0543245765', '0543245765', 'this product is good'),
(2, 'APPLE', 'Kumasi Ghana', '0542494320', '0543245765', 'THIS IS GOOD');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin'),
(2, 'cashier', 'cashier', 'Cashier Pharmacy', 'Cashier'),
(3, 'cccc', 'admin123', 'Administrator', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'administration'),
(2, 'user', 'user', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
