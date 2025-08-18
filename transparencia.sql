-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: transparencia
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,1,1,0,0,0,'{}',1),(23,4,'key','text','Clave',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:30\"}}',2),(24,4,'table_name','text','Tabla',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:30\"}}',3),(25,4,'created_at','timestamp','Creado',0,1,1,0,0,0,'{}',4),(26,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(27,5,'id','text','Id',1,1,1,0,0,0,'{}',1),(28,5,'title','text','Título',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',2),(29,5,'image','image','Banner',0,1,1,1,1,1,'{}',5),(30,5,'description','text_area','Descripción',0,0,1,1,1,1,'{}',6),(31,5,'created_at','timestamp','Creación',0,1,1,0,0,0,'{}',7),(32,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(33,5,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',9),(34,6,'id','text','Id',1,1,1,0,0,0,'{}',1),(35,6,'publications_type_id','text','Publications Type Id',0,1,1,1,1,1,'{}',2),(36,6,'user_id','hidden','User Id',0,0,0,1,1,1,'{}',3),(37,6,'title','text','Título',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"}}',5),(38,6,'description','text_area','Descripción',0,0,1,1,1,1,'{}',6),(39,6,'publish_date','date','Fecha de publicación',0,1,1,1,1,1,'{\"display\":{\"width\":6},\"validation\":{\"rule\":\"required\"}}',10),(40,6,'enact_date','date','Fecha de registro',0,0,0,0,0,0,'{\"display\":{\"width\":6}}',9),(41,6,'file','file','Archivo',0,0,1,1,1,1,'{\"display\":{\"width\":6}}',8),(42,6,'highlight','checkbox','Destacado',0,1,1,1,1,1,'{\"on\":\"Si\",\"off\":\"No\",\"checked\":false,\"display\":{\"width\":6}}',11),(43,6,'view','text','Visualizaciones',0,0,1,0,0,0,'{\"display\":{\"width\":6}}',12),(44,6,'created_at','timestamp','Creación',0,1,1,0,0,0,'{}',13),(45,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(46,6,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',15),(47,6,'publication_belongsto_publications_type_relationship','relationship','Tipo',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\PublicationsType\",\"table\":\"publications_types\",\"type\":\"belongsTo\",\"column\":\"publications_type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(48,5,'icon','text','Icono',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',4),(49,5,'slug','hidden','Slug',0,0,0,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',3),(50,7,'id','text','Id',1,1,1,0,0,0,'{}',1),(51,7,'full_name','text','Nombre completo',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"}}',2),(52,7,'job','text','Cargo',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',3),(53,7,'image','image','Fotografía',0,1,1,1,1,1,'{\"display\":{\"width\":6}}',4),(54,7,'description','text_area','Descripción',0,1,1,1,1,1,'{}',5),(55,7,'created_at','timestamp','Creación',0,1,1,0,0,0,'{}',6),(56,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(57,7,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',8),(58,8,'id','text','Id',1,1,1,0,0,0,'{}',1),(59,8,'title','text_area','Título',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',2),(60,8,'description','rich_text_box','Descripción',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',3),(61,8,'created_at','timestamp','Creación',0,1,1,0,0,0,'{}',4),(62,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(63,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',6),(64,6,'tags','text','Tags',0,0,1,1,1,1,'{\"display\":{\"width\":6}}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-06-02 17:55:30','2021-06-02 17:55:30'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-06-02 17:55:30','2021-06-02 17:55:30'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-06-02 17:55:31','2021-06-02 17:55:31'),(4,'permissions','permissions','Permiso','Permisos','voyager-list','App\\Models\\Permission',NULL,NULL,NULL,1,0,'{\"order_column\":\"table_name\",\"order_display_column\":\"table_name\",\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-05 10:10:30','2021-10-05 10:10:30'),(5,'publications_types','publications-types','Tipo de publicación','Tipos de publicación','voyager-list','App\\Models\\PublicationsType',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-06 12:29:38','2021-10-06 14:36:48'),(6,'publications','publications','Publicación','Publicaciones','voyager-certificate','App\\Models\\Publication',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-06 12:40:05','2022-01-26 12:35:51'),(7,'officials','officials','Funcionario','Funcionarios','voyager-people','App\\Models\\Official',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-10-11 11:31:09','2021-10-11 11:31:09'),(8,'frequent_questions','frequent-questions','Pregunta frecuente','Preguntas frecuentes','voyager-question','App\\Models\\FrequentQuestion',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-11 11:38:31','2021-10-11 11:46:13');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `frequent_questions`
--

DROP TABLE IF EXISTS `frequent_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frequent_questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequent_questions`
--

LOCK TABLES `frequent_questions` WRITE;
/*!40000 ALTER TABLE `frequent_questions` DISABLE KEYS */;
INSERT INTO `frequent_questions` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',NULL,'<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>','2021-10-11 15:14:02','2021-10-11 15:14:02',NULL),(2,'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',NULL,'<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</span></p>','2021-10-11 15:14:28','2021-10-11 15:14:28',NULL);
/*!40000 ALTER TABLE `frequent_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Inicio','','_self','voyager-home','#000000',NULL,1,'2021-06-02 17:55:32','2021-06-02 14:51:15','voyager.profile','null'),(2,1,'Media','','_self','voyager-images',NULL,5,3,'2021-06-02 17:55:32','2021-06-02 14:07:22','voyager.media.index',NULL),(3,1,'Usuarios','','_self','voyager-person','#000000',11,1,'2021-06-02 17:55:32','2021-10-05 10:06:56','voyager.users.index','null'),(4,1,'Roles','','_self','voyager-lock',NULL,11,2,'2021-06-02 17:55:32','2021-06-02 14:08:05','voyager.roles.index',NULL),(5,1,'Herramientas','','_self','voyager-tools','#000000',NULL,7,'2021-06-02 17:55:32','2021-10-11 11:40:06',NULL,''),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,4,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,5,'2021-06-02 17:55:33','2021-06-02 14:07:23','voyager.bread.index',NULL),(10,1,'Configuración','','_self','voyager-settings','#000000',NULL,6,'2021-06-02 17:55:33','2021-10-11 11:40:06','voyager.settings.index','null'),(11,1,'Seguridad','','_self','voyager-lock','#000000',NULL,4,'2021-06-02 14:07:53','2021-10-06 12:41:53',NULL,''),(12,1,'Limpiar cache','','_self','voyager-refresh','#000000',5,6,'2021-06-25 18:03:59','2021-10-05 10:06:40','clear.cache',NULL),(13,1,'Permisos','','_self','voyager-list',NULL,11,3,'2021-10-05 10:10:30','2021-10-05 10:10:43','voyager.permissions.index',NULL),(14,1,'Tipos de publicación','','_self','voyager-list',NULL,NULL,2,'2021-10-06 12:29:39','2021-10-06 12:41:50','voyager.publications-types.index',NULL),(15,1,'Publicaciones','','_self','voyager-certificate',NULL,NULL,3,'2021-10-06 12:40:05','2021-10-06 12:41:53','voyager.publications.index',NULL),(16,1,'Funcionarios','','_self','voyager-people',NULL,18,1,'2021-10-11 11:31:09','2021-10-11 11:39:54','voyager.officials.index',NULL),(17,1,'Preguntas frecuentes','','_self','voyager-question',NULL,18,2,'2021-10-11 11:38:31','2021-10-11 11:39:59','voyager.frequent-questions.index',NULL),(18,1,'Página web','','_self','voyager-browser','#000000',NULL,5,'2021-10-11 11:39:20','2021-10-11 11:40:06',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2022-01-26 13:59:15','2022-01-26 13:59:15');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2021_10_05_140728_create_publications_types_table',1),(25,'2021_10_05_142255_create_publications_table',1),(26,'2021_10_11_102254_create_officials_table',1),(27,'2021_10_11_103952_create_frequent_questions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officials`
--

DROP TABLE IF EXISTS `officials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `job` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `officials_job_unique` (`job`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officials`
--

LOCK TABLES `officials` WRITE;
/*!40000 ALTER TABLE `officials` DISABLE KEYS */;
INSERT INTO `officials` VALUES (1,'John Doe','Developer',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','2021-10-11 15:09:48','2021-10-11 15:13:03',NULL),(2,'Erick Smith','CEO',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','2021-10-11 15:13:18','2021-10-11 15:13:18',NULL);
/*!40000 ALTER TABLE `officials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2022-01-26 13:59:15','2022-01-26 13:59:15'),(2,'browse_bread',NULL,'2022-01-26 13:59:15','2022-01-26 13:59:15'),(3,'browse_database',NULL,'2022-01-26 13:59:15','2022-01-26 13:59:15'),(4,'browse_media',NULL,'2022-01-26 13:59:15','2022-01-26 13:59:15'),(5,'browse_compass',NULL,'2022-01-26 13:59:15','2022-01-26 13:59:15'),(6,'browse_menus','menus','2022-01-26 13:59:15','2022-01-26 13:59:15'),(7,'read_menus','menus','2022-01-26 13:59:15','2022-01-26 13:59:15'),(8,'edit_menus','menus','2022-01-26 13:59:15','2022-01-26 13:59:15'),(9,'add_menus','menus','2022-01-26 13:59:15','2022-01-26 13:59:15'),(10,'delete_menus','menus','2022-01-26 13:59:15','2022-01-26 13:59:15'),(11,'browse_roles','roles','2022-01-26 13:59:15','2022-01-26 13:59:15'),(12,'read_roles','roles','2022-01-26 13:59:15','2022-01-26 13:59:15'),(13,'edit_roles','roles','2022-01-26 13:59:15','2022-01-26 13:59:15'),(14,'add_roles','roles','2022-01-26 13:59:15','2022-01-26 13:59:15'),(15,'delete_roles','roles','2022-01-26 13:59:15','2022-01-26 13:59:15'),(16,'browse_users','users','2022-01-26 13:59:15','2022-01-26 13:59:15'),(17,'read_users','users','2022-01-26 13:59:15','2022-01-26 13:59:15'),(18,'edit_users','users','2022-01-26 13:59:15','2022-01-26 13:59:15'),(19,'add_users','users','2022-01-26 13:59:15','2022-01-26 13:59:15'),(20,'delete_users','users','2022-01-26 13:59:15','2022-01-26 13:59:15'),(21,'browse_settings','settings','2022-01-26 13:59:15','2022-01-26 13:59:15'),(22,'read_settings','settings','2022-01-26 13:59:15','2022-01-26 13:59:15'),(23,'edit_settings','settings','2022-01-26 13:59:15','2022-01-26 13:59:15'),(24,'add_settings','settings','2022-01-26 13:59:15','2022-01-26 13:59:15'),(25,'delete_settings','settings','2022-01-26 13:59:15','2022-01-26 13:59:15'),(26,'browse_publications_types','publications_types','2022-01-26 13:59:15','2022-01-26 13:59:15'),(27,'read_publications_types','publications_types','2022-01-26 13:59:15','2022-01-26 13:59:15'),(28,'edit_publications_types','publications_types','2022-01-26 13:59:15','2022-01-26 13:59:15'),(29,'add_publications_types','publications_types','2022-01-26 13:59:15','2022-01-26 13:59:15'),(30,'delete_publications_types','publications_types','2022-01-26 13:59:15','2022-01-26 13:59:15'),(31,'browse_publications','publications','2022-01-26 13:59:15','2022-01-26 13:59:15'),(32,'read_publications','publications','2022-01-26 13:59:15','2022-01-26 13:59:15'),(33,'edit_publications','publications','2022-01-26 13:59:15','2022-01-26 13:59:15'),(34,'add_publications','publications','2022-01-26 13:59:15','2022-01-26 13:59:15'),(35,'delete_publications','publications','2022-01-26 13:59:15','2022-01-26 13:59:15'),(36,'browse_officials','officials','2022-01-26 13:59:15','2022-01-26 13:59:15'),(37,'read_officials','officials','2022-01-26 13:59:15','2022-01-26 13:59:15'),(38,'edit_officials','officials','2022-01-26 13:59:15','2022-01-26 13:59:15'),(39,'add_officials','officials','2022-01-26 13:59:15','2022-01-26 13:59:15'),(40,'delete_officials','officials','2022-01-26 13:59:15','2022-01-26 13:59:15'),(41,'browse_frequent_questions','frequent_questions','2022-01-26 13:59:15','2022-01-26 13:59:15'),(42,'read_frequent_questions','frequent_questions','2022-01-26 13:59:15','2022-01-26 13:59:15'),(43,'edit_frequent_questions','frequent_questions','2022-01-26 13:59:15','2022-01-26 13:59:15'),(44,'add_frequent_questions','frequent_questions','2022-01-26 13:59:15','2022-01-26 13:59:15'),(45,'delete_frequent_questions','frequent_questions','2022-01-26 13:59:15','2022-01-26 13:59:15');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `publications_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `enact_date` date DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `highlight` int(11) DEFAULT 1,
  `view` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publications_publications_type_id_foreign` (`publications_type_id`),
  KEY `publications_user_id_foreign` (`user_id`),
  CONSTRAINT `publications_publications_type_id_foreign` FOREIGN KEY (`publications_type_id`) REFERENCES `publications_types` (`id`),
  CONSTRAINT `publications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (3,NULL,NULL,'INF.D.D.A.I. N°01/2021',NULL,'INFORME DE CONTROL INTERNO DE LA \"AUDITORÍA DE CONFIABILIDAD DE LOS REGISTROS CONTABLES Y ESTADOS FINANCIEROS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL MES DE DICIEMBRE DEL 2020\".','2021-02-26',NULL,'[{\"download_link\":\"publications\\/February2022\\/LFXIAuHwKL5Ycyiweo6Q.pdf\",\"original_name\":\"INF. AUD. CONF. N\\u00b001-2021.pdf\"}]',1,0,'2022-02-14 09:15:31','2022-02-14 12:03:58',NULL),(4,NULL,NULL,'INF.AUD.ESP.D.D.A.I. N°01/2021',NULL,'\"INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORÍA ESPECIAL AL MANEJO Y DISPOSICIÓN DE LOS BIENES DE CONSUMO REALIZADO POR LA ADMINISTRACIÓN CENTRAL DEL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES-BENI, CORRESPONDIENTE A LA GESTION 2016\".','2021-12-28',NULL,'[{\"download_link\":\"publications\\/February2022\\/gUSxotX09v3jKqlYpQ1U.pdf\",\"original_name\":\"INF. AUD. ESP. N\\u00b001-2021.pdf\"}]',1,0,'2022-02-14 09:40:56','2022-02-14 12:05:14',NULL),(5,NULL,NULL,'INF.AUD.ESP.D.D.A.I. N°02/2021',NULL,'\"INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORIA ESPECIAL A LOS RECURSOS DESEMBOLSADOS PARA LA CANCELACIÓN DE APORTES AFP´s Y CAJA CORDES, CORRESPONDIENTE A LA GESTIÓN 2020, HASTA EL 30 DE ABRIL DE 2021\".','2021-12-30',NULL,'[{\"download_link\":\"publications\\/February2022\\/6FAZyy7nCOlgZH21zHIK.pdf\",\"original_name\":\"inf. aud. especial 02-2021.pdf\"}]',1,0,'2022-02-14 10:16:49','2022-02-14 10:16:49',NULL),(6,NULL,NULL,'INF.AUD.ESP.D.D.A.I. N°03/2021',NULL,'\"INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORIA ESPECIAL DE FONDOS EN AVANCES DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, DE IMPORTES MENORES DE Bs.40.000,00 CORRESPONDIENTE A LA GESTIÓN 2020 AL 30 DE ABRIL DEL 2021\".','2021-12-30',NULL,'[{\"download_link\":\"publications\\/February2022\\/yW24F30iBEBTnJZeVF6D.pdf\",\"original_name\":\"INF. AUD. ESP. 03-2021.pdf\"}]',1,0,'2022-02-14 10:27:23','2022-02-14 10:27:23',NULL),(7,NULL,NULL,'INF.AUD.ESP.D.D.A.I. N°04/2021',NULL,'\"INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORIA ESPECIAL AL PROYECTO, CONSTRUCCIÓN UNIDAD EDUCATIVA ARNALDO LIJERON CASANOVAS - NUEVA TRINIDAD\".','2021-12-30',NULL,'[{\"download_link\":\"publications\\/February2022\\/KPSLNpS5J8Hac7aaQdqG.pdf\",\"original_name\":\"INF. AUD. ESP. N\\u00b004-2021.pdf\"}]',1,0,'2022-02-14 10:31:52','2022-02-14 10:31:52',NULL),(8,NULL,NULL,'INF.AUD.OPE.D.D.A.I. N°01/2021',NULL,'INFORME DE AUDITORIA OPERATIVA SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS PROVENIENTES DEL IMPUESTOS DIRECTO A LOS HIDROCARBUROS (IDH) DEL GOBIERNO AUTONOMO DEPARTAMENTAL DEL BENI, GESTIÓN 2020.','2021-02-26',NULL,'[{\"download_link\":\"publications\\/February2022\\/j513rTyDTSDWnHbshaiO.pdf\",\"original_name\":\"INF. AUD. OPE. N\\u00b001-2021.pdf\"}]',1,0,'2022-02-14 11:46:07','2022-02-14 11:46:07',NULL),(9,NULL,NULL,'INF.AUD.OPE.D.D.A.I. N°02/2021',NULL,'\"INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORÍA OPERACIONAL SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS EN RECURSOS DE LA CATEGORIA PROGRAMÁTICA (42-0-080) PROGRAMA DEPARTAMENTAL DE GESTION SOCIAL SEDEGES-BENI CORRESPONDIENTE A LA GESTION 2020\".','2021-12-24',NULL,'[{\"download_link\":\"publications\\/February2022\\/f7SutWgRcblKaOoa6Irf.pdf\",\"original_name\":\"INF. AUD. OPE. N\\u00b002-2021.pdf\"}]',1,0,'2022-02-14 11:58:06','2022-02-14 12:03:45',NULL),(10,NULL,NULL,'INF.AUD.CONF.D.D.A.I. N°01/2022',NULL,'\"INFORME DE CONTROL INTERNO EMERGENTE DEL EXAMEN DE CONFIABILIDAD DE LOS REGISTROS CONTABLES Y ESTADOS FINANCIEROS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE DEL 2021\".','2022-02-25',NULL,'[{\"download_link\":\"publications\\/March2022\\/MzlUHseyeSKTVfZvDYNo.pdf\",\"original_name\":\"CONFIABILIDAD 2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-03-03 12:45:55','2022-03-03 12:45:55',NULL),(11,NULL,NULL,'INF.AUD.OPE.D.D.A.I. N°01/2022',NULL,'AUDITORÍA OPERACIONAL SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS PROVENIENTES DEL IMPUESTO DIRECTO A LOS HIDROCARBUROS (IDH), DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, GESTIÓN 2021.','2022-02-25',NULL,'[{\"download_link\":\"publications\\/March2022\\/uyFsEzIXbPBhv3rYlfvK.pdf\",\"original_name\":\"AUDITORIA OPE 2022 resumen ejecutivo.pdf\"}]',1,0,'2022-03-24 14:19:00','2022-03-24 14:19:00',NULL),(13,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°01/2022',NULL,'Informe de control interno emergente de la \"Auditoria de Cumplimiento a los gastos ejecutados por la Asamblea Legislativa Departamental del Beni correspondiente a la gestion 2019 al 31 de diciembre de 2021\".','2022-06-30',NULL,'[{\"download_link\":\"publications\\/December2022\\/zx9jcMPiOAEQiHk6q2NJ.pdf\",\"original_name\":\"AUD. CUMP. N\\u00b001-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-21 15:28:13','2022-12-21 15:28:13',NULL),(15,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°05/2022',NULL,'Auditoria de Cumplimiento a las adquisiciones de activos fijos del Hospital Presidente Germán Busch correspondiente a las gestiones 2019, 2020, 2021.','2022-10-13',NULL,'[{\"download_link\":\"publications\\/December2022\\/96hxdv8U8wfXBE3ufFHT.pdf\",\"original_name\":\"AUD.CUMP.N\\u00b005-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-21 15:36:01','2022-12-21 15:36:01',NULL),(16,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°02/2022',NULL,'Informe de control interno emergente de la \"Auditoría de Cumplimiento a los gastos ejecutados por el Servicio Departamental de Gestión Social SEDEGES-BENI correspondiente a la gestión 2020 y 2021\".','2022-11-07',NULL,'[{\"download_link\":\"publications\\/December2022\\/QztdNS6suOUunSGRwqjB.pdf\",\"original_name\":\"AUD.CUMP.D.D.A.I.N\\u00b002-2022.pdf\"}]',1,0,'2022-12-21 15:50:42','2022-12-21 15:50:42',NULL),(17,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°06/2022',NULL,'Informe de control Interno emergente de la \"Auditoría de Cumplimiento de los gastos ejecutados en la partida 2.5.1.20\"Consultores individuales de linea \" y 2.5.1.20\"Gastos especializados por atención médica y otros\" del servicio departamental de salud - SEDES-BENI, correspondiente a la gestión 2021.','2022-11-28',NULL,'[{\"download_link\":\"publications\\/December2022\\/jqTT60mJqDl2FZkeg8Za.pdf\",\"original_name\":\"AUD.CUMP.D.D.A.I N\\u00b006-2022.pdf\"}]',1,0,'2022-12-21 16:09:55','2022-12-21 16:09:55',NULL),(20,NULL,NULL,'INF.SEG.D.D.A.I.N°04/2022',NULL,'\"PRIMER SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DEL INFORME DE AUDITORÍA OPERATIVA INF. AUD. OPE. D.D.A.I N°01/2021, SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS PROVENIENTES DEL IMPUESTO DIRECTO A LOS HIDROCARBUROS (IDH) DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI GESTIÓN, 2020\"','2022-12-07',NULL,'[{\"download_link\":\"publications\\/December2022\\/1MU8hRUxW79hrMLsIXbJ.pdf\",\"original_name\":\"INF.SEG.D.D.A.I. 04-2022. RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-29 17:20:54','2022-12-29 17:20:54',NULL),(21,NULL,NULL,'INF.SEG.D.D.A.I. N°03/2022',NULL,'\"SEGUNDO SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DEL INFORME DE AUDITORÍA OPERATIVA INF.AUD.OPE.D.D.A.I. N° 02/2022, SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS PROVENIENTES DEL IMPUESTO DIRECTO A LOS HIDROCARBUROS (IDH) DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, GESTIÓN 2019\"','2022-12-07',NULL,'[{\"download_link\":\"publications\\/December2022\\/qdP1pHX8mn7Q4YhDl1MO.pdf\",\"original_name\":\"INF.SEG.D.D.A.I.N\\u00b003-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-29 18:00:57','2022-12-29 18:01:09',NULL),(22,NULL,NULL,'INF.AUD.CUMP.D.DA.I. N°09/2022',NULL,'\"AUDITORIA DE CUMPLIMIENTO SOBRE LOS GASTOS EJECUTADOS EN LA PARTIDA POR OBJETO DEL GASTO 25220 CONSULTORIA INDIVIDUAL DE LINEA, POR LA SECRETARIA DEPARTAMENTAL DE DESARROLLO HUMANO Y MOVILIDAD SOCIAL, DURANTE LAS GESTIONES 2019 Y 2020\"','2022-12-20',NULL,'[{\"download_link\":\"publications\\/December2022\\/jae0NkibR7lr0kzq1oYt.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b009-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-29 18:59:38','2022-12-29 18:59:38',NULL),(23,NULL,NULL,'INF.SEG. D.D.A.I. N°05/2022',NULL,'PRIMER SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DEL INFORME DE CONTROL INTERNO DE LA AUDITORÍA ESPECIAL INF.AUD.ESP.D.D.A.I. N°02/2021 SOBRE  LOS RECURSOS DESEMBOLSADOS PARA LA CANCELACIÓN DE LOS APORTES AFP´S Y CAJA DE CORDES DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, CORRESPONDIENTE A LA GESTIÓN 2020 HASTA EL 30 DE ABRIL 2021\"','2022-12-15',NULL,'[{\"download_link\":\"publications\\/December2022\\/L8xCQtrSyqx1UPyJIGhS.pdf\",\"original_name\":\"INF.SEG.D.D.A.I. N\\u00b005-2022. RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-29 19:47:07','2022-12-29 19:47:07',NULL),(24,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. 03/2022',NULL,'\"AUDITORIA DE CUMPLIMIENTO SOBRE LOS GASTOS EJECUTADOS EN EL PERIODO COMPRENDIDO ENTRE EL 02 DE MAYO DE 2021 AL 31 DE MAYO DEL 2022, POR LA SUBGOBERNACIÓN DE LA PROVINCIA VACA DIEZ \"','2022-08-10',NULL,'[{\"download_link\":\"publications\\/December2022\\/MXsIHMq8pfMiW4gkDIgd.pdf\",\"original_name\":\"AUD.CUMP.D.D.A.I. N\\u00b003-2022 resumen ejecutivo.pdf\"}]',1,0,'2022-12-29 20:02:26','2022-12-29 20:02:26',NULL),(25,NULL,NULL,'INF.OPE.D.D.A.I. N°02/2022',NULL,'INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORIA OPERATIVA  SOBRE LA EFICACIA DE LAS OPERACIONES  EJECUTADAS AL PROGRAMA 42-00-70 APOYO AL SEDEGES  DEL SERVICIO DEPARTAMENTAL DE GESTIÓN SOCIAL, CORRESPONDIENTE A LA GESTIÓN 2021\"','2022-10-03',NULL,'[{\"download_link\":\"publications\\/December2022\\/8FDh7EJQSP66vt9M4wOq.pdf\",\"original_name\":\"AUD.OPE. N\\u00b002-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-29 20:15:05','2022-12-29 20:15:05',NULL),(26,NULL,NULL,'INF.RELEV.D.D.A.I. N°04/2022',NULL,'RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA A LOS GASTOS EJECUTADOS POR LA SECRETARIA DEPARTAMENTAL DE MEDIO AMBIENTE Y RECURSOS NATURALES CORRESPONDIENTES A LA GESTIÓN 2015 AL 31 DE DICIEMBRE DEL 2021\"','2022-08-31',NULL,'[{\"download_link\":\"publications\\/December2022\\/SxiVaFZ73HsbPMlcFk3B.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I. N\\u00b004-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-29 20:28:40','2022-12-29 20:28:40',NULL),(27,NULL,NULL,'INF.RELEV. D.D.A.I. N°06/2022',NULL,'\"RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA A LOS GASTOS EJECUTADOS POR EL COMITÉ DE OPERACIONES DE EMERGENCIAS DEPARTAMENTAL COED-BENI, CORRESPONDIENTES A LA GESTIÓN 2015 AL 31 DE DICIEMBRE DE 2021\"','2022-10-06',NULL,'[{\"download_link\":\"publications\\/December2022\\/6bUk17xC6M9BBD9pabgl.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I. N\\u00b006-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-29 20:36:12','2022-12-29 20:36:12',NULL),(28,NULL,NULL,'INF.RELEV. D.D.A.I. N°05/2022',NULL,'INFORME DE RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA A LOS GASTOS EJECUTADOS POR EL CORREGIMIENTO DEL MUNICIPIO DE RIBERALTA, CORRESPONDIENTE AL PERIODO COMPRENDIDO ENTRE EL 02 DE ENERO DE 2021 AL 31 DE MAYO DEL 2022\"','2022-09-30',NULL,'[{\"download_link\":\"publications\\/December2022\\/9KalIjoacAkPv4MAcmMC.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b005-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-29 20:51:34','2022-12-29 20:51:34',NULL),(29,NULL,NULL,'INF.RELEV.D.D.A.I.N°13/2022',NULL,'\"RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA A LOS GASTOS EJECUTADOS POR EL CORREGIMIENTO DEL MUNICIPIO DE SAN RAMON CORRESPONDIENTE A LA GESTIÓN 2015 AL 31 DE DICIEMBRE DEL 2021\".','2022-12-30',NULL,'[{\"download_link\":\"publications\\/December2022\\/5gmt1wFT8simY6yH6wxS.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b013-2022 RESUMEN EJE.pdf\"}]',1,0,'2022-12-30 08:35:09','2022-12-30 08:35:09',NULL),(30,NULL,NULL,'INF.RELEV.D.D.A.I.N°10/2022',NULL,'RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA A LOS INGRESOS POR REGALÍAS MINERAS CORRESPONDIENTE AL PERIODO  COMPRENDIDO ENTRE OCTUBRE DE 2021 A MARZO DE 2022.','2022-12-30',NULL,'[{\"download_link\":\"publications\\/December2022\\/zNiThRR14TDByRN7JQ7J.pdf\",\"original_name\":\"INF.RELEV.D.DA.A.I N\\u00b010-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 08:46:23','2022-12-30 08:46:23',NULL),(31,NULL,NULL,'INF.RELEV.D.D.A.I.N°12/2022',NULL,'RELEVAMIENTO DE INFORMACIÓN ESPECIFICA A LOS GASTOS EJECUTADOS POR EL CORREGIMIENTO DEL MUNICIPIO DE RURRENABAQUE CORRESPONDIENTE A LA GESTION 2015 AL 31 DE DICIEMBRE DEL 2021.','2022-12-30',NULL,'[{\"download_link\":\"publications\\/December2022\\/tF7HgznGU0tbLdoEMnwL.pdf\",\"original_name\":\"INF.RELEV.DA.A.I N\\u00b0 12-2022. RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 08:49:47','2022-12-30 08:49:47',NULL),(32,NULL,NULL,'INF.RELEV.D.D.A.I. N°01/2022',NULL,'\"RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA A LOS INGRESOS Y GASTOS DE LA ASAMBLEA LEGISLATIVA DEPARTAMENTAL DEL BENI, CORRESPONDIENTES A LAS GESTIONES 2015 HASTA LA GESTIÓN 2021\"','2022-05-16',NULL,'[{\"download_link\":\"publications\\/December2022\\/EXAnvkGU01J9wkbPeNFM.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b001-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 09:42:53','2022-12-30 09:42:53',NULL),(33,NULL,NULL,'INF.RELEV. D.D..A.I. N°02/2022',NULL,'\"RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA A LOS GASTOS EJECUTADOS EN LA PARTIDA PRESUPUESTARIA 34200 PRODUCTOS QUÍMICOS Y FARMACÉUTICOS Y LA PARTIDA PRESUPUESTARIA 39400 INSTRUMENTAL MENOR MÉDICO-QUIRÚRGICO DEL HOSPITAL PRESIDENTE GERMÁN BUSCH, CORRESPONDIENTES AL PERIODO COMPRENDIDO ENTRE EL 1 DE MAYO DE 2021 AL 31 DE MAYO DE 2022','2022-07-06',NULL,'[{\"download_link\":\"publications\\/December2022\\/tTuD1TicaJQYZi8wyhKP.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b002-2022.pdf\"}]',1,0,'2022-12-30 09:52:30','2022-12-30 09:52:30',NULL),(34,NULL,NULL,'INF.RELEV.D.D.A.I.N°07/2022',NULL,'\"RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA DE LOS GASTOS EJECUTADOS POR LA SECRETARIO DE DESARROLLO INDÍGENA CORRESPONDIENTES A LAS GESTIONES 2020 Y 2021\"','2022-09-30',NULL,'[{\"download_link\":\"publications\\/December2022\\/S1HldxNDdXtWv0911nms.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I. N\\u00b007-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 10:08:54','2022-12-30 10:08:54',NULL),(35,NULL,NULL,'INF.SEG. D.D.A.I. N°06/2022',NULL,'PRIMER SEGUIMIENTO A LA IMPLANTACIÓN DE LAS RECOMENDACIONES DEL INFORME DE CONTROL INTERNO  INF. AUD. ESP. D.D.A.I. N°01/2021 EMERGENTE DE LA \"AUDITORÍA ESPECIAL DE MANEJO Y DISPOSICIÓN DE LOS BIENES DE CONSUMO REALIZADO POR LA ADMINISTRACIÓN CENTRAL DEL SERVICIO DEPARTAMENTAL DE SALUD SEDES BENI CORRESPONDIENTE A LAS GESTIÓN 2016\"','2022-12-28',NULL,'[{\"download_link\":\"publications\\/December2022\\/xpdDRrhHnIABUNdbRMRO.pdf\",\"original_name\":\"INF.SEG.D.D.A.I. N\\u00b006-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 10:58:33','2022-12-30 10:58:33',NULL),(36,NULL,NULL,'INF.SEG.D.D.A.I. N°08/2022',NULL,'\"PRIMER SEGUIMIENTO A LAS RECOMENDACIONES DEL  INF.AUD.OPE.D.D.A.I. N°02/2021, INFORME DE AUDITORÍA OPERATIVA SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS DE LA CATEGORIA PROGRAMATICA 42-00-80 PROGRAMA DEPARTAMENTAL DE GESTIÓN SOCIAL DEL SERVICIO DEPARTAMENTAL DE GESTIÓN SOCIAL  SEDEGES-BENI,CORRESPONDIENTES A LA GESTIÓN 2020\"','2022-12-22',NULL,'[{\"download_link\":\"publications\\/December2022\\/0KsrD3waQFe3hd8ZTRDx.pdf\",\"original_name\":\"INF.SEG.D.D.A.I. N\\u00b008-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 11:03:45','2022-12-30 11:03:45',NULL),(37,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°07/2022',NULL,'INFORME DE CONTROL INTERNO EMERGENTE DE LA \"AUDITORÍA DE CUMPLIMIENTO DE LOS INGRESOS OBTENIDOS POR EL SERVICIO DEPARTAMENTAL DE SALUD - SEDES BENI, CORRESPONDIENTE A LA  GESTIÓN 2021\"','2022-12-28',NULL,'[{\"download_link\":\"publications\\/December2022\\/y9BwAvZbqr4wwx3itGVE.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I. N\\u00b007-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 11:06:27','2022-12-30 11:07:16',NULL),(38,NULL,NULL,'INF.AUD.CUMP. D.D.A.I. N°04/2022',NULL,'INFORME DE CONTROL INTERNO EMERGENTE DE LA \"AUDITORÍA DE CUMPLIMIENTO A LOS GASTOS EJECUTADOS POR EL CORREGIMIENTO DEL MUNICIPIO DE RIBERALTA CORRESPONDIENTE AL PERIODO COMPRENDIDO ENTRE EL 02 DE ENERO DE 2021 AL 31 DE MAYO  DE 2022\"','2022-08-01',NULL,'[{\"download_link\":\"publications\\/December2022\\/3YwSNFJTTJT2Qmky81fX.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I. N\\u00b004-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 11:30:28','2022-12-30 11:33:32',NULL),(39,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°10/2022',NULL,'\"AUDITORÍA DE  CUMPLIMIENTO SOBRE LOS GASTOS EJECUTADOS EN EL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, CORRESPONDIENTE AL PERIODO COMPRENDIDO ENTRE EL 02 DE MAYO DE 2021 AL 12 DE MAYO DE 2022\".','2022-12-28',NULL,'[{\"download_link\":\"publications\\/December2022\\/WxBtzThJfdtalZQ8hWbG.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I. N\\u00b010-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 11:41:09','2022-12-30 11:41:21',NULL),(40,NULL,NULL,'INF.RELEV.D.D.A.I N°08/2022',NULL,'\"RELEVAMIENTO DE INFORMACIÓN ESPECÍFICA A LOS GASTOS EJECUTADOS EN EL PAGO DE SUELDO AL PERSONAL PERMANENTE Y EVENTUAL CORRESPONDIENTE A LA GESTIÓN 2021 HASTA AGOSTO GESTION 2022 EN EL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI\".','2022-12-29',NULL,'[{\"download_link\":\"publications\\/December2022\\/zwbiJMipJeSabCluhWSW.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I. N\\u00b008-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 11:51:39','2022-12-30 11:51:39',NULL),(41,NULL,NULL,'INF.SEG.D.D.A.I. N°07/2022',NULL,'SEGUNDO SEGUIMIENTO A LA  IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DEL INFORME INF.SEG.D.D.A.I. N°05/2020 PRIMER SEGUIMIENTO DEL INFORME DE \"AUDITORIA OPERATIVA SOBRE LA EFICACIA DEL SISTEMA DE ADMINISTRACIÓN DE PERSONAL DEL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES-BENI. DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, CORRESPONDIENTE A LA GESTIÓN 2019\"','2022-12-29',NULL,'[{\"download_link\":\"publications\\/December2022\\/jI1mgzVYCFucYgGvItcT.pdf\",\"original_name\":\"INF.SEG.D.D.A.I. N\\u00b007-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 13:07:02','2022-12-30 13:07:02',NULL),(42,NULL,NULL,'INF.SEG.D.D.A.I. N°02/2022',NULL,'SEGUNDO SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DEL INFORME DE CONTROL INTERNO INF.D.D.A.I. N°01/2020 DE LA AUDITORIA DE CONFIABILIDAD DE LOS REGISTROS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI DE LA GESTIÓN 2019','2022-03-02',NULL,'[{\"download_link\":\"publications\\/December2022\\/bYMN70h8JqOI5af9kUdF.pdf\",\"original_name\":\"INF.SEG.D.D.A.I. N\\u00b002-2022 RESUMEN  EJECUTIVO.pdf\"}]',1,0,'2022-12-30 16:03:58','2022-12-30 16:03:58',NULL),(43,NULL,NULL,'INF.SEG.D.D.A.I. N°01/2022',NULL,'PRIMER SEGUIMIENTO AL INFORME INF.D.D.A..I. N°01/2021 DE CONTROL INTERNO EMERGENTE DE LA \"AUDITORÍA DE CONFIABILIDAD DE LOS REGISTROS CONTABLES Y ESTADOS FINANCIEROS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE DE 2020\"','2022-03-02',NULL,'[{\"download_link\":\"publications\\/December2022\\/YYvhzZWrTFFRGthL0xnJ.pdf\",\"original_name\":\"INF.SEG.D.D.A.I. N\\u00b001-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 16:08:21','2023-12-29 13:39:04',NULL),(44,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°08/2022',NULL,'\"INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORÍA DE CUMPLIMIENTO A LA ADQUISICIÓN DE LOS BIENES DE CONSUMO DEL HOSPITAL GERMÁN BUSCH CORRESPONDIENTES A LA GESTIONES 2019 Y 2020.\"','2022-12-29',NULL,'[{\"download_link\":\"publications\\/December2022\\/pW36caZ6TyVRNyYsJg9g.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I. N\\u00b008-2022 RESUMEN EJECUTIVO.pdf\"}]',1,0,'2022-12-30 16:19:11','2022-12-30 16:19:11',NULL),(45,NULL,NULL,'INF.AUD.CONF.D.D.DA.I. N°01/2023',NULL,'\"INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORIA DE CONFIABILIDAD  DE LOS REGISTROS Y ESTADOS FINANCIEROS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI AL 31 DE DICIEMBRE DE 2022\"','2023-01-16',NULL,'[{\"download_link\":\"publications\\/January2023\\/KZ4DNIujBH6J3pyN6F8G.pdf\",\"original_name\":\"INF.AUD.CONF.D.D.A.I. N\\u00b001-2023.pdf\"}]',1,0,'2023-01-18 12:38:47','2023-01-18 12:38:47',NULL),(46,NULL,NULL,'INF.AUD.CONF.D.D.A.I. N°02/2023',NULL,'INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORIA DE CONFIABILIDAD DE LOS REGISTROS Y ESTADOS FINANCIEROS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE DE 2022.','2023-02-27',NULL,'[{\"download_link\":\"publications\\/February2023\\/TS5tPoWwtgLMuu5PiHoB.pdf\",\"original_name\":\"CONFI  02-2023.pdf\"}]',1,0,'2023-02-28 12:35:13','2023-02-28 12:35:13',NULL),(47,NULL,NULL,'INF.AUD.OPE.D.D.A.I N°01/2023',NULL,'AUDITORIA  OPERACIONAL SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS PROVENIENTES DEL IMPUESTO DIRECTO A LOS HIDROCARBUROS  (IDH) DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, GESTIÓN 2022.','2023-02-27',NULL,'[{\"download_link\":\"publications\\/February2023\\/ccq8u6FRcwLxbIhpJ5xa.pdf\",\"original_name\":\"INFAUDOPEDDAI N\\u00b001-2023 INFORME.pdf\"}]',1,0,'2023-02-28 12:42:47','2023-02-28 12:42:47',NULL),(48,NULL,NULL,'INF.AUD.CUMP.D.D.A.I N°02-2023',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO \"CONSTRUCCIÓN COMPLEJO DEPORTIVO RAQUET -BALL PATUJU TRINIDAD-BENI\"','2023-06-26',NULL,'[{\"download_link\":\"publications\\/July2023\\/mYDkCAcxssxNFuYJXoSs.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I. N 02-2023.pdf\"}]',1,0,'2023-07-11 17:17:20','2023-07-11 17:17:20',NULL),(50,NULL,NULL,'INF.AUD.CUMP.D.D.A.I N°04-2023',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO CONSTRUCCIÓN CENTRO DE FORMACIÓN MULTIDISCIPLINARIO TRINIDAD-BENI, EJECUTADOS EN LAS GESTIONES 2016,2017,2018 Y 2019\"','2023-06-28',NULL,'[{\"download_link\":\"publications\\/July2023\\/iWS2r5bdap61JTEvxw3T.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I. N 04-2023.pdf\"}]',1,0,'2023-07-11 17:22:47','2023-07-11 17:22:47',NULL),(51,NULL,NULL,'INF.SEG.D.D.A.I N°01/2023',NULL,'PRIMER SEGUIMIENTO AL INFORME INF.D.D.A.I. N°01/2022 DE CONTROL INTERNO EMERGENTE DE LA \"AUDITORIA DE CONFIABILIDAD DE LOS REGISTROS Y ESTADOS FINANCIEROS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE DEL 2021\"','2023-02-28',NULL,'[{\"download_link\":\"publications\\/July2023\\/SbDxu44uVhgoclmUU6Mb.pdf\",\"original_name\":\"INF.SEG.D.D.A.I N\\u00b001-2023.pdf\"}]',1,0,'2023-07-12 10:59:51','2023-12-29 13:44:13',NULL),(52,NULL,NULL,'INF.SEG.D.D.A.I.N°02/2023',NULL,'SEGUNDO SEGUIMIENTO AL INFORME INF.D.D.A.I N°01/2021 DE CONTROL INTERNO EMERGENTE DE LA AUDITORIA DE CONFIABILIDAD DE LOS REGISTROS CONTABLES  Y ESTADOS FINANCIEROS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE DEL 2021\"','2023-02-28',NULL,'[{\"download_link\":\"publications\\/July2023\\/5hOPGrJkyuIpBvPgYW3g.pdf\",\"original_name\":\"INF.SEG. D.D.A.I N\\u00b0 02-2023.pdf\"}]',1,0,'2023-07-12 11:03:15','2023-07-12 11:03:15',NULL),(54,NULL,NULL,'iNF.AUD.CUMP.D.D.A.I. N°09/2023',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO CONSTRUCCIÓN UNIDAD EDUCATIVA 13 DE ABRIL (NIVEL SECUNDARIO) -TRINIDAD\"','2023-08-04',NULL,'[{\"download_link\":\"publications\\/August2023\\/JkKXdP78N2QtgjM8e1qf.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b009-2023.pdf\"}]',1,0,'2023-08-11 11:39:04','2023-08-11 11:39:04',NULL),(56,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°08/2023',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO DE CONSTRUCCIÓN INSTITUTO TÉCNICO - INCOS-BENI, DEPARTAMENTO DEL BENI, PROVINCIA CERCADO, MUNICIPIO DE TRINIDAD, EJECUTADO EN LA GESTIÓN: 2018,2019,2020 Y 2021','2023-08-04',NULL,'[{\"download_link\":\"publications\\/August2023\\/IpJOEMLFZTumR4v7sDpi.pdf\",\"original_name\":\"AUD.CUMP.D.DA.I. N\\u00b008-2023.pdf\"}]',1,0,'2023-08-11 11:43:18','2023-08-11 11:43:18',NULL),(57,NULL,NULL,'INF.RELEV.D.D.A.I. N°05-2023',NULL,'\"REVELAMIENTO DE INFORMACIÓN ESPECIFICA  AL PROGRAMA 42-0-86 APOYO AL CENTRO DE PREVENCIÓN Y ATENCIÓN A VICTIMAS DE VIOLENCIA DEL SERVICIO DEPARTAMENTAL DE GESTIÓN SOCIAL SEDEGES-BENI, GESTIÓN 2022\"','2023-07-31',NULL,'[{\"download_link\":\"publications\\/October2023\\/LqMCLPz8i4KSawETqsTJ.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I. N\\u00b005-2023.pdf\"}]',1,0,'2023-10-10 15:20:14','2023-12-29 13:53:45',NULL),(59,NULL,NULL,'INF.RELEV.D.D.A.I.N°04-2023',NULL,'\"REVELAMIENTO DE INFORMACIÓN ESPECIFICA AL PROCESO DE CONTRATACIÓN DEL PROYECTO CONSTRUCCIÓN DEFENSIVO RIÓ BENI, RIÓ MADRE DE DIOS EN EL MUNICIPIO DE RIBERALTA\"','2023-07-18',NULL,'[{\"download_link\":\"publications\\/October2023\\/WIHsGNJY5FNwvutBCma1.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b004-2023.pdf\"}]',1,0,'2023-10-10 15:22:38','2023-10-10 15:22:38',NULL),(60,NULL,NULL,'INF.AUD.CUMP.D.D.A.I.N°10-2023',NULL,'INFORME DE \"AUDITORIA DE CUMPLIMIENTO AL PROYECTO CONSTRUCCIÓN UNIDAD EDUCATIVA CRISTO REY- COMUNIDAD PUENTE SAN PABLO GESTIONES 2019,2020,2021\"','2023-09-20',NULL,'[{\"download_link\":\"publications\\/October2023\\/IrZEtzFs3aRIJNvT4eYP.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I. N 10-2023.pdf\"}]',1,0,'2023-10-10 15:25:20','2023-10-10 15:25:20',NULL),(61,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°.7/2023',NULL,'\"AUDITORIA DE CUMPLIMIENTO AL PAGO DE CONTINGENCIAS JUDICIALES DEL PROCESO CONTRA LA SUBGOBERNACION DE LA PROVINCIA CERCADO \"','2023-10-03',NULL,'[{\"download_link\":\"publications\\/October2023\\/0pc4lQHUgCqJMkb3G9q4.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I. N 07-2023.pdf\"}]',1,0,'2023-10-11 11:39:21','2023-10-11 11:39:21',NULL),(62,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°03/2023',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO \"CONSTRUCCIÓN UNIDAD EDUCATIVA LA PALMERA - LAS PALMAS MUNICIPIO DE TRINIDAD, PROVINCIA CERCADO DEPARTAMENTO DEL BENI','2023-06-27',NULL,'[{\"download_link\":\"publications\\/October2023\\/TH5Hbx7E6PqazVCgVfCa.pdf\",\"original_name\":\"INF.AUD.CUMP. D.D.A.I N 03-2023 INFORME.pdf\"}]',1,0,'2023-10-18 11:28:08','2023-10-18 11:28:08',NULL),(63,NULL,NULL,'INF.RELEV.D.D.A.I. N°02/2023',NULL,'REVELAMIENTO DE  INFORMACIÓN ESPECIFICA SOBRE EL PERSONAL Y CONTRATACIONES DE BIENES Y SERVICIOS EN EL HOSPITAL MATERNO INFANTIL BOLIVIANO-JAPONES GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI DESDE LA GESTIÓN 2018 AL 2022','2023-05-29',NULL,'[{\"download_link\":\"publications\\/October2023\\/IYdUTni89Hq2WfcmMTHW.pdf\",\"original_name\":\"relevamiento 02-2023.pdf\"}]',1,0,'2023-10-18 12:10:52','2023-10-18 12:10:52',NULL),(65,NULL,NULL,'INF.RELEV.D.D.A.I. N°01-2023',NULL,'REVELAMIENTO DE INFORMACIÓN ESPECIFICA A LA PARTIDA DE PASAJES Y VIÁTICOS DE LA SECRETARIA DEPARTAMENTAL DE OBRAS PUBLICAS DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI DE LA GESTIÓN 2022','2023-02-10',NULL,'[{\"download_link\":\"publications\\/October2023\\/xNw2KVwVzCsKRHCDFL0a.pdf\",\"original_name\":\"relevamiento 01-2023 Resumen.pdf\"}]',1,0,'2023-10-18 12:26:06','2023-10-18 12:26:06',NULL),(66,NULL,NULL,'iINF.SEG.D.D.A.I.N°08/2023',NULL,'\"SEGUIMIENTO ALA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DE LA AUDITORIA DE CUMPLIMIENTO A LAS ADQUISICIONES DE BIENES DE CONSUMO DEL GERMÁN BUSCH CORRESPONDIENTE A LA GESTIÓN 2019 Y 2020\"','2023-11-17',NULL,'[{\"download_link\":\"publications\\/December2023\\/LYxBqVwNN76QrFv7Z31e.pdf\",\"original_name\":\"INF-SEG-08-20223.pdf\"}]',1,0,'2023-12-18 10:25:01','2023-12-18 10:25:01',NULL),(67,NULL,NULL,'INF.SEG.D.D.A.I. N°09-2023',NULL,'PRIMER SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DE LA AUDITORIA DE CUMPLIMIENTO A LAS ADQUISICIONES DE ACTIVOS FIJOS DEL HOSPITAL GERMÁN BUSCH CORRESPONDIENTES A LAS GESTIONES  2019,2020 Y 2021\"','2023-11-17',NULL,'[{\"download_link\":\"publications\\/December2023\\/IIpK7nERfondNDogP7QD.pdf\",\"original_name\":\"INFSEG092023.pdf\"}]',1,0,'2023-12-18 10:44:01','2023-12-18 10:44:01',NULL),(68,NULL,NULL,'INF.SEG.D.D.A.I. N°10-2023',NULL,'\"SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTE DE  LA AUDITORIA OPERATIVA  SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS \r\nPROVENIENTES DEL IMPUESTO DIRECTO A LOS  HIDROCARBUROS (IDH) DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, GESTIÓN 2021\"','2023-11-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/GXIfxnOWXyup7EbcAtiQ.pdf\",\"original_name\":\"INF-SEG-10-2023.pdf\"}]',1,0,'2023-12-18 10:58:55','2023-12-18 10:59:35',NULL),(69,NULL,NULL,'INF.SEG.D.D.A.I. N°11-2023',NULL,'\"SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DEL  INFORME DE CONTROL INTERNO DE LA AUDITORIA DE CUMPLIMIENTO INF.AUD.CUM..D.D.A.I. N°10-2022, SOBRE LOS GASTOS EJECUTADOS EN EL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, CORRESPONDIENTE AL PERIODO COMPRENDIDO ENTRE EL 02 DE MAYO 2021 AL 12 DE MAYO DE 2022\"','2023-11-09',NULL,'[{\"download_link\":\"publications\\/December2023\\/K1uB9Av0cfzeOskNxCf7.pdf\",\"original_name\":\"INF-SEG-11-2023.pdf\"}]',1,0,'2023-12-18 11:21:35','2023-12-18 11:21:35',NULL),(70,NULL,NULL,'INF.AUD.CUMP.D.D.A.I. N°16-2023',NULL,'INFORME DE \"AUDITORIA CUMPLIMIENTO AL PROYECTO CONSTRUCCIÓN CANCHA CÉSPED SINTÉTICO, GRADERÍAS, LUMINARIAS-TRINIDAD GESTIONES 2019,2020,2021 Y 2022°','2023-10-31',NULL,'[{\"download_link\":\"publications\\/December2023\\/NltI7PQPMkJuKrGMdbDe.pdf\",\"original_name\":\"INF.AUD.CUM.16-2023.pdf\"}]',1,0,'2023-12-18 11:25:01','2023-12-18 11:25:01',NULL),(71,NULL,NULL,'INF.SEG.D.D.A.I. N°05-2023',NULL,'SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DEL INFORME DE CONTROL INTERNO DE LA AUDITORIA DE CUMPLIMIENTO INF.AUD.CUM.D.D.A.I. N°01/2022, SOBRE LOS GASTOS EJECUTADOS POR LA ASAMBLEA LEGISLATIVA DEPARTAMENTAL DEL BENI, CORRESPONDIENTE A LA GESTIÓN 2019 AL 31 DE DICIEMBRE DE 2021','2023-10-10',NULL,'[{\"download_link\":\"publications\\/December2023\\/THngJstjUqeTVUqaF50h.pdf\",\"original_name\":\"INF-SEG-05-2023.pdf\"}]',1,0,'2023-12-18 12:11:06','2023-12-18 12:11:06',NULL),(72,NULL,NULL,'INF.RELEV..D.D.A.I. N°07-2023',NULL,'\"RELEVAMIENTO DE INFORMACION ESPECIFICA A LOS GASTOS EJECUTADOS POR LA SUBGOBERNACION DE LA PROVINCIA CERCADO, CORESPONDIENTE A LA GESTION 2016 AL 31 DE DICIEMBRE DE 2022\"','2023-07-30',NULL,'[{\"download_link\":\"publications\\/December2023\\/xSA8iEtP7NJ0KaqTyTAe.pdf\",\"original_name\":\"INF.RELEV.D.DA.I.07-2023.pdf\"}]',1,0,'2023-12-18 12:29:15','2023-12-18 12:29:15',NULL),(73,NULL,NULL,'INF.RELEV.D.D.A.I. N°09-2023',NULL,'REVELAMIENTO DE INFORMACIÓN ESPECIFICA A  LOS GASTOS EJECUTADOS POR LA DIRECCIÓN DEPARTAMENTAL DE FRONTERAS CORRESPONDIENTE A LA GESTIÓN 2016 AL 31 DE DICIEMBRE DE 2022\"','2023-10-31',NULL,'[{\"download_link\":\"publications\\/December2023\\/HxjMWHu1j22sxL3Mz10R.pdf\",\"original_name\":\"INF.RELEV.N\\u00b009-2023.pdf\"}]',1,0,'2023-12-18 12:31:49','2023-12-18 12:31:49',NULL),(74,NULL,NULL,'INF.RELEV.D.D.A.I. N°10-2023',NULL,'REVELAMIENTO DE INFORMACIÓN ESPECIFICA DE LOS GASTOS EJECUTADOS  POR LA SUB GOBERNACIÓN DE LA PROVINCIA YACUMA, CORRESPONDIENTE A LA GESTIÓN 2017,2018,219,2020,2021 Y 2022\"','2023-11-08',NULL,'[{\"download_link\":\"publications\\/December2023\\/zZzdS9fdITNbA78bi97Y.pdf\",\"original_name\":\"INF.RELEV N\\u00b010-2023.pdf\"}]',1,0,'2023-12-18 12:34:09','2023-12-18 12:34:09',NULL),(75,NULL,NULL,'INF.SEG.D.D.A.I.N°12/2023',NULL,'PRIMER SEGUIMIENTO A LA IMPLANTACIÓN DE LAS RECOMENDACIONES  DEL INFORME DE CONTROL INTERNO INF.AUD.CUM.D.D.A.I.N°06/2022 EMERGENTE DE LA AUDITORIA DE CUMPLIMIENTO DE LOS GASTOS EJECUTADOS EN LA PARTIDA 2.5.2.20 \"CONSULTORES INDIVIDUALES DE LINEA\" Y 2.5.1.20 \"GASTOS ESPECIALIZADOS POR ATENCIÓN MEDICA Y OTROS\" DEL SERVICIO DEPARTAMENTAL DE SALUD SEDES-BENI, CORRESPONDIENTE A LA GESTIÓN 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/dJvWoMW2eZVrxYW7Xywa.pdf\",\"original_name\":\"INF.SEG.DAI.N.12-2023.pdf\"}]',1,0,'2023-12-29 11:44:55','2023-12-29 11:44:55',NULL),(76,NULL,NULL,'INF.AUD.CUMP.D.D.A.I.N°06/2023',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO A LOS INGRESOS PROPIOS PERCIBIDOS POR EL SERVICIO DEPARTAMENTAL DE GESTIÓN SOCIAL SEDEGES-BENI, GESTIÓN 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/BqYBryH8788z3KEABqr9.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b006-2023.pdf\"}]',1,0,'2023-12-29 11:57:39','2023-12-29 11:57:39',NULL),(77,NULL,NULL,'INF.AUD.CUMP.D.D.A.I.N°11-A/2023',NULL,'INFORME PRELIMINAR CON INDICIOS DE RESPONSABILIDAD POR LA FUNCIÓN PUBLICA EMERGENTE DE LA AUDITORIA DE CUMPLIMIENTO A LOS GASTOS EJECUTADOS EN LA PARTIDA 1.2.1 PERSONAL EVENTUAL DEL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES-BENI , CORRESPONDIENTE A LA GESTIÓN 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/0M4hOuOsjLfqG9gc0Wnv.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b011-A-2023.pdf\"}]',1,0,'2023-12-29 12:08:36','2023-12-29 12:08:36',NULL),(78,NULL,NULL,'INF.RELEV.D.D.A.I.N°12-2023',NULL,'RELEVAMIENTO DE INFORMACIÓN ESPECIFICA A LAS PARTIDAS DE APORTES PATRONALES DEL PERSONAL EVENTUAL DEL SEDES-BENI, CORRESPONDIENTE A LA GESTIÓN 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/DtUsK0ZGgFwXSMqp95ly.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b012-2023.pdf\"}]',1,0,'2023-12-29 12:24:42','2023-12-29 12:24:42',NULL),(79,NULL,NULL,'INF.RELEV.D.D.A.I.N°11/2023',NULL,'RELEVAMIENTO DE INFORMACIÓN ESPECIFICA A LOS INGRESOS PERCIBIDOS POR LA RED DE SALUD 07 RIBERALTA Y 08 GUAYARAMERIN, DEPENDIENTE DEL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES-BENI, CORRESPONDIENTE A LAS GESTIONES 2020 AL 2022.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/yYAexp2TcGoxPwLLkcQv.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b011-2023.pdf\"}]',1,0,'2023-12-29 12:33:13','2023-12-29 12:33:13',NULL),(81,NULL,NULL,'INF.SEG.D.D.A.I.N°06/2023',NULL,'PRIMER SEGUIMIENTO A LA IMPLANTACION DE RECOMENDACIONES EMERGENTES DE LA AUDITORIA DE CUMPLIMIENTO A LOS GASTOS EJECUTADOS POR EL SERVICIO DEPARTAMENTAL DE GESTION SOCIAL SEDEGES-BENI,CORRESPONDIENTE A LA GESTION 2020 Y 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/9ifMHtcHYLWBa28ncdNr.pdf\",\"original_name\":\"INF.SEG.D.D.A.I.N\\u00b006-2023.pdf\"}]',1,0,'2023-12-29 15:55:38','2023-12-29 15:55:38',NULL),(82,NULL,NULL,'INF.AUD.CUM.D.D.A.I.N°01/2023',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO A LOS INGRESOS PROPIOS GENERADOS POR EL HOSPITAL PRESIDENTE GERMAN BUSCH, CORRESPONDIENTE A LAS GESTIONES 2021 Y 2022.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/zBkPMJ8CFdoBNMuLnxjR.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b001-2023.pdf\"}]',1,0,'2023-12-29 15:58:33','2023-12-29 15:58:33',NULL),(83,NULL,NULL,'INF.AUD.CUMP.D.D.A.I.N°15/2023',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROCESO CONTENCIOSO ADMINISTRATIVO INTERPUESTO POR PEDRO LUIS BECERRA SUAREZ EN CONTRA DEL GOBIERNO AUTONOMO DEPARTAMENTAL DEL BENI.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/yvt8QIvZVBbyB7ehNUeB.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.15-2023.pdf\"}]',1,0,'2023-12-29 16:01:12','2023-12-29 16:01:12',NULL),(84,NULL,NULL,'INF.SEG.D.D.A.I.N°03/2023',NULL,'PRIMER SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DE LA AUDITORIA OPERATIVA SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS AL PROGRAMA 42-00-70 APOYO AL SEDEGES DEL SERVICIO DEPARTAMENTAL DE GESTIÓN SOCIAL SEDEGES-BENI, CORRESPONDIENTE A LA GESTIÓN 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/5739rZYPjCRbmV91QOIv.pdf\",\"original_name\":\"INF.SEG.D.D.A.I.N\\u00b003-2023.pdf\"}]',1,0,'2023-12-29 16:16:16','2023-12-29 16:16:16',NULL),(85,NULL,NULL,'INF.RELEV.D.D.A.I.N°03/2023',NULL,'RELEVAMIENTO DE INFORMACIÓN ESPECIFICA AL PROCEDIMIENTO SOBRE LA LABOR DEL COMITE DE SEGUIMIENTO DE CONTROL INTERNO DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI GESTIÓN 2023.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/Sxo5WUupEk3XE04lcZCz.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b003-2023.pdf\"}]',1,0,'2023-12-29 16:21:09','2023-12-29 16:21:09',NULL),(86,NULL,NULL,'INF.AUD.CUMP.D.D.A.I.N°07-2023',NULL,'AUDITORIA DE CUMPLIMIENTO AL PAGO DE CONTINGENCIAS JUDICIALES DEL PROCESO JUDICIAL CONTRA LA SUBGOBERNACION DE LA PROVINCIA CERCADO.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/kUIPa9jS030hKpmUDFea.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b007-2023.pdf\"}]',1,0,'2023-12-29 16:40:38','2023-12-29 16:40:38',NULL),(87,NULL,NULL,'INF.AUD.CUMP.D.D.A.I.N°13-2023',NULL,'AUDITORIA DE CUMPLIMIENTO A LOS GASTOS EJECUTADOS POR EL COMITE DE OPERACIONES DE EMERGENCIAS DEPARTAMENTAL COED-BENI, CORRESPONDIENTE A LA GESTIÓN 2018 AL 31 DE DICIEMBRE DEL 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/aIZ3oUIRiQN0PD9RQotO.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b013-2023.pdf\"}]',1,0,'2023-12-29 16:47:58','2023-12-29 16:47:58',NULL),(88,NULL,NULL,'INF.AUD.CUMP.D.D.A.I.N°12/2023',NULL,'AUDITORIA DE CUMPLIMIENTO A LOS GASTOS EJECUTADOS POR LA SECRETARIA DEPARTAMENTAL DE MEDIO AMBIENTE Y RECURSOS NATURALES CORRESPONDIENTE A LA GESTIÓN 2019 AL 31 DE DICIEMBRE DEL 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/kQp1AcelaOk2AxE04lu5.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b012-2023.pdf\"}]',1,0,'2023-12-29 16:54:21','2023-12-29 16:54:21',NULL),(89,NULL,NULL,'INF.AUD.CUMP.D.D.A.I.N°05-A/2023',NULL,'AUDITORIA DE CUMPLIMIENTO DE NOMINAS Y MARCADO DEL PERSONAL CONSULTOR INDIVIDUAL DE LINEA DEL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES-BENI,CORRESPONDIENTE A LA GESTIÓN 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/aqO75sKomTVDGvzZ1hhb.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I.N\\u00b005-A-2023.pdf\"}]',1,0,'2023-12-29 17:19:06','2023-12-29 17:19:06',NULL),(90,NULL,NULL,'INF.RELEV.D.D.A.I.N°08/2023',NULL,'RELEVAMIENTO DE INFORMACIÓN ESPECIFICA A LA PARTIDA 1.1.3.21 CATEGORÍAS MEDICAS DEL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES-BENI, CORRESPONDIENTE A LA GESTIÓN 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/BC8ooyFVEZJrSCSOdEky.pdf\",\"original_name\":\"INF.RELEV.D.D.A.I.N\\u00b008-2023.pdf\"}]',1,0,'2023-12-29 17:24:44','2023-12-29 17:24:44',NULL),(91,NULL,NULL,'INF.SEG.D.D.A.I.N°14/2023',NULL,'PRIMER SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DEL INFORME DE CONTROL INTERNO DE LA \"AUDITORIA DE CUMPLIMIENTO A LOS GASTOS EJECUTADOS EN LA PARTIDA 25220 CONSULTORÍA INDIVIDUAL DE LINEA POR LA SECRETARIA DEPARTAMENTAL DE DESARROLLO HUMANO Y MOVILIDAD SOCIAL DURANTE LAS GESTIONES 2019 Y 2020\".','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/Ng0ntYhcvWetvEaUPDoB.pdf\",\"original_name\":\"INF.SEG.D.D.A.I.N\\u00b014-2023.pdf\"}]',1,0,'2023-12-29 17:30:41','2023-12-29 17:30:41',NULL),(92,NULL,NULL,'INF.SEG.D.D.A.I.N°04/2023',NULL,'SEGUNDO SEGUIMIENTO A LA IMPLANTACIÓN DE LAS RECOMENDACIONES DEL INFORME DE CONTROL INTERNO INF.AUD.ESP.D.D.A.I.N°01/2021 EMERGENTE DE LA AUDITORIA ESPECIAL AL MANEJO Y DISPOSICIÓN DE LOS BIENES DE CONSUMO REALIZADO POR LA ADMINISTRACIÓN CENTRAL DEL SERVICIO DEPARTAMENTAL DE DE SALUD DEL BENI SEDES-BENI, CORRESPONDIENTE A LA GESTIÓN 2016.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/8mnj4bzx6b3uYgd8yTtN.pdf\",\"original_name\":\"INF.SEG.D.D.A.I.N\\u00b004-2023.pdf\"}]',1,0,'2023-12-29 17:36:31','2023-12-29 17:36:31',NULL),(93,NULL,NULL,'INF.SEG.D.D.A.I.N°07/2023',NULL,'PRIMER SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES DEL INFORME DE CONTROL INTERNO INF.AUD.CUMP.D.D.A.I.N°07/2021 EMERGENTE DE LA AUDITORIA DE CUMPLIMIENTO A LOS INGRESOS OBTENIDOS POR EL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES-BENI, CORRESPONDIENTE A LA GESTIÓN 2021.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/qNSQMcpmV6L7sDFba1lB.pdf\",\"original_name\":\"INF.SEG.D.D.A.I.N\\u00b007-2023.pdf\"}]',1,0,'2023-12-29 17:40:46','2023-12-29 17:40:46',NULL),(94,NULL,NULL,'INF.SEG.D.D.A.I.N°13/2023',NULL,'SEGUNDO SEGUIMIENTO A LA IMPLANTACIÓN DE RECOMENDACIONES EMERGENTES DE LA AUDITORIA OPERATIVA SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS DE LA CATEGORÍA PROGRAMÁTICA 42-0-080 PROGRAMA DEPARTAMENTAL DE GESTIÓN SOCIAL DEL SERVICIO DEPARTAMENTAL DE GESTIÓN SOCIAL SEDEGES-BENI, CORRESPONDIENTE A LA GESTIÓN 2020.','2023-12-29',NULL,'[{\"download_link\":\"publications\\/December2023\\/Q4MGKXGVZlhA97NwikfD.pdf\",\"original_name\":\"INF.SEG.D.D.A.I.N\\u00b013-2023.pdf\"}]',1,0,'2023-12-29 17:45:31','2023-12-29 17:45:31',NULL),(95,NULL,NULL,'INF.AUD.CONF.D.D.A.I.N°01/2024',NULL,'INFORME DE CONFIABILIDAD DE LOS REGISTROS Y LAS DEFICIENCIAS DE CONTROL INTERNO, DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE DE 2023','2024-01-15',NULL,'[{\"download_link\":\"publications\\/January2024\\/3c3uT6GVuTTbyB8IIOS9.pdf\",\"original_name\":\"INF.AUD.CONF.D.D.A.I.N\\u00b001-2024.pdf\"}]',1,0,'2024-01-15 16:09:12','2024-01-15 16:09:12',NULL),(96,NULL,NULL,'INF.AUD.CONF.D.D.A.I N° 02/2024',NULL,'INFORME DE CONFIABILIDAD DE LOS ESTADOS FINANCIEROS Y LAS DEFICIENCIAS DE CONTROL INTERNO, DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE DE 2023','2024-02-28',NULL,'[{\"download_link\":\"publications\\/February2024\\/gXeNfPki1kdrjvgjoVfg.pdf\",\"original_name\":\"informe de confiabilidad 02-2024.pdf\"}]',1,0,'2024-02-28 15:06:27','2024-02-28 15:06:27',NULL),(97,NULL,NULL,'INF.AUD.OPE.D.D.A.I N° 01/2024',NULL,'AUDITORIA OPERATIVA SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS PROVENIENTES DEL IMPUESTO DIRECTO A LOS HIDROCARBUROS (IDH), DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, GESTIÓN 2023.','2024-02-28',NULL,'[{\"download_link\":\"publications\\/February2024\\/SoWATAyhbVUMPMyrC3ER.pdf\",\"original_name\":\"Aud.Operativa IDH 01-2024.pdf\"}]',1,0,'2024-02-28 15:16:09','2024-02-28 15:16:09',NULL),(98,NULL,NULL,'INF.AUD.CUMP.D.D.A.I N° 02/2024',NULL,'Auditoria de Cumplimiento al proyecto construcción de la unidad educativa Arenales y polifuncional, departamento del Beni, provincia Jose Ballivian, municipio San Borja, ejecutado en las gestiones 2018 y 2019.','2024-06-18',NULL,'[{\"download_link\":\"publications\\/July2024\\/SsYT1Ork3YGjFVxLlpnk.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I N\\u00b002-2024.pdf\"}]',1,0,'2024-07-11 17:03:42','2024-07-11 17:03:42',NULL),(99,NULL,NULL,'INF.AUD.CUMP.D.D.A.I N° 01-2024',NULL,'AUDITORIA DE CUMPLIMIENTO, AL PROYECTO CONSTRUCCIÓN, PUESTO DE SALUD SAN MIGUEL, DEPARTAMENTO DEL BENI, PROVINCIA JOSE BALLIVIAN, MUNICIPIO SAN BORJA, EJECUTADO EN LA GESTIÓN 2018 Y 2019.','2024-06-18',NULL,'[{\"download_link\":\"publications\\/July2024\\/3NbgPbptX9s3pEOw2Tzz.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.IO N\\u00b0 01-2024.pdf\"}]',1,0,'2024-07-11 17:09:09','2024-07-11 17:09:09',NULL),(100,NULL,NULL,'INF.AUD.CUMP.D.D.A.I N°03-2024',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO, AL PROYECTO CONSTRUCCIÓN TINGLADO POLIFUNCIONAL Y GRADERIAS, UNIDAD EDUCATIVA EL TRIUNFO, DEPARTAMENTO DEL BENI, PROVINCIA JOSE BALLIVIAN, MUNICIPIO SAN BORJA, EJECUTADO EN LAS GESTIONES 2018 Y 2019.','2024-06-18',NULL,'[{\"download_link\":\"publications\\/July2024\\/aII5DuVr3mMyQGQmkvpc.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I N\\u00b003-2024.pdf\"}]',1,0,'2024-07-11 17:19:01','2024-07-11 17:19:01',NULL),(101,NULL,NULL,'INF.AUD.CUMP.D.D.A.I N°04-2024',NULL,'AUDITORIA DE CUMPLIMIENTO, A LOS RECURSOS ASIGNADOS PARA LA IMPLEMENTACIÓN DEL SISTEMA ÚNICO DE SALUD, UNIVERSAL GRATUITO, CORRESPONDIENTE A LAS GESTIONES 2022 Y 2023.','2024-05-15',NULL,'[{\"download_link\":\"publications\\/July2024\\/FubVvUZMzFAuRq025sWj.pdf\",\"original_name\":\"INF.AUD.CUMP.D.D.A.I N\\u00b004-2024.pdf\"}]',1,0,'2024-07-11 17:30:26','2024-07-11 17:30:26',NULL),(103,NULL,NULL,'INF.AUD.CUMP.D.D.A.I N° 05/2024',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO CONSTRUCCIÓN COMPLEJO HABITACIONAL VILLA OLÍMPICA-BENI, EJECUTADA EN LAS GESTIONES 2012 Y 2013.','2024-07-31',NULL,'[]',1,0,'2024-08-05 10:40:36','2024-08-05 10:40:36',NULL),(104,NULL,NULL,'INF.AUD.CUMP.D.D.A.I N° 06/2024',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO CONSTRUCCIÓN, COLISEO CERRADO TRINIDAD-BENI, EJECUTADO EN LAS GESTIONES 2012 Y 2013.','2024-07-31',NULL,'[]',1,0,'2024-08-05 10:44:48','2024-08-05 10:44:48',NULL),(106,NULL,NULL,'INF. AUD. CUMP. D.D.A.I. N° 07/2024',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO \"CONSTRUCCIÓN AMPLIACIÓN TERMINAL AÉREA RIBERALTA\" PROVINCIA ANTONIO VACA DIEZ, MUNICIPIO RIBERALTA , EJECUTADO EN LAS GESTIONES 2017, 2018, 2019 Y 2021.','2024-07-29',NULL,'[{\"download_link\":\"publications\\/September2024\\/8qnqxKm6UZxeQ1J7PvoL.pdf\",\"original_name\":\"INF. AUD. CUMP. D.D.A.I N\\u00b0 07-2024.pdf\"}]',1,0,'2024-09-02 10:15:34','2024-09-02 10:15:34',NULL),(107,NULL,NULL,'INF. AUD. CUMP. D.D.A.I. N° 08/2024',NULL,'INFORME DE AUDITORIA DE CUMPLIMIENTO AL PROYECTO \"CONSTRUCCIÓN INSTITUTO TÉCNICO INCOS GUAYARAMERIN\" PROVINCIA ANTONIO VACA DIEZ, MUNICIPIO GUAYARAMERIN, EJECUTADO EN LAS GESTIONES 2019, 2022 Y 2023.','2024-08-23',NULL,'[{\"download_link\":\"publications\\/September2024\\/V9yeKvcwRD4RvecdD5Gy.pdf\",\"original_name\":\"INF. AUD. CUMP. D.D.A.I N\\u00b0 08-2024.pdf\"}]',1,0,'2024-09-02 10:28:50','2024-09-02 10:28:50',NULL),(108,NULL,NULL,'INF. AUD. OPE. D.D.A.I. N° 01-2024',NULL,'INFORME AUDITORIA OPERATIVA SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS PROVENIENTES DEL IMPUESTO DIRECTO A LOS HIDROCARBUROS (IDH) DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, GESTIÓN 2023.','0224-02-28',NULL,'[{\"download_link\":\"publications\\/September2024\\/uRqmfzSjSzWxEdJy7IJY.pdf\",\"original_name\":\"Aud.Operativa IDH 01-2024.pdf\"}]',1,0,'2024-09-05 10:01:13','2024-09-05 10:01:13',NULL),(109,NULL,NULL,'INF. AUD. OPE. D.D.A.I N° 02/2024',NULL,'\"AUDITORIA OPERATIVA AL SISTEMA DE ADMINISTRACIÓN DE BIENES Y SERVICIOS DEL SISTEMA DEPARTAMENTAL DE SALUD DEL BENI SEDES -BENI, CORRESPONDIENTE A LA  GESTIÓN 2022\"','2024-08-08',NULL,'[{\"download_link\":\"publications\\/September2024\\/gMlOCp3pBDfweMWN4DwD.pdf\",\"original_name\":\"INF. AUD. D.D.A.I. N\\u00b0 02-2024.pdf\"}]',1,0,'2024-09-05 10:11:44','2024-09-05 10:11:44',NULL),(110,NULL,NULL,'INF.AUD.OPER. D.D.A.I N°03/2024',NULL,'AUDITORIA OPERACIONAL SOBRE LA EFICACIA DE LAS OPERACIONES EJECUTADAS EN EL \"PROGRAMA DE ATENCION NIÑO/NIÑA (PAN)\" DEL SERVICIO DEPARTAMENTAL DE GESTION SOCIAL SEDEGES - BENI, CORRESPONDIENTE A LA GESTION 2023','2024-09-09',NULL,'[{\"download_link\":\"publications\\/December2024\\/9EJpYasl3SfQDvW6pNi1.pdf\",\"original_name\":\"INF. AUD. OPER. D.D.A.I N\\u00b0 03-2024.pdf\"}]',1,0,'2024-12-13 11:29:01','2024-12-13 11:29:28',NULL),(111,NULL,NULL,'INF.AUD. OPER. D.D.A.I.N° 04/2024',NULL,'\"AUDITORIA OPERACIONAL AL PROGRAMA DE ATENCION INTEGRAL NIÑO NIÑA Y ADOLESCENTE ACOGIDOS EN CENTROS DE SERVICIO DEPARTAMWENTAL DE GESTION SOCIAL SEDEGES - BENI CORRESPONDIENTE A  LA GESTION 2023\"','2024-12-04',NULL,'[{\"download_link\":\"publications\\/December2024\\/RIRLptTiU3fDKTPuNfqv.pdf\",\"original_name\":\"RES.AUD. OPE. D.D.A.I N\\u00b004-2024.pdf\"}]',1,0,'2024-12-13 11:41:42','2024-12-13 11:41:42',NULL),(112,NULL,NULL,'INF.AUD. CUMP. D.D.A.I. N° 10/2024',NULL,'INFORME DE CONTROL INTERNO EMERGENTE DE LA AUDITORIA DE CUMPLIMIENTO A LOS GASTOS EJECUTADOS POR EL HOSPITAL MATERNO INFANTIL DE LA GESTION 2019 AL 31 DE DICIEMBRE DEL 2022','2024-09-06',NULL,'[{\"download_link\":\"publications\\/December2024\\/InFCtoUtEq6m9Jx7xNkm.pdf\",\"original_name\":\"INF. AUD. CUMP. D.D.A.I N\\u00b0 10 - 2024.pdf\"}]',1,0,'2024-12-13 12:04:02','2024-12-13 12:04:02',NULL),(114,NULL,NULL,'INF. AUD. CUMP. D.D.A.I N° 12/2024',NULL,'\"INFORME DE AUDITORIA DE CUMPLIMIENTO A LOS INGRESOS DE LA RED DE SALUD 08 GUAYARAMERIN, DEPENDIENTE DEL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES - BENI, CORRESPONDIENTE A LAS GESTIONES 2020 AL 2022\".','2024-11-29',NULL,'[{\"download_link\":\"publications\\/December2024\\/h9gIVFx0p0vFpam7LTjw.pdf\",\"original_name\":\"Res.CUMP.D.D.A.I N\\u00b0 12-2024.pdf\"}]',1,0,'2024-12-13 12:22:52','2024-12-13 12:22:52',NULL),(115,NULL,NULL,'INF.AUD.OPE.D.D.A.I N° 05/2024',NULL,'AUDITORIA OPERACIONAL AL PROGRAMA 42-086 APOYO AL CENTRO DE PREVENCION Y ATENCION A VICTIMAS DE VIOLENCIA DEL SERVICIO DEPARTAMENTAL DE GESTION SOCIAL SEDEGES-BENI GESTION 2022','2024-12-23',NULL,'[{\"download_link\":\"publications\\/December2024\\/taw0BNph0v3HUUzVdJ6j.pdf\",\"original_name\":\"RES.OPE.D.D.A.I N\\u00b005-2024.pdf\"}]',1,0,'2024-12-27 10:11:06','2024-12-27 10:11:06',NULL),(118,1,NULL,'INF.AUD.CONF.D.D.A.I N°01-2025',NULL,'INFORME DE CONFIABILIDAD DE LOS REGISTROS Y LAS DEFICIENCIAS DE CONTROL INTERNO, DEL GOBIERNO AUTONOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE DE 2024','2025-01-15',NULL,'[]',1,0,'2025-01-17 10:58:05','2025-01-17 10:58:05',NULL),(120,NULL,NULL,'INF.AUD.OPE.D.D.A.I N° 06/2024',NULL,'\"AUDITORIA OPERACIONAL SOBRE LA EFICACIA DE LAS OPERACIONES EN EL PROGRAMA PLAN INTEGRAL DE SALUD CON CATEGORIA PROGRAMATICA 040 0 082 EJECUTADO POR EL SERVICIO  DEPARATMENTAL DE SALUD DEL BENI SEDES BENI, CORRESPONDIENTE A LA GESTION 2022\"','2024-12-30',NULL,'[{\"download_link\":\"publications\\/January2025\\/s74lDMI1BnsxROEqFktf.pdf\",\"original_name\":\"RES.AUD.OPE.D.D.A.I N\\u00b006-2024.pdf\"}]',1,0,'2025-01-20 10:59:38','2025-01-20 10:59:38',NULL),(122,NULL,NULL,'INF.AUD.OPE.D.D.A.I N° 01/2025',NULL,'INFORME DE AUDITORÍA OPERACIONAL A LA EFICACIA DE LAS OPERACIONES EJECUTADAS CON RECURSOS PROVENIENTES DE LOS IMPUESTOS DIRECTO DE LOS HIDROCARBUROS (IDH) DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, GESTIÓN 2024','2025-02-28',NULL,'[{\"download_link\":\"publications\\/February2025\\/xePa5wevPtQkortvs9Ph.pdf\",\"original_name\":\"INF.AUD.OPE. D.D.A.I N\\u00b0 01-2025.pdf\"}]',1,0,'2025-02-28 14:17:07','2025-02-28 14:17:07',NULL),(123,NULL,NULL,'INF.AUD.CONF.D.D.A.I N°02/2025',NULL,'\"INFORME DE CONFIABILIDAD DE LOS ESTADOS FINANCIEROS Y LAS DEFICIENCIAS DE CONTROL INTERNO DEL GOBIERNO AUTÓNOMO DEPARTAMENTAL DEL BENI, AL 31 DE DICIEMBRE 2024\"','2025-02-28',NULL,'[{\"download_link\":\"publications\\/February2025\\/LhA0wyAUOCXvq39ka8bk.pdf\",\"original_name\":\"INF.AUD.CONF.D.D.A.I N\\u00b0 02-2025.pdf\"}]',1,0,'2025-02-28 16:57:26','2025-04-15 11:39:29',NULL),(125,NULL,NULL,'INF.AUD,OPE.D.D.A.I N° 02/2025',NULL,'AUDITORIA OPERACIONAL AL PROGRAMA 42-00-63, ATENCIÓN INTEGRAL AL ADULTO MAYOR DEL SERVICIO DEPARTAMENTAL DE GESTIÓN SOCIAL SEDEGES-BENI, GESTIÓN 2023.','2025-04-21',NULL,'[{\"download_link\":\"publications\\/May2025\\/lplBH5rGPoFqTbPyw7fb.pdf\",\"original_name\":\"INF.AUD.OPE.D.D.A.I N\\u00b0 02-2025.pdf\"}]',1,0,'2025-05-15 11:29:49','2025-05-15 11:29:49',NULL),(126,NULL,NULL,'INF.AUD.OPE.D.D.A.I N° 03/2025',NULL,'\"AUDITORIA OPERACIONAL SOBRE LA EFICACIA DE LAS OPERACIONES EN EL PROGRAMA FORTALECIMIENTO INSTITUCIONAL DEL SEDES - BENI CON CATEGORÍA PROGRAMÁTICA 400 0 060 CON FUENTE DE FINANCIAMIENTO 20-220 EJECUTADO POR EL SERVICIO DEPARTAMENTAL DE SALUD DEL BENI SEDES - BENI, CORRESPONDIENTE A LA GESTIÓN 2023\"','2025-06-04',NULL,'[{\"download_link\":\"publications\\/June2025\\/oXu1QwPJVNhDv3n2QTEO.pdf\",\"original_name\":\"INF.AUD.OPE.D.D.A.I N\\u00b0 03-2025.pdf\"}]',1,0,'2025-06-09 11:48:56','2025-06-09 11:48:56',NULL);
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications_types`
--

DROP TABLE IF EXISTS `publications_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publications_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications_types`
--

LOCK TABLES `publications_types` WRITE;
/*!40000 ALTER TABLE `publications_types` DISABLE KEYS */;
INSERT INTO `publications_types` VALUES (1,'default','default','journal-bookmark',NULL,'NN','2021-10-06 12:49:29','2021-10-11 21:20:43',NULL);
/*!40000 ALTER TABLE `publications_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrador','2022-01-26 13:59:15','2022-01-26 13:59:15'),(2,'user','Usuario Normal','2022-01-26 13:59:15','2022-01-26 13:59:15');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Transparencia','','text',1,'Site'),(2,'site.description','Site Description','Informes de Auditoría General','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',11,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',4,'Admin'),(6,'admin.title','Admin Title','Transparencia','','text',1,'Admin'),(7,'admin.description','Admin Description','Sistema para administración de publicaciones de leyes, decretos y resoluciones.','','text',1,'Admin'),(8,'admin.loader','Admin Loader','','','image',2,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',3,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',5,'Admin'),(11,'site.banner','Site Banner','',NULL,'image',4,'Site'),(13,'site.background','Site Background','',NULL,'image',7,'Site'),(14,'site.phone','Site Phone','+591 75199157',NULL,'text',8,'Site'),(15,'site.address','Site Address','A108 Adam Street, New York, NY 535022',NULL,'text',9,'Site'),(16,'site.email','Site Email','contact@example.com',NULL,'text',10,'Site'),(17,'social.facebook','Facebook','#',NULL,'text',12,'Social'),(18,'social.twitter','Twitter','#',NULL,'text',13,'Social'),(19,'social.youtube','Youtube','#',NULL,'text',14,'Social'),(20,'social.instagram','Instagram','#',NULL,'text',15,'Social');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png',NULL,'$2y$10$piw47ZDCJq3ieZXMVap/2eo1j71yvn4g2LNCxJu7b/7JEgq/8Q4oG',NULL,NULL,'2021-06-01 21:05:11','2021-06-01 21:05:11'),(2,1,'gustavo.pedraza','gustavo.pedraza@beni.gob.bo','users/default.png',NULL,'$2y$10$OOKbFgO6KmT0ttVHJjSU3.t69gaUVB/LAObT4vImYOTZv6N23SrAW','aHLWUlanX6BXuokBTRtV4a2Jq1ywa4YPzZhDaAXRoy9Q0QIkm89ZDftJWZsC','{\"locale\":\"es\"}','2022-01-27 12:24:41','2022-01-27 12:24:41');
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

-- Dump completed on 2025-07-28 15:43:37
