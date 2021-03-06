-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2011 at 05:37 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `isabellacollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `is_complete` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` VALUES(1, 'grodriguez@cmdagency.com', '', 'Gerardo', 'Rodriguez Perez', '0000-00-00', 1);
INSERT INTO `admin` VALUES(2, 'ger.rod34@gmail.com', '', 'Gerardo Antonio', 'Rodriguez Perez Leal Vidrio', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE IF NOT EXISTS `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `basket`
--


-- --------------------------------------------------------

--
-- Table structure for table `basket_item`
--

CREATE TABLE IF NOT EXISTS `basket_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `basket_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE IF NOT EXISTS `collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `is_archived` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` VALUES(48, 'Sike', '2011-12-09', '2011-12-12', 0);
INSERT INTO `collection` VALUES(49, 'Waht', '2011-12-09', '2011-12-09', 0);
INSERT INTO `collection` VALUES(50, 'Where', '2011-12-09', '2011-12-15', 1);
INSERT INTO `collection` VALUES(51, 'Way Out Of This World!!', '2011-12-09', '2011-12-12', 1);
INSERT INTO `collection` VALUES(52, 'Blazers Collection', '2011-12-15', '2011-12-19', 0);
INSERT INTO `collection` VALUES(53, 'Some Cool Collection For You', '2011-12-15', '0000-00-00', 0);
INSERT INTO `collection` VALUES(54, 'A Collection of the Ages', '2011-12-15', '0000-00-00', 0);
INSERT INTO `collection` VALUES(55, 'My New Collection Name', '2011-12-16', '2011-12-19', 1);
INSERT INTO `collection` VALUES(56, 'Stick with it.', '2011-12-16', '2011-12-16', 1);
INSERT INTO `collection` VALUES(57, 'This is my new collection', '2011-12-16', '2011-12-16', 1);
INSERT INTO `collection` VALUES(58, 'asdf', '2011-12-16', '2011-12-16', 1);
INSERT INTO `collection` VALUES(59, 'The newest and greatest', '2011-12-19', '0000-00-00', 0);
INSERT INTO `collection` VALUES(60, 'My Favorite Collection', '2011-12-19', '0000-00-00', 0);
INSERT INTO `collection` VALUES(61, 'Hi', '2011-12-21', '0000-00-00', 0);
INSERT INTO `collection` VALUES(62, 'IE Collection', '2011-12-27', '0000-00-00', 0);
INSERT INTO `collection` VALUES(63, 'The IE Collection', '2011-12-27', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `collection_image`
--

CREATE TABLE IF NOT EXISTS `collection_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`collection_id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `collection_image`
--

INSERT INTO `collection_image` VALUES(7, 63, 9);
INSERT INTO `collection_image` VALUES(8, 63, 10);

-- --------------------------------------------------------

--
-- Table structure for table `designer`
--

CREATE TABLE IF NOT EXISTS `designer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `owner_first_name` varchar(255) NOT NULL,
  `owner_last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `fax_number` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `is_approved` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `designer`
--


-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` VALUES(7, '62_full.png');
INSERT INTO `image` VALUES(8, '62_thumb.png');
INSERT INTO `image` VALUES(9, '63_full.png');
INSERT INTO `image` VALUES(10, '63_thumb.png');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `photo_reference` varchar(255) NOT NULL,
  `stock_number` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_id` (`collection_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` VALUES(1, 50, 'A', '2345', 'The coolest sham alive.', '*never need to wash! :o', '0000-00-00');
INSERT INTO `item` VALUES(2, 50, 'B', '0987', 'A sick pillow case.', '', '0000-00-00');
INSERT INTO `item` VALUES(3, 50, 'C', '8484', 'Nothing that cool, really.', '', '2011-12-15');
INSERT INTO `item` VALUES(4, 50, 'D', '1234;lkj1234-1234', 'Something super logn as;lj asdf;klj fadsl;kfjdsa ;lkaj afd;jk', 'Whatever.', '2011-12-15');
INSERT INTO `item` VALUES(5, 50, 'E', '1234;lkj1234-1234', 'Supwitchu', 'Whatever.', '2011-12-15');
INSERT INTO `item` VALUES(13, 53, 'R', '234599', 'Something or other.', 'Say what?', '2011-12-16');
INSERT INTO `item` VALUES(14, 53, 'R', '123-123', 'Say what!?', 'Whatev', '2011-12-16');
INSERT INTO `item` VALUES(15, 53, 'E', '890', 'Nope', 'None', '2011-12-16');
INSERT INTO `item` VALUES(30, 52, 'd', 'd', 'daasdf', '', '2011-12-19');
INSERT INTO `item` VALUES(31, 52, 'a', 'asdf324', 'This ist he description', 'nothing', '2011-12-19');
INSERT INTO `item` VALUES(32, 52, 'DD', 'Icon-09887', 'This is an image showing some icons used in a previous project.', 'What up?', '2011-12-19');
INSERT INTO `item` VALUES(33, 55, 'ZZ', '23-23423240234-234', 'This is an image of a video player, for your viewing pleasure.', '', '2011-12-19');
INSERT INTO `item` VALUES(34, 52, 'q45', 'ewrt', 'Whatev\r\n', '', '2011-12-21');
INSERT INTO `item` VALUES(35, 63, 'C', 'asdf-asdf234-234', 'This is the first item of the IE Collection', 'none', '2011-12-27');
INSERT INTO `item` VALUES(36, 63, 'U', '234-2342-2342323', 'This is the 2nd item in the IE Collection!', '', '2011-12-27');
