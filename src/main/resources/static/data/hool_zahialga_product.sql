-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: hool_zahialga
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(45) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,NULL,NULL,'Мөөгтэй, 2 хүний багц','/images/pizza1.jpg','2024-12-22 13:42:16','Мөөгтэй пизза',45000.00,1),(2,NULL,NULL,'Мөөгтэй, 1 хүний багц','/images/pizza2.jpg','2024-12-22 13:42:16','Жижиг мөөгтэй пизза',35000.00,1),(3,NULL,NULL,'Пеперони, 2 Хүний багц','/images/pizza3.jpg','2024-12-22 13:42:16','Пеперони пизза',45000.00,1),(4,NULL,NULL,'Энгийнээс илүү их бяслагтай','/images/pizza4.jpg','2024-12-22 13:42:16','Бяслаган пизза',45000.00,1),(5,NULL,NULL,'Веган пизза, бяслаггүй','/images/pizza5.jpg','2024-12-22 13:42:16','Веган пизза',35000.00,1),(6,NULL,NULL,'Веган паста, мах орлуулагчгүй','/images/pasta1.jpg','2024-12-25 14:49:50','Веган паста',30000.00,2),(7,NULL,NULL,'Сам хорхойтой паста, соустай','/images/pasta2.jpg','2024-12-25 14:52:31','Сам хорхойтой паста',45000.00,2),(8,NULL,NULL,'Брокли, улаан лооль, соустай','/images/pasta3.jpg','2024-12-25 14:54:06','Мөөгтэй паста',40000.00,2),(9,NULL,NULL,'Чинжүү, улаан лоолийн соус, спинач','/images/pasta4.jpg','2024-12-25 14:57:21','Халуун ногоотой паста',50000.00,2),(10,NULL,NULL,'Чихэрлэг соус, гүнжидийн үр, сонгино','/images/pasta5.jpg','2024-12-25 14:57:21','Чихэрлэг паста',48000.00,2),(11,NULL,NULL,'8 ширхэг хавчуургатай жигнэмэг','/images/appt.jpg','2024-12-25 15:05:39','Хавчуурга',12000.00,3),(12,NULL,NULL,'Чихэрлэг соус, үхрийн мах, спинач','/images/apt1.jpg','2024-12-25 15:08:13','Чихэрлэг бөөрөнхий мах',20000.00,3),(13,NULL,NULL,'Туна, сонгино, буудайн талх','/images/apt2.jpg','2024-12-25 15:10:40','Тунатай талх',8000.00,3),(14,NULL,NULL,'12 ширхэг, дотроо бяслагтай','/images/apt3.jpg','2024-12-25 15:12:26','Бяслаган бөмбөг',15000.00,3),(15,NULL,NULL,'Грек тараг, лийр, жүрж, зөгийн бал','/images/apt4.jpg','2024-12-25 15:14:37','Жигнэсэн лийр',18000.00,3),(16,NULL,NULL,'Зөгийн балтай','/images/apt5.jpg','2024-12-25 15:17:00','Чихэрлэг тахиа',18000.00,3),(17,NULL,NULL,'Төмсний нухаштай','/images/mc.jpg','2024-12-25 15:18:51','Үхрийн махан хуурга',30000.00,4),(18,NULL,NULL,'Хагас болгосон','/images/mc1.jpg','2024-12-25 15:20:56','Мөөгтэй стейк',36000.00,4),(19,NULL,NULL,'Грек бяслагтай','/images/mc2.jpg','2024-12-25 15:22:24','Бяслаган соустай стейк',48000.00,4),(20,NULL,NULL,'Asahi дагалдана','/images/mc3.jpg','2024-12-25 15:24:56','Карри',40000.00,4),(21,NULL,NULL,'2 хүний порц','/images/mc4.jpg','2024-12-25 15:26:22','Анартай салмон',54000.00,4),(22,NULL,NULL,'8 ширхэг','/images/mc5.jpg','2024-12-25 15:27:18','Бяслагтай хуушуур',48000.00,4),(23,NULL,NULL,'Черри, зайрмаг','/images/dessert.jpg','2024-12-25 15:29:57','Черри сүүн зайрмаг',20000.00,5),(24,NULL,NULL,'3 хүний','/images/ds1.jpg','2024-12-25 15:31:53','Шоколадтай зайрмаг',48000.00,5),(25,NULL,NULL,'Интоортой','/images/ds2.jpg','2024-12-25 15:34:32','Шоколадтай бялуу',23000.00,5),(26,NULL,NULL,'Интоортой','/images/ds3.jpg','2024-12-25 15:34:32','Зефирьтэй бялуу',28000.00,5),(27,NULL,NULL,'Синнамонтой','/images/ds4.jpg','2024-12-25 15:37:28','Жүржтэй пуддинг',28000.00,5),(28,NULL,NULL,'Сүүн зайрмаг, тирамису','/images/ds5.jpg','2024-12-25 15:38:52','Тирамису зайрмаг',32000.00,5),(29,NULL,NULL,'Иристэй','/images/dk2.jpg','2024-12-25 15:41:34','Irish Coffee',15000.00,6),(30,NULL,NULL,'Макс хэмжээтэй','/images/dk4.jpg','2024-12-25 15:43:12','Iced Americano',9900.00,6),(31,NULL,NULL,'Ханборгоцой, мөс','/images/dk1.jpg','2024-12-25 15:45:44','Pineapple Juice',9900.00,6),(32,NULL,NULL,'Хүйтэн мөстэй','/images/Mojito.jpg','2024-12-25 15:45:44','Mojito',15000.00,6),(33,NULL,NULL,'Жүрстэй коктайл','/images/dk3.jpg','2024-12-25 15:47:03','Orange Cocktail',20000.00,6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-26  0:06:21
