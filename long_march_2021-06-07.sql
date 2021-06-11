# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.34)
# Database: long_march
# Generation Time: 2021-06-06 23:25:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table email_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `email_template`;

CREATE TABLE `email_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `email_template` WRITE;
/*!40000 ALTER TABLE `email_template` DISABLE KEYS */;

INSERT INTO `email_template` (`id`, `created_at`, `updated_at`, `content`, `name`, `subject`)
VALUES
	(1,NULL,NULL,'<!DOCTYPE html>\n                <html lang=\"en\">\n                <head>\n                    <meta charset=\"utf-8\">\n                    <meta name=\"viewport\" content=\"width=device-width\">\n                    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> \n                    <meta name=\"x-apple-disable-message-reformatting\">\n                    <title>Example</title>\n                    <style>\n                        body {\n                            background-color:#fff;\n                            color:#222222;\n                            margin: 0px auto;\n                            padding: 0px;\n                            height: 100%;\n                            width: 100%;\n                            font-weight: 400;\n                            font-size: 15px;\n                            line-height: 1.8;\n                        }\n                        .continer{\n                            width:400px;\n                            margin-left:auto;\n                            margin-right:auto;\n                            background-color:#efefef;\n                            padding:30px;\n                        }\n                        .btn{\n                            padding: 5px 15px;\n                            display: inline-block;\n                        }\n                        .btn-primary{\n                            border-radius: 3px;\n                            background: #0b3c7c;\n                            color: #fff;\n                            text-decoration: none;\n                        }\n                        .btn-primary:hover{\n                            border-radius: 3px;\n                            background: #4673ad;\n                            color: #fff;\n                            text-decoration: none;\n                        }\n                    </style>\n                </head>\n                <body>\n                    <div class=\"continer\">\n                        <h1>Lorem ipsum dolor</h1>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea <strong>commodo consequat</strong>. \n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n                        </p>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod <a href=\"#\">tempor incididunt ut labore</a> et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n                        </p>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n                        </p>\n                        <a href=\"#\" class=\"btn btn-primary\">Lorem ipsum dolor</a>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation <a href=\"#\">ullamco</a> laboris nisi ut aliquip ex ea commodo consequat. \n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n                        </p>\n                    </div>\n                </body>\n                </html>','Example E-mail','Example E-mail');

/*!40000 ALTER TABLE `email_template` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table example
# ------------------------------------------------------------

DROP TABLE IF EXISTS `example`;

CREATE TABLE `example` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;

INSERT INTO `example` (`id`, `created_at`, `updated_at`, `name`, `description`, `status_id`)
VALUES
	(1,NULL,NULL,'Non minus ab voluptas.','Illum laudantium mollitia quod vel. Possimus dolores ut placeat.',1),
	(2,NULL,NULL,'Dolores delectus voluptas dignissimos dolor.','Non unde placeat amet mollitia nesciunt itaque. Doloribus corporis eaque repellat.',2),
	(3,NULL,NULL,'Reiciendis corrupti assumenda atque rerum.','Sit dolores porro expedita voluptas. Earum beatae sint consequatur dolorum rerum.',3),
	(4,NULL,NULL,'Rerum deserunt asperiores.','Vel a culpa rerum rerum in ea velit beatae.',1),
	(5,NULL,NULL,'Est iure quo est eveniet.','Ut a similique nobis non minima. Occaecati tenetur non sit eius.',1),
	(6,NULL,NULL,'Iusto aut aut libero nihil.','Illo amet et eos ut repudiandae vitae.',1),
	(7,NULL,NULL,'Eum beatae et repellendus.','Voluptatem aut et qui porro.',1),
	(8,NULL,NULL,'Commodi repudiandae quasi deleniti qui dolorem.','Et eaque aut enim non eos quod.',1),
	(9,NULL,NULL,'Fugiat vel consectetur laborum.','Quidem atque error adipisci est sit sit.',1),
	(10,NULL,NULL,'Voluptas magni ut voluptas voluptatem.','Sit corrupti ut sit libero sed dolor sint.',1),
	(11,NULL,NULL,'Voluptas eveniet quo.','Dicta tenetur amet hic beatae ducimus.',3),
	(12,NULL,NULL,'Reiciendis dolores fugit enim.','Ut fugit error fugit laudantium. Tempora molestiae maiores delectus impedit.',4),
	(13,NULL,NULL,'Ut reprehenderit alias quae eum maxime.','Accusamus sed blanditiis ut occaecati. Nisi facere quo dolores accusantium.',2),
	(14,NULL,NULL,'Velit aut qui sapiente nam laudantium.','Voluptates doloremque omnis architecto cupiditate quo aliquam aspernatur quo.',2),
	(15,NULL,NULL,'Nostrum aut quo architecto.','Non dolores in maiores quis nesciunt mollitia. Minima rerum dolores nesciunt.',3),
	(16,NULL,NULL,'Quidem nam quod necessitatibus.','Magni labore et ex sint neque autem itaque.',4),
	(17,NULL,NULL,'Quod odio qui et.','Debitis suscipit nostrum laborum. Dolores iusto consequatur quia iste.',4),
	(18,NULL,NULL,'Nobis enim laborum quasi.','Quas blanditiis sed et sint dolorum.',3),
	(19,NULL,NULL,'Architecto voluptate quis magni.','Tempore totam aliquam et incidunt.',3),
	(20,NULL,NULL,'Voluptatem itaque inventore et beatae facere.','Illo nemo omnis sit quae laudantium. Iste atque sunt quisquam pariatur quis.',4),
	(21,NULL,NULL,'Qui ipsa animi maxime ducimus et.','Quo commodi enim explicabo consequatur minus sint. Ut dolorem ullam atque architecto enim dolorum vitae.',1),
	(22,NULL,NULL,'Odit eos expedita voluptate.','Et perspiciatis amet aut dolorum itaque aut amet atque. Autem omnis nostrum deserunt eaque accusamus cupiditate dolore.',3),
	(23,NULL,NULL,'Praesentium pariatur dolor.','Nesciunt aut qui sed. Est cum laborum minima distinctio tenetur perspiciatis suscipit.',4),
	(24,NULL,NULL,'Iure molestias earum deserunt.','Quod aspernatur sed possimus.',3),
	(25,NULL,NULL,'Veniam qui necessitatibus sint.','Tempora at sit molestiae accusamus nemo. Rem aut minima asperiores reiciendis.',2);

/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table folder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `folder`;

CREATE TABLE `folder` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned DEFAULT NULL,
  `resource` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `folder` WRITE;
/*!40000 ALTER TABLE `folder` DISABLE KEYS */;

INSERT INTO `folder` (`id`, `created_at`, `updated_at`, `name`, `folder_id`, `resource`)
VALUES
	(1,NULL,NULL,'root',NULL,NULL),
	(2,NULL,NULL,'resource',1,1),
	(3,NULL,NULL,'documents',1,NULL),
	(4,NULL,NULL,'graphics',1,NULL),
	(5,NULL,NULL,'other',1,NULL);

/*!40000 ALTER TABLE `folder` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table form
# ------------------------------------------------------------

DROP TABLE IF EXISTS `form`;

CREATE TABLE `form` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `pagination` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;

INSERT INTO `form` (`id`, `created_at`, `updated_at`, `name`, `table_name`, `read`, `edit`, `add`, `delete`, `pagination`)
VALUES
	(1,NULL,NULL,'Example','example',1,1,1,1,5);

/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table form_field
# ------------------------------------------------------------

DROP TABLE IF EXISTS `form_field`;

CREATE TABLE `form_field` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browse` tinyint(1) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `relation_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_column` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int(10) unsigned NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `form_field` WRITE;
/*!40000 ALTER TABLE `form_field` DISABLE KEYS */;

