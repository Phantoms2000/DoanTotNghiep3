-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: caycanhshopdb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `seo` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_category_idx` (`parent_id`),
  CONSTRAINT `fk_category_category` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'Cây Lưỡi Hổ','Cây Lưỡi Hổ Đẹp',NULL,NULL,NULL,NULL,1,NULL,NULL),(2,'Hoa Xương Rồng','Hoa Xương Rồng',NULL,NULL,NULL,NULL,1,NULL,NULL),(3,'Cây Bạch Mã Hoàng Tử','Cây Bạch Mã Hoàng Tử Đẹp',NULL,NULL,NULL,NULL,1,NULL,NULL),(4,'Cây Dương Xỉ','Cây Dương Xỉ Đẹp',NULL,NULL,NULL,NULL,1,NULL,NULL),(5,'Cây Hương Thảo','Cây Hương Thảo Đẹp',NULL,NULL,NULL,NULL,1,NULL,NULL),(6,'Cây Kim Tiền','Cây Kim Tiền Đẹp',NULL,NULL,NULL,NULL,1,NULL,NULL),(7,'Cây Trầu Bà Đế Vương','Cây Trầu Bà Đế Vương Đẹp',NULL,NULL,NULL,NULL,1,NULL,NULL),(8,'Cây Sen Đá','Cây Sen Đá Đẹp',NULL,NULL,NULL,NULL,1,NULL,NULL),(9,'Cây Ngũ Gia Bì','Cây Ngũ Gia Bì Đẹp',NULL,NULL,NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `request_type` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `message` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `short_description` varchar(3000) COLLATE utf8mb4_bin NOT NULL,
  `dacdiem` longtext COLLATE utf8mb4_bin NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `category_id` int NOT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `seo` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ynghia` longtext COLLATE utf8mb4_bin NOT NULL,
  `tacdung` longtext COLLATE utf8mb4_bin NOT NULL,
  `cachtrong` longtext COLLATE utf8mb4_bin NOT NULL,
  `cachchamsoc` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category_idx` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (1,'Cây Lưỡi Hổ Để Bàn',50000.00,0.00,'Cây Lưỡi Hổ Để Bàn Đẹp','Cây Lưỡi Hổ Để Bàn Đẹp','product/avatar/CayLuoiHo2.jpg',1,1,NULL,NULL,NULL,NULL,NULL,1,'','','',''),(2,'Hoa Xương Rồng Đẹp',70000.00,0.00,'Hoa Xương Rồng Đẹp','Hoa Xương Rồng Đẹp','product/avatar/HoaXuongRong.jpg',2,1,NULL,NULL,NULL,NULL,NULL,1,'','','',''),(3,'Cây Bạch Mã Hoàng Tử',40000.00,0.00,'Cây Bạch Mã Hoàng Tử Đẹp','Cây Bạch Mã Hoàng Tử Đẹp','product/avatar/CayBachMaHoangTu.jpg',3,1,NULL,NULL,NULL,NULL,NULL,1,'','','',''),(4,'Cây Dương Xỉ',60000.00,0.00,'Cây Dương Xỉ Đẹp','Cây Dương Xỉ Đẹp','product/avatar/CayDuongXi2.jpg',4,1,NULL,NULL,NULL,NULL,NULL,1,'','','',''),(5,'Cây Hương Thảo',50000.00,0.00,'Cây Hương Thảo Đẹp','Cây Hương Thảo Đẹp','product/avatar/CayHuongThao2.jpg',5,1,NULL,NULL,NULL,NULL,NULL,1,'','','','');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_image`
--

DROP TABLE IF EXISTS `tbl_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `path` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `product_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_image_product_idx` (`product_id`),
  CONSTRAINT `fk_product_image_product` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_image`
--

LOCK TABLES `tbl_product_image` WRITE;
/*!40000 ALTER TABLE `tbl_product_image` DISABLE KEYS */;
INSERT INTO `tbl_product_image` VALUES (1,'CayLuoiHo2.jpg','product/picture/CayLuoiHo2.jpg',1,NULL,NULL,NULL,NULL,1),(2,'HoaXuongRong.jpg','product/picture/HoaXuongRong.jpg',2,NULL,NULL,NULL,NULL,1),(3,'CayBachMaHoangTu.jpg','product/picture/CayBachMaHoangTu.jpg',3,NULL,NULL,NULL,NULL,1),(4,'CayDuongXi2.jpg','product/picture/CayDuongXi2.jpg',4,NULL,NULL,NULL,NULL,1),(5,'CayHuongThao2.jpg','product/picture/CayHuongThao2.jpg',5,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES (11,'ADMIN','ADMIN',NULL,NULL,NULL,NULL,NULL),(12,'GUEST','GUEST',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `customer_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_address` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `seo` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_phone` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_email` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_saleorder_user_idx` (`user_id`),
  CONSTRAINT `fk_saleorder_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES (1,'MHD7275',NULL,'Nguyễn Thành Vinh','Hưng Yên',NULL,'0365601628','nguyenthanhvinh2000.hy@gmail.com',NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_product`
--

DROP TABLE IF EXISTS `tbl_saleorder_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quality` int NOT NULL,
  `saleorder_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_saleorder_product_product_idx` (`product_id`),
  KEY `fk_saleorder_product_saleorder_idx` (`saleorder_id`),
  CONSTRAINT `fk_saleorder_product_product` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_saleorder_product_saleorder` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_product`
--

LOCK TABLES `tbl_saleorder_product` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_product` DISABLE KEYS */;
INSERT INTO `tbl_saleorder_product` VALUES (1,1,1,5,NULL,NULL,NULL,NULL,1),(2,1,1,2,NULL,NULL,NULL,NULL,1),(3,1,1,1,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_saleorder_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (11,'admin','$2a$04$RRT6.qZ9DFC/g7sTnXArtOHLa3kHzsjt44fYFingsha7Aq7clMD0i','admin@gmail.com',NULL,NULL,NULL,NULL,1),(12,'guest','$2a$04$0psUUD1DY6c1fKZDYSl4fO30XPx/pVmELORRsMBh.QMAWjhU/L85K','guest@gmail.com',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_role`
--

DROP TABLE IF EXISTS `tbl_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_role_role_idx` (`role_id`),
  CONSTRAINT `fk_user_role_role` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`),
  CONSTRAINT `fk_user_role_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_role`
--

LOCK TABLES `tbl_user_role` WRITE;
/*!40000 ALTER TABLE `tbl_user_role` DISABLE KEYS */;
INSERT INTO `tbl_user_role` VALUES (11,11),(12,12);
/*!40000 ALTER TABLE `tbl_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'caycanhshopdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-09 15:56:21
