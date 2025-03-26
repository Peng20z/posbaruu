-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: admin_pos_1
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `coas`
--

DROP TABLE IF EXISTS `coas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `account_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `normal_balance` enum('debit','credit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'credit',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coas_parent_id_foreign` (`parent_id`),
  CONSTRAINT `coas_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `coas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coas`
--

LOCK TABLES `coas` WRITE;
/*!40000 ALTER TABLE `coas` DISABLE KEYS */;
INSERT INTO `coas` VALUES (1,NULL,'1xxx','HARTA / KAS','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(2,NULL,'2xxx','KEWAJIBAN / HUTANG','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(3,NULL,'3xxx','MODAL / AKTIVA','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(4,NULL,'4xxx','PENDAPATAN / PENERIMAAN','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(5,NULL,'5xxx','BIAYA / BEBAN','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(6,1,'1101.1001','Cash on Hand - IDR','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(7,1,'1101.1002','Cash on Hand - USD','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(8,1,'1101.1003','Cash on Hand - SGD','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(9,1,'1101.1004','Cash on Hand - AUD','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(10,1,'1101.1005','Cash on Hand - GBP','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(11,1,'1101.1006','Cash on Hand - NZD','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(12,1,'1101.1007','Cash on Hand - EUR','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(13,1,'1101.1008','Cash on Hand - CAD','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(14,1,'1101.1009','Cash on Hand - MYR','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(15,1,'1101.1010','Cash on Hand - CHF','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(16,1,'1101.2011','Petty Cash HO - IDR','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(17,1,'1102.1010','Bank BCA','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(18,1,'1102.1021','BCA 372.146.1678 - IDR','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(19,1,'1102.1032','BCA 372.303.3353.H - IDR','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(20,1,'1102.6011','Bank DBS 200016887 - IDR','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(21,2,'2001','Hutang Usaha','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(22,3,'3001','Modal Usaha','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(23,4,'4102.0000','Courses Tuition','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(24,4,'4302.0000','Supporting Fee','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(25,4,'1103.6001','Cash Advance - IDR','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(26,4,'1103.6002','Cash Advance - USD','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(27,4,'1103.6003','Cash Advance - SGD','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(28,4,'1103.6004','Cash Advance - AUD','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(29,4,'1103.6005','Cash Advance - GBP','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(30,4,'1103.6007','Cash Advance - CAD','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(31,4,'1103.7001','A/R Due To Employees - IDR','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(32,4,'1306.9000','Fixed Assets Transaction','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(33,4,'2103.1001','Customer Deposit','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(34,4,'2103.2001','Student Deposit','credit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(35,5,'6104.0000','Recruitment Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(36,5,'6201.1000','Advertising Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(37,5,'6201.5000','Content Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(38,5,'6202.0000','Communication Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(39,5,'6202.3000','Staff Allowance Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(40,5,'6212.0020','Translation Fee','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(41,5,'6304.0000','Services Charges','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(42,5,'6303.0000','Water Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(43,5,'6301.0000','Electricity Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(44,5,'6305.0000','General Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(45,5,'6306.0000','Office Supplies Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(46,5,'6308.0000','Administration Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(47,5,'6310.0000','Courier Charges','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(48,5,'6311.0000','Transportation Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(49,5,'6312.0000','Business Trip Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(50,5,'6315.2000','Maintenance & Service Exp. for Building','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(51,5,'6315.3000','Maintenance & Service Exp. for Fixtures & Furnitures','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(52,5,'6315.4000','Maintenance & Service Exp. for Equipments','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(53,5,'6315.0000','Maintenance & Service Exp. for Vehicles','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(54,5,'6320.0000','Entertainment Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL),(55,5,'6324.0000','IT Supplies Expenses','debit','2024-06-26 08:50:26','2024-06-26 08:50:26',NULL,NULL);
/*!40000 ALTER TABLE `coas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group_products`
--

DROP TABLE IF EXISTS `customer_group_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_group_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` bigint unsigned NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uom_id` bigint unsigned NOT NULL,
  `sell_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discounts` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_group_products_customer_group_id_foreign` (`customer_group_id`),
  KEY `customer_group_products_uom_id_foreign` (`uom_id`),
  CONSTRAINT `customer_group_products_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`),
  CONSTRAINT `customer_group_products_uom_id_foreign` FOREIGN KEY (`uom_id`) REFERENCES `uoms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group_products`
--

LOCK TABLES `customer_group_products` WRITE;
/*!40000 ALTER TABLE `customer_group_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_group_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_groups`
--

LOCK TABLES `customer_groups` WRITE;
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `journal_id` bigint unsigned NOT NULL,
  `coa_id` bigint unsigned NOT NULL,
  `debit` double(15,3) NOT NULL DEFAULT '0.000',
  `credit` double(15,3) NOT NULL DEFAULT '0.000',
  `memo` text COLLATE utf8mb4_unicode_ci,
  `subsidiary_ledger` text COLLATE utf8mb4_unicode_ci,
  `dept` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id_foreign` (`journal_id`),
  KEY `journal_details_coa_id_foreign` (`coa_id`),
  CONSTRAINT `journal_details_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`),
  CONSTRAINT `journal_details_journal_id_foreign` FOREIGN KEY (`journal_id`) REFERENCES `journals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_details`