INSERT INTO `form_field` (`id`, `created_at`, `updated_at`, `name`, `type`, `browse`, `read`, `edit`, `add`, `relation_table`, `relation_column`, `form_id`, `column_name`)
VALUES
	(1,NULL,NULL,'Title','text',1,1,1,1,NULL,NULL,1,'name'),
	(2,NULL,NULL,'Description','text_area',1,1,1,1,NULL,NULL,1,'description'),
	(3,NULL,NULL,'Status','relation_select',1,1,1,1,'status','name',1,'status_id');

/*!40000 ALTER TABLE `form_field` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `uuid` bigint(20) unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table menu_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_role`;

CREATE TABLE `menu_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menus_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_role` WRITE;
/*!40000 ALTER TABLE `menu_role` DISABLE KEYS */;

INSERT INTO `menu_role` (`id`, `role_name`, `menus_id`)
VALUES
	(1,'guest',1),
	(2,'user',1),
	(3,'admin',1),
	(4,'guest',2),
	(5,'guest',3),
	(6,'admin',4),
	(7,'admin',5),
	(8,'admin',6),
	(9,'admin',7),
	(10,'admin',8),
	(11,'admin',9),
	(12,'user',10),
	(13,'admin',10),
	(14,'user',11),
	(15,'admin',11),
	(16,'user',12),
	(17,'admin',12),
	(18,'user',13),
	(19,'admin',13),
	(20,'user',14),
	(21,'admin',14),
	(22,'user',15),
	(23,'admin',15),
	(24,'user',16),
	(25,'admin',16),
	(26,'user',17),
	(27,'admin',17),
	(28,'user',18),
	(29,'admin',18),
	(30,'user',19),
	(31,'admin',19),
	(32,'user',20),
	(33,'admin',20),
	(34,'user',21),
	(35,'admin',21),
	(36,'user',22),
	(37,'admin',22),
	(38,'user',23),
	(39,'admin',23),
	(40,'user',24),
	(41,'admin',24),
	(42,'user',25),
	(43,'admin',25),
	(44,'user',26),
	(45,'admin',26),
	(46,'user',27),
	(47,'admin',27),
	(48,'user',28),
	(49,'admin',28),
	(50,'user',29),
	(51,'admin',29),
	(52,'user',30),
	(53,'admin',30),
	(54,'user',31),
	(55,'admin',31),
	(56,'user',32),
	(57,'admin',32),
	(58,'user',33),
	(59,'admin',33),
	(60,'user',34),
	(61,'admin',34),
	(62,'user',35),
	(63,'admin',35),
	(64,'user',36),
	(65,'admin',36),
	(66,'user',37),
	(67,'admin',37),
	(68,'user',38),
	(69,'admin',38),
	(70,'user',39),
	(71,'admin',39),
	(72,'user',40),
	(73,'admin',40),
	(74,'user',41),
	(75,'admin',41),
	(76,'user',42),
	(77,'admin',42),
	(78,'user',43),
	(79,'admin',43),
	(80,'user',44),
	(81,'admin',44),
	(82,'user',45),
	(83,'admin',45),
	(84,'user',46),
	(85,'admin',46),
	(86,'user',47),
	(87,'admin',47),
	(88,'user',48),
	(89,'admin',48),
	(90,'user',49),
	(91,'admin',49),
	(92,'user',50),
	(93,'admin',50),
	(94,'guest',51),
	(95,'user',51),
	(96,'admin',51),
	(97,'guest',52),
	(98,'user',52),
	(99,'admin',52),
	(100,'guest',53),
	(101,'user',53),
	(102,'admin',53),
	(103,'guest',54),
	(104,'user',54),
	(105,'admin',54),
	(106,'user',55),
	(107,'admin',55),
	(108,'admin',56),
	(109,'admin',57),
	(110,'admin',58),
	(111,'admin',59),
	(112,'admin',60),
	(113,'admin',61),
	(114,'admin',62);

/*!40000 ALTER TABLE `menu_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menulist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menulist`;

CREATE TABLE `menulist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menulist` WRITE;
/*!40000 ALTER TABLE `menulist` DISABLE KEYS */;

INSERT INTO `menulist` (`id`, `name`)
VALUES
	(1,'sidebar menu'),
	(2,'top_menu');

