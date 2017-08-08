-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 08, 2017 at 04:15 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gto`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_master`
--

CREATE TABLE IF NOT EXISTS `client_master` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `vat_no` varchar(50) DEFAULT NULL,
  `client_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `production_batch_master`
--

CREATE TABLE IF NOT EXISTS `production_batch_master` (
  `batch_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_no` varchar(10) DEFAULT NULL,
  `bags` varchar(10) DEFAULT NULL,
  `echomeal` varchar(10) DEFAULT NULL,
  `prod_date` varchar(15) DEFAULT NULL,
  `batch_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `production_batch_master`
--

INSERT INTO `production_batch_master` (`batch_id`, `batch_no`, `bags`, `echomeal`, `prod_date`, `batch_status`) VALUES
(1, 'B12', '20', '10', '1502130600000', 'open'),
(2, 'B786', '50', '10', '1502303400000', 'open'),
(3, 'B22', '25', '10', '1502303400000', 'open'),
(4, 'BN1', '123', '8', '1502217000000', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `production_batch_register`
--

CREATE TABLE IF NOT EXISTS `production_batch_register` (
  `batch_reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` varchar(10) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `batch_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`batch_reg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `production_batch_register`
--

INSERT INTO `production_batch_register` (`batch_reg_id`, `prod_id`, `quantity`, `batch_id`) VALUES
(1, '1', '3', '1'),
(2, '2', '1', '1'),
(3, '3', '2', '1'),
(4, '4', '4', '1'),
(5, '1', '2', '2'),
(6, '2', '2', '2'),
(7, '3', '2', '2'),
(8, '4', '4', '2'),
(9, '1', '4', '3'),
(10, '2', '2', '3'),
(11, '3', '2', '3'),
(12, '4', '2', '3'),
(13, '1', '2', '4'),
(14, '2', '2', '4'),
(15, '3', '2', '4'),
(16, '4', '2', '4');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE IF NOT EXISTS `product_master` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(50) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`prod_id`, `prod_name`) VALUES
(1, 'Filler Powder'),
(2, 'Raw Organic Manure'),
(3, 'Slaughter House Waste'),
(4, 'Animal Waste Filler'),
(5, 'HDPE Bags'),
(6, 'Echomeal');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_master`
--

CREATE TABLE IF NOT EXISTS `purchase_master` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` varchar(11) DEFAULT NULL,
  `purchase_date` varchar(20) DEFAULT NULL,
  `bill_date` varchar(20) DEFAULT NULL,
  `bill_no` varchar(30) DEFAULT NULL,
  `lorry_no` varchar(15) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  `lorryfreight` varchar(20) DEFAULT NULL,
  `bags` varchar(10) DEFAULT NULL,
  `total_amount` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `purchase_master`
--

INSERT INTO `purchase_master` (`purchase_id`, `supplier_id`, `purchase_date`, `bill_date`, `bill_no`, `lorry_no`, `weight`, `rate`, `lorryfreight`, `bags`, `total_amount`) VALUES
(4, '8', '1501871400000', '1502303400000', 'B1212', 'MH 12 LL 2803', '20', '500', '0', NULL, '10000'),
(5, '9', '1501698600000', '1504117800000', '02', 'MH 12 AA 2320', '50', '20', '0', NULL, '1000'),
(6, '12', '1501957800000', '1502303400000', 'B22', 'MH 12 LL 2803', NULL, NULL, NULL, '200', '2000'),
(7, '11', '1501957800000', '1502303400000', 'B212', 'MH 12 LL 2803', NULL, NULL, NULL, '300', '3200'),
(8, '11', '1502044200000', '1502908200000', 'Test', 'MH 12 AA 2320', NULL, NULL, NULL, '120', '1200'),
(9, '10', '1501957800000', '1502821800000', 'b212', 'MH 09 AB 4087', '20', '500', '0', NULL, '10000'),
(10, '16', '1502044200000', '1502303400000', 'BB22', 'MH 09 AB 4087', '20', '600', '0', NULL, '12000');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_master`
--

CREATE TABLE IF NOT EXISTS `supplier_master` (
  `supplier_id` int(10) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(50) DEFAULT NULL,
  `vat` varchar(20) DEFAULT NULL,
  `prod_id` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `contactno` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `supplier_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `supplier_master`
--

INSERT INTO `supplier_master` (`supplier_id`, `supplier_name`, `vat`, `prod_id`, `contact_person`, `city`, `contactno`, `address`, `supplier_status`) VALUES
(8, 'Wasim', 'asdasd', '3', 'adasd', 'adad', 'adad', 'asdasdad', 'active'),
(9, 'Avees', 'asdsda', '2', 'adad', 'asdasd', 'asdasd', 'adasda', 'active'),
(10, 'Meezan', 'V2323', '2', 'Bokud', 'Miraj', '8237402054', 'Khasai galli Miraj', 'active'),
(11, 'Test', 'V1212', '5', 'Test', 'test', '1212', 'test add', 'active'),
(12, 'demo', 'ad', '5', 'test', 'ajara', '123123', 'demo add', 'active'),
(16, 'Uzair', 'U321', '2', 'Usama', 'Pune', '654', 'Salunke', 'active'),
(17, 'Sam', 'V123', '5', '12', 'pun', '2313', 'Aaa', 'active');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
