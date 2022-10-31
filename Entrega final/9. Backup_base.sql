CREATE DATABASE  IF NOT EXISTS `relojes_colombia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `relojes_colombia`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: relojes_colombia
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `catalogo_productos`
--

DROP TABLE IF EXISTS `catalogo_productos`;
/*!50001 DROP VIEW IF EXISTS `catalogo_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `catalogo_productos` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `product_price`,
 1 AS `product_image`,
 1 AS `product_description`,
 1 AS `id_category`,
 1 AS `category_name`,
 1 AS `id_color`,
 1 AS `color_name`,
 1 AS `id_size`,
 1 AS `size_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(25) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Masculino','2022-09-26',NULL,NULL),(2,'Femenino','2022-09-26',NULL,NULL),(3,'Niño','2022-09-26',NULL,NULL),(4,'Niña','2022-09-26',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `color_id` int unsigned NOT NULL AUTO_INCREMENT,
  `color_name` varchar(25) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Amarillo','2022-09-26',NULL,NULL),(2,'Azul','2022-09-26',NULL,NULL),(3,'Rojo','2022-09-26',NULL,NULL),(4,'Café','2022-09-26',NULL,NULL),(5,'Morado','2022-09-26',NULL,NULL),(6,'Verde','2022-09-26',NULL,NULL),(7,'Rosado','2022-09-26',NULL,NULL),(8,'Gris','2022-09-26',NULL,NULL),(9,'Blanco','2022-09-26',NULL,NULL),(10,'Negro','2022-09-26',NULL,NULL);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_created_products`
--