/*!40000 ALTER TABLE `menulist` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `href`, `icon`, `slug`, `parent_id`, `menu_id`, `sequence`)
VALUES
	(1,'Dashboard','/','cil-speedometer','link',NULL,1,1),
	(2,'Login','/login','cil-account-logout','link',NULL,1,2),
	(3,'Register','/register','cil-account-logout','link',NULL,1,3),
	(4,'Settings','/settings','cil-puzzle','dropdown',NULL,1,4),
	(5,'Media','/media',NULL,'link',4,1,5),
	(6,'Users','/users',NULL,'link',4,1,6),
	(7,'Menu','/menu',NULL,'link',4,1,7),
	(8,'BREAD','/bread',NULL,'link',4,1,8),
	(9,'Email','/email',NULL,'link',4,1,9),
	(10,'Theme',NULL,NULL,'title',NULL,1,10),
	(11,'Colors','/colors','cil-drop','link',NULL,1,11),
	(12,'Typography','/typography','cil-pencil','link',NULL,1,12),
	(13,'Components',NULL,NULL,'title',NULL,1,13),
	(14,'Base','/base','cil-puzzle','dropdown',NULL,1,14),
	(15,'Breadcrumb','/base/breadcrumb',NULL,'link',14,1,15),
	(16,'Cards','/base/cards',NULL,'link',14,1,16),
	(17,'Carousel','/base/carousel',NULL,'link',14,1,17),
	(18,'Collapse','/base/collapse',NULL,'link',14,1,18),
	(19,'Forms','/base/forms',NULL,'link',14,1,19),
	(20,'Jumbotron','/base/jumbotron',NULL,'link',14,1,20),
	(21,'List group','/base/list-group',NULL,'link',14,1,21),
	(22,'Navs','/base/navs',NULL,'link',14,1,22),
	(23,'Pagination','/base/pagination',NULL,'link',14,1,23),
	(24,'Popovers','/base/popovers',NULL,'link',14,1,24),
	(25,'Progress','/base/progress',NULL,'link',14,1,25),
	(26,'Switches','/base/switches',NULL,'link',14,1,26),
	(27,'Tables','/base/tables',NULL,'link',14,1,27),
	(28,'Tabs','/base/tabs',NULL,'link',14,1,28),
	(29,'Tooltips','/base/tooltips',NULL,'link',14,1,29),
	(30,'Buttons','/buttons','cil-cursor','dropdown',NULL,1,30),
	(31,'Buttons','/buttons/buttons',NULL,'link',30,1,31),
	(32,'Buttons Group','/buttons/button-group',NULL,'link',30,1,32),
	(33,'Dropdowns','/buttons/dropdowns',NULL,'link',30,1,33),
	(34,'Brand Buttons','/buttons/brand-buttons',NULL,'link',30,1,34),
	(35,'Charts','/charts','cil-chart-pie','link',NULL,1,35),
	(36,'Icons','/icon','cil-star','dropdown',NULL,1,36),
	(37,'CoreUI Icons','/icon/coreui-icons',NULL,'link',36,1,37),
	(38,'Flags','/icon/flags',NULL,'link',36,1,38),
	(39,'Brands','/icon/brands',NULL,'link',36,1,39),
	(40,'Notifications','/notifications','cil-bell','dropdown',NULL,1,40),
	(41,'Alerts','/notifications/alerts',NULL,'link',40,1,41),
	(42,'Badge','/notifications/badge',NULL,'link',40,1,42),
	(43,'Modals','/notifications/modals',NULL,'link',40,1,43),
	(44,'Widgets','/widgets','cil-calculator','link',NULL,1,44),
	(45,'Extras',NULL,NULL,'title',NULL,1,45),
	(46,'Pages','/pages','cil-star','dropdown',NULL,1,46),
	(47,'Login','/login',NULL,'link',46,1,47),
	(48,'Register','/register',NULL,'link',46,1,48),
	(49,'Error 404','/404',NULL,'link',46,1,49),
	(50,'Error 500','/500',NULL,'link',46,1,50),
	(51,'Download CoreUI','https://coreui.io','cil-cloud-download','link',NULL,1,51),
	(52,'Try CoreUI PRO','https://coreui.io/pro/','cil-layers','link',NULL,1,52),
	(53,'Pages','','','dropdown',NULL,2,53),
	(54,'Dashboard','/',NULL,'link',53,2,54),
	(55,'Notes','/notes',NULL,'link',53,2,55),
	(56,'Users','/users',NULL,'link',53,2,56),
	(57,'Settings','','','dropdown',NULL,2,57),
	(58,'Edit menu','/menu',NULL,'link',57,2,58),
	(59,'Edit roles','/roles',NULL,'link',57,2,59),
	(60,'Media','/media',NULL,'link',57,2,60),
	(61,'BREAD','/bread',NULL,'link',57,2,61),
	(62,'E-mail','/email',NULL,'link',57,2,62);

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1),
	(4,'2019_10_11_085455_create_notes_table',1),
	(5,'2019_10_12_115248_create_status_table',1),
	(6,'2019_11_08_102827_create_menus_table',1),
	(7,'2019_11_13_092213_create_menurole_table',1),
	(8,'2019_12_11_091036_create_menulist_table',1),
	(9,'2019_12_18_092518_create_role_hierarchy_table',1),
	(10,'2020_01_07_093259_create_folder_table',1),
	(11,'2020_01_21_150250_create_media_table',1),
	(12,'2020_01_21_161241_create_form_field_table',1),
	(13,'2020_01_21_161242_create_form_table',1),
	(14,'2020_01_21_161243_create_example_table',1),
	(15,'2020_02_12_104545_create_permission_tables',1),
	(16,'2020_03_12_111400_create_email_template_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table model_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table model_has_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`)
VALUES
	(1,'App\\Models\\User',1),
	(2,'App\\Models\\User',1),
	(2,'App\\Models\\User',2),
	(2,'App\\Models\\User',3),
	(2,'App\\Models\\User',4),
	(2,'App\\Models\\User',5),
	(2,'App\\Models\\User',6),
	(2,'App\\Models\\User',7),
	(2,'App\\Models\\User',8),
	(2,'App\\Models\\User',9),
	(2,'App\\Models\\User',10),
	(2,'App\\Models\\User',11);

/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applies_to_date` date NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;

INSERT INTO `notes` (`id`, `title`, `content`, `note_type`, `applies_to_date`, `users_id`, `status_id`, `created_at`, `updated_at`)
VALUES
	(1,'Voluptatem et est.','Totam rerum sequi ea. Cupiditate molestiae aliquid quibusdam fugit vel nemo doloribus. Asperiores at enim nihil non.','sit dolor','1998-04-15',2,4,NULL,NULL),
	(2,'Ullam cum in accusantium.','Aut aut veritatis accusamus et et est. Reprehenderit beatae iste qui et. Dolorem quisquam earum omnis optio pariatur odio numquam. Molestiae repellendus quisquam qui necessitatibus dolores voluptatibus possimus.','non','1997-07-21',9,1,NULL,NULL),
	(3,'Molestias tenetur est cum reprehenderit.','Et est dolores quam ut. Corporis ab molestiae eius eos sunt. Ipsum suscipit et incidunt deserunt maiores dolor ut ut.','ipsa velit','2016-07-26',9,1,NULL,NULL),
	(4,'Facilis praesentium sequi repudiandae et.','Id labore sit dolores laborum consequatur velit. Corrupti magni id qui ullam repellendus facilis et. Aperiam explicabo sed minima consequatur nostrum et.','qui','1972-09-01',3,3,NULL,NULL),
	(5,'Consectetur soluta et quaerat ratione et.','Porro in est vel nihil omnis voluptatem. Nesciunt sed natus quos nesciunt unde consequatur quo. Dolorem sit et harum tempora.','ipsum omnis','2002-10-09',11,4,NULL,NULL),
	(6,'Quia eveniet atque sunt.','Ullam ab odit unde nisi. Autem accusantium sit quia sint. Perspiciatis eveniet labore reprehenderit.','unde in','1977-03-20',4,1,NULL,NULL),
	(7,'Voluptatem sed cupiditate dolorem minus.','Minus molestias aperiam doloribus fuga deleniti. Omnis sit itaque nesciunt dolorum saepe.','facilis','2011-08-16',5,2,NULL,NULL),
	(8,'Sed necessitatibus dolores ea.','Voluptas praesentium necessitatibus eum earum. Aut incidunt voluptates quam sunt. Optio saepe aut ipsam alias.','mollitia dolore','1988-06-13',6,3,NULL,NULL),
	(9,'Qui dolores sequi iste.','Et placeat a corporis quis minus recusandae. Consequatur earum praesentium corrupti saepe illum. Rerum qui ipsum rerum et iste. Sit numquam tempora illum totam nostrum voluptates.','in voluptas','2016-05-05',7,3,NULL,NULL),
	(10,'Optio incidunt ducimus excepturi quo.','Velit explicabo molestiae eius qui. Minima consequatur ipsum natus voluptatum. Delectus facilis quisquam est et quia mollitia. Praesentium voluptate sapiente est molestiae nostrum pariatur quibusdam.','error','1970-09-03',9,2,NULL,NULL),
	(11,'Magnam aperiam ducimus dolore.','Vel rerum vitae delectus veniam repellat. Exercitationem sint eius beatae placeat autem fugiat. Id quos ut nihil. Dolores illo nisi saepe corrupti tempora enim voluptas.','sunt voluptas','1977-09-02',11,4,NULL,NULL),
	(12,'Et suscipit aut.','Totam ut est unde ut sint expedita et. Occaecati sed asperiores est aliquam rem quaerat quia. Reiciendis molestias iste ea debitis et asperiores dolores quod.','nobis optio','2000-10-17',2,1,NULL,NULL),
	(13,'Atque corporis non sint non.','Quisquam quia ipsa incidunt sed ullam. Possimus et veniam accusantium fugit sit.','fugiat nihil','2016-08-14',5,2,NULL,NULL),
	(14,'Exercitationem voluptatibus soluta autem voluptas.','Ad aliquam quis et nemo minima quia et. Qui placeat quas provident quis. Deserunt perferendis id accusamus. Iste modi rerum id quod minus.','exercitationem pariatur','1978-12-30',5,3,NULL,NULL),
	(15,'Quaerat quam atque.','Provident est nobis voluptatem odit accusamus dicta. Exercitationem eum quo sunt qui. Nostrum voluptatum magnam odit explicabo repudiandae est delectus voluptate. Quos velit occaecati itaque aut.','non','1978-05-23',8,1,NULL,NULL),
	(16,'Labore qui repudiandae.','Unde aut ea dolor et ea. Voluptates est culpa porro error ipsam. Tempore dolore aut autem ullam. Aperiam ut quasi nesciunt omnis perspiciatis neque est.','doloremque in','2001-03-18',10,2,NULL,NULL),
	(17,'Maiores omnis odio libero tempore sed.','Exercitationem dolorem enim ut accusantium. Ipsum iste qui repellat corrupti sit. Quia fuga iste quia error.','voluptatem ab','1977-05-05',11,1,NULL,NULL),
	(18,'Accusamus eum unde.','Nihil suscipit quaerat corporis ducimus eaque laborum explicabo vero. Nostrum sequi a ratione mollitia ea consequuntur officiis. Vel dolores eos reprehenderit adipisci odit error hic. Quisquam culpa numquam ex sapiente et aut.','dolor aspernatur','2005-06-27',6,1,NULL,NULL),
	(19,'Numquam nemo iste deserunt fugit et.','Rerum non beatae labore mollitia tempore in. Minima rerum vel nemo ipsam dolorum. Perspiciatis et officiis similique impedit aut dignissimos id quisquam.','et','1997-10-21',10,1,NULL,NULL),
	(20,'Facere consequatur voluptas incidunt quaerat.','Dignissimos ex vitae accusantium nulla aspernatur incidunt. Harum ut et ipsum enim velit expedita. A non consequuntur eos laborum porro excepturi.','nesciunt','2001-08-09',4,4,NULL,NULL),
	(21,'Iusto sapiente aperiam quam consequatur.','A voluptatem consequatur eligendi. Officiis non consequatur dolores voluptatum et asperiores. Dolorem reiciendis modi qui aliquam. Necessitatibus commodi ut laboriosam in voluptatem repellat fugit velit.','saepe repudiandae','2011-12-05',5,4,NULL,NULL),
	(22,'Quo in id at non.','Unde alias praesentium quidem sapiente provident voluptatibus pariatur. Nobis reiciendis recusandae aut expedita laudantium unde.','vel','1993-10-16',7,1,NULL,NULL),
	(23,'Quam consequatur quos et cum.','Magni cupiditate at deserunt cupiditate eaque aut et error. Impedit dicta cumque eos sapiente recusandae. Quibusdam iste ex nobis maxime qui. Quo nemo numquam quisquam rerum veritatis.','sit','2008-08-13',8,3,NULL,NULL),
	(24,'Saepe placeat ullam totam.','Aperiam itaque omnis repudiandae ut. Amet enim alias dolor sint fugiat atque est. Autem sed voluptates architecto omnis sit voluptatem quos reprehenderit. Ut corporis adipisci qui animi quaerat enim qui.','dolorem sit','1989-09-10',2,1,NULL,NULL),
	(25,'Enim qui earum laudantium.','Assumenda et nobis est facilis cupiditate. Assumenda et debitis vitae veniam. Debitis nam enim laboriosam unde ut.','molestias','2019-05-04',3,4,NULL,NULL),
	(26,'Eius fugit expedita explicabo odio totam.','Laborum at aut optio asperiores veniam sint ut. Earum quas qui sint ea voluptatem ut. Et tenetur occaecati non sed. Porro dignissimos natus minima eum qui quia.','libero','1993-02-24',9,3,NULL,NULL),
	(27,'Est aperiam voluptates quia.','Sunt officiis voluptas eaque corrupti. Ab eveniet facilis quia natus porro numquam. Consectetur quibusdam in voluptatibus molestiae perspiciatis.','quod','1989-07-28',6,2,NULL,NULL),
	(28,'Optio sed qui.','Accusantium repudiandae quae quia dolor veritatis. Eos sunt qui ut. Dolorem excepturi occaecati repudiandae.','assumenda culpa','1999-10-12',3,2,NULL,NULL),
	(29,'Expedita nisi pariatur tempore.','Labore numquam enim nostrum tempore repellendus beatae. Maiores voluptatum adipisci tempora sed ut veniam. Est voluptatem et nihil.','tempora','1999-11-14',6,2,NULL,NULL),
	(30,'Nam sit magnam.','Quia eos itaque provident omnis et tenetur sapiente. Modi ullam debitis voluptatem quis. Ut voluptas qui atque voluptatem ratione. Ducimus beatae architecto voluptatem voluptatum. Enim maxime reiciendis hic error.','perferendis in','2002-01-25',2,1,NULL,NULL),
	(31,'Deleniti est quidem sit odio.','Non debitis nulla optio illo aut deserunt similique. Praesentium exercitationem quis dolor qui. Sapiente nihil ut labore culpa nihil. Libero mollitia necessitatibus sed voluptatum eos exercitationem.','minus nisi','2009-01-04',3,4,NULL,NULL),
	(32,'Odit veniam earum asperiores eius.','Ratione fugit est eum et voluptatem voluptate velit. Neque ratione facilis omnis laborum in nam. Occaecati rerum optio consequatur culpa praesentium.','sit','1987-10-28',11,1,NULL,NULL),
	(33,'Quia velit cumque.','Quia ratione animi fuga qui. Sit nobis magni quia. Architecto sint provident culpa perspiciatis pariatur voluptate dolorem. Et asperiores eligendi praesentium.','facilis','1976-07-15',2,3,NULL,NULL),
	(34,'Velit sint sit perferendis dolorum et.','Laborum repellat ducimus officiis et voluptates quod recusandae. Dolorum saepe quaerat autem quos alias enim. Consectetur et quod est qui quis rerum provident odio.','eveniet','1974-03-01',3,3,NULL,NULL),
	(35,'Maxime necessitatibus esse quia enim.','Qui architecto qui nemo molestiae modi vel distinctio. Aliquid distinctio nihil sed. Ducimus doloribus enim non dolor. Eius sint a harum.','eum','1979-09-15',7,3,NULL,NULL),
	(36,'Maiores et sint sit.','Libero qui omnis et numquam commodi atque officia dolores. Perspiciatis modi adipisci nisi et accusamus neque quia. Animi nihil vero unde. Nihil sit vel provident vitae dolore nostrum. Ad non rerum impedit quam odit molestiae id.','voluptates','1996-03-22',7,3,NULL,NULL),
	(37,'Sapiente consequatur fugit voluptate dolores fuga.','Voluptas ut libero ratione sed ex quia voluptatem rerum. Nihil voluptatem ut odit facilis consectetur expedita. Recusandae sunt ut nam voluptatem molestiae. Delectus consequatur cupiditate quia doloremque. Enim sit rerum laborum iusto fuga vero sint.','sunt','1972-12-19',3,1,NULL,NULL),
	(38,'Illo animi neque.','Quis quia accusamus impedit eius repudiandae omnis et. Beatae doloremque et dolorem vero ipsum iure. Et ipsa earum aperiam. Molestias illum minima qui deleniti impedit deleniti omnis.','inventore dolore','1972-10-28',5,1,NULL,NULL),
	(39,'Perspiciatis voluptas in.','Qui voluptas inventore ratione. Repellendus aut reiciendis non voluptatem vel consequatur magnam earum. Cupiditate nisi aut mollitia eum ut exercitationem minima. Dolorem aut porro vel qui aut est.','sunt modi','2014-02-24',3,4,NULL,NULL),
	(40,'Molestiae provident perspiciatis voluptatem inventore.','Dolorum reprehenderit voluptatem quia occaecati provident. Eligendi qui animi voluptatem quo aspernatur beatae vel. Fugit quo possimus non maxime. Sed est aut culpa aut vero.','nihil aspernatur','1980-04-06',11,4,NULL,NULL),
	(41,'Fuga in sed voluptatem.','Aut at veritatis fuga et ut vel. Officiis qui dolor cum non tenetur velit quia quia. Qui adipisci aut libero placeat. Magnam neque ullam expedita minus consequatur aspernatur consequuntur.','voluptatum','1989-11-04',10,1,NULL,NULL),
	(42,'Perspiciatis dolorum at occaecati mollitia earum.','Natus porro reprehenderit dolores odit eum culpa ea. Et adipisci qui ad aperiam commodi qui distinctio. Magnam autem sit enim.','consequuntur pariatur','1977-04-09',9,4,NULL,NULL),
	(43,'Qui sunt ex debitis libero.','Adipisci aperiam nulla ab dolores voluptatum aliquid qui. Itaque soluta natus quisquam qui voluptatem est dignissimos. Culpa eum quia aut aut recusandae. Et accusantium rerum qui tempora.','porro','2013-05-16',8,4,NULL,NULL),
	(44,'Magnam aspernatur excepturi qui.','Quibusdam sunt incidunt ipsum soluta ea similique quidem. Voluptates reprehenderit repellendus sed voluptas in et sequi magni. Natus eum et autem autem voluptatibus reiciendis qui.','assumenda voluptatem','2020-12-12',5,4,NULL,NULL),
	(45,'Explicabo non quod velit animi.','Quia placeat labore autem dolorum provident officiis. Aut quam excepturi et temporibus consequatur repellendus. Nesciunt aut corporis aspernatur impedit consequatur dolore.','dolorum ut','2006-04-08',6,1,NULL,NULL),
	(46,'Explicabo magnam rerum.','Aut quia quibusdam suscipit debitis eligendi suscipit sint illum. Mollitia nam voluptatem quis voluptates perferendis consectetur modi. Non est ducimus dignissimos soluta.','quasi','2001-02-26',8,3,NULL,NULL),
	(47,'Repellat dolorem officiis fugit facere.','Nihil omnis voluptas voluptatem error consequatur et necessitatibus. Nostrum quas nisi qui qui. Doloremque sunt ducimus incidunt nam ut reiciendis nemo. Pariatur tempora rem expedita quos quae.','assumenda','1997-05-26',7,3,NULL,NULL),
	(48,'Accusantium aliquid voluptatibus nostrum maxime debitis.','Quos quia odio molestias aut. Id voluptatem vel perspiciatis inventore repudiandae omnis. Temporibus sint eum quae qui.','dolorum qui','1983-08-21',6,3,NULL,NULL),
	(49,'Quas esse et aut.','Est voluptatibus exercitationem non voluptatem maxime maxime aut. Voluptates quia sapiente ipsa commodi in praesentium.','minima fuga','1979-10-31',3,4,NULL,NULL),
	(50,'Quaerat ut aut.','Accusantium dolorem omnis est voluptatem nihil aperiam placeat enim. Deleniti dolorem ut consequatur molestiae. Voluptas vel qui minus.','blanditiis blanditiis','1983-11-02',6,1,NULL,NULL),
	(51,'Deleniti ea in.','Enim ipsam ratione voluptatem. Recusandae autem quis ea ea. Consequatur et eum rerum qui.','rerum voluptas','1979-08-13',11,2,NULL,NULL),
	(52,'Velit sit est architecto voluptates id.','Voluptatibus ducimus provident provident excepturi. Dicta est magni cum. Dolor ut nemo praesentium sit tempora aspernatur dolorum.','est','1990-11-23',3,2,NULL,NULL),
	(53,'Voluptas ipsum minima dolor sint libero.','Quasi distinctio non voluptas non velit tempore. Voluptatum consequatur architecto similique illum. Mollitia aut non voluptas.','cupiditate','2006-06-21',6,1,NULL,NULL),
	(54,'Omnis odit quis voluptatem.','Laboriosam rerum dolore mollitia quia a error. Vel qui dolorum ducimus non molestiae consequatur aut omnis. Exercitationem ipsa quia assumenda. Aut perferendis amet at. Iure esse hic corporis sed dolore modi provident.','blanditiis velit','1980-07-12',2,4,NULL,NULL),
	(55,'Rerum eum voluptatem vero.','Rerum quos recusandae impedit deserunt nemo voluptate sapiente. Necessitatibus quia repellendus dicta. Quos esse et nam beatae ipsum dolorem laboriosam.','modi alias','1971-09-19',10,3,NULL,NULL),
	(56,'Debitis velit ut dolores.','Numquam consequatur sunt suscipit commodi et. Ipsum nisi libero laboriosam ullam est. Commodi vitae omnis expedita quidem debitis. Aperiam cum laudantium et tempora.','ut excepturi','1975-08-09',9,4,NULL,NULL),
	(57,'Neque deserunt optio quaerat aut.','Ipsum tenetur commodi magni labore quos. Et tempora qui dolorum. Ea commodi distinctio iusto nisi. Unde expedita et dolorem adipisci voluptatum.','ut voluptates','2007-03-21',2,2,NULL,NULL),
	(58,'Explicabo ducimus deserunt.','Accusamus ea repellat et. Et consectetur laudantium iure dignissimos sint ex. Nulla et in eveniet impedit recusandae.','omnis','2012-02-17',11,3,NULL,NULL),
	(59,'Aut impedit assumenda.','Placeat consequatur sed maxime temporibus. Cum est distinctio vitae amet. Natus voluptate laudantium incidunt veritatis ducimus quia. Placeat laudantium quod labore distinctio omnis quia libero. In illo et id sequi sit.','id qui','1992-02-22',5,1,NULL,NULL),
	(60,'Et voluptatum quis.','Iste autem laboriosam architecto laboriosam beatae. Assumenda ut dolore facilis vero. Iste dolor ullam corrupti aut quia.','voluptas','1996-01-15',6,2,NULL,NULL),
	(61,'In quo est error.','Sint consequuntur ab aut quia. Sed est modi perspiciatis harum totam. In minima qui sint unde.','et autem','1980-03-28',5,3,NULL,NULL),
	(62,'Eaque dolorem occaecati.','Possimus ad commodi dolorem reiciendis officia tenetur id. Eaque iusto cumque suscipit nulla earum. Accusantium necessitatibus similique omnis quam dicta aliquid.','molestiae','1991-04-26',8,4,NULL,NULL),
	(63,'Vitae et nemo in rerum quia.','Aut quas minima occaecati officiis. Quo quos mollitia aliquid eveniet. Perferendis cumque sunt optio neque molestiae quae qui recusandae. Rem quod qui optio ut magni.','molestiae porro','1973-02-23',7,3,NULL,NULL),
	(64,'Laboriosam minus velit dolorem eos.','Aliquid tenetur ut rerum libero ipsum eum. Maiores eaque aliquid tenetur quas tenetur aspernatur. Eum modi sapiente voluptas commodi.','ipsum eos','2013-07-11',5,4,NULL,NULL),
	(65,'Magnam libero rerum commodi ut incidunt.','Cupiditate corrupti quae error nulla qui nisi. Nihil omnis adipisci quis est ut quod quia. Sed eum officiis autem amet est. Eaque debitis sed doloribus enim consequatur accusamus incidunt.','quasi delectus','2018-01-16',6,3,NULL,NULL),
	(66,'Illo maxime sit.','Voluptas molestiae repellendus dolorum qui. Quas aut illum consequuntur quos dolor aut a. Modi beatae eaque saepe vitae. Eos unde inventore totam molestiae et sed delectus.','totam','1993-09-13',4,1,NULL,NULL),
	(67,'Facilis totam rerum quo illum voluptates.','Sed qui excepturi exercitationem. Vitae voluptatum doloremque consequatur expedita voluptas. Quo iste velit nulla voluptates. Error voluptatem beatae molestiae eum fugit autem voluptatibus. Enim quos delectus libero sed.','eius','1994-06-05',10,2,NULL,NULL),
	(68,'Est in est.','Id ullam eos sunt. Qui soluta laudantium voluptates sit. Quam numquam recusandae ex aut illum.','fuga repellendus','1985-07-27',2,4,NULL,NULL),
	(69,'Culpa rerum alias.','Aliquam esse ex occaecati aperiam labore. Dolores assumenda error adipisci laboriosam quas ut explicabo. Dolor non sunt facilis rem.','veniam ipsa','2020-02-17',4,3,NULL,NULL),
	(70,'Eius et consequatur.','Voluptatem non in nam esse eos qui facere. Eos consequatur nam voluptatum neque itaque dignissimos alias. Ipsum eaque qui earum non est.','laboriosam tempora','1995-02-22',4,4,NULL,NULL),
	(71,'Dolore officia ea voluptas.','Velit perferendis rem eos numquam dolores. Rerum ad porro qui. Molestias sint esse asperiores.','voluptatibus','1997-07-01',2,3,NULL,NULL),
	(72,'Aut quo commodi et.','Dolorem unde dolores perferendis et ex consequuntur in. Harum id debitis blanditiis aut error quod nesciunt quos. Officia fuga numquam placeat omnis delectus blanditiis. Odit et accusantium et soluta aliquam facere.','similique facere','1988-10-10',10,4,NULL,NULL),
	(73,'Ipsam odit enim.','Alias facilis rem nam tenetur officiis exercitationem distinctio. Blanditiis occaecati unde illo eligendi aut repellat. Aut consectetur eaque deleniti.','omnis','1999-01-18',11,3,NULL,NULL),
	(74,'Eum earum architecto aspernatur.','In rerum autem officia temporibus ducimus ipsum. Quis adipisci similique fugit itaque est facere. Et qui dolores optio ut ratione ducimus quas.','eaque','1991-10-03',2,2,NULL,NULL),
	(75,'Sit ipsa expedita provident.','Deleniti aut qui rerum. Nesciunt id facere iure quia et consequatur omnis. Animi molestias doloremque aliquid quas. Aut molestiae doloremque aut tempora. Eaque velit esse aliquam.','assumenda odio','1983-12-19',2,1,NULL,NULL),
	(76,'Dolorem ipsam ratione iure dicta odio.','Voluptatem quos pariatur et ipsa consectetur. Nihil et placeat consequatur et et. Molestiae alias aspernatur saepe vitae. Harum doloremque voluptas recusandae natus ratione aut.','et error','2019-08-16',8,4,NULL,NULL),
	(77,'Fuga consequatur recusandae alias sapiente.','Necessitatibus dolore fuga sit rerum magni delectus. Officia et qui modi eius sequi et ut. Ut natus ut voluptate rerum enim sequi. Quos sint debitis fugiat accusamus quidem tenetur culpa.','ipsam','2010-08-28',4,3,NULL,NULL),
	(78,'Et ab incidunt.','Voluptate maxime sint voluptas tempora. Et nostrum harum inventore at dolor reprehenderit. Aut eveniet et praesentium excepturi. Sit ut et explicabo eum animi autem et.','expedita','2001-03-21',5,3,NULL,NULL),
	(79,'Dolor sed aut laboriosam.','Consequatur quia vitae eius molestias. Eligendi aut perferendis ipsa maxime velit rerum. Sed quam fuga accusantium at debitis porro debitis. Et hic vel maxime commodi sunt dolorem deserunt eum. Rem repellendus illum vel dignissimos aspernatur eaque aut.','quas dolor','1984-03-30',8,1,NULL,NULL),
	(80,'Ipsa eligendi quas id.','Minima soluta maxime omnis iure reiciendis magnam. Possimus explicabo tempora itaque tenetur eum non similique. Consequuntur nesciunt et quos unde debitis ea. Quia deleniti neque deleniti pariatur inventore dolores.','explicabo','1989-01-16',2,3,NULL,NULL),
	(81,'Facilis tenetur sit.','Est consequuntur nihil aut quisquam et id et. Qui veritatis provident et eius. Perspiciatis sapiente autem ipsa neque corporis. Illum aperiam commodi molestias.','enim','2000-05-30',9,2,NULL,NULL),
	(82,'Nisi minus velit.','Harum corrupti rerum ex adipisci officia totam velit. Beatae sint sit dicta. Sequi doloremque quisquam et veniam est praesentium temporibus mollitia. Impedit fugiat illo modi sit est voluptatem.','modi','2003-08-09',11,3,NULL,NULL),
	(83,'Perferendis explicabo optio esse quidem eligendi.','Nulla in est atque. Sed laborum pariatur sed non sed.','est voluptas','2007-05-04',4,3,NULL,NULL),
	(84,'Labore inventore a adipisci.','Repellendus sit id dolor maxime recusandae fugit. Praesentium a assumenda est repellendus quibusdam molestiae. Deserunt officia neque quisquam ducimus velit consequatur. Dolor rerum nemo vero id.','voluptas est','2001-10-26',7,3,NULL,NULL),
	(85,'Vel labore unde.','Exercitationem doloribus aperiam adipisci nisi cum totam tempore. Unde et a reiciendis itaque nulla laudantium. Voluptate hic ad sunt minima earum magni dicta. Ut ex vel nostrum voluptatem natus veniam.','culpa','1996-02-10',2,4,NULL,NULL),
	(86,'Porro non repellendus maiores autem eligendi.','Consequatur eum esse in dolor eveniet consequatur. Totam suscipit sunt atque repellat et accusamus quia. Nobis quis reprehenderit maxime ea eaque explicabo quia. Neque architecto dicta eligendi dolor.','vel','1980-06-23',4,3,NULL,NULL),
	(87,'Iure voluptas voluptates et iusto.','Ipsam velit rerum explicabo maxime neque. Iure ea accusamus sunt voluptate natus. Sint iste occaecati eveniet non nostrum nihil doloribus. Labore eveniet reprehenderit quia.','officia facilis','2003-07-23',11,3,NULL,NULL),
	(88,'Facere aut cumque natus quisquam ipsum.','Nam non officiis ut rerum ut officiis. A unde velit corporis. Expedita illo sed voluptatem ea necessitatibus.','dolor','1988-06-04',11,4,NULL,NULL),
	(89,'Cupiditate saepe perferendis facilis.','Necessitatibus qui rerum facere porro. Commodi enim consequuntur deserunt velit qui nisi accusamus. Nobis ut aliquam minus id.','est','1979-12-13',11,3,NULL,NULL),
	(90,'Excepturi sequi quos architecto.','Nam ut eum minima velit. Qui ea incidunt numquam ut. Corporis enim voluptas voluptatum omnis maxime magni. Autem fugit asperiores tempore incidunt quaerat.','fugiat','2008-04-26',11,3,NULL,NULL),
	(91,'Illum enim iste qui placeat.','Ad assumenda veritatis quibusdam suscipit voluptate veniam vel molestiae. Suscipit non dolorem dolore iste tenetur et rerum. Aspernatur sed et necessitatibus earum aspernatur necessitatibus magnam. Quod placeat porro quidem ut et vel.','labore','1985-06-11',5,2,NULL,NULL),
	(92,'Et modi harum voluptatum commodi.','Nihil odio incidunt nostrum voluptas nemo et unde. Consequatur odio molestias corrupti dolores nostrum deserunt quidem. Illum aliquam laudantium nulla aperiam recusandae qui.','tenetur','1984-04-24',8,2,NULL,NULL),
	(93,'Tempora rerum expedita vitae et doloremque.','Nihil vero corporis consequatur sed consectetur. Voluptas exercitationem ipsam corrupti magnam. Qui consequatur exercitationem expedita veritatis quibusdam itaque et.','veritatis','2011-11-05',6,1,NULL,NULL),
	(94,'Illo sed fugiat illo corporis ea.','Assumenda sint sequi exercitationem et doloremque repellat tempore est. Accusantium est vero tenetur et.','id nisi','1971-11-03',3,2,NULL,NULL),
	(95,'Hic distinctio omnis eveniet maxime.','Quo sed animi veniam laudantium nulla id. Dolor voluptatum sed non nesciunt ipsam.','quo sed','1992-12-27',11,3,NULL,NULL),
	(96,'Sit ullam quod.','Non est sunt voluptates delectus. Quibusdam accusamus omnis fugit. Suscipit porro libero exercitationem optio vel asperiores quis.','itaque','1976-04-12',9,4,NULL,NULL),
	(97,'Consequatur blanditiis officiis sit sed.','Dolorem est voluptatum debitis et laudantium nesciunt qui voluptatibus. Deserunt rerum qui quos repudiandae omnis sunt cumque. Aliquam quia adipisci vel eum.','veniam qui','1985-06-21',9,2,NULL,NULL),
	(98,'Consequatur sit ullam rerum.','Laborum voluptate quis sunt voluptatem dolores. Assumenda ut est laboriosam dolor fugit nobis. Error ipsum possimus necessitatibus. Ullam quod dolores perspiciatis vitae.','deleniti blanditiis','2004-04-06',8,2,NULL,NULL),
	(99,'Harum cumque praesentium facilis animi.','Reiciendis tenetur voluptatem molestias porro veritatis. Aut delectus accusantium ullam aut. Laborum est ad repellat est.','porro expedita','1987-08-05',4,2,NULL,NULL),
	(100,'Tenetur cupiditate quidem id.','Velit minus accusantium dolor error eligendi sint. Inventore vel neque ducimus provident sed aspernatur unde illum. Mollitia repudiandae voluptate aut sint sunt minus.','ipsum tempora','2019-11-28',8,4,NULL,NULL);

/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse bread 1','api','2021-05-25 06:49:07','2021-05-25 06:49:07'),
	(2,'read bread 1','api','2021-05-25 06:49:07','2021-05-25 06:49:07'),
	(3,'edit bread 1','api','2021-05-25 06:49:07','2021-05-25 06:49:07'),
	(4,'add bread 1','api','2021-05-25 06:49:07','2021-05-25 06:49:07'),
	(5,'delete bread 1','api','2021-05-25 06:49:07','2021-05-25 06:49:07');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`)
VALUES
	(1,3),
	(2,3),
	(3,3),
	(4,3),
	(5,3);

/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_hierarchy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_hierarchy`;

CREATE TABLE `role_hierarchy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `hierarchy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_hierarchy` WRITE;
/*!40000 ALTER TABLE `role_hierarchy` DISABLE KEYS */;

