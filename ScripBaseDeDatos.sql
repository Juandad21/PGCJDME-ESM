-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyecto_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add etiquetas',6,'add_etiquetas'),(22,'Can change etiquetas',6,'change_etiquetas'),(23,'Can delete etiquetas',6,'delete_etiquetas'),(24,'Can view etiquetas',6,'view_etiquetas'),(25,'Can add roles',7,'add_roles'),(26,'Can change roles',7,'change_roles'),(27,'Can delete roles',7,'delete_roles'),(28,'Can view roles',7,'view_roles'),(29,'Can add eventos',8,'add_eventos'),(30,'Can change eventos',8,'change_eventos'),(31,'Can delete eventos',8,'delete_eventos'),(32,'Can view eventos',8,'view_eventos'),(33,'Can add academias',9,'add_academias'),(34,'Can change academias',9,'change_academias'),(35,'Can delete academias',9,'delete_academias'),(36,'Can view academias',9,'view_academias'),(37,'Can add user',10,'add_usuarios'),(38,'Can change user',10,'change_usuarios'),(39,'Can delete user',10,'delete_usuarios'),(40,'Can view user',10,'view_usuarios');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_academias`
--

DROP TABLE IF EXISTS `core_academias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_academias` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `numeroContacto` decimal(10,0) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `nit` decimal(10,0) DEFAULT NULL,
  `etiqueta_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`),
  KEY `core_academias_etiqueta_id_6ff3b5bc_fk_core_etiquetas_id` (`etiqueta_id`),
  CONSTRAINT `core_academias_etiqueta_id_6ff3b5bc_fk_core_etiquetas_id` FOREIGN KEY (`etiqueta_id`) REFERENCES `core_etiquetas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_academias`
--

LOCK TABLES `core_academias` WRITE;
/*!40000 ALTER TABLE `core_academias` DISABLE KEYS */;
INSERT INTO `core_academias` VALUES (1,'escuela teatro','barrio granada',3160636388,'mejia@gmail.com',NULL,4);
/*!40000 ALTER TABLE `core_academias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_etiquetas`
--

DROP TABLE IF EXISTS `core_etiquetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_etiquetas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `formaArte` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_etiquetas`
--

LOCK TABLES `core_etiquetas` WRITE;
/*!40000 ALTER TABLE `core_etiquetas` DISABLE KEYS */;
INSERT INTO `core_etiquetas` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `core_etiquetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_eventos`
--

DROP TABLE IF EXISTS `core_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_eventos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `aforo` int(11) NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` longtext NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `horaInicio` time(6) NOT NULL,
  `horaFinalizacion` time(6) NOT NULL,
  `numeroReserva` decimal(10,0) NOT NULL,
  `etiqueta_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_eventos_etiqueta_id_584531ab_fk_core_etiquetas_id` (`etiqueta_id`),
  CONSTRAINT `core_eventos_etiqueta_id_584531ab_fk_core_etiquetas_id` FOREIGN KEY (`etiqueta_id`) REFERENCES `core_etiquetas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_eventos`
--

