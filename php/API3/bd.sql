-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para seminario
DROP DATABASE IF EXISTS `seminario`;
CREATE DATABASE IF NOT EXISTS `seminario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `seminario`;

-- Volcando estructura para tabla seminario.alumnos
DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `apellido` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla seminario.alumnos: ~10 rows (aproximadamente)
DELETE FROM `alumnos`;
INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `fecha_nacimiento`, `telefono`) VALUES
	(1, 'luigi', 'OsoQui', '1978-11-14', '3212365489'),
	(2, 'Henry', 'Caceres', '1987-08-06', '3002365489'),
	(3, 'Luisa', 'Lopez', '1998-10-05', '3052365489'),
	(4, 'Pedro', 'Perez', '1982-10-05', '3172365489'),
	(5, 'Juan', 'Perez', '1998-10-05', '3142365489'),
	(6, 'Janier', 'Marin', '1976-12-30', '3132365489'),
	(7, 'Carlos', 'Lara', '1999-09-24', '3122365489'),
	(8, 'Lionel', 'Lopera', '1996-08-22', '3012365489'),
	(9, 'Diego', 'Ronaldo', '1984-09-30', '3222365489'),
	(10, 'Ana', 'Marin', '2004-11-29', '3302365489'),
	(12, 'pepita', 'gomez', '1944-09-30', '311111115'),
	(13, 'juanita', 'lozano', '1980-01-01', '30000001');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
