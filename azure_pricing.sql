-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: azure_pricing
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',2),(3,'2019_08_19_000000_create_failed_jobs_table',2),(4,'2019_12_14_000001_create_personal_access_tokens_table',2),(5,'2024_06_07_154639_pricing',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing_tables`
--

DROP TABLE IF EXISTS `pricing_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `OS` text COLLATE utf8mb4_unicode_ci,
  `Cores` text COLLATE utf8mb4_unicode_ci,
  `RAM` text COLLATE utf8mb4_unicode_ci,
  `Storage` text COLLATE utf8mb4_unicode_ci,
  `Cost` text COLLATE utf8mb4_unicode_ci,
  `Selling_price` text COLLATE utf8mb4_unicode_ci,
  `Azure_Price` text COLLATE utf8mb4_unicode_ci,
  `Azure_instance` text COLLATE utf8mb4_unicode_ci,
  `diff` text COLLATE utf8mb4_unicode_ci,
  `total_MRR` text COLLATE utf8mb4_unicode_ci,
  `additional_disk` text COLLATE utf8mb4_unicode_ci,
  `additional_size` text COLLATE utf8mb4_unicode_ci,
  `additional_cost` text COLLATE utf8mb4_unicode_ci,
  `additional_price` text COLLATE utf8mb4_unicode_ci,
  `additional_azurecost` text COLLATE utf8mb4_unicode_ci,
  `additional_diff` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing_tables`
--

LOCK TABLES `pricing_tables` WRITE;
/*!40000 ALTER TABLE `pricing_tables` DISABLE KEYS */;
INSERT INTO `pricing_tables` VALUES (1,'Linux','1','2','32','29.68','50.52','38.69','A1','31','19399.54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Linux','2','4','32','54.95','88.42','77.96','A2','13','16977.28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Linux','2','8','32','65.06','103.58','96.21','D2s','8','19888.29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Linux','2','16','32','85.27','133.91','100.59','A2m','33','25710.30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Linux','4','8','32','105.49','164.23','158.99','A4','3','15766.15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Linux','4','16','32','125.70','194.55','188.92','D4s','3','18677.16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Linux','4','32','32','166.13','255.20','207.17','A4m','23','24499.17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Linux','8','16','32','206.56','315.85','329.08','A8','-4','15160.59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Linux','8','32','32','246.99','376.49','374.34','D8s','1','18071.59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Linux','8','64','32','327.86','497.78','431.28','A8m','15','23893.60',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Windows','1','2','128','48.08','111.73','72.27','A1','55','42903.32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Windows','2','4','128','73.35','149.63','145.12','A2','3','28729.17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Windows','2','8','128','83.46','164.79','163.37','D2s','1','31640.18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Windows','2','16','128','103.67','195.12','167.75','A2m','16','37462.19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Windows','4','8','128','129.06','225.44','293.31','A4','-23','21642.10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Windows','4','16','128','149.27','255.76','323.24','D4s','-21','24553.10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Windows','4','32','128','189.70','316.41','341.49','A4m','-7','30375.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Windows','8','16','128','240.48','377.05','597.72','A8','-37','18098.56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Windows','8','32','128','280.91','437.70','642.98','D8s','-32','21009.57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Windows','8','64','128','361.77','558.99','699.92','A8m','-20','26831.58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Linux','1','2','32','29.68','50.52','38.69','A1','31','19399.54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Linux','2','4','32','54.95','88.42','77.96','A2','13','16977.28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Linux','2','8','32','65.06','103.58','96.21','D2s','8','19888.29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Linux','2','16','32','85.27','133.91','100.59','A2m','33','25710.30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Linux','4','8','32','105.49','164.23','158.99','A4','3','15766.15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Linux','4','16','32','125.70','194.55','188.92','D4s','3','18677.16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Linux','4','32','32','166.13','255.20','207.17','A4m','23','24499.17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Linux','8','16','32','206.56','315.85','329.08','A8','-4','15160.59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Linux','8','32','32','246.99','376.49','374.34','D8s','1','18071.59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Linux','8','64','32','327.86','497.78','431.28','A8m','15','23893.60',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Windows','1','2','128','48.08','111.73','72.27','A1','55','42903.32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Windows','2','4','128','73.35','149.63','145.12','A2','3','28729.17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Windows','2','8','128','83.46','164.79','163.37','D2s','1','31640.18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Windows','2','16','128','103.67','195.12','167.75','A2m','16','37462.19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'Windows','4','8','128','129.06','225.44','293.31','A4','-23','21642.10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'Windows','4','16','128','149.27','255.76','323.24','D4s','-21','24553.10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'Windows','4','32','128','189.70','316.41','341.49','A4m','-7','30375.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'Windows','8','16','128','240.48','377.05','597.72','A8','-37','18098.56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'Windows','8','32','128','280.91','437.70','642.98','D8s','-32','21009.57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'Windows','8','64','128','361.77','558.99','699.92','A8m','-20','26831.58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pricing_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13  2:44:13