DROP TABLE IF EXISTS `logs_created_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_created_products` (
  `created_product_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  PRIMARY KEY (`created_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_created_products`
--

LOCK TABLES `logs_created_products` WRITE;
/*!40000 ALTER TABLE `logs_created_products` DISABLE KEYS */;
INSERT INTO `logs_created_products` VALUES (1,'root@localhost','2022-10-08','13:47:29');
/*!40000 ALTER TABLE `logs_created_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_sales`
--

DROP TABLE IF EXISTS `logs_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_sales` (
  `created_sales_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  PRIMARY KEY (`created_sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_sales`
--

LOCK TABLES `logs_sales` WRITE;
/*!40000 ALTER TABLE `logs_sales` DISABLE KEYS */;
INSERT INTO `logs_sales` VALUES (1,'root@localhost','2022-10-08','13:50:02');
/*!40000 ALTER TABLE `logs_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_price` decimal(7,2) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `product_description` varchar(500) NOT NULL,
  `id_category` int unsigned NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Reloj para Hombre CASIO',50.95,'./reloj1.jpg','Reloj CASIO para Hombre para todas las ocasiones',1,'2022-09-26',NULL,NULL),(2,'Reloj para Mujer CASIO',30.55,'./reloj2.jpg','Reloj CASIO para Mujer para todas las ocasiones',2,'2022-09-26',NULL,NULL),(3,'Reloj para Niño CASIO',30.00,'./reloj3.jpg','Reloj CASIO para Niño para todas las ocasiones',3,'2022-09-26',NULL,NULL),(4,'Reloj para Niña CASIO',35.00,'./reloj4.jpg','Reloj CASIO para Niña para todas las ocasiones',4,'2022-09-26',NULL,NULL),(5,'Reloj para Hombre GARMIN',59.99,'./reloj5.jpg','Reloj GARMIN para Hombre para todas las ocasiones',1,'2022-09-26',NULL,NULL),(6,'Reloj para Mujer GARMIN',90.00,'./reloj6.jpg','Reloj GARMIN para Mujer para todas las ocasiones',2,'2022-09-26',NULL,NULL),(7,'Reloj para Niño GARMIN',35.99,'./reloj7.jpg','Reloj GARMIN para Niño para todas las ocasiones',3,'2022-09-26',NULL,NULL),(8,'Reloj para Niña GARMIN',20.55,'./reloj8.jpg','Reloj GARMIN para Niña para todas las ocasiones',4,'2022-09-26',NULL,NULL),(9,'Reloj para Hombre SAMSUNG',45.99,'./reloj9.jpg','Reloj SAMSUNG para Hombre para todas las ocasiones',1,'2022-09-26',NULL,NULL),(10,'Reloj para Mujer SAMSUNG',69.99,'./reloj10.jpg','Reloj SAMSUNG para Mujer para todas las ocasiones',2,'2022-09-26',NULL,NULL),(11,'Producto de prueba',30.55,'./prueba.jpg','Producto de prueba',2,'2022-10-08',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_created_products` AFTER INSERT ON `products` FOR EACH ROW BEGIN
	INSERT INTO logs_created_products
    VALUES (NULL,USER(),CURDATE(),CURTIME());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `products_colors`
--

DROP TABLE IF EXISTS `products_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_colors` (
  `product_color_id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_color` int unsigned NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`product_color_id`),
  KEY `id_product` (`id_product`),
  KEY `id_color` (`id_color`),
  CONSTRAINT `products_colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`product_id`),
  CONSTRAINT `products_colors_ibfk_2` FOREIGN KEY (`id_color`) REFERENCES `colors` (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_colors`
--

LOCK TABLES `products_colors` WRITE;
/*!40000 ALTER TABLE `products_colors` DISABLE KEYS */;
INSERT INTO `products_colors` VALUES (1,1,9,'2022-09-26',NULL,NULL),(2,1,10,'2022-09-26',NULL,NULL),(3,2,2,'2022-09-26',NULL,NULL),(4,2,1,'2022-09-26',NULL,NULL),(5,2,3,'2022-09-26',NULL,NULL),(6,3,4,'2022-09-26',NULL,NULL),(7,3,5,'2022-09-26',NULL,NULL),(8,4,2,'2022-09-26',NULL,NULL),(9,4,7,'2022-09-26',NULL,NULL),(10,4,8,'2022-09-26',NULL,NULL),(11,5,6,'2022-09-26',NULL,NULL),(12,6,10,'2022-09-26',NULL,NULL),(13,6,9,'2022-09-26',NULL,NULL),(14,6,8,'2022-09-26',NULL,NULL),(15,7,2,'2022-09-26',NULL,NULL),(16,7,1,'2022-09-26',NULL,NULL),(17,8,9,'2022-09-26',NULL,NULL),(18,9,6,'2022-09-26',NULL,NULL),(19,10,2,'2022-09-26',NULL,NULL),(20,10,8,'2022-09-26',NULL,NULL);
/*!40000 ALTER TABLE `products_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_sizes`
--

DROP TABLE IF EXISTS `products_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_sizes` (
  `product_size_id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_size` int unsigned NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`product_size_id`),
  KEY `id_product` (`id_product`),
  KEY `id_size` (`id_size`),
  CONSTRAINT `products_sizes_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`product_id`),
  CONSTRAINT `products_sizes_ibfk_2` FOREIGN KEY (`id_size`) REFERENCES `sizes` (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_sizes`
--

LOCK TABLES `products_sizes` WRITE;
/*!40000 ALTER TABLE `products_sizes` DISABLE KEYS */;
INSERT INTO `products_sizes` VALUES (1,1,1,'2022-09-26',NULL,NULL),(2,1,2,'2022-09-26',NULL,NULL),(3,1,3,'2022-09-26',NULL,NULL),(4,1,4,'2022-09-26',NULL,NULL),(5,1,5,'2022-09-26',NULL,NULL),(6,2,1,'2022-09-26',NULL,NULL),(7,2,2,'2022-09-26',NULL,NULL),(8,2,3,'2022-09-26',NULL,NULL),(9,2,4,'2022-09-26',NULL,NULL),(10,3,1,'2022-09-26',NULL,NULL),(11,3,2,'2022-09-26',NULL,NULL),(12,3,3,'2022-09-26',NULL,NULL),(13,3,4,'2022-09-26',NULL,NULL),(14,3,5,'2022-09-26',NULL,NULL),(15,4,2,'2022-09-26',NULL,NULL),(16,4,3,'2022-09-26',NULL,NULL),(17,4,4,'2022-09-26',NULL,NULL),(18,4,5,'2022-09-26',NULL,NULL),(19,5,1,'2022-09-26',NULL,NULL),(20,5,2,'2022-09-26',NULL,NULL),(21,5,3,'2022-09-26',NULL,NULL),(22,5,4,'2022-09-26',NULL,NULL),(23,5,5,'2022-09-26',NULL,NULL),(24,6,2,'2022-09-26',NULL,NULL),(25,6,3,'2022-09-26',NULL,NULL),(26,6,4,'2022-09-26',NULL,NULL),(27,7,1,'2022-09-26',NULL,NULL),(28,7,2,'2022-09-26',NULL,NULL),(29,7,3,'2022-09-26',NULL,NULL),(30,7,4,'2022-09-26',NULL,NULL),(31,7,5,'2022-09-26',NULL,NULL),(32,8,2,'2022-09-26',NULL,NULL),(33,8,3,'2022-09-26',NULL,NULL),(34,8,4,'2022-09-26',NULL,NULL),(35,8,5,'2022-09-26',NULL,NULL),(36,9,1,'2022-09-26',NULL,NULL),(37,9,2,'2022-09-26',NULL,NULL),(38,9,3,'2022-09-26',NULL,NULL),(39,9,4,'2022-09-26',NULL,NULL),(40,10,1,'2022-09-26',NULL,NULL),(41,10,2,'2022-09-26',NULL,NULL),(42,10,3,'2022-09-26',NULL,NULL),(43,10,4,'2022-09-26',NULL,NULL),(44,10,5,'2022-09-26',NULL,NULL);
/*!40000 ALTER TABLE `products_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ranking_categorias_mas_vendidas`
--

DROP TABLE IF EXISTS `ranking_categorias_mas_vendidas`;
/*!50001 DROP VIEW IF EXISTS `ranking_categorias_mas_vendidas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ranking_categorias_mas_vendidas` AS SELECT 
 1 AS `category_name`,
 1 AS `Venta`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `product_sold_id` int unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `address` varchar(50) NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_color` int unsigned NOT NULL,
  `id_size` int unsigned NOT NULL,
  `id_user` int unsigned NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`product_sold_id`),
  KEY `id_product` (`id_product`),
  KEY `id_color` (`id_color`),
  KEY `id_size` (`id_size`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`product_id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`id_color`) REFERENCES `colors` (`color_id`),
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`id_size`) REFERENCES `sizes` (`size_id`),
  CONSTRAINT `sales_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,'Carrera 11',5,5,4,8,'2022-09-26',NULL,NULL),(2,2,'Calle 45',9,7,3,8,'2022-09-26',NULL,NULL),(3,3,'Carrera 91',1,5,4,6,'2022-09-26',NULL,NULL),(4,1,'Calle 48',10,7,4,6,'2022-09-26',NULL,NULL),(5,2,'Avenida 91',6,3,3,6,'2022-09-26',NULL,NULL),(6,4,'Carrera 33',10,1,5,3,'2022-09-26',NULL,NULL),(7,2,'Calle 52',5,9,3,6,'2022-09-26',NULL,NULL),(8,3,'Avenida 30',3,4,2,6,'2022-09-26',NULL,NULL),(9,1,'Calle 6',4,10,5,7,'2022-09-26',NULL,NULL),(10,1,'Carrera 69',8,2,4,2,'2022-09-26',NULL,NULL),(11,3,'Dirección prueba',5,5,4,8,'2022-10-08',NULL,NULL);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_sales` BEFORE INSERT ON `sales` FOR EACH ROW BEGIN
	INSERT INTO logs_sales
    VALUES (NULL,USER(),CURDATE(),CURTIME());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `size_id` int unsigned NOT NULL AUTO_INCREMENT,
  `size_name` varchar(25) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'XS','2022-09-26',NULL,NULL),(2,'S','2022-09-26',NULL,NULL),(3,'M','2022-09-26',NULL,NULL),(4,'L','2022-09-26',NULL,NULL),(5,'XL','2022-09-26',NULL,NULL);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top_3_mas_vendidos`
--

DROP TABLE IF EXISTS `top_3_mas_vendidos`;
/*!50001 DROP VIEW IF EXISTS `top_3_mas_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_3_mas_vendidos` AS SELECT 
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `product_price`,
 1 AS `product_image`,
 1 AS `product_description`,
 1 AS `Unidaes_vendidas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_last_name` varchar(45) NOT NULL,
  `user_gender` varchar(25) NOT NULL,
  `user_dni` varchar(25) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Guillermo','Arango','Masculino','123456789','memo@hotmail.com','123456789','2022-09-26',NULL,NULL),(2,'Camila','Barrientos','Femenino','234567891','cami@hotmail.com','234567891','2022-09-26',NULL,NULL),(3,'Lucero','Hernandez','Femenino','345678912','luce@hotmail.com','345678912','2022-09-26',NULL,NULL),(4,'Amanda','Corrales','Femenino','456789123','amanda@hotmail.com','456789123','2022-09-26',NULL,NULL),(5,'Simón','Cardona','Masculino','567891234','moncho@hotmail.com','567891234','2022-09-26',NULL,NULL),(6,'Martha','Mesa','Femenino','678912345','martha@hotmail.com','678912345','2022-09-26',NULL,NULL),(7,'Cecilia','Pelaez','Femenino','789123456','ceci@hotmail.com','789123456','2022-09-26',NULL,NULL),(8,'Camilo','Aldana','Masculino','891234567','camialdana@hotmail.com','891234567','2022-09-26',NULL,NULL),(9,'Maria Fernanda','Guisao','Femenino','912345678','mafe@hotmail.com','912345678','2022-09-26',NULL,NULL),(10,'Adriana','Rengifo','Femenino','012345678','adri@hotmail.com','012345678','2022-09-26',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ventas_generadas_detalle`
--

DROP TABLE IF EXISTS `ventas_generadas_detalle`;
/*!50001 DROP VIEW IF EXISTS `ventas_generadas_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_generadas_detalle` AS SELECT 
 1 AS `quantity`,
 1 AS `address`,
 1 AS `id_product`,
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `product_price`,
 1 AS `product_image`,
 1 AS `product_description`,
 1 AS `id_category`,
 1 AS `category_name`,
 1 AS `color_name`,
 1 AS `size_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_usuarios_actuales`
--

DROP TABLE IF EXISTS `ventas_usuarios_actuales`;
/*!50001 DROP VIEW IF EXISTS `ventas_usuarios_actuales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_usuarios_actuales` AS SELECT 
 1 AS `id_user`,
 1 AS `user_id`,
 1 AS `quantity`,
 1 AS `address`,
 1 AS `user_name`,
 1 AS `user_last_name`,
 1 AS `user_gender`,
 1 AS `user_email`,
 1 AS `user_dni`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'relojes_colombia'
--
/*!50003 DROP FUNCTION IF EXISTS `amount_buyed_by_dni` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `amount_buyed_by_dni`(p_dni VARCHAR(25)) RETURNS decimal(7,2)
BEGIN
	DECLARE v_amount_buyed DECIMAL(7,2);
    
	SELECT sum(pro.product_price*sal.quantity)
		INTO v_amount_buyed
		FROM sales AS sal
		LEFT JOIN users AS us
			ON sal.id_user=us.user_id
        LEFT JOIN products AS pro
			ON sal.id_product=pro.product_id
        WHERE us.user_dni=p_dni;
        
	RETURN v_amount_buyed;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `amount_buyed_by_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `amount_buyed_by_product`(p_product_id INT) RETURNS decimal(7,2)
BEGIN
	DECLARE v_amount_buyed DECIMAL(7,2);
    
	SELECT sum(pro.product_price*sal.quantity)
		INTO v_amount_buyed
		FROM sales AS sal
        LEFT JOIN products AS pro
			ON sal.id_product=pro.product_id
        WHERE pro.product_id=p_product_id;
        
	RETURN v_amount_buyed;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_crear_nuevo_color` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_crear_nuevo_color`(IN p_nombre_color VARCHAR(25))
BEGIN
		DECLARE v_color_existente VARCHAR(25);
        
        -- Revisar que el color no se encuentre creado
        SELECT color_name
        INTO v_color_existente
        FROM colors
        WHERE color_name=p_nombre_color;
        
		-- Controlar que el nombre del color no exista aún
        IF v_color_existente IS NULL THEN
			INSERT INTO colors (color_id,color_name,creation_date,updated_at,deleted_at)
            VALUES (NULL,p_nombre_color,CURDATE(),NULL,NULL);
        ELSE
			SELECT CONCAT("El color ", p_nombre_color , " ya se encuentra creado") AS error_msg;
        END IF;

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ordenar_listado_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ordenar_listado_productos`(IN p_orden_column VARCHAR(100), IN p_order_type VARCHAR(4))
BEGIN
	SET @ordenar=  CONCAT(' ORDER BY ', p_orden_column, ' ', p_order_type);
	SET @clausula= CONCAT( 'SELECT * FROM products', @ordenar);

	PREPARE mi_clausula FROM @clausula;
	EXECUTE mi_clausula;
	DEALLOCATE PREPARE mi_clausula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `catalogo_productos`
--

/*!50001 DROP VIEW IF EXISTS `catalogo_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `catalogo_productos` AS select `pro`.`product_id` AS `product_id`,`pro`.`product_name` AS `product_name`,`pro`.`product_price` AS `product_price`,`pro`.`product_image` AS `product_image`,`pro`.`product_description` AS `product_description`,`pro`.`id_category` AS `id_category`,`cat`.`category_name` AS `category_name`,`pc`.`id_color` AS `id_color`,`col`.`color_name` AS `color_name`,`ps`.`id_size` AS `id_size`,`siz`.`size_name` AS `size_name` from (((((`products` `pro` left join `categories` `cat` on((`pro`.`id_category` = `cat`.`category_id`))) left join `products_colors` `pc` on((`pro`.`product_id` = `pc`.`id_product`))) left join `colors` `col` on((`pc`.`id_color` = `col`.`color_id`))) left join `products_sizes` `ps` on((`pro`.`product_id` = `ps`.`id_product`))) left join `sizes` `siz` on((`ps`.`id_size` = `siz`.`size_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ranking_categorias_mas_vendidas`
--

/*!50001 DROP VIEW IF EXISTS `ranking_categorias_mas_vendidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ranking_categorias_mas_vendidas` AS select `cat`.`category_name` AS `category_name`,sum((`sal`.`quantity` * `pro`.`product_price`)) AS `Venta` from ((`sales` `sal` left join `products` `pro` on((`sal`.`id_product` = `pro`.`product_id`))) left join `categories` `cat` on((`pro`.`id_category` = `cat`.`category_id`))) group by `cat`.`category_name` order by `Venta` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_3_mas_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `top_3_mas_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_3_mas_vendidos` AS select `pro`.`product_id` AS `product_id`,`pro`.`product_name` AS `product_name`,`pro`.`product_price` AS `product_price`,`pro`.`product_image` AS `product_image`,`pro`.`product_description` AS `product_description`,sum(`sal`.`quantity`) AS `Unidaes_vendidas` from (`sales` `sal` left join `products` `pro` on((`sal`.`id_product` = `pro`.`product_id`))) group by `pro`.`product_id` having sum(`sal`.`quantity`) in (select distinct `ventas_temporales`.`sum(ventas.quantity)` from (select sum(`ventas`.`quantity`) AS `sum(ventas.quantity)` from `sales` `ventas` group by `ventas`.`id_product` order by sum(`ventas`.`quantity`) desc limit 3) `ventas_temporales`) order by sum(`sal`.`quantity`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_generadas_detalle`
--

/*!50001 DROP VIEW IF EXISTS `ventas_generadas_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_generadas_detalle` AS select `sal`.`quantity` AS `quantity`,`sal`.`address` AS `address`,`sal`.`id_product` AS `id_product`,`pro`.`product_id` AS `product_id`,`pro`.`product_name` AS `product_name`,`pro`.`product_price` AS `product_price`,`pro`.`product_image` AS `product_image`,`pro`.`product_description` AS `product_description`,`pro`.`id_category` AS `id_category`,`cat`.`category_name` AS `category_name`,`col`.`color_name` AS `color_name`,`siz`.`size_name` AS `size_name` from ((((`sales` `sal` left join `products` `pro` on((`sal`.`id_product` = `pro`.`product_id`))) left join `categories` `cat` on((`pro`.`id_category` = `cat`.`category_id`))) left join `colors` `col` on((`sal`.`id_color` = `col`.`color_id`))) left join `sizes` `siz` on((`sal`.`id_size` = `siz`.`size_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_usuarios_actuales`
--

/*!50001 DROP VIEW IF EXISTS `ventas_usuarios_actuales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_usuarios_actuales` AS select `sal`.`id_user` AS `id_user`,`us`.`user_id` AS `user_id`,`sal`.`quantity` AS `quantity`,`sal`.`address` AS `address`,`us`.`user_name` AS `user_name`,`us`.`user_last_name` AS `user_last_name`,`us`.`user_gender` AS `user_gender`,`us`.`user_email` AS `user_email`,`us`.`user_dni` AS `user_dni` from (`sales` `sal` left join `users` `us` on((`sal`.`id_user` = `us`.`user_id`))) where ((year(`sal`.`creation_date`) = year(curdate())) and (month(`sal`.`creation_date`) = month(curdate()))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-20 21:43:01
