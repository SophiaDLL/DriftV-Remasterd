# DriftV
Drift base for FiveM

This gamemode as been designed to work with OneSync infinity. It will work without it, but performance can be worse.

ensure you need 

```
ensure mapmanager
ensure chat
ensure chat-theme-gtao
ensure spawnmanager
ensure sessionmanager

ensure mysql-async
ensure driftv
ensure drift-assets
ensure drift-vehicles
ensure driftV-sounds
ensure drift-extra-assets
ensure hologramspeed
ensure speedometer
ensure loading
ensure fh4map
ensure utils
ensure FeedM
```

## Database Setup

This database logic is temporary, it was just to switch away from saving data in KVP files.
In the future, this will be replaced with proper database tables.
To set up the database for DriftV, use the following SQL script:

```sql
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.5.1-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Database structure for driftv
CREATE DATABASE IF NOT EXISTS `driftv` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `driftv`;

-- Table structure for table `kvp`
CREATE TABLE IF NOT EXISTS `kvp` (
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE `players` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `license` VARCHAR(255) NOT NULL,
    `season` VARCHAR(255) NOT NULL,
    `pName` VARCHAR(255) NOT NULL,
    `money` INT NOT NULL DEFAULT 0,
    `driftPoint` INT NOT NULL DEFAULT 0,
    `exp` INT NOT NULL DEFAULT 0,
    `level` INT NOT NULL DEFAULT 0,
    `cars` JSON NOT NULL,
    `succes` JSON NOT NULL,
    `crew` VARCHAR(255) NOT NULL DEFAULT 'None',
    `crewOwner` BOOLEAN NOT NULL DEFAULT FALSE,
    UNIQUE (`license`, `season`)
);

CREATE TABLE `crews` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `tag` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `memberCount` INT NOT NULL DEFAULT 1,
    `totalPoints` INT NOT NULL DEFAULT 0,
    `win` INT NOT NULL DEFAULT 0,
    `loose` INT NOT NULL DEFAULT 0,
    `elo` INT NOT NULL DEFAULT 1000,
    `members` JSON NOT NULL,
    `rank` INT NOT NULL DEFAULT 500
);

-- Exported data was not selected.

-- Restore previous settings
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;