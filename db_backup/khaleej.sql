-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2013 at 02:55 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `khaleej`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE IF NOT EXISTS `item_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `price_in_warehouse` double NOT NULL,
  `price_in_shop` double NOT NULL,
  `price_in_vehicle` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_bill_history`
--

CREATE TABLE IF NOT EXISTS `shop_bill_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(50) NOT NULL,
  `shop_id` varchar(50) NOT NULL,
  `bill_date` date NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `total_amount` double NOT NULL,
  `amount_paid` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_stock`
--

CREATE TABLE IF NOT EXISTS `shop_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(50) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_table`
--

CREATE TABLE IF NOT EXISTS `shop_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(50) NOT NULL,
  `shop_name` varchar(200) NOT NULL,
  `shop_address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_bill_history`
--

CREATE TABLE IF NOT EXISTS `vehicle_bill_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(50) NOT NULL,
  `vehicle_id` varchar(50) NOT NULL,
  `bill_date` date NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `total_amount` decimal(10,0) NOT NULL,
  `amount_paid` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_stock`
--

CREATE TABLE IF NOT EXISTS `vehicle_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` varchar(50) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_table`
--

CREATE TABLE IF NOT EXISTS `vehicle_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` varchar(50) NOT NULL,
  `vehicle_name` varchar(200) NOT NULL,
  `reg_no` varchar(200) NOT NULL,
  `vehicle_owner` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_table`
--

CREATE TABLE IF NOT EXISTS `vendor_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` varchar(50) NOT NULL,
  `vendor_name` varchar(200) NOT NULL,
  `vendor_address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_bill_history`
--

CREATE TABLE IF NOT EXISTS `warehouse_bill_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(50) NOT NULL,
  `bill_date` date NOT NULL,
  `vendor_id` varchar(50) NOT NULL,
  `total_amount` double NOT NULL,
  `amount_paid` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_stock`
--

CREATE TABLE IF NOT EXISTS `warehouse_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
