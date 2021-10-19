-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bookshop
CREATE DATABASE IF NOT EXISTS `bookshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bookshop`;

-- Dumping structure for table bookshop.author
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `pseudonym` text NOT NULL,
  `age` int(3) NOT NULL,
  `domicile` text NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.author: ~8 rows (approximately)
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` (`author_id`, `name`, `pseudonym`, `age`, `domicile`) VALUES
	(2, 'Tô hoài1', 'Tô hoài', 111, 'HN'),
	(3, 'Tô hoài2', 'Tô hoài', 112, 'HN'),
	(4, 'Tô hoài3', 'Tô hoài', 112, 'HN'),
	(5, 'Tô hoài4', 'Tô hoài', 113, 'HN'),
	(6, 'Tô hoài5', 'Tô hoài', 114, 'HN'),
	(7, 'Tô hoài6', 'Tô hoài', 115, 'HN'),
	(8, 'Tô hoài7', 'Tô hoài', 116, 'HN'),
	(9, 'Tô hoài8', 'Tô hoài', 117, 'HN');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;

-- Dumping structure for table bookshop.bill
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale` float NOT NULL,
  `check_in` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `discount_id` (`discount_id`),
  KEY `customer_id` (`customer_id`),
  KEY `bill_ibfk_3` (`employee_id`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.bill: ~0 rows (approximately)
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;

-- Dumping structure for table bookshop.billdetail
CREATE TABLE IF NOT EXISTS `billdetail` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`stt`),
  KEY `bill_id` (`bill_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.billdetail: ~0 rows (approximately)
/*!40000 ALTER TABLE `billdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `billdetail` ENABLE KEYS */;

-- Dumping structure for table bookshop.book
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL,
  `number` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text DEFAULT NULL,
  `publishing_year` char(4) NOT NULL,
  `author_id` int(11) NOT NULL,
  `publishing_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_book_category` (`category_id`),
  KEY `author_id` (`author_id`),
  KEY `publishing_id` (`publishing_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`publishing_id`) REFERENCES `publishing_company` (`piblishing_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.book: ~0 rows (approximately)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Dumping structure for table bookshop.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.category: ~0 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table bookshop.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `cmt_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `bookId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmt_id`),
  KEY `book_bookId_idx` (`bookId`),
  KEY `user_userId_idx` (`userId`),
  CONSTRAINT `book_bookId` FOREIGN KEY (`bookId`) REFERENCES `book` (`book_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_userId` FOREIGN KEY (`userId`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table bookshop.discount
CREATE TABLE IF NOT EXISTS `discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.discount: ~0 rows (approximately)
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;

-- Dumping structure for table bookshop.publishing_company
CREATE TABLE IF NOT EXISTS `publishing_company` (
  `publishing_id` int(11) NOT NULL AUTO_INCREMENT,
  `publishing_name` text NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`piblishing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.publishing_company: ~0 rows (approximately)
/*!40000 ALTER TABLE `publishing_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `publishing_company` ENABLE KEYS */;

-- Dumping structure for table bookshop.role
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.role: ~2 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`role_id`, `name`, `status`) VALUES
	(1, 'Admin', 1),
	(2, 'User', 1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table bookshop.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_role` (`role_id`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bookshop.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `age`, `address`, `gender`, `role_id`, `status`) VALUES
	(2, 'thientinh99', 'thientinh', 'Tinh', 21, 'ST', 0, 1, 1),
	(3, 'thientinh12', '123456', 'Tinh', 12, 'SA', 0, 2, 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