--

LOCK TABLES `journal_details` WRITE;
/*!40000 ALTER TABLE `journal_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `journal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_10_25_141718_create_customer_groups_table',1),(2,'2014_10_12_000000_create_users_table',1),(3,'2014_10_12_100000_create_password_reset_tokens_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2019_12_14_000001_create_personal_access_tokens_table',1),(7,'2023_09_14_101332_create_permission_tables',1),(8,'2023_09_15_081417_create_product_categories_table',1),(9,'2023_09_15_081517_create_product_brands_table',1),(10,'2023_09_15_081518_create_uoms_table',1),(11,'2023_09_15_081522_create_products_table',1),(12,'2023_09_18_070717_create_suppliers_table',1),(13,'2023_09_20_042403_create_purchase_orders_table',1),(14,'2023_09_20_043633_create_purchase_order_details_table',1),(15,'2023_09_20_075646_create_product_uoms_table',1),(16,'2023_09_20_110350_create_receive_orders_table',1),(17,'2023_09_20_110355_create_receive_order_details_table',1),(18,'2023_09_21_075159_create_stocks_table',1),(19,'2023_09_21_075204_create_stock_histories_table',1),(20,'2023_09_25_062613_create_sales_orders_table',1),(21,'2023_09_25_062654_create_sales_order_details_table',1),(22,'2023_09_25_062700_create_payment_types_table',1),(23,'2023_09_25_062701_create_payments_table',1),(24,'2023_09_26_035538_create_settings_table',1),(25,'2023_10_23_101215_create_sales_returns_table',1),(26,'2023_10_23_101231_create_sales_return_details_table',1),(27,'2023_10_26_111428_create_customer_group_products_table',1),(28,'2023_10_30_113943_create_purchase_invoices_table',1),(29,'2024_06_25_104919_create_coas_table',1),(30,'2024_06_25_175213_create_journals_table',1),(31,'2024_06_25_175240_create_journal_details_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_types`
--

DROP TABLE IF EXISTS `payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_types`
--

LOCK TABLES `payment_types` WRITE;
/*!40000 ALTER TABLE `payment_types` DISABLE KEYS */;
INSERT INTO `payment_types` VALUES (1,'Cash','2024-06-26 08:50:26','2024-06-26 08:50:26'),(2,'Transfer','2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `sales_order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_user_id_foreign` (`user_id`),
  KEY `payments_payment_type_id_foreign` (`payment_type_id`),
  CONSTRAINT `payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` smallint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'dashboard_access','web',NULL,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(2,'user_management_access','web',NULL,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(3,'roles_access','web',2,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(4,'roles_create','web',3,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(5,'roles_edit','web',3,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(6,'roles_delete','web',3,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(7,'users_access','web',2,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(8,'users_create','web',7,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(9,'users_edit','web',7,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(10,'users_delete','web',7,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(11,'customer_management_access','web',NULL,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(12,'customer_access','web',11,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(13,'customer_create','web',12,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(14,'customer_edit','web',12,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(15,'customer_delete','web',12,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(16,'customer_groups_access','web',11,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(17,'customer_groups_create','web',16,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(18,'customer_groups_edit','web',16,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(19,'customer_groups_delete','web',16,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(20,'suppliers_access','web',NULL,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(21,'suppliers_view','web',20,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(22,'suppliers_create','web',20,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(23,'suppliers_edit','web',20,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(24,'suppliers_delete','web',20,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(25,'product_management_access','web',NULL,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(26,'products_access','web',25,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(27,'products_create','web',26,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(28,'products_edit','web',26,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(29,'products_delete','web',26,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(30,'product_brands_access','web',25,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(31,'product_brands_create','web',30,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(32,'product_brands_edit','web',30,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(33,'product_brands_delete','web',30,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(34,'product_categories_access','web',25,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(35,'product_categories_create','web',34,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(36,'product_categories_edit','web',34,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(37,'product_categories_delete','web',34,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(38,'uoms_access','web',25,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(39,'uoms_create','web',38,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(40,'uoms_edit','web',38,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(41,'uoms_delete','web',38,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(42,'product_price_list_access','web',25,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(43,'purchase_orders_access','web',NULL,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(44,'purchase_orders_create','web',43,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(45,'purchase_orders_edit','web',43,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(46,'purchase_orders_delete','web',43,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(47,'receive_orders_access','web',NULL,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(48,'receive_orders_create','web',47,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(49,'receive_orders_edit','web',47,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(50,'receive_orders_delete','web',47,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(51,'sales_orders_access','web',NULL,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(52,'sales_orders_create','web',51,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(53,'sales_orders_edit','web',51,'2024-06-26 08:50:25','2024-06-26 08:50:25'),(54,'sales_orders_delete','web',51,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(55,'sales_returns_access','web',NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(56,'sales_returns_create','web',55,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(57,'sales_returns_edit','web',55,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(58,'sales_returns_delete','web',55,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(59,'stocks_access','web',NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(60,'stocks_create','web',59,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(61,'stocks_edit','web',59,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(62,'stocks_delete','web',59,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(63,'reports_access','web',NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(64,'payment_management_access','web',NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(65,'purchase_invoices_access','web',64,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(66,'purchase_invoices_create','web',65,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(67,'purchase_invoices_edit','web',65,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(68,'purchase_invoices_delete','web',65,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(69,'sales_invoices_access','web',64,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(70,'sales_invoices_create','web',69,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(71,'sales_invoices_edit','web',69,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(72,'sales_invoices_delete','web',69,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(73,'coa_access','web',NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(74,'coa_create','web',73,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(75,'coa_edit','web',73,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(76,'coa_delete','web',73,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(77,'journal_access','web',NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(78,'journal_create','web',77,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(79,'journal_edit','web',77,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(80,'journal_delete','web',77,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(81,'settings_access','web',NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `product_brands`
--

DROP TABLE IF EXISTS `product_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_brands`
--

LOCK TABLES `product_brands` WRITE;
/*!40000 ALTER TABLE `product_brands` DISABLE KEYS */;
INSERT INTO `product_brands` VALUES (1,'Product Brand 1','2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `product_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Product Category 1','2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_uoms`
--

DROP TABLE IF EXISTS `product_uoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_uoms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uom_id` bigint unsigned NOT NULL,
  `is_base` tinyint(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `buy_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sell_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` int NOT NULL DEFAULT '1',
  `discounts` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_uoms_uom_id_foreign` (`uom_id`),
  CONSTRAINT `product_uoms_uom_id_foreign` FOREIGN KEY (`uom_id`) REFERENCES `uoms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_uoms`
--

LOCK TABLES `product_uoms` WRITE;
/*!40000 ALTER TABLE `product_uoms` DISABLE KEYS */;
INSERT INTO `product_uoms` VALUES (1,'PRO1',1,1,1,1000.00,2000.00,1,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(2,'PRO2',1,1,1,2000.00,4000.00,1,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(3,'PRO3',1,1,1,3000.00,6000.00,1,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(4,'PRO4',1,1,1,4000.00,8000.00,1,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26'),(5,'PRO5',1,1,1,5000.00,10000.00,1,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `product_uoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  `product_brand_id` bigint unsigned NOT NULL,
  `default_uom_id` bigint unsigned NOT NULL,
  `base_uom_id` bigint unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `buy_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sell_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `min_stock_reminder` int DEFAULT NULL,
  `capital_price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_category_id_foreign` (`product_category_id`),
  KEY `products_product_brand_id_foreign` (`product_brand_id`),
  KEY `products_default_uom_id_foreign` (`default_uom_id`),
  KEY `products_base_uom_id_foreign` (`base_uom_id`),
  CONSTRAINT `products_base_uom_id_foreign` FOREIGN KEY (`base_uom_id`) REFERENCES `uoms` (`id`),
  CONSTRAINT `products_default_uom_id_foreign` FOREIGN KEY (`default_uom_id`) REFERENCES `uoms` (`id`),
  CONSTRAINT `products_product_brand_id_foreign` FOREIGN KEY (`product_brand_id`) REFERENCES `product_brands` (`id`),
  CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('PRO1',1,1,1,1,'Product 1',1,1000.00,2000.00,'Product description 1',NULL,0,'2024-06-26 08:50:26','2024-06-26 08:50:26'),('PRO2',1,1,1,1,'Product 2',1,2000.00,4000.00,'Product description 2',NULL,0,'2024-06-26 08:50:26','2024-06-26 08:50:26'),('PRO3',1,1,1,1,'Product 3',1,3000.00,6000.00,'Product description 3',NULL,0,'2024-06-26 08:50:26','2024-06-26 08:50:26'),('PRO4',1,1,1,1,'Product 4',1,4000.00,8000.00,'Product description 4',NULL,0,'2024-06-26 08:50:26','2024-06-26 08:50:26'),('PRO5',1,1,1,1,'Product 5',1,5000.00,10000.00,'Product description 5',NULL,0,'2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_invoices`
--

DROP TABLE IF EXISTS `purchase_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `purchase_order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_invoices_user_id_foreign` (`user_id`),
  KEY `purchase_invoices_payment_type_id_foreign` (`payment_type_id`),
  CONSTRAINT `purchase_invoices_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  CONSTRAINT `purchase_invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_invoices`
--

LOCK TABLES `purchase_invoices` WRITE;
/*!40000 ALTER TABLE `purchase_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_details`
--

DROP TABLE IF EXISTS `purchase_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_order_id` bigint unsigned NOT NULL,
  `uom_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_order_details_uom_id_foreign` (`uom_id`),
  CONSTRAINT `purchase_order_details_uom_id_foreign` FOREIGN KEY (`uom_id`) REFERENCES `uoms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_details`
--

LOCK TABLES `purchase_order_details` WRITE;
/*!40000 ALTER TABLE `purchase_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_discount` double NOT NULL DEFAULT '0',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchase_orders_code_unique` (`code`),
  UNIQUE KEY `purchase_orders_po_number_unique` (`po_number`),
  KEY `purchase_orders_user_id_foreign` (`user_id`),
  CONSTRAINT `purchase_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive_order_details`
--

DROP TABLE IF EXISTS `receive_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receive_order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receive_order_details_receive_order_id_foreign` (`receive_order_id`),
  CONSTRAINT `receive_order_details_receive_order_id_foreign` FOREIGN KEY (`receive_order_id`) REFERENCES `receive_orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receive_order_details`
--

LOCK TABLES `receive_order_details` WRITE;
/*!40000 ALTER TABLE `receive_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `receive_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive_orders`
--

DROP TABLE IF EXISTS `receive_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receive_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `purchase_order_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `received_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `receive_orders_code_unique` (`code`),
  KEY `receive_orders_user_id_foreign` (`user_id`),
  KEY `receive_orders_purchase_order_id_foreign` (`purchase_order_id`),
  CONSTRAINT `receive_orders_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`),
  CONSTRAINT `receive_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receive_orders`
--

LOCK TABLES `receive_orders` WRITE;
/*!40000 ALTER TABLE `receive_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `receive_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','web','2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_details`
--

DROP TABLE IF EXISTS `sales_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_order_id` bigint unsigned NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uom_id` bigint unsigned NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` int NOT NULL DEFAULT '0',
  `total_discount` double NOT NULL DEFAULT '0',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_order_details_uom_id_foreign` (`uom_id`),
  CONSTRAINT `sales_order_details_uom_id_foreign` FOREIGN KEY (`uom_id`) REFERENCES `uoms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order_details`
--

LOCK TABLES `sales_order_details` WRITE;
/*!40000 ALTER TABLE `sales_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_orders`
--

DROP TABLE IF EXISTS `sales_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_datetime` timestamp NOT NULL,
  `additional_discount` double NOT NULL DEFAULT '0',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_orders_code_unique` (`code`),
  KEY `sales_orders_user_id_foreign` (`user_id`),
  KEY `sales_orders_customer_id_foreign` (`customer_id`),
  CONSTRAINT `sales_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `sales_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_orders`
--

LOCK TABLES `sales_orders` WRITE;
/*!40000 ALTER TABLE `sales_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_return_details`
--

DROP TABLE IF EXISTS `sales_return_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_return_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint unsigned NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_return_details_sales_return_id_foreign` (`sales_return_id`),
  CONSTRAINT `sales_return_details_sales_return_id_foreign` FOREIGN KEY (`sales_return_id`) REFERENCES `sales_returns` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_return_details`
--

LOCK TABLES `sales_return_details` WRITE;
/*!40000 ALTER TABLE `sales_return_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_return_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_returns`
--

DROP TABLE IF EXISTS `sales_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `sales_order_id` bigint unsigned NOT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `returned_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_returns_user_id_foreign` (`user_id`),
  KEY `sales_returns_sales_order_id_foreign` (`sales_order_id`),
  CONSTRAINT `sales_returns_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`),
  CONSTRAINT `sales_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_returns`
--

LOCK TABLES `sales_returns` WRITE;
/*!40000 ALTER TABLE `sales_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'po_number','PO/26/06/24/AA/001','2024-06-26 08:50:26','2024-06-26 08:50:26'),(2,'ro_number','RO/26/06/24/AA/001','2024-06-26 08:50:26','2024-06-26 08:50:26'),(3,'so_number','SO/26/06/24/AA/001','2024-06-26 08:50:26','2024-06-26 08:50:26'),(4,'tax_value','11','2024-06-26 08:50:26','2024-06-26 08:50:26'),(5,'is_skip_ro','0','2024-06-26 08:50:26','2024-06-26 08:50:26'),(6,'stock_less_than_0','0','2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_histories`
--

DROP TABLE IF EXISTS `stock_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `stock_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `is_increment` tinyint(1) NOT NULL DEFAULT '1',
  `qty` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_histories_user_id_foreign` (`user_id`),
  KEY `stock_histories_stock_id_foreign` (`stock_id`),
  KEY `stock_histories_model_type_model_id_index` (`model_type`,`model_id`),
  CONSTRAINT `stock_histories_stock_id_foreign` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`),
  CONSTRAINT `stock_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_histories`
--

LOCK TABLES `stock_histories` WRITE;
/*!40000 ALTER TABLE `stock_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,'PRO1',100,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),(2,'PRO2',100,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),(3,'PRO3',100,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),(4,'PRO4',100,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),(5,'PRO5',100,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('DIST0006','PT. Marga Nusantara Jaya',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0014','PT. Mekada Abadi',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0031','PT. Bhakti Sehat Husada',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0035','PT. Metro Artha Prakarsa',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0041','PT. Bintang Medika Bersama Medan',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0047','PT. Universal',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0065','PT. Hoslab Medika Farma',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0067','PT. Surya Tara Jaya',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0107','PT. Sidharta Husada',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL),('DIST0108','PT. Mitra Binamulti Sejahtera',NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26',NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uoms`
--

DROP TABLE IF EXISTS `uoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uoms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uoms`
--

LOCK TABLES `uoms` WRITE;
/*!40000 ALTER TABLE `uoms` DISABLE KEYS */;
INSERT INTO `uoms` VALUES (1,'pcs','2024-06-26 08:50:26','2024-06-26 08:50:26');
/*!40000 ALTER TABLE `uoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` bigint unsigned DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_code_unique` (`code`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_customer_group_id_foreign` (`customer_group_id`),
  CONSTRAINT `users_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'ADM000','Admin','admin@gmail.com',NULL,'$2y$10$IFTDC7.LuKj6eg9iNks41eoUlSqWhD0qcr6qNr/RYDedwkfql3KNy',NULL,NULL,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-26 08:50:26','2024-06-26 08:50:26');
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

-- Dump completed on 2024-06-26 15:58:00
