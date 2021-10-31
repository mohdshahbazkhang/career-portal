-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.31-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for career
CREATE DATABASE IF NOT EXISTS `career` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `career`;

-- Dumping structure for table career.city
CREATE TABLE IF NOT EXISTS `city` (
  `id` bigint(20) NOT NULL,
  `cost_of_living` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table career.city: ~4 rows (approximately)
DELETE FROM `city`;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`id`, `cost_of_living`, `name`, `state`) VALUES
	(1, 42000, 'Bangalore', 'Maharashtra'),
	(2, 58000, 'Mumbai', 'Maharashtra'),
	(3, 23000, 'Bhopal', 'Madhya Pradesh'),
	(4, 28000, 'Indore', 'Madhya Pradesh');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;

-- Dumping structure for table career.company
CREATE TABLE IF NOT EXISTS `company` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table career.company: ~4 rows (approximately)
DELETE FROM `company`;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`id`, `name`) VALUES
	(1, 'Wipro'),
	(2, 'TCS'),
	(3, 'Infosys'),
	(4, 'Tech Mahindra');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

-- Dumping structure for table career.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table career.hibernate_sequence: ~3 rows (approximately)
DELETE FROM `hibernate_sequence`;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(1),
	(1),
	(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Dumping structure for table career.jobrole
CREATE TABLE IF NOT EXISTS `jobrole` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary_range` varchar(255) DEFAULT NULL,
  `years_of_experience` int(11) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrful7p3d5cin99nrj78obmey6` (`company_id`),
  KEY `FK4nn7i8b95uva9lfkewmc2jmjw` (`city_id`),
  CONSTRAINT `FK4nn7i8b95uva9lfkewmc2jmjw` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `FKrful7p3d5cin99nrj78obmey6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table career.jobrole: ~12 rows (approximately)
DELETE FROM `jobrole`;
/*!40000 ALTER TABLE `jobrole` DISABLE KEYS */;
INSERT INTO `jobrole` (`id`, `description`, `name`, `salary_range`, `years_of_experience`, `company_id`, `city_id`) VALUES
	(1, 'Front-End and Back-End Developement', 'Full Stack Developer', '50,000 - 60,000', 2, 1, 1),
	(2, 'Front-End and Back-End Developement', 'Full Stack Developer', '50,000 - 60,000', 2, 2, 2),
	(3, 'Front-End and Back-End Developement', 'Full Stack Developer', '50,000 - 60,000', 2, 3, 3),
	(4, 'Front-End and Back-End Developement', 'Full Stack Developer', '50,000 - 60,000', 2, 4, 4),
	(17, 'Front-End Developement', 'Front-End Developer', '30,000 - 40,000', 2, 2, 1),
	(18, 'Front-End and Developement', 'Front-End Developer', '30,000 - 40,000', 2, 3, 3),
	(19, 'Front-End and Developement', 'Front-End Developer', '30,000 - 40,000', 2, 1, 2),
	(32, 'Front-End and Developement', 'Front-End Developer', '30,000 - 40,000', 2, 4, 4),
	(33, 'Back-End Developement', 'Back-End Developer', '30,000 - 40,000', 2, 2, 1),
	(34, 'Back-End and Developement', 'Back-End Developer', '30,000 - 40,000', 2, 3, 2),
	(35, 'Back-End and Developement', 'Back-End Developer', '30,000 - 40,000', 2, 4, 3),
	(48, 'Back-End and Developement', 'Back-End Developer', '30,000 - 40,000', 2, 1, 4);
/*!40000 ALTER TABLE `jobrole` ENABLE KEYS */;

-- Dumping structure for table career.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table career.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