INSERT INTO `role_hierarchy` (`id`, `role_id`, `hierarchy`)
VALUES
	(1,1,1),
	(2,2,2),
	(3,3,3);

/*!40000 ALTER TABLE `role_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','api','2021-05-25 06:49:06','2021-05-25 06:49:06'),
	(2,'user','api','2021-05-25 06:49:06','2021-05-25 06:49:06'),
	(3,'guest','api','2021-05-25 06:49:06','2021-05-25 06:49:06');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;

INSERT INTO `status` (`id`, `name`, `class`)
VALUES
	(1,'ongoing','primary'),
	(2,'stopped','secondary'),
	(3,'completed','success'),
	(4,'expired','warning');

/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menuroles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `menuroles`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'admin','admin@admin.com','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user,admin','Active','lU5WIapcCv','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(2,'Mr. Zachariah Watsica V','walsh.kavon@example.com','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Active','sREtLHQIXU','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(3,'Nicolas Koelpin','gay66@example.net','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Inactive','FJh6kISBN3','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(4,'Enola Stokes','jacobson.isac@example.org','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Pending','cTUIQe21CC','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(5,'Granville Wyman I','daugherty.richmond@example.com','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Banned','igsCqVX5Nf','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(6,'Calista Kiehn','bode.arjun@example.com','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Inactive','p9HFahU7cY','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(7,'Mr. Darion Hand Sr.','okey.west@example.net','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Inactive','6MD3Kz9Wka','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(8,'Prof. Mohammed Cremin','emie26@example.com','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Active','2Y63C8VMOc','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(9,'Federico Cremin','daugherty.keara@example.org','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Banned','wpOjTfaQQd','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(10,'Ramon Hahn','jayne.rau@example.net','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Active','1MTCHvk5Ro','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL),
	(11,'Mrs. Elva Casper III','ivy.swaniawski@example.com','2021-05-25 06:49:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,'user','Inactive','jaBfQzo8p0','2021-05-25 06:49:06','2021-05-25 06:49:06',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wxcouple
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wxcouple`;

CREATE TABLE `wxcouple` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromuserid` int(10) unsigned NOT NULL,
  `touserid` int(10) unsigned NOT NULL,
  `status` smallint(5) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wxevent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wxevent`;

CREATE TABLE `wxevent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wxevent` WRITE;
/*!40000 ALTER TABLE `wxevent` DISABLE KEYS */;