LOCK TABLES `core_eventos` WRITE;
/*!40000 ALTER TABLE `core_eventos` DISABLE KEYS */;
INSERT INTO `core_eventos` VALUES (2,'taller afro','2026-06-21',30,'teatro',15000.00,'',1,'12:00:00.000000','14:00:00.000000',3160636388,1);
/*!40000 ALTER TABLE `core_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_roles`
--

DROP TABLE IF EXISTS `core_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_roles`
--

LOCK TABLES `core_roles` WRITE;
/*!40000 ALTER TABLE `core_roles` DISABLE KEYS */;
INSERT INTO `core_roles` VALUES (1,1);
/*!40000 ALTER TABLE `core_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_usuarios`
--

DROP TABLE IF EXISTS `core_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `telefono` decimal(10,0) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(150) NOT NULL,
  `rol_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `cedula` (`cedula`),
  KEY `core_usuarios_rol_id_a245b416_fk_core_roles_id` (`rol_id`),
  CONSTRAINT `core_usuarios_rol_id_a245b416_fk_core_roles_id` FOREIGN KEY (`rol_id`) REFERENCES `core_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_usuarios`
--

LOCK TABLES `core_usuarios` WRITE;
/*!40000 ALTER TABLE `core_usuarios` DISABLE KEYS */;
INSERT INTO `core_usuarios` VALUES (1,'pbkdf2_sha256$600000$gONZrJgwhje16zO4QW3QGM$PsISQiX1/lS96t3DsjR3ux/+4aF4nMyWKMDfUuTcLrw=',NULL,1,'','',1,1,'2026-05-26 05:36:58.216274',NULL,NULL,NULL,'','mejia.enriquezj@gmail.com','jau300',NULL),(2,'',NULL,0,'Juan','Mejia',0,1,'2026-05-26 06:01:44.523927',21,1092734,1234546,'','jua@gmail.com','holaaa',NULL);
/*!40000 ALTER TABLE `core_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_usuarios_groups`
--

DROP TABLE IF EXISTS `core_usuarios_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_usuarios_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuarios_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_usuarios_groups_usuarios_id_group_id_ba7e3f49_uniq` (`usuarios_id`,`group_id`),
  KEY `core_usuarios_groups_group_id_c3f9ded3_fk_auth_group_id` (`group_id`),
  CONSTRAINT `core_usuarios_groups_group_id_c3f9ded3_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `core_usuarios_groups_usuarios_id_6b99e779_fk_core_usuarios_id` FOREIGN KEY (`usuarios_id`) REFERENCES `core_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_usuarios_groups`
--

LOCK TABLES `core_usuarios_groups` WRITE;
/*!40000 ALTER TABLE `core_usuarios_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_usuarios_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_usuarios_user_permissions`
--

DROP TABLE IF EXISTS `core_usuarios_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_usuarios_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuarios_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_usuarios_user_permi_usuarios_id_permission_i_4feb592c_uniq` (`usuarios_id`,`permission_id`),
  KEY `core_usuarios_user_p_permission_id_99a8583b_fk_auth_perm` (`permission_id`),
  CONSTRAINT `core_usuarios_user_p_permission_id_99a8583b_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `core_usuarios_user_p_usuarios_id_2fdabc76_fk_core_usua` FOREIGN KEY (`usuarios_id`) REFERENCES `core_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_usuarios_user_permissions`
--

LOCK TABLES `core_usuarios_user_permissions` WRITE;
/*!40000 ALTER TABLE `core_usuarios_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_usuarios_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_core_usuarios_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_usuarios_id` FOREIGN KEY (`user_id`) REFERENCES `core_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(9,'core','academias'),(6,'core','etiquetas'),(8,'core','eventos'),(7,'core','roles'),(10,'core','usuarios'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-05-26 05:33:57.646311'),(2,'contenttypes','0002_remove_content_type_name','2026-05-26 05:33:57.707460'),(3,'auth','0001_initial','2026-05-26 05:33:58.019849'),(4,'auth','0002_alter_permission_name_max_length','2026-05-26 05:33:58.079960'),(5,'auth','0003_alter_user_email_max_length','2026-05-26 05:33:58.090317'),(6,'auth','0004_alter_user_username_opts','2026-05-26 05:33:58.100500'),(7,'auth','0005_alter_user_last_login_null','2026-05-26 05:33:58.113794'),(8,'auth','0006_require_contenttypes_0002','2026-05-26 05:33:58.119957'),(9,'auth','0007_alter_validators_add_error_messages','2026-05-26 05:33:58.139698'),(10,'auth','0008_alter_user_username_max_length','2026-05-26 05:33:58.154807'),(11,'auth','0009_alter_user_last_name_max_length','2026-05-26 05:33:58.166946'),(12,'auth','0010_alter_group_name_max_length','2026-05-26 05:33:58.181560'),(13,'auth','0011_update_proxy_permissions','2026-05-26 05:33:58.188673'),(14,'auth','0012_alter_user_first_name_max_length','2026-05-26 05:33:58.196759'),(15,'core','0001_initial','2026-05-26 05:33:58.843411'),(16,'admin','0001_initial','2026-05-26 05:33:58.970588'),(17,'admin','0002_logentry_remove_auto_add','2026-05-26 05:33:58.992809'),(18,'admin','0003_logentry_add_action_flag_choices','2026-05-26 05:33:59.006738'),(19,'sessions','0001_initial','2026-05-26 05:33:59.038056'),(20,'core','0002_alter_academias_nit','2026-05-26 22:09:28.658446');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-26 23:18:10