INSERT INTO `wxevent` (`id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'一起做家务','',NULL,NULL,NULL),
	(2,'一起吃冰淇淋','',NULL,NULL,NULL),
	(3,'看夜场电影','',NULL,NULL,NULL),
	(4,'坐摩天轮','',NULL,NULL,NULL),
	(5,'穿情侣装','',NULL,NULL,NULL),
	(6,'一起出国旅游','',NULL,NULL,NULL),
	(7,'一起看演唱会','',NULL,NULL,NULL),
	(8,'一起做饭','',NULL,NULL,NULL),
	(9,'一起养宠物','',NULL,NULL,NULL),
	(10,'互相送礼物','',NULL,NULL,NULL),
	(11,'为对方唱歌','',NULL,NULL,NULL),
	(12,'一起做DIY','',NULL,NULL,NULL),
	(13,'一起跨年守岁','',NULL,NULL,NULL),
	(14,'躺对方怀里睡觉','',NULL,NULL,NULL),
	(15,'一起自驾游','',NULL,NULL,NULL),
	(16,'起对方昵称','',NULL,NULL,NULL),
	(17,'给对方洁面','',NULL,NULL,NULL),
	(18,'一起看日出','',NULL,NULL,NULL),
	(19,'一起泡温泉','',NULL,NULL,NULL),
	(20,'同副耳机听歌','',NULL,NULL,NULL);

/*!40000 ALTER TABLE `wxevent` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wxeventflow
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wxeventflow`;

CREATE TABLE `wxeventflow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupleid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `eventid` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wxeventflow` WRITE;
/*!40000 ALTER TABLE `wxeventflow` DISABLE KEYS */;

INSERT INTO `wxeventflow` (`id`, `coupleid`, `userid`, `eventid`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(26,0,1,15,'一起自驾游','','2021-06-06 08:59:19','2021-06-06 08:59:19',NULL),
	(27,0,1,19,'一起泡温泉','','2021-06-06 08:59:26','2021-06-06 08:59:26',NULL),
	(28,0,1,19,'一起泡温泉','','2021-06-06 08:59:26','2021-06-06 08:59:26',NULL),
	(29,0,1,19,'一起泡温泉','','2021-06-06 08:59:27','2021-06-06 08:59:27',NULL),
	(30,0,1,14,'躺对方怀里睡觉','','2021-06-06 08:59:27','2021-06-06 08:59:27',NULL),
	(31,0,1,15,'一起自驾游','','2021-06-06 08:59:30','2021-06-06 08:59:30',NULL),
	(32,0,1,19,'一起泡温泉','','2021-06-06 08:59:31','2021-06-06 08:59:31',NULL),
	(33,0,1,11,'为对方唱歌','','2021-06-06 09:04:28','2021-06-06 09:04:28',NULL),
	(34,0,1,12,'一起做DIY','','2021-06-06 09:04:34','2021-06-06 09:04:34',NULL);

/*!40000 ALTER TABLE `wxeventflow` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wxmiss
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wxmiss`;

CREATE TABLE `wxmiss` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupleid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wxmiss` WRITE;
/*!40000 ALTER TABLE `wxmiss` DISABLE KEYS */;

INSERT INTO `wxmiss` (`id`, `coupleid`, `userid`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,0,1,'2021-06-06 08:19:46','2021-06-06 08:19:46',NULL),
	(2,0,1,'2021-06-06 08:20:04','2021-06-06 08:20:04',NULL),
	(3,0,1,'2021-06-06 08:20:04','2021-06-06 08:20:04',NULL),
	(4,0,1,'2021-06-06 08:21:11','2021-06-06 08:21:11',NULL),
	(5,0,1,'2021-06-06 08:21:11','2021-06-06 08:21:11',NULL),
	(6,0,1,'2021-06-06 08:21:12','2021-06-06 08:21:12',NULL),
	(7,0,1,'2021-06-06 08:21:52','2021-06-06 08:21:52',NULL),
	(8,0,1,'2021-06-06 08:22:41','2021-06-06 08:22:41',NULL),
	(9,0,1,'2021-06-06 08:22:49','2021-06-06 08:22:49',NULL),
	(10,0,1,'2021-06-06 08:25:31','2021-06-06 08:25:31',NULL),
	(11,0,1,'2021-06-06 08:25:51','2021-06-06 08:25:51',NULL),
	(12,0,1,'2021-06-06 08:26:17','2021-06-06 08:26:17',NULL),
	(13,0,1,'2021-06-06 11:19:27','2021-06-06 11:19:27',NULL);

/*!40000 ALTER TABLE `wxmiss` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wxpicture
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wxpicture`;

CREATE TABLE `wxpicture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupleid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wxpicture` WRITE;
/*!40000 ALTER TABLE `wxpicture` DISABLE KEYS */;

INSERT INTO `wxpicture` (`id`, `coupleid`, `userid`, `path`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(13,0,1,'http://dev-long-march.asdn.top/upload/1622979759VLOsnwDuuAS9f1072fc6ceba634eeefd76354f9678f1.jpeg','2021-06-06 11:42:39','2021-06-06 11:42:39',NULL),
	(14,0,1,'http://dev-long-march.asdn.top/upload/1622979783hXUhr1MrbtQO56ee3fab75c7c47e53fea5d0ffeaf7c6.jpeg','2021-06-06 11:43:03','2021-06-06 11:43:03',NULL),
	(15,0,1,'http://dev-long-march.asdn.top/upload/1622979786YKM6xuQA8BpE560bd29c52a2ce4c9372c885dbc5530e.jpeg','2021-06-06 11:43:06','2021-06-06 11:43:06',NULL),
	(16,0,1,'http://dev-long-march.asdn.top/upload/1622979790zOsWDZM1ln139b13b82cc632de28f8136e6905202f5e.jpeg','2021-06-06 11:43:10','2021-06-06 11:43:10',NULL),
	(17,0,1,'http://dev-long-march.asdn.top/upload/1622979793LqGesUwdVSHZ96db835ebc2d21f300c8ccea2c45a6cd.jpeg','2021-06-06 11:43:13','2021-06-06 11:43:13',NULL),
	(18,0,1,'http://dev-long-march.asdn.top/upload/1622979797WrwZxNOkplkUf3db02ad60dbe6b6323b8730c144908e.jpeg','2021-06-06 11:43:18','2021-06-06 11:43:18',NULL),
	(19,0,1,'http://dev-long-march.asdn.top/upload/1622979801S9YVdFknfKbmca83fbc9c5126d0d9e0b746bad4946fd.jpeg','2021-06-06 11:43:21','2021-06-06 11:43:21',NULL),
	(20,0,1,'http://dev-long-march.asdn.top/upload/1622979805J6irLUc9VPlu5e39180a8478e1f68283ed350ad22c57.jpeg','2021-06-06 11:43:25','2021-06-06 11:43:25',NULL),
	(21,0,1,'http://dev-long-march.asdn.top/upload/1622979810YZWal9aRZPdAfc2a2764906381124fce2701efe20e9b.jpeg','2021-06-06 11:43:30','2021-06-06 11:43:30',NULL),
	(22,0,1,'http://dev-long-march.asdn.top/upload/16229798143s7EyDPQzDnx90f2b20608310c298cda5d4f394d8341.jpeg','2021-06-06 11:43:34','2021-06-06 11:43:34',NULL),
	(23,0,1,'http://dev-long-march.asdn.top/upload/1622979817MIZzQBTtYDcY0feb3b036547aa4daf2bb309a0a8d3a7.jpeg','2021-06-06 11:43:37','2021-06-06 11:43:37',NULL),
	(24,0,1,'http://dev-long-march.asdn.top/upload/1622979821yqvhAwxHPwrj0feb3b036547aa4daf2bb309a0a8d3a7.jpeg','2021-06-06 11:43:41','2021-06-06 11:43:41',NULL),
	(25,0,1,'http://dev-long-march.asdn.top/upload/1622979824Os57uNgzsMcGb4f45c5945d4c60269c904bffe87e9aa.jpeg','2021-06-06 11:43:44','2021-06-06 11:43:44',NULL),
	(26,0,1,'http://dev-long-march.asdn.top/upload/1622979827pGZgfgxKFiQTe33226ef87913b57053596cf3240ad7f.jpeg','2021-06-06 11:43:47','2021-06-06 11:43:47',NULL);

/*!40000 ALTER TABLE `wxpicture` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wxuser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wxuser`;

CREATE TABLE `wxuser` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menuroles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wxuser` WRITE;
/*!40000 ALTER TABLE `wxuser` DISABLE KEYS */;

INSERT INTO `wxuser` (`id`, `openid`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `menuroles`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'o-6MB5S5PHy6Ve2F6eUx-AtxP-Ik','name','1@1.com',NULL,'password',NULL,'user',NULL,NULL,'2021-06-03 08:21:09','2021-06-03 08:21:09',NULL);

/*!40000 ALTER TABLE `wxuser` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
