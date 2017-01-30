-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: mystore-development
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `friendly_id_slugs`
--

DROP TABLE IF EXISTS `friendly_id_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendly_id_slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sluggable_id` int(11) NOT NULL,
  `sluggable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope` (`slug`,`sluggable_type`,`scope`),
  KEY `index_friendly_id_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_friendly_id_slugs_on_slug_and_sluggable_type` (`slug`,`sluggable_type`),
  KEY `index_friendly_id_slugs_on_sluggable_type` (`sluggable_type`),
  KEY `index_friendly_id_slugs_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendly_id_slugs`
--

LOCK TABLES `friendly_id_slugs` WRITE;
/*!40000 ALTER TABLE `friendly_id_slugs` DISABLE KEYS */;
INSERT INTO `friendly_id_slugs` VALUES (1,'ruby-on-rails-tote',1,'Spree::Product',NULL,'2017-01-29 07:39:33',NULL),(2,'ruby-on-rails-bag',2,'Spree::Product',NULL,'2017-01-29 07:39:33',NULL),(3,'ruby-on-rails-baseball-jersey',3,'Spree::Product',NULL,'2017-01-29 07:39:34',NULL),(4,'ruby-on-rails-jr-spaghetti',4,'Spree::Product',NULL,'2017-01-29 07:39:34',NULL),(5,'ruby-on-rails-ringer-t-shirt',5,'Spree::Product',NULL,'2017-01-29 07:39:34',NULL),(6,'ruby-baseball-jersey',6,'Spree::Product',NULL,'2017-01-29 07:39:34',NULL),(7,'apache-baseball-jersey',7,'Spree::Product',NULL,'2017-01-29 07:39:35',NULL),(8,'spree-baseball-jersey',8,'Spree::Product',NULL,'2017-01-29 07:39:35',NULL),(9,'spree-jr-spaghetti',9,'Spree::Product',NULL,'2017-01-29 07:39:35',NULL),(10,'spree-ringer-t-shirt',10,'Spree::Product',NULL,'2017-01-29 07:39:37',NULL),(11,'spree-tote',11,'Spree::Product',NULL,'2017-01-29 07:39:37',NULL),(12,'spree-bag',12,'Spree::Product',NULL,'2017-01-29 07:39:37',NULL),(13,'ruby-on-rails-mug',13,'Spree::Product',NULL,'2017-01-29 07:39:38',NULL),(14,'ruby-on-rails-stein',14,'Spree::Product',NULL,'2017-01-29 07:39:38',NULL),(15,'spree-stein',15,'Spree::Product',NULL,'2017-01-29 07:39:38',NULL),(16,'spree-mug',16,'Spree::Product',NULL,'2017-01-29 07:39:38',NULL);
/*!40000 ALTER TABLE `friendly_id_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20151008074508'),('20151008074509'),('20151008074510'),('20151008074511'),('20151008074512'),('20151008074513'),('20151008074514'),('20151008074515'),('20151008074516'),('20151008074517'),('20151008074518'),('20151008074519'),('20151008074520'),('20151008074521'),('20151008074522'),('20151008074523'),('20151008074524'),('20151008074525'),('20151008074526'),('20151008074527'),('20151008074528'),('20151008074529'),('20151008074530'),('20151008074531'),('20151008074532'),('20151008074533'),('20151008074534'),('20151008074535'),('20151008074536'),('20151008074537'),('20151008074538'),('20151008074539'),('20151008074540'),('20151008074541'),('20151008074542'),('20151008074543'),('20151008074544'),('20151008074545'),('20151008074546'),('20151008074547'),('20151008074548'),('20151008074549'),('20151008074550'),('20151008074551'),('20151008074552'),('20151008074553'),('20151008074554'),('20151008074555'),('20151008074556'),('20151008074557'),('20151008074558'),('20151008074559'),('20151008074560'),('20151008074561'),('20151008074562'),('20151008074563'),('20151008074564'),('20151008074565'),('20151008074566'),('20151008074567'),('20151008074568'),('20151008074569'),('20151008074570'),('20151008074571'),('20151008074572'),('20151008074573'),('20151008074574'),('20151008074575'),('20151008074576'),('20151008074577'),('20151008074578'),('20151008074579'),('20151008074580'),('20151008074581'),('20151008074582'),('20151008074583'),('20151008074584'),('20151008074585'),('20151008074586'),('20151008074587'),('20151008074588'),('20151008074589'),('20151008074590'),('20151008074591'),('20151008074592'),('20151008074593'),('20151008074594'),('20151008074595'),('20151008074596'),('20151008074597'),('20151008074598'),('20151008074599'),('20151008074600'),('20151008074601'),('20151008074602'),('20151008074603'),('20151008074604'),('20151008074605'),('20151008074606'),('20151008074607'),('20151008074608'),('20151008074609'),('20151008074610'),('20151008074611'),('20151008074612'),('20151008074613'),('20151008074614'),('20151008074615'),('20151008074616'),('20151008074617'),('20151008074618'),('20151008074619'),('20151008074620'),('20151008074621'),('20151008074622'),('20151008074623'),('20151008074624'),('20151008074625'),('20151008074626'),('20151008074627'),('20151008074628'),('20151008074629'),('20151008074630'),('20151008074631'),('20151008074632'),('20151008074633'),('20151008074634'),('20151008074635'),('20151008074636'),('20151008074637'),('20151008074638'),('20151008074639'),('20151008074640'),('20151008074641'),('20151008074642'),('20151008074643'),('20151008074644'),('20151008074645'),('20151008074646'),('20151008074647'),('20151008074648'),('20151008074649'),('20151008074650'),('20151008074651'),('20151008074652'),('20151008074653'),('20151008074654'),('20151008074655'),('20151008074656'),('20151008074657'),('20151008074658'),('20151008074659'),('20151008074660'),('20151008074661'),('20151008074662'),('20151008074663'),('20151008074664'),('20151008074665'),('20151008074666'),('20151008074667'),('20151008074668'),('20151008074669'),('20151008074670'),('20151008074671'),('20151008074672'),('20151008074673'),('20151008074674'),('20151008074675'),('20151008074676'),('20151008074677'),('20151008074678'),('20151008074679'),('20151008074680'),('20151008074681'),('20151008074682'),('20151008074683'),('20151008074684'),('20151008074685'),('20151008074686'),('20151008074687'),('20151008074688'),('20151008074689'),('20151008074690'),('20151008074691'),('20151008074692'),('20151008074693'),('20151008074694'),('20151008074695'),('20151008074696'),('20151008074697'),('20151008074698'),('20151008074699'),('20151008074700'),('20151008074701'),('20151008074702'),('20151008074703'),('20151008074704'),('20151008074705'),('20151008074706'),('20151008074707'),('20151008074708'),('20151008074709'),('20151008074710'),('20151008074711'),('20151008074712'),('20151008074713'),('20151008074714'),('20151008074715'),('20151008074716'),('20151008074717'),('20151008074718'),('20151008074719'),('20151008074720'),('20151008074721'),('20151008074722'),('20151008074723'),('20151008074724'),('20151008074725'),('20151008074726'),('20151008074727'),('20151008074728'),('20151008074729'),('20151008074730'),('20151103093647'),('20151104111033'),('20151104111142'),('20151105081930'),('20151106101132'),('20151109100612'),('20151109101109'),('20151113122304'),('20151116142831'),('20151116143624'),('20151117073625'),('20151118105131'),('20151120122321'),('20151123091816'),('20151126064118'),('20151126103815'),('20151127060250'),('20151127144720'),('20151209082801'),('20151210125705'),('20151210125706'),('20151210125707'),('20151210125708'),('20151210125709'),('20151210125710'),('20151210125711'),('20151210125712'),('20151210125713'),('20151210125714'),('20151210140236'),('20151218104909'),('20160119125923'),('20160129074954'),('20160831133224'),('20160831133225'),('20160831133226'),('20160831133227'),('20160831133228'),('20160831133229');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`),
  KEY `index_spree_addresses_on_country_id` (`country_id`),
  KEY `index_spree_addresses_on_state_id` (`state_id`),
  KEY `index_spree_addresses_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
INSERT INTO `spree_addresses` VALUES (1,'Kaustubh','Kabra','2280 Southwest 32nd Avenue, Apt 214, Apt 214, Apt 214, Apt 214','Apt 214','Miami','33145','7867199135',NULL,NULL,NULL,3534,232,'2017-01-29 07:53:56','2017-01-29 07:53:56',NULL,NULL),(2,'Kaustubh','Kabra','B 501 Mirabel','Check','Pune','33145','8237693220',NULL,NULL,NULL,3525,232,'2017-01-29 07:59:15','2017-01-30 16:28:24',2,NULL),(3,'Kaustubh','Kabra','2280 Southwest 32nd Avenue, Apt 214, Apt 214, Apt 214, Apt 214','Apt 214','Miami','33145','7867199135',NULL,NULL,NULL,3534,232,'2017-01-29 08:26:04','2017-01-29 08:26:29',4,NULL),(4,'Kaustubh','Kabra','2280 Southwest 32nd Avenue, Apt 214, Apt 214, Apt 214, Apt 214','Apt 214','Miami','33145','7867199135',NULL,NULL,NULL,3534,232,'2017-01-30 15:39:13','2017-01-30 15:39:19',NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,232,'2017-01-30 15:39:13','2017-01-30 15:39:13',NULL,NULL),(6,'Kaustubh','Kabra','2280 ','SW 32 Ave','Miami','33145','7867199135',NULL,NULL,NULL,3534,232,'2017-01-30 16:36:21','2017-01-30 16:36:21',2,NULL);
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `included` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`),
  KEY `index_spree_adjustments_on_adjustable_id_and_adjustable_type` (`adjustable_id`,`adjustable_type`),
  KEY `index_spree_adjustments_on_eligible` (`eligible`),
  KEY `index_spree_adjustments_on_order_id` (`order_id`),
  KEY `index_spree_adjustments_on_source_id_and_source_type` (`source_id`,`source_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
INSERT INTO `spree_adjustments` VALUES (2,1,'Spree::TaxRate',1,'Spree::LineItem',0.80,'North America 5.0%',NULL,1,'2017-01-29 07:53:56','2017-01-29 07:56:01','closed',1,0),(13,1,'Spree::TaxRate',3,'Spree::LineItem',1.60,'North America 5.0%',NULL,1,'2017-01-29 08:59:57','2017-01-29 09:00:07','closed',4,0),(14,1,'Spree::TaxRate',6,'Spree::LineItem',1.15,'North America 5.0%',NULL,1,'2017-01-29 08:59:57','2017-01-29 09:00:07','closed',4,0),(16,1,'Spree::TaxRate',7,'Spree::LineItem',1.15,'North America 5.0%',NULL,1,'2017-01-29 09:00:22','2017-01-29 09:00:22','open',8,0),(18,1,'Spree::TaxRate',11,'Spree::LineItem',0.80,'North America 5.0%',NULL,1,'2017-01-30 15:39:21','2017-01-30 15:39:31','closed',11,0);
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_banner_types`
--

DROP TABLE IF EXISTS `spree_banner_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_banner_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_banner_types`
--

LOCK TABLES `spree_banner_types` WRITE;
/*!40000 ALTER TABLE `spree_banner_types` DISABLE KEYS */;
INSERT INTO `spree_banner_types` VALUES (1,'promo_offer_banner','Promo offer banner','2017-01-29 07:39:27','2017-01-29 07:39:27'),(2,'brand_offer_banner','Brand offer banner','2017-01-29 07:39:27','2017-01-29 07:39:27'),(3,'new_arrival_banner','New arrival banner','2017-01-29 07:39:27','2017-01-29 07:39:27'),(4,'category_offer_banner','Category offer banner','2017-01-29 07:39:27','2017-01-29 07:39:27');
/*!40000 ALTER TABLE `spree_banner_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_banners`
--

DROP TABLE IF EXISTS `spree_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_banners_on_type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_banners`
--

LOCK TABLES `spree_banners` WRITE;
/*!40000 ALTER TABLE `spree_banners` DISABLE KEYS */;
INSERT INTO `spree_banners` VALUES (1,'http://shop-spree.herokuapp.com/api/ams/products?q[taxon_name_in][]=\\\"Shirts\\\"','2017-01-29 11:56:27','2017-01-29 11:56:27','TEst','png',200,'2017-01-29 11:56:27',1);
/*!40000 ALTER TABLE `spree_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_calculators_on_id_and_type` (`id`,`type`),
  KEY `index_spree_calculators_on_calculable_id_and_calculable_type` (`calculable_id`,`calculable_type`),
  KEY `index_spree_calculators_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::Shipping::FlatRate',1,'Spree::ShippingMethod','2017-01-29 07:39:32','2017-01-29 07:39:32','---\n:amount: 5\n:currency: USD\n',NULL),(2,'Spree::Calculator::Shipping::FlatRate',2,'Spree::ShippingMethod','2017-01-29 07:39:32','2017-01-29 07:39:32','---\n:amount: 10\n:currency: USD\n',NULL),(3,'Spree::Calculator::Shipping::FlatRate',3,'Spree::ShippingMethod','2017-01-29 07:39:32','2017-01-29 07:39:32','---\n:amount: 15\n:currency: USD\n',NULL),(4,'Spree::Calculator::Shipping::FlatRate',4,'Spree::ShippingMethod','2017-01-29 07:39:32','2017-01-29 07:39:32','---\n:amount: 5\n:currency: USD\n',NULL),(5,'Spree::Calculator::Shipping::FlatRate',5,'Spree::ShippingMethod','2017-01-29 07:39:32','2017-01-29 07:39:32','---\n:amount: 8\n:currency: EUR\n',NULL),(6,'Spree::Calculator::DefaultTax',1,'Spree::TaxRate','2017-01-29 07:39:33','2017-01-29 07:39:33',NULL,NULL),(7,'Spree::Calculator::Shipping::FlexiRate',6,'Spree::ShippingMethod','2017-01-29 08:57:39','2017-01-29 08:57:39','---\n:currency: USD\n:first_item: 0.0\n:additional_item: 0.0\n:max_items: 0\n',NULL);
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'ANDORRA','AD','AND','Andorra',20,1,NULL),(2,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1,NULL),(3,'AFGHANISTAN','AF','AFG','Afghanistan',4,1,NULL),(4,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,1,NULL),(5,'ANGUILLA','AI','AIA','Anguilla',660,0,NULL),(6,'ALBANIA','AL','ALB','Albania',8,1,NULL),(7,'ARMENIA','AM','ARM','Armenia',51,1,NULL),(8,'ANGOLA','AO','AGO','Angola',24,1,NULL),(9,'ANTARCTICA','AQ','ATA','Antarctica',10,0,NULL),(10,'ARGENTINA','AR','ARG','Argentina',32,1,NULL),(11,'AMERICAN SAMOA','AS','ASM','American Samoa',16,0,NULL),(12,'AUSTRIA','AT','AUT','Austria',40,1,NULL),(13,'AUSTRALIA','AU','AUS','Australia',36,1,NULL),(14,'ARUBA','AW','ABW','Aruba',533,0,NULL),(15,'ÅLAND ISLANDS','AX','ALA','Åland Islands',248,0,NULL),(16,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,1,NULL),(17,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,1,NULL),(18,'BARBADOS','BB','BRB','Barbados',52,1,NULL),(19,'BANGLADESH','BD','BGD','Bangladesh',50,1,NULL),(20,'BELGIUM','BE','BEL','Belgium',56,1,NULL),(21,'BURKINA FASO','BF','BFA','Burkina Faso',854,1,NULL),(22,'BULGARIA','BG','BGR','Bulgaria',100,1,NULL),(23,'BAHRAIN','BH','BHR','Bahrain',48,1,NULL),(24,'BURUNDI','BI','BDI','Burundi',108,1,NULL),(25,'BENIN','BJ','BEN','Benin',204,1,NULL),(26,'SAINT BARTHéLEMY','BL','BLM','Saint Barthélemy',652,0,NULL),(27,'BERMUDA','BM','BMU','Bermuda',60,0,NULL),(28,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,1,NULL),(29,'BOLIVIA, PLURINATIONAL STATE OF','BO','BOL','Bolivia, Plurinational State of',68,1,NULL),(30,'BONAIRE, SINT EUSTATIUS AND SABA','BQ','BES','Bonaire, Sint Eustatius and Saba',535,1,NULL),(31,'BRAZIL','BR','BRA','Brazil',76,1,NULL),(32,'BAHAMAS','BS','BHS','Bahamas',44,1,NULL),(33,'BHUTAN','BT','BTN','Bhutan',64,1,NULL),(34,'BOUVET ISLAND','BV','BVT','Bouvet Island',74,0,NULL),(35,'BOTSWANA','BW','BWA','Botswana',72,1,NULL),(36,'BELARUS','BY','BLR','Belarus',112,1,NULL),(37,'BELIZE','BZ','BLZ','Belize',84,1,NULL),(38,'CANADA','CA','CAN','Canada',124,1,NULL),(39,'COCOS (KEELING) ISLANDS','CC','CCK','Cocos (Keeling) Islands',166,0,NULL),(40,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, The Democratic Republic of the',180,1,NULL),(41,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,1,NULL),(42,'CONGO','CG','COG','Congo',178,1,NULL),(43,'SWITZERLAND','CH','CHE','Switzerland',756,1,NULL),(44,'CôTE D\'IVOIRE','CI','CIV','Côte d\'Ivoire',384,1,NULL),(45,'COOK ISLANDS','CK','COK','Cook Islands',184,0,NULL),(46,'CHILE','CL','CHL','Chile',152,1,NULL),(47,'CAMEROON','CM','CMR','Cameroon',120,1,NULL),(48,'CHINA','CN','CHN','China',156,1,NULL),(49,'COLOMBIA','CO','COL','Colombia',170,1,NULL),(50,'COSTA RICA','CR','CRI','Costa Rica',188,1,NULL),(51,'CUBA','CU','CUB','Cuba',192,1,NULL),(52,'CAPE VERDE','CV','CPV','Cape Verde',132,1,NULL),(53,'CURAçAO','CW','CUW','Curaçao',531,0,NULL),(54,'CHRISTMAS ISLAND','CX','CXR','Christmas Island',162,0,NULL),(55,'CYPRUS','CY','CYP','Cyprus',196,1,NULL),(56,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203,1,NULL),(57,'GERMANY','DE','DEU','Germany',276,1,NULL),(58,'DJIBOUTI','DJ','DJI','Djibouti',262,1,NULL),(59,'DENMARK','DK','DNK','Denmark',208,1,NULL),(60,'DOMINICA','DM','DMA','Dominica',212,1,NULL),(61,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,1,NULL),(62,'ALGERIA','DZ','DZA','Algeria',12,1,NULL),(63,'ECUADOR','EC','ECU','Ecuador',218,1,NULL),(64,'ESTONIA','EE','EST','Estonia',233,1,NULL),(65,'EGYPT','EG','EGY','Egypt',818,1,NULL),(66,'WESTERN SAHARA','EH','ESH','Western Sahara',732,0,NULL),(67,'ERITREA','ER','ERI','Eritrea',232,1,NULL),(68,'SPAIN','ES','ESP','Spain',724,1,NULL),(69,'ETHIOPIA','ET','ETH','Ethiopia',231,1,NULL),(70,'FINLAND','FI','FIN','Finland',246,1,NULL),(71,'FIJI','FJ','FJI','Fiji',242,1,NULL),(72,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,0,NULL),(73,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1,NULL),(74,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,0,NULL),(75,'FRANCE','FR','FRA','France',250,1,NULL),(76,'GABON','GA','GAB','Gabon',266,1,NULL),(77,'UNITED KINGDOM','GB','GBR','United Kingdom',826,1,NULL),(78,'GRENADA','GD','GRD','Grenada',308,1,NULL),(79,'GEORGIA','GE','GEO','Georgia',268,1,NULL),(80,'FRENCH GUIANA','GF','GUF','French Guiana',254,0,NULL),(81,'GUERNSEY','GG','GGY','Guernsey',831,0,NULL),(82,'GHANA','GH','GHA','Ghana',288,1,NULL),(83,'GIBRALTAR','GI','GIB','Gibraltar',292,0,NULL),(84,'GREENLAND','GL','GRL','Greenland',304,1,NULL),(85,'GAMBIA','GM','GMB','Gambia',270,1,NULL),(86,'GUINEA','GN','GIN','Guinea',324,1,NULL),(87,'GUADELOUPE','GP','GLP','Guadeloupe',312,0,NULL),(88,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,1,NULL),(89,'GREECE','GR','GRC','Greece',300,1,NULL),(90,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','GS','SGS','South Georgia and the South Sandwich Islands',239,0,NULL),(91,'GUATEMALA','GT','GTM','Guatemala',320,1,NULL),(92,'GUAM','GU','GUM','Guam',316,0,NULL),(93,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,1,NULL),(94,'GUYANA','GY','GUY','Guyana',328,1,NULL),(95,'HONG KONG','HK','HKG','Hong Kong',344,0,NULL),(96,'HEARD ISLAND AND MCDONALD ISLANDS','HM','HMD','Heard Island and McDonald Islands',334,0,NULL),(97,'HONDURAS','HN','HND','Honduras',340,1,NULL),(98,'CROATIA','HR','HRV','Croatia',191,1,NULL),(99,'HAITI','HT','HTI','Haiti',332,1,NULL),(100,'HUNGARY','HU','HUN','Hungary',348,1,NULL),(101,'INDONESIA','ID','IDN','Indonesia',360,1,NULL),(102,'IRELAND','IE','IRL','Ireland',372,1,NULL),(103,'ISRAEL','IL','ISR','Israel',376,1,NULL),(104,'ISLE OF MAN','IM','IMN','Isle of Man',833,0,NULL),(105,'INDIA','IN','IND','India',356,1,NULL),(106,'BRITISH INDIAN OCEAN TERRITORY','IO','IOT','British Indian Ocean Territory',86,0,NULL),(107,'IRAQ','IQ','IRQ','Iraq',368,1,NULL),(108,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,1,NULL),(109,'ICELAND','IS','ISL','Iceland',352,1,NULL),(110,'ITALY','IT','ITA','Italy',380,1,NULL),(111,'JERSEY','JE','JEY','Jersey',832,0,NULL),(112,'JAMAICA','JM','JAM','Jamaica',388,1,NULL),(113,'JORDAN','JO','JOR','Jordan',400,1,NULL),(114,'JAPAN','JP','JPN','Japan',392,1,NULL),(115,'KENYA','KE','KEN','Kenya',404,1,NULL),(116,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,1,NULL),(117,'CAMBODIA','KH','KHM','Cambodia',116,1,NULL),(118,'KIRIBATI','KI','KIR','Kiribati',296,1,NULL),(119,'COMOROS','KM','COM','Comoros',174,1,NULL),(120,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1,NULL),(121,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','Korea, Democratic People\'s Republic of',408,1,NULL),(122,'KOREA, REPUBLIC OF','KR','KOR','Korea, Republic of',410,1,NULL),(123,'KUWAIT','KW','KWT','Kuwait',414,1,NULL),(124,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,0,NULL),(125,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,1,NULL),(126,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,1,NULL),(127,'LEBANON','LB','LBN','Lebanon',422,1,NULL),(128,'SAINT LUCIA','LC','LCA','Saint Lucia',662,0,NULL),(129,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,1,NULL),(130,'SRI LANKA','LK','LKA','Sri Lanka',144,1,NULL),(131,'LIBERIA','LR','LBR','Liberia',430,1,NULL),(132,'LESOTHO','LS','LSO','Lesotho',426,1,NULL),(133,'LITHUANIA','LT','LTU','Lithuania',440,1,NULL),(134,'LUXEMBOURG','LU','LUX','Luxembourg',442,1,NULL),(135,'LATVIA','LV','LVA','Latvia',428,1,NULL),(136,'LIBYA','LY','LBY','Libya',434,1,NULL),(137,'MOROCCO','MA','MAR','Morocco',504,1,NULL),(138,'MONACO','MC','MCO','Monaco',492,1,NULL),(139,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,1,NULL),(140,'MONTENEGRO','ME','MNE','Montenegro',499,1,NULL),(141,'SAINT MARTIN (FRENCH PART)','MF','MAF','Saint Martin (French part)',663,0,NULL),(142,'MADAGASCAR','MG','MDG','Madagascar',450,1,NULL),(143,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,1,NULL),(144,'MACEDONIA, REPUBLIC OF','MK','MKD','Macedonia, Republic of',807,1,NULL),(145,'MALI','ML','MLI','Mali',466,1,NULL),(146,'MYANMAR','MM','MMR','Myanmar',104,1,NULL),(147,'MONGOLIA','MN','MNG','Mongolia',496,1,NULL),(148,'MACAO','MO','MAC','Macao',446,0,NULL),(149,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,0,NULL),(150,'MARTINIQUE','MQ','MTQ','Martinique',474,0,NULL),(151,'MAURITANIA','MR','MRT','Mauritania',478,1,NULL),(152,'MONTSERRAT','MS','MSR','Montserrat',500,0,NULL),(153,'MALTA','MT','MLT','Malta',470,1,NULL),(154,'MAURITIUS','MU','MUS','Mauritius',480,1,NULL),(155,'MALDIVES','MV','MDV','Maldives',462,1,NULL),(156,'MALAWI','MW','MWI','Malawi',454,1,NULL),(157,'MEXICO','MX','MEX','Mexico',484,1,NULL),(158,'MALAYSIA','MY','MYS','Malaysia',458,1,NULL),(159,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,1,NULL),(160,'NAMIBIA','NA','NAM','Namibia',516,1,NULL),(161,'NEW CALEDONIA','NC','NCL','New Caledonia',540,0,NULL),(162,'NIGER','NE','NER','Niger',562,1,NULL),(163,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,0,NULL),(164,'NIGERIA','NG','NGA','Nigeria',566,1,NULL),(165,'NICARAGUA','NI','NIC','Nicaragua',558,1,NULL),(166,'NETHERLANDS','NL','NLD','Netherlands',528,1,NULL),(167,'NORWAY','NO','NOR','Norway',578,1,NULL),(168,'NEPAL','NP','NPL','Nepal',524,1,NULL),(169,'NAURU','NR','NRU','Nauru',520,1,NULL),(170,'NIUE','NU','NIU','Niue',570,0,NULL),(171,'NEW ZEALAND','NZ','NZL','New Zealand',554,1,NULL),(172,'OMAN','OM','OMN','Oman',512,1,NULL),(173,'PANAMA','PA','PAN','Panama',591,1,NULL),(174,'PERU','PE','PER','Peru',604,1,NULL),(175,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,0,NULL),(176,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,1,NULL),(177,'PHILIPPINES','PH','PHL','Philippines',608,1,NULL),(178,'PAKISTAN','PK','PAK','Pakistan',586,1,NULL),(179,'POLAND','PL','POL','Poland',616,1,NULL),(180,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,0,NULL),(181,'PITCAIRN','PN','PCN','Pitcairn',612,0,NULL),(182,'PALESTINE, STATE OF','PS','PSE','Palestine, State of',275,1,NULL),(183,'PORTUGAL','PT','PRT','Portugal',620,1,NULL),(184,'PALAU','PW','PLW','Palau',585,1,NULL),(185,'PARAGUAY','PY','PRY','Paraguay',600,1,NULL),(186,'QATAR','QA','QAT','Qatar',634,1,NULL),(187,'RéUNION','RE','REU','Réunion',638,0,NULL),(188,'ROMANIA','RO','ROU','Romania',642,1,NULL),(189,'SERBIA','RS','SRB','Serbia',688,1,NULL),(190,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643,1,NULL),(191,'RWANDA','RW','RWA','Rwanda',646,1,NULL),(192,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,1,NULL),(193,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,1,NULL),(194,'SEYCHELLES','SC','SYC','Seychelles',690,1,NULL),(195,'SUDAN','SD','SDN','Sudan',729,1,NULL),(196,'SWEDEN','SE','SWE','Sweden',752,1,NULL),(197,'SINGAPORE','SG','SGP','Singapore',534,1,NULL),(198,'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA','SH','SHN','Saint Helena, Ascension and Tristan da Cunha',654,1,NULL),(199,'SLOVENIA','SI','SVN','Slovenia',705,1,NULL),(200,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,0,NULL),(201,'SLOVAKIA','SK','SVK','Slovakia',703,1,NULL),(202,'SIERRA LEONE','SL','SLE','Sierra Leone',694,1,NULL),(203,'SAN MARINO','SM','SMR','San Marino',674,1,NULL),(204,'SENEGAL','SN','SEN','Senegal',686,1,NULL),(205,'SOMALIA','SO','SOM','Somalia',706,1,NULL),(206,'SURINAME','SR','SUR','Suriname',740,1,NULL),(207,'SOUTH SUDAN','SS','SSD','South Sudan',728,1,NULL),(208,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,1,NULL),(209,'EL SALVADOR','SV','SLV','El Salvador',222,1,NULL),(210,'SINT MAARTEN (DUTCH PART)','SX','SXM','Sint Maarten (Dutch part)',534,0,NULL),(211,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,1,NULL),(212,'SWAZILAND','SZ','SWZ','Swaziland',748,1,NULL),(213,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,0,NULL),(214,'CHAD','TD','TCD','Chad',148,1,NULL),(215,'FRENCH SOUTHERN TERRITORIES','TF','ATF','French Southern Territories',260,0,NULL),(216,'TOGO','TG','TGO','Togo',768,1,NULL),(217,'THAILAND','TH','THA','Thailand',764,1,NULL),(218,'TAJIKISTAN','TJ','TJK','Tajikistan',762,1,NULL),(219,'TOKELAU','TK','TKL','Tokelau',772,0,NULL),(220,'TIMOR-LESTE','TL','TLS','Timor-Leste',626,1,NULL),(221,'TURKMENISTAN','TM','TKM','Turkmenistan',795,1,NULL),(222,'TUNISIA','TN','TUN','Tunisia',788,1,NULL),(223,'TONGA','TO','TON','Tonga',776,1,NULL),(224,'TURKEY','TR','TUR','Turkey',792,1,NULL),(225,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,1,NULL),(226,'TUVALU','TV','TUV','Tuvalu',798,1,NULL),(227,'TAIWAN','TW','TWN','Taiwan',158,1,NULL),(228,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,1,NULL),(229,'UKRAINE','UA','UKR','Ukraine',804,1,NULL),(230,'UGANDA','UG','UGA','Uganda',800,1,NULL),(231,'UNITED STATES MINOR OUTLYING ISLANDS','UM','UMI','United States Minor Outlying Islands',581,1,NULL),(232,'UNITED STATES','US','USA','United States',840,1,NULL),(233,'URUGUAY','UY','URY','Uruguay',858,1,NULL),(234,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,1,NULL),(235,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,0,NULL),(236,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,1,NULL),(237,'VENEZUELA, BOLIVARIAN REPUBLIC OF','VE','VEN','Venezuela, Bolivarian Republic of',862,1,NULL),(238,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,0,NULL),(239,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,0,NULL),(240,'VIETNAM','VN','VNM','Vietnam',704,1,NULL),(241,'VANUATU','VU','VUT','Vanuatu',548,1,NULL),(242,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,0,NULL),(243,'SAMOA','WS','WSM','Samoa',882,1,NULL),(244,'YEMEN','YE','YEM','Yemen',887,1,NULL),(245,'MAYOTTE','YT','MYT','Mayotte',175,0,NULL),(246,'SOUTH AFRICA','ZA','ZAF','South Africa',710,1,NULL),(247,'ZAMBIA','ZM','ZMB','Zambia',894,1,NULL),(248,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,1,NULL);
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_digits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_credit_cards_on_user_id` (`user_id`),
  KEY `index_spree_credit_cards_on_payment_method_id` (`payment_method_id`),
  KEY `index_spree_credit_cards_on_address_id` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_customer_returns`
--

DROP TABLE IF EXISTS `spree_customer_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_customer_returns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_customer_returns`
--

LOCK TABLES `spree_customer_returns` WRITE;
/*!40000 ALTER TABLE `spree_customer_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_customer_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_devices`
--

DROP TABLE IF EXISTS `spree_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_devices_on_device_token` (`device_token`),
  KEY `index_spree_devices_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_devices`
--

LOCK TABLES `spree_devices` WRITE;
/*!40000 ALTER TABLE `spree_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_feedback_reviews`
--

DROP TABLE IF EXISTS `spree_feedback_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_feedback_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `review_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en',
  PRIMARY KEY (`id`),
  KEY `index_spree_feedback_reviews_on_review_id` (`review_id`),
  KEY `index_spree_feedback_reviews_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_feedback_reviews`
--

LOCK TABLES `spree_feedback_reviews` WRITE;
/*!40000 ALTER TABLE `spree_feedback_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_feedback_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_filters`
--

DROP TABLE IF EXISTS `spree_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_filters_on_type_and_name` (`type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_filters`
--

LOCK TABLES `spree_filters` WRITE;
/*!40000 ALTER TABLE `spree_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_spree_gateways_on_active` (`active`),
  KEY `index_spree_gateways_on_test_mode` (`test_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pending` tinyint(1) DEFAULT '1',
  `line_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`),
  KEY `index_spree_inventory_units_on_line_item_id` (`line_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
INSERT INTO `spree_inventory_units` VALUES (1,'backordered',1,1,1,'2017-01-29 07:53:56','2017-01-29 07:56:01',0,1),(15,'on_hand',17,2,9,'2017-01-29 08:58:36','2017-01-29 08:59:28',0,5),(16,'backordered',1,2,10,'2017-01-29 08:58:36','2017-01-29 08:59:28',0,2),(17,'backordered',1,2,10,'2017-01-29 08:58:36','2017-01-29 08:59:28',0,2),(18,'backordered',1,2,10,'2017-01-29 08:58:36','2017-01-29 08:59:28',0,2),(19,'backordered',1,4,11,'2017-01-29 08:59:57','2017-01-29 09:00:07',0,3),(20,'backordered',1,4,11,'2017-01-29 08:59:57','2017-01-29 09:00:07',0,3),(21,'backordered',2,4,11,'2017-01-29 08:59:57','2017-01-29 09:00:07',0,6),(22,'backordered',2,8,12,'2017-01-29 09:00:22','2017-01-29 09:00:22',1,7),(24,'on_hand',6,9,14,'2017-01-29 09:09:22','2017-01-29 09:09:34',0,9),(25,'on_hand',17,11,15,'2017-01-30 15:39:20','2017-01-30 15:39:31',0,11);
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `adjustment_total` decimal(10,2) DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pre_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`),
  KEY `index_spree_line_items_on_tax_category_id` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (1,1,1,1,15.99,'2017-01-29 07:53:46','2017-01-29 07:56:01','USD',NULL,1,0.80,0.80,0.00,0.00,15.9900),(2,1,2,3,15.99,'2017-01-29 08:06:20','2017-01-29 08:50:42','USD',NULL,1,0.00,0.00,0.00,0.00,0.0000),(3,1,4,2,15.99,'2017-01-29 08:25:49','2017-01-29 09:00:07','USD',NULL,1,1.60,1.60,0.00,0.00,31.9800),(4,1,7,1,15.99,'2017-01-29 08:51:36','2017-01-29 08:51:36','USD',NULL,1,0.00,0.00,0.00,0.00,0.0000),(5,17,2,1,15.99,'2017-01-29 08:58:22','2017-01-29 08:58:22','USD',22.00,1,0.00,0.00,0.00,0.00,0.0000),(6,2,4,1,22.99,'2017-01-29 08:59:49','2017-01-29 09:00:07','USD',NULL,1,1.15,1.15,0.00,0.00,22.9900),(7,2,8,1,22.99,'2017-01-29 09:00:18','2017-01-29 09:00:22','USD',NULL,1,1.15,1.15,0.00,0.00,22.9900),(9,6,9,1,19.99,'2017-01-29 09:09:10','2017-01-29 09:09:10','USD',NULL,1,0.00,0.00,0.00,0.00,0.0000),(10,17,10,2,15.99,'2017-01-29 09:10:29','2017-01-30 16:35:41','USD',22.00,1,0.00,0.00,0.00,0.00,0.0000),(11,17,11,1,15.99,'2017-01-30 15:38:52','2017-01-30 15:39:31','USD',22.00,1,0.80,0.80,0.00,0.00,15.9900);
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_log_entries_on_source_id_and_source_type` (`source_id`,`source_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_option_types_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (1,'tshirt-size','Size',1,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(2,'tshirt-color','Color',2,'2017-01-29 07:39:42','2017-01-29 07:39:42');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_option_values_on_option_type_id` (`option_type_id`),
  KEY `index_spree_option_values_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'Small','S',1,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(2,2,'Medium','M',1,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(3,3,'Large','L',1,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(4,4,'Extra Large','XL',1,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(5,1,'Red','Red',2,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(6,2,'Green','Green',2,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(7,3,'Blue','Blue',2,'2017-01-29 07:39:42','2017-01-29 07:39:42');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (17,1);
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_instructions` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `shipment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'spree',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_count` int(11) DEFAULT '0',
  `approver_id` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `confirmation_delivered` tinyint(1) DEFAULT '0',
  `considered_risky` tinyint(1) DEFAULT '0',
  `guest_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `canceler_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `state_lock_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_number` (`number`),
  KEY `index_spree_orders_on_user_id` (`user_id`),
  KEY `index_spree_orders_on_completed_at` (`completed_at`),
  KEY `index_spree_orders_on_approver_id` (`approver_id`),
  KEY `index_spree_orders_on_bill_address_id` (`bill_address_id`),
  KEY `index_spree_orders_on_confirmation_delivered` (`confirmation_delivered`),
  KEY `index_spree_orders_on_considered_risky` (`considered_risky`),
  KEY `index_spree_orders_on_created_by_id` (`created_by_id`),
  KEY `index_spree_orders_on_ship_address_id` (`ship_address_id`),
  KEY `index_spree_orders_on_shipping_method_id` (`shipping_method_id`),
  KEY `index_spree_orders_on_user_id_and_created_by_id` (`user_id`,`created_by_id`),
  KEY `index_spree_orders_on_guest_token` (`guest_token`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (1,'R528145620',15.99,21.79,'complete',0.80,2,'2017-01-29 07:56:01',1,1,0.00,NULL,'backorder','balance_due','kaustubhwise@gmail.com',NULL,'2017-01-29 07:53:46','2017-01-29 07:56:01','USD','192.168.0.4',2,5.00,0.80,0.00,'spree',0.00,1,NULL,NULL,1,0,'uO8YZq2IXD1cIoe4IG4gdA',NULL,NULL,1,2),(2,'R605212350',63.96,63.96,'complete',0.00,2,'2017-01-29 08:59:29',2,2,0.00,NULL,'backorder','balance_due','kaustubhwise@gmail.com',NULL,'2017-01-29 08:06:20','2017-01-29 08:59:29','USD','192.168.0.4',2,0.00,0.00,0.00,'spree',0.00,4,NULL,NULL,1,0,'uO8YZq2IXD1cIoe4IG4gdA',NULL,NULL,1,5),(3,'R952128600',0.00,0.00,'cart',0.00,3,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'shital1391@gmail.com',NULL,'2017-01-29 08:23:55','2017-01-29 08:23:55','USD',NULL,3,0.00,0.00,0.00,'spree',0.00,0,NULL,NULL,0,0,'7wu_6yyfjk-flzsgCjG9MA',NULL,NULL,NULL,0),(4,'R451265547',54.97,62.72,'complete',2.75,4,'2017-01-29 09:00:07',3,3,0.00,NULL,'backorder','balance_due','kaustubhwise@gmail.com',NULL,'2017-01-29 08:25:49','2017-01-29 09:00:07','USD','192.168.0.4',4,5.00,2.75,0.00,'spree',0.00,3,NULL,NULL,1,0,'VUWtgVFLHRgIZ01nnJwwbg',NULL,NULL,1,6),(5,'R427674080',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2017-01-29 08:27:38','2017-01-29 08:27:38','USD',NULL,1,0.00,0.00,0.00,'spree',0.00,0,1,'2017-01-29 08:31:59',0,0,'S8jMTfCm1DOSOMhPO6XiqQ',NULL,NULL,NULL,0),(6,'R611316239',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2017-01-29 08:38:37','2017-01-29 08:38:37','USD',NULL,NULL,0.00,0.00,0.00,'spree',0.00,0,NULL,NULL,0,0,'xrvpcvHOJDfi9nM_le6Jig',NULL,NULL,NULL,0),(7,'R666179872',15.99,15.99,'cart',0.00,1,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'spree@example.com',NULL,'2017-01-29 08:51:36','2017-01-29 08:51:36','USD',NULL,1,0.00,0.00,0.00,'spree',0.00,1,NULL,NULL,0,0,'IZqqKP-7-QqIdwllcPXoRg',NULL,NULL,1,0),(8,'R190244843',22.99,29.14,'payment',1.15,4,NULL,3,3,0.00,NULL,NULL,NULL,'star1391@gmail.com',NULL,'2017-01-29 09:00:18','2017-01-29 09:00:22','USD','192.168.0.4',4,5.00,1.15,0.00,'spree',0.00,1,NULL,NULL,0,0,'hDVe0sK5mMNuwGHtrEyhyA',NULL,NULL,1,1),(9,'R767679975',19.99,19.99,'complete',0.00,2,'2017-01-29 09:09:34',2,2,0.00,NULL,'pending','balance_due','kaustubhwise@gmail.com',NULL,'2017-01-29 09:01:12','2017-01-29 09:09:34','USD','192.168.0.4',2,0.00,0.00,0.00,'spree',0.00,1,NULL,NULL,1,0,'AAz804w-JbDf0tdZPshHlw',NULL,NULL,1,3),(10,'R846384014',31.98,31.98,'cart',0.00,2,NULL,NULL,NULL,0.00,1,NULL,NULL,'kaustubhwise@gmail.com',NULL,'2017-01-29 09:10:29','2017-01-30 16:35:41','USD',NULL,2,0.00,0.00,0.00,'spree',0.00,2,NULL,NULL,0,0,'dLV6F6_zWjQOc5P79g5y0g',NULL,NULL,1,0),(11,'R053991083',15.99,21.79,'complete',0.80,NULL,'2017-01-30 15:39:31',4,4,0.00,NULL,'pending','balance_due','kaustubhwise@gmail.com',NULL,'2017-01-30 15:38:52','2017-01-30 15:39:31','USD','127.0.0.1',NULL,5.00,0.80,0.00,'spree',0.00,1,NULL,NULL,1,0,'vYVN48Crs9Rc1tJbVJE6DQ1485778690287',NULL,NULL,1,2),(12,'R296027004',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2017-01-30 15:44:23','2017-01-30 15:44:24','USD',NULL,NULL,0.00,0.00,0.00,'spree',0.00,0,NULL,NULL,0,0,'NMxDEP7SDZsVs9O1fRYEvg',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders_promotions`
--

DROP TABLE IF EXISTS `spree_orders_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders_promotions` (
  `order_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  KEY `index_spree_orders_promotions_on_order_id_and_promotion_id` (`order_id`,`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders_promotions`
--

LOCK TABLES `spree_orders_promotions` WRITE;
/*!40000 ALTER TABLE `spree_orders_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_orders_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_capture_events`
--

DROP TABLE IF EXISTS `spree_payment_capture_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_capture_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) DEFAULT '0.00',
  `payment_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payment_capture_events_on_payment_id` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_capture_events`
--

LOCK TABLES `spree_payment_capture_events` WRITE;
/*!40000 ALTER TABLE `spree_payment_capture_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_payment_capture_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_capture` tinyint(1) DEFAULT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_spree_payment_methods_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::Gateway::Bogus','Credit Card','Bogus payment gateway.',0,'2017-01-29 08:32:59','2017-01-29 07:39:32','2017-01-29 08:32:59','',NULL,'---\n:server: test\n:test_mode: true\n'),(2,'Spree::PaymentMethod::Check','Check','Pay by check.',1,NULL,'2017-01-29 07:39:32','2017-01-29 07:39:32',NULL,NULL,NULL),(3,'Spree::Gateway::Bogus','Bogus','Bogus',1,NULL,'2017-01-29 09:07:16','2017-01-29 09:07:16','',NULL,'---\n:server: test\n:test_mode: true\n');
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avs_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv_response_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payments_on_order_id` (`order_id`),
  KEY `index_spree_payments_on_payment_method_id` (`payment_method_id`),
  KEY `index_spree_payments_on_source_id_and_source_type` (`source_id`,`source_type`),
  KEY `index_spree_payments_on_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
INSERT INTO `spree_payments` VALUES (1,21.79,1,NULL,NULL,2,'checkout',NULL,NULL,'2017-01-29 07:56:01','2017-01-29 07:56:01','PAMM32TM',NULL,NULL),(2,63.96,2,NULL,NULL,2,'checkout',NULL,NULL,'2017-01-29 08:59:28','2017-01-29 08:59:28','PCFF5BYH',NULL,NULL),(3,62.72,4,NULL,NULL,2,'checkout',NULL,NULL,'2017-01-29 09:00:07','2017-01-29 09:00:07','PL1OZ23S',NULL,NULL),(4,19.99,9,NULL,NULL,2,'checkout',NULL,NULL,'2017-01-29 09:09:34','2017-01-29 09:09:34','P8G7ZFSU',NULL,NULL),(5,21.79,11,NULL,NULL,2,'checkout',NULL,NULL,'2017-01-30 15:39:31','2017-01-30 15:39:31','PICN9H01',NULL,NULL);
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8_unicode_ci,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
INSERT INTO `spree_preferences` VALUES (1,'--- 232\n...\n','spree/app_configuration/default_country_id','2017-01-29 07:39:23','2017-01-29 07:39:23'),(2,'--- USD\n...\n','spree/app_configuration/currency','2017-01-29 07:39:33','2017-01-29 07:39:39');
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_prices_on_variant_id_and_currency` (`variant_id`,`currency`),
  KEY `index_spree_prices_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (1,1,15.99,'USD',NULL),(2,1,14.00,'EUR',NULL),(3,2,22.99,'USD',NULL),(4,2,19.00,'EUR',NULL),(5,3,19.99,'USD',NULL),(6,3,16.00,'EUR',NULL),(7,4,19.99,'USD',NULL),(8,4,16.00,'EUR',NULL),(9,5,19.99,'USD',NULL),(10,5,16.00,'EUR',NULL),(11,6,19.99,'USD',NULL),(12,6,16.00,'EUR',NULL),(13,7,19.99,'USD',NULL),(14,7,16.00,'EUR',NULL),(15,8,19.99,'USD',NULL),(16,8,16.00,'EUR',NULL),(17,9,19.99,'USD',NULL),(18,9,16.00,'EUR',NULL),(19,10,19.99,'USD',NULL),(20,10,16.00,'EUR',NULL),(21,11,15.99,'USD',NULL),(22,11,14.00,'EUR',NULL),(23,12,22.99,'USD',NULL),(24,12,19.00,'EUR',NULL),(25,13,13.99,'USD',NULL),(26,13,12.00,'EUR',NULL),(27,14,16.99,'USD',NULL),(28,14,14.00,'EUR',NULL),(29,15,16.99,'USD',NULL),(30,15,14.00,'EUR',NULL),(31,16,13.99,'USD',NULL),(32,16,12.00,'EUR',NULL),(33,17,15.99,'USD',NULL);
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_product_option_types_on_option_type_id` (`option_type_id`),
  KEY `index_spree_product_option_types_on_product_id` (`product_id`),
  KEY `index_spree_product_option_types_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
INSERT INTO `spree_product_option_types` VALUES (1,1,3,1,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(2,2,3,2,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(3,1,8,1,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(4,2,8,2,'2017-01-29 07:39:42','2017-01-29 07:39:42'),(5,1,1,1,'2017-01-29 08:36:25','2017-01-29 08:36:25'),(6,1,6,2,'2017-01-29 09:08:50','2017-01-29 09:08:50');
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`),
  KEY `index_spree_product_properties_on_position` (`position`),
  KEY `index_spree_product_properties_on_property_id` (`property_id`),
  KEY `index_spree_product_properties_on_type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_property_types`
--

DROP TABLE IF EXISTS `spree_product_property_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_property_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_product_property_types_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_property_types`
--

LOCK TABLES `spree_product_property_types` WRITE;
/*!40000 ALTER TABLE `spree_product_property_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_product_property_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `promotionable` tinyint(1) DEFAULT '1',
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avg_rating` decimal(7,5) NOT NULL DEFAULT '0.00000',
  `reviews_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_products_on_slug` (`slug`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_shipping_category_id` (`shipping_category_id`),
  KEY `index_spree_products_on_tax_category_id` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'Ruby on Rails Tote','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 00:00:00',NULL,'ruby-on-rails-tote','','',1,1,'2017-01-29 07:39:33','2017-01-30 15:39:31',1,'',5.00000,1),(2,'Ruby on Rails Bag','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'ruby-on-rails-bag',NULL,NULL,1,1,'2017-01-29 07:39:33','2017-01-29 09:00:07',1,NULL,0.00000,0),(3,'Ruby on Rails Baseball Jersey','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'ruby-on-rails-baseball-jersey',NULL,NULL,1,1,'2017-01-29 07:39:34','2017-01-29 07:39:41',1,NULL,0.00000,0),(4,'Ruby on Rails Jr. Spaghetti','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'ruby-on-rails-jr-spaghetti',NULL,NULL,1,1,'2017-01-29 07:39:34','2017-01-29 07:39:41',1,NULL,0.00000,0),(5,'Ruby on Rails Ringer T-Shirt','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'ruby-on-rails-ringer-t-shirt',NULL,NULL,1,1,'2017-01-29 07:39:34','2017-01-29 07:39:41',1,NULL,0.00000,0),(6,'Ruby Baseball Jersey','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 00:00:00',NULL,'ruby-baseball-jersey','','',1,1,'2017-01-29 07:39:34','2017-01-29 09:09:34',1,'',0.00000,0),(7,'Apache Baseball Jersey','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'apache-baseball-jersey',NULL,NULL,1,1,'2017-01-29 07:39:35','2017-01-29 07:39:41',1,NULL,0.00000,0),(8,'Spree Baseball Jersey','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'spree-baseball-jersey',NULL,NULL,1,1,'2017-01-29 07:39:35','2017-01-29 07:39:41',1,NULL,0.00000,0),(9,'Spree Jr. Spaghetti','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'spree-jr-spaghetti',NULL,NULL,1,1,'2017-01-29 07:39:35','2017-01-29 07:39:41',1,NULL,0.00000,0),(10,'Spree Ringer T-Shirt','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'spree-ringer-t-shirt',NULL,NULL,1,1,'2017-01-29 07:39:37','2017-01-29 07:39:41',1,NULL,0.00000,0),(11,'Spree Tote','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'spree-tote',NULL,NULL,1,1,'2017-01-29 07:39:37','2017-01-29 07:39:41',1,NULL,0.00000,0),(12,'Spree Bag','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'spree-bag',NULL,NULL,1,1,'2017-01-29 07:39:37','2017-01-29 07:39:41',1,NULL,0.00000,0),(13,'Ruby on Rails Mug','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'ruby-on-rails-mug',NULL,NULL,NULL,1,'2017-01-29 07:39:38','2017-01-29 07:39:41',1,NULL,0.00000,0),(14,'Ruby on Rails Stein','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'ruby-on-rails-stein',NULL,NULL,NULL,1,'2017-01-29 07:39:38','2017-01-29 07:39:41',1,NULL,0.00000,0),(15,'Spree Stein','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'spree-stein',NULL,NULL,NULL,1,'2017-01-29 07:39:38','2017-01-29 07:39:41',1,NULL,0.00000,0),(16,'Spree Mug','Et reiciendis eos ut cumque. Enim quis maxime repudiandae nihil voluptas nisi ad. Consequatur provident quibusdam quia esse facere. Inventore nisi explicabo rem quibusdam ullam.','2017-01-29 07:39:33',NULL,'spree-mug',NULL,NULL,NULL,1,'2017-01-29 07:39:38','2017-01-29 07:39:41',1,NULL,0.00000,0);
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`),
  KEY `index_spree_products_taxons_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (1,3,1,1),(2,3,2,2),(11,3,3,3),(12,3,4,4),(13,4,5,1),(14,4,6,2),(15,4,7,3),(16,4,8,4),(4,6,9,1),(9,6,10,2),(3,7,11,1),(5,7,12,2),(7,7,13,3),(6,7,14,4),(8,7,15,5),(10,7,16,6),(6,8,17,1),(7,9,18,1),(15,10,19,1),(16,10,20,2),(10,10,21,3),(8,10,22,4),(11,10,23,5),(12,10,24,6),(9,10,25,7),(1,11,26,1),(2,11,27,2),(13,11,28,3),(14,11,29,4),(3,11,30,5),(4,11,31,6),(5,11,32,7);
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_action_line_items_on_promotion_action_id` (`promotion_action_id`),
  KEY `index_spree_promotion_action_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_actions_on_id_and_type` (`id`,`type`),
  KEY `index_spree_promotion_actions_on_promotion_id` (`promotion_id`),
  KEY `index_spree_promotion_actions_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_categories`
--

DROP TABLE IF EXISTS `spree_promotion_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_categories`
--

LOCK TABLES `spree_promotion_categories` WRITE;
/*!40000 ALTER TABLE `spree_promotion_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`),
  KEY `index_spree_promotion_rules_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotions`
--

DROP TABLE IF EXISTS `spree_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'all',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `promotion_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotions_on_id_and_type` (`id`,`type`),
  KEY `index_spree_promotions_on_code` (`code`),
  KEY `index_spree_promotions_on_expires_at` (`expires_at`),
  KEY `index_spree_promotions_on_starts_at` (`starts_at`),
  KEY `index_spree_promotions_on_advertise` (`advertise`),
  KEY `index_spree_promotions_on_promotion_category_id` (`promotion_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotions`
--

LOCK TABLES `spree_promotions` WRITE;
/*!40000 ALTER TABLE `spree_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `enabled_for_filters` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_properties_on_enabled_for_filters` (`enabled_for_filters`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_refund_reasons`
--

DROP TABLE IF EXISTS `spree_refund_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_refund_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_refund_reasons`
--

LOCK TABLES `spree_refund_reasons` WRITE;
/*!40000 ALTER TABLE `spree_refund_reasons` DISABLE KEYS */;
INSERT INTO `spree_refund_reasons` VALUES (1,'Return processing',1,0,'2017-01-29 07:39:13','2017-01-29 07:39:13');
/*!40000 ALTER TABLE `spree_refund_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_refunds`
--

DROP TABLE IF EXISTS `spree_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `refund_reason_id` int(11) DEFAULT NULL,
  `reimbursement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refunds_on_refund_reason_id` (`refund_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_refunds`
--

LOCK TABLES `spree_refunds` WRITE;
/*!40000 ALTER TABLE `spree_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursement_credits`
--

DROP TABLE IF EXISTS `spree_reimbursement_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursement_credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reimbursement_id` int(11) DEFAULT NULL,
  `creditable_id` int(11) DEFAULT NULL,
  `creditable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursement_credits`
--

LOCK TABLES `spree_reimbursement_credits` WRITE;
/*!40000 ALTER TABLE `spree_reimbursement_credits` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_reimbursement_credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursement_types`
--

DROP TABLE IF EXISTS `spree_reimbursement_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_reimbursement_types_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursement_types`
--

LOCK TABLES `spree_reimbursement_types` WRITE;
/*!40000 ALTER TABLE `spree_reimbursement_types` DISABLE KEYS */;
INSERT INTO `spree_reimbursement_types` VALUES (1,'original',1,1,'2017-01-29 07:39:14','2017-01-29 07:39:14','Spree::ReimbursementType::OriginalPayment');
/*!40000 ALTER TABLE `spree_reimbursement_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursements`
--

DROP TABLE IF EXISTS `spree_reimbursements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reimbursement_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_return_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_reimbursements_on_customer_return_id` (`customer_return_id`),
  KEY `index_spree_reimbursements_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursements`
--

LOCK TABLES `spree_reimbursements` WRITE;
/*!40000 ALTER TABLE `spree_reimbursements` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_reimbursements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorization_reasons`
--

DROP TABLE IF EXISTS `spree_return_authorization_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorization_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorization_reasons`
--

LOCK TABLES `spree_return_authorization_reasons` WRITE;
/*!40000 ALTER TABLE `spree_return_authorization_reasons` DISABLE KEYS */;
INSERT INTO `spree_return_authorization_reasons` VALUES (1,'Better price available',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13'),(2,'Missed estimated delivery date',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13'),(3,'Missing parts or accessories',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13'),(4,'Damaged/Defective',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13'),(5,'Different from what was ordered',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13'),(6,'Different from description',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13'),(7,'No longer needed/wanted',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13'),(8,'Accidental order',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13'),(9,'Unauthorized purchase',1,1,'2017-01-29 07:39:13','2017-01-29 07:39:13');
/*!40000 ALTER TABLE `spree_return_authorization_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `memo` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `return_authorization_reason_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_return_authorizations_on_return_authorization_reason_id` (`return_authorization_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_items`
--

DROP TABLE IF EXISTS `spree_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_authorization_id` int(11) DEFAULT NULL,
  `inventory_unit_id` int(11) DEFAULT NULL,
  `exchange_variant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pre_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `included_tax_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `additional_tax_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `reception_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acceptance_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_return_id` int(11) DEFAULT NULL,
  `reimbursement_id` int(11) DEFAULT NULL,
  `exchange_inventory_unit_id` int(11) DEFAULT NULL,
  `acceptance_status_errors` text COLLATE utf8_unicode_ci,
  `preferred_reimbursement_type_id` int(11) DEFAULT NULL,
  `override_reimbursement_type_id` int(11) DEFAULT NULL,
  `resellable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_return_items_on_customer_return_id` (`customer_return_id`),
  KEY `index_spree_return_items_on_exchange_inventory_unit_id` (`exchange_inventory_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_items`
--

LOCK TABLES `spree_return_items` WRITE;
/*!40000 ALTER TABLE `spree_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reviews`
--

DROP TABLE IF EXISTS `spree_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `review` text COLLATE utf8_unicode_ci,
  `approved` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en',
  `show_identifier` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_spree_reviews_on_show_identifier` (`show_identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reviews`
--

LOCK TABLES `spree_reviews` WRITE;
/*!40000 ALTER TABLE `spree_reviews` DISABLE KEYS */;
INSERT INTO `spree_reviews` VALUES (1,1,'Super awesome !',NULL,5,'Go for it !','Product is really good !',1,'2017-01-29 07:53:35','2017-01-29 08:21:15',2,'192.168.0.4','en',1);
/*!40000 ALTER TABLE `spree_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (1,1);
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_sales_app_configurations`
--

DROP TABLE IF EXISTS `spree_sales_app_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_sales_app_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `states_checksum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_checksum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxonomies_checksum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_sales_app_configurations`
--

LOCK TABLES `spree_sales_app_configurations` WRITE;
/*!40000 ALTER TABLE `spree_sales_app_configurations` DISABLE KEYS */;
INSERT INTO `spree_sales_app_configurations` VALUES (1,'cf761af5e014cfb9303e94e4cb0e562f','77af1bb975a7d75c747fbdba3b47b922','b658e4a12f592386eff82bbfee2f40e3','2017-01-29 07:42:56','2017-01-29 07:42:56');
/*!40000 ALTER TABLE `spree_sales_app_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT '0.00',
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `adjustment_total` decimal(10,2) DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pre_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`),
  KEY `index_spree_shipments_on_stock_location_id` (`stock_location_id`),
  KEY `index_spree_shipments_on_address_id` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
INSERT INTO `spree_shipments` VALUES (1,NULL,'H91415251142',5.00,NULL,1,1,'pending','2017-01-29 07:53:56','2017-01-29 07:56:01',1,0.00,0.00,0.00,0.00,0.0000),(9,NULL,'H56974104332',0.00,NULL,2,2,'pending','2017-01-29 08:58:36','2017-01-29 08:59:28',1,0.00,0.00,0.00,0.00,0.0000),(10,NULL,'H51723172277',0.00,NULL,2,2,'pending','2017-01-29 08:58:36','2017-01-29 08:59:28',1,0.00,0.00,0.00,0.00,0.0000),(11,NULL,'H69822404639',5.00,NULL,4,3,'pending','2017-01-29 08:59:57','2017-01-29 09:00:07',1,0.00,0.00,0.00,0.00,0.0000),(12,NULL,'H91003373104',5.00,NULL,8,3,'pending','2017-01-29 09:00:22','2017-01-29 09:00:22',1,0.00,0.00,0.00,0.00,0.0000),(14,NULL,'H41017906125',0.00,NULL,9,2,'pending','2017-01-29 09:09:22','2017-01-29 09:09:34',1,0.00,0.00,0.00,0.00,0.0000),(15,NULL,'H41438472836',5.00,NULL,11,4,'pending','2017-01-30 15:39:20','2017-01-30 15:39:31',1,0.00,0.00,0.00,0.00,0.0000);
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_categories` VALUES (1,'Default','2017-01-29 07:39:09','2017-01-29 07:39:09');
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_categories`
--

DROP TABLE IF EXISTS `spree_shipping_method_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_spree_shipping_method_categories` (`shipping_category_id`,`shipping_method_id`),
  KEY `index_spree_shipping_method_categories_on_shipping_method_id` (`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_categories`
--

LOCK TABLES `spree_shipping_method_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_categories` VALUES (1,1,1,'2017-01-29 07:39:32','2017-01-29 07:39:32'),(2,2,1,'2017-01-29 07:39:32','2017-01-29 07:39:32'),(3,3,1,'2017-01-29 07:39:32','2017-01-29 07:39:32'),(4,4,1,'2017-01-29 07:39:32','2017-01-29 07:39:32'),(5,5,1,'2017-01-29 07:39:32','2017-01-29 07:39:32'),(6,6,1,'2017-01-29 08:57:39','2017-01-29 08:57:39');
/*!40000 ALTER TABLE `spree_shipping_method_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tracking_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_shipping_methods_on_deleted_at` (`deleted_at`),
  KEY `index_spree_shipping_methods_on_tax_category_id` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'UPS Ground (USD)',NULL,NULL,'2017-01-29 07:39:32','2017-01-29 07:39:32',NULL,NULL,NULL,NULL),(2,'UPS Two Day (USD)',NULL,NULL,'2017-01-29 07:39:32','2017-01-29 07:39:32',NULL,NULL,NULL,NULL),(3,'UPS One Day (USD)',NULL,NULL,'2017-01-29 07:39:32','2017-01-29 07:39:32',NULL,NULL,NULL,NULL),(4,'UPS Ground (EU)',NULL,NULL,'2017-01-29 07:39:32','2017-01-29 07:39:32',NULL,NULL,NULL,NULL),(5,'UPS Ground (EUR)',NULL,NULL,'2017-01-29 07:39:32','2017-01-29 07:39:32',NULL,NULL,NULL,NULL),(6,'DTDC','',NULL,'2017-01-29 08:57:39','2017-01-29 08:57:39','','',NULL,'');
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods_zones`
--

DROP TABLE IF EXISTS `spree_shipping_methods_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods_zones` (
  `shipping_method_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods_zones`
--

LOCK TABLES `spree_shipping_methods_zones` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods_zones` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods_zones` VALUES (1,2),(2,2),(3,2),(4,1),(5,1),(6,3);
/*!40000 ALTER TABLE `spree_shipping_methods_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rates`
--

DROP TABLE IF EXISTS `spree_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `cost` decimal(8,2) DEFAULT '0.00',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spree_shipping_rates_join_index` (`shipment_id`,`shipping_method_id`),
  KEY `index_spree_shipping_rates_on_selected` (`selected`),
  KEY `index_spree_shipping_rates_on_tax_rate_id` (`tax_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rates`
--

LOCK TABLES `spree_shipping_rates` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rates` DISABLE KEYS */;
INSERT INTO `spree_shipping_rates` VALUES (1,1,1,1,5.00,'2017-01-29 07:53:56','2017-01-29 07:53:56',NULL),(2,1,2,0,10.00,'2017-01-29 07:53:56','2017-01-29 07:53:56',NULL),(3,1,3,0,15.00,'2017-01-29 07:53:56','2017-01-29 07:53:56',NULL),(10,9,6,1,0.00,'2017-01-29 08:58:36','2017-01-29 08:58:36',NULL),(11,10,6,1,0.00,'2017-01-29 08:58:36','2017-01-29 08:58:36',NULL),(12,11,1,1,5.00,'2017-01-29 08:59:57','2017-01-29 08:59:57',NULL),(13,11,2,0,10.00,'2017-01-29 08:59:57','2017-01-29 08:59:57',NULL),(14,11,3,0,15.00,'2017-01-29 08:59:57','2017-01-29 08:59:57',NULL),(15,12,1,1,5.00,'2017-01-29 09:00:22','2017-01-29 09:00:22',NULL),(16,12,2,0,10.00,'2017-01-29 09:00:22','2017-01-29 09:00:22',NULL),(17,12,3,0,15.00,'2017-01-29 09:00:22','2017-01-29 09:00:22',NULL),(19,14,6,1,0.00,'2017-01-29 09:09:22','2017-01-29 09:09:22',NULL),(20,15,1,1,5.00,'2017-01-30 15:39:20','2017-01-30 15:39:20',NULL),(21,15,2,0,10.00,'2017-01-30 15:39:20','2017-01-30 15:39:20',NULL),(22,15,3,0,15.00,'2017-01-30 15:39:20','2017-01-30 15:39:20',NULL);
/*!40000 ALTER TABLE `spree_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_skrill_transactions`
--

DROP TABLE IF EXISTS `spree_skrill_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_skrill_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_skrill_transactions`
--

LOCK TABLES `spree_skrill_transactions` WRITE;
/*!40000 ALTER TABLE `spree_skrill_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_skrill_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_state_changes_on_stateful_id_and_stateful_type` (`stateful_id`,`stateful_type`),
  KEY `index_spree_state_changes_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'order','cart',1,2,'Spree::Order','address','2017-01-29 07:53:50','2017-01-29 07:53:50'),(2,'order','address',1,2,'Spree::Order','delivery','2017-01-29 07:53:56','2017-01-29 07:53:56'),(3,'order','delivery',1,2,'Spree::Order','payment','2017-01-29 07:53:56','2017-01-29 07:53:56'),(4,'order','payment',1,2,'Spree::Order','complete','2017-01-29 07:56:01','2017-01-29 07:56:01'),(5,'payment',NULL,1,2,'Spree::Order','balance_due','2017-01-29 07:56:01','2017-01-29 07:56:01'),(6,'shipment',NULL,1,2,'Spree::Order','backorder','2017-01-29 07:56:01','2017-01-29 07:56:01'),(7,'order','cart',4,4,'Spree::Order','address','2017-01-29 08:25:51','2017-01-29 08:25:51'),(8,'order','address',4,4,'Spree::Order','delivery','2017-01-29 08:26:32','2017-01-29 08:26:32'),(9,'order','delivery',4,4,'Spree::Order','payment','2017-01-29 08:26:33','2017-01-29 08:26:33'),(10,'order','cart',4,4,'Spree::Order','address','2017-01-29 08:26:51','2017-01-29 08:26:51'),(11,'order','address',4,4,'Spree::Order','delivery','2017-01-29 08:26:55','2017-01-29 08:26:55'),(12,'order','delivery',4,4,'Spree::Order','payment','2017-01-29 08:26:55','2017-01-29 08:26:55'),(13,'order','cart',2,2,'Spree::Order','address','2017-01-29 08:33:40','2017-01-29 08:33:40'),(14,'order','address',2,2,'Spree::Order','delivery','2017-01-29 08:58:36','2017-01-29 08:58:36'),(15,'order','delivery',2,2,'Spree::Order','payment','2017-01-29 08:58:36','2017-01-29 08:58:36'),(16,'order','payment',2,2,'Spree::Order','complete','2017-01-29 08:59:28','2017-01-29 08:59:28'),(17,'payment',NULL,2,2,'Spree::Order','balance_due','2017-01-29 08:59:28','2017-01-29 08:59:28'),(18,'shipment',NULL,2,2,'Spree::Order','backorder','2017-01-29 08:59:28','2017-01-29 08:59:28'),(19,'order','cart',4,4,'Spree::Order','address','2017-01-29 08:59:52','2017-01-29 08:59:52'),(20,'order','address',4,4,'Spree::Order','delivery','2017-01-29 08:59:57','2017-01-29 08:59:57'),(21,'order','delivery',4,4,'Spree::Order','payment','2017-01-29 08:59:57','2017-01-29 08:59:57'),(22,'order','payment',4,4,'Spree::Order','complete','2017-01-29 09:00:07','2017-01-29 09:00:07'),(23,'payment',NULL,4,4,'Spree::Order','balance_due','2017-01-29 09:00:07','2017-01-29 09:00:07'),(24,'shipment',NULL,4,4,'Spree::Order','backorder','2017-01-29 09:00:07','2017-01-29 09:00:07'),(25,'order','cart',8,4,'Spree::Order','address','2017-01-29 09:00:20','2017-01-29 09:00:20'),(26,'order','address',8,4,'Spree::Order','delivery','2017-01-29 09:00:22','2017-01-29 09:00:22'),(27,'order','delivery',8,4,'Spree::Order','payment','2017-01-29 09:00:22','2017-01-29 09:00:22'),(28,'order','cart',9,2,'Spree::Order','address','2017-01-29 09:01:15','2017-01-29 09:01:15'),(29,'order','address',9,2,'Spree::Order','delivery','2017-01-29 09:01:21','2017-01-29 09:01:21'),(30,'order','delivery',9,2,'Spree::Order','payment','2017-01-29 09:01:21','2017-01-29 09:01:21'),(31,'order','cart',9,2,'Spree::Order','address','2017-01-29 09:09:15','2017-01-29 09:09:15'),(32,'order','address',9,2,'Spree::Order','delivery','2017-01-29 09:09:22','2017-01-29 09:09:22'),(33,'order','delivery',9,2,'Spree::Order','payment','2017-01-29 09:09:23','2017-01-29 09:09:23'),(34,'order','payment',9,2,'Spree::Order','complete','2017-01-29 09:09:34','2017-01-29 09:09:34'),(35,'payment',NULL,9,2,'Spree::Order','balance_due','2017-01-29 09:09:34','2017-01-29 09:09:34'),(36,'shipment',NULL,9,2,'Spree::Order','pending','2017-01-29 09:09:34','2017-01-29 09:09:34'),(37,'order','cart',11,NULL,'Spree::Order','address','2017-01-30 15:39:08','2017-01-30 15:39:08'),(38,'order','address',11,NULL,'Spree::Order','delivery','2017-01-30 15:39:20','2017-01-30 15:39:20'),(39,'order','delivery',11,NULL,'Spree::Order','payment','2017-01-30 15:39:21','2017-01-30 15:39:21'),(40,'order','payment',11,NULL,'Spree::Order','complete','2017-01-30 15:39:31','2017-01-30 15:39:31'),(41,'payment',NULL,11,NULL,'Spree::Order','balance_due','2017-01-30 15:39:31','2017-01-30 15:39:31'),(42,'shipment',NULL,11,NULL,'Spree::Order','pending','2017-01-30 15:39:31','2017-01-30 15:39:31');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_states_on_country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3777 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'Canillo','02',1,NULL),(2,'Encamp','03',1,NULL),(3,'La Massana','04',1,NULL),(4,'Ordino','05',1,NULL),(5,'Sant Julià de Lòria','06',1,NULL),(6,'Andorra la Vella','07',1,NULL),(7,'Escaldes-Engordany','08',1,NULL),(8,'\'Ajmān','AJ',2,NULL),(9,'Abū Ȥaby [Abu Dhabi]','AZ',2,NULL),(10,'Dubayy','DU',2,NULL),(11,'Al Fujayrah','FU',2,NULL),(12,'Ra’s al Khaymah','RK',2,NULL),(13,'Ash Shāriqah','SH',2,NULL),(14,'Umm al Qaywayn','UQ',2,NULL),(15,'Balkh','BAL',3,NULL),(16,'Bāmyān','BAM',3,NULL),(17,'Bādghīs','BDG',3,NULL),(18,'Badakhshān','BDS',3,NULL),(19,'Baghlān','BGL',3,NULL),(20,'Dāykundī','DAY',3,NULL),(21,'Farāh','FRA',3,NULL),(22,'Fāryāb','FYB',3,NULL),(23,'Ghaznī','GHA',3,NULL),(24,'Ghōr','GHO',3,NULL),(25,'Helmand','HEL',3,NULL),(26,'Herāt','HER',3,NULL),(27,'Jowzjān','JOW',3,NULL),(28,'Kābul','KAB',3,NULL),(29,'Kandahār','KAN',3,NULL),(30,'Kāpīsā','KAP',3,NULL),(31,'Kunduz','KDZ',3,NULL),(32,'Khōst','KHO',3,NULL),(33,'Kunar','KNR',3,NULL),(34,'Laghmān','LAG',3,NULL),(35,'Lōgar','LOG',3,NULL),(36,'Nangarhār','NAN',3,NULL),(37,'Nīmrōz','NIM',3,NULL),(38,'Nūristān','NUR',3,NULL),(39,'Panjshayr','PAN',3,NULL),(40,'Parwān','PAR',3,NULL),(41,'Paktiyā','PIA',3,NULL),(42,'Paktīkā','PKA',3,NULL),(43,'Samangān','SAM',3,NULL),(44,'Sar-e Pul','SAR',3,NULL),(45,'Takhār','TAK',3,NULL),(46,'Uruzgān','URU',3,NULL),(47,'Wardak','WAR',3,NULL),(48,'Zābul','ZAB',3,NULL),(49,'Saint George','03',4,NULL),(50,'Saint John','04',4,NULL),(51,'Saint Mary','05',4,NULL),(52,'Saint Paul','06',4,NULL),(53,'Saint Peter','07',4,NULL),(54,'Saint Philip','08',4,NULL),(55,'Barbuda','10',4,NULL),(56,'Redonda','11',4,NULL),(57,'Berat','01',6,NULL),(58,'Durrës','02',6,NULL),(59,'Elbasan','03',6,NULL),(60,'Fier','04',6,NULL),(61,'Gjirokastër','05',6,NULL),(62,'Korçë','06',6,NULL),(63,'Kukës','07',6,NULL),(64,'Lezhë','08',6,NULL),(65,'Dibër','09',6,NULL),(66,'Shkodër','10',6,NULL),(67,'Tiranë','11',6,NULL),(68,'Vlorë','12',6,NULL),(69,'Aragacotn','AG',7,NULL),(70,'Ararat','AR',7,NULL),(71,'Armavir','AV',7,NULL),(72,'Erevan','ER',7,NULL),(73,'Gegarkunik\'','GR',7,NULL),(74,'Kotayk\'','KT',7,NULL),(75,'Lory','LO',7,NULL),(76,'Sirak','SH',7,NULL),(77,'Syunik\'','SU',7,NULL),(78,'Tavus','TV',7,NULL),(79,'Vayoc Jor','VD',7,NULL),(80,'Bengo','BGO',8,NULL),(81,'Benguela','BGU',8,NULL),(82,'Bié','BIE',8,NULL),(83,'Cabinda','CAB',8,NULL),(84,'Cuando-Cubango','CCU',8,NULL),(85,'Cunene','CNN',8,NULL),(86,'Cuanza Norte','CNO',8,NULL),(87,'Cuanza Sul','CUS',8,NULL),(88,'Huambo','HUA',8,NULL),(89,'Huíla','HUI',8,NULL),(90,'Lunda Norte','LNO',8,NULL),(91,'Lunda Sul','LSU',8,NULL),(92,'Luanda','LUA',8,NULL),(93,'Malange','MAL',8,NULL),(94,'Moxico','MOX',8,NULL),(95,'Namibe','NAM',8,NULL),(96,'Uíge','UIG',8,NULL),(97,'Zaire','ZAI',8,NULL),(98,'Salta','A',10,NULL),(99,'Buenos Aires','B',10,NULL),(100,'Ciudad Autónoma de Buenos Aires','C',10,NULL),(101,'San Luis','D',10,NULL),(102,'Entre Rios','E',10,NULL),(103,'Santiago del Estero','G',10,NULL),(104,'Chaco','H',10,NULL),(105,'San Juan','J',10,NULL),(106,'Catamarca','K',10,NULL),(107,'La Pampa','L',10,NULL),(108,'Mendoza','M',10,NULL),(109,'Misiones','N',10,NULL),(110,'Formosa','P',10,NULL),(111,'Neuquen','Q',10,NULL),(112,'Rio Negro','R',10,NULL),(113,'Santa Fe','S',10,NULL),(114,'Tucuman','T',10,NULL),(115,'Chubut','U',10,NULL),(116,'Tierra del Fuego','V',10,NULL),(117,'Corrientes','W',10,NULL),(118,'Cordoba','X',10,NULL),(119,'Jujuy','Y',10,NULL),(120,'Santa Cruz','Z',10,NULL),(121,'La Rioja','F',10,NULL),(122,'Burgenland','1',12,NULL),(123,'Kärnten','2',12,NULL),(124,'Niederösterreich','3',12,NULL),(125,'Oberösterreich','4',12,NULL),(126,'Salzburg','5',12,NULL),(127,'Steiermark','6',12,NULL),(128,'Tirol','7',12,NULL),(129,'Vorarlberg','8',12,NULL),(130,'Wien','9',12,NULL),(131,'Australian Capital Territory','ACT',13,NULL),(132,'New South Wales','NSW',13,NULL),(133,'Northern Territory','NT',13,NULL),(134,'Queensland','QLD',13,NULL),(135,'South Australia','SA',13,NULL),(136,'Tasmania','TAS',13,NULL),(137,'Victoria','VIC',13,NULL),(138,'Western Australia','WA',13,NULL),(139,'Abşeron','ABS',16,NULL),(140,'Ağstafa','AGA',16,NULL),(141,'Ağcabədi','AGC',16,NULL),(142,'Ağdam','AGM',16,NULL),(143,'Ağdaş','AGS',16,NULL),(144,'Ağsu','AGU',16,NULL),(145,'Astara','AST',16,NULL),(146,'Bakı','BA',16,NULL),(147,'Balakən','BAL',16,NULL),(148,'Bərdə','BAR',16,NULL),(149,'Beyləqan','BEY',16,NULL),(150,'Biləsuvar','BIL',16,NULL),(151,'Cəbrayıl','CAB',16,NULL),(152,'Cəlilabab','CAL',16,NULL),(153,'Daşkəsən','DAS',16,NULL),(154,'Füzuli','FUZ',16,NULL),(155,'Gəncə','GA',16,NULL),(156,'Gədəbəy','GAD',16,NULL),(157,'Goranboy','GOR',16,NULL),(158,'Göyçay','GOY',16,NULL),(159,'Göygöl','GYG',16,NULL),(160,'Hacıqabul','HAC',16,NULL),(161,'İmişli','IMI',16,NULL),(162,'İsmayıllı','ISM',16,NULL),(163,'Kəlbəcər','KAL',16,NULL),(164,'Kürdəmir','KUR',16,NULL),(165,'Lənkəran','LA',16,NULL),(166,'Laçın','LAC',16,NULL),(167,'Lənkəran','LAN',16,NULL),(168,'Lerik','LER',16,NULL),(169,'Masallı','MAS',16,NULL),(170,'Mingəçevir','MI',16,NULL),(171,'Naftalan','NA',16,NULL),(172,'Neftçala','NEF',16,NULL),(173,'Naxçıvan','NX',16,NULL),(174,'Oğuz','OGU',16,NULL),(175,'Qəbələ','QAB',16,NULL),(176,'Qax','QAX',16,NULL),(177,'Qazax','QAZ',16,NULL),(178,'Quba','QBA',16,NULL),(179,'Qubadlı','QBI',16,NULL),(180,'Qobustan','QOB',16,NULL),(181,'Qusar','QUS',16,NULL),(182,'Şəki','SA',16,NULL),(183,'Sabirabad','SAB',16,NULL),(184,'Şəki','SAK',16,NULL),(185,'Salyan','SAL',16,NULL),(186,'Saatlı','SAT',16,NULL),(187,'Şabran','SBN',16,NULL),(188,'Siyəzən','SIY',16,NULL),(189,'Şəmkir','SKR',16,NULL),(190,'Sumqayıt','SM',16,NULL),(191,'Şamaxı','SMI',16,NULL),(192,'Samux','SMX',16,NULL),(193,'Şirvan','SR',16,NULL),(194,'Şuşa','SUS',16,NULL),(195,'Tərtər','TAR',16,NULL),(196,'Tovuz','TOV',16,NULL),(197,'Ucar','UCA',16,NULL),(198,'Xankəndi','XA',16,NULL),(199,'Xaçmaz','XAC',16,NULL),(200,'Xocalı','XCI',16,NULL),(201,'Xızı','XIZ',16,NULL),(202,'Xocavənd','XVD',16,NULL),(203,'Yardımlı','YAR',16,NULL),(204,'Yevlax','YE',16,NULL),(205,'Yevlax','YEV',16,NULL),(206,'Zəngilan','ZAN',16,NULL),(207,'Zaqatala','ZAQ',16,NULL),(208,'Zərdab','ZAR',16,NULL),(209,'Federacija Bosne i Hercegovine','BIH',17,NULL),(210,'Brčko distrikt','BRC',17,NULL),(211,'Republika Srpska','SRP',17,NULL),(212,'Christ Church','01',18,NULL),(213,'Saint Andrew','02',18,NULL),(214,'Saint George','03',18,NULL),(215,'Saint James','04',18,NULL),(216,'Saint John','05',18,NULL),(217,'Saint Joseph','06',18,NULL),(218,'Saint Lucy','07',18,NULL),(219,'Saint Michael','08',18,NULL),(220,'Saint Peter','09',18,NULL),(221,'Saint Philip','10',18,NULL),(222,'Saint Thomas','11',18,NULL),(223,'Barisal','A',19,NULL),(224,'Chittagong','B',19,NULL),(225,'Dhaka','C',19,NULL),(226,'Khulna','D',19,NULL),(227,'Rajshahi','E',19,NULL),(228,'Rangpur','F',19,NULL),(229,'Sylhet','G',19,NULL),(230,'Bruxelles-Capitale, Région de;Brussels Hoofdstedelijk Gewest','BRU',20,NULL),(231,'Vlaams Gewest','VLG',20,NULL),(232,'wallonne, Région','WAL',20,NULL),(233,'Boucle du Mouhoun','01',21,NULL),(234,'Cascades','02',21,NULL),(235,'Centre','03',21,NULL),(236,'Centre-Est','04',21,NULL),(237,'Centre-Nord','05',21,NULL),(238,'Centre-Ouest','06',21,NULL),(239,'Centre-Sud','07',21,NULL),(240,'Est','08',21,NULL),(241,'Hauts-Bassins','09',21,NULL),(242,'Nord','10',21,NULL),(243,'Plateau-Central','11',21,NULL),(244,'Sahel','12',21,NULL),(245,'Sud-Ouest','13',21,NULL),(246,'Blagoevgrad','01',22,NULL),(247,'Burgas','02',22,NULL),(248,'Varna','03',22,NULL),(249,'Veliko Tarnovo','04',22,NULL),(250,'Vidin','05',22,NULL),(251,'Vratsa','06',22,NULL),(252,'Gabrovo','07',22,NULL),(253,'Dobrich','08',22,NULL),(254,'Kardzhali','09',22,NULL),(255,'Kyustendil','10',22,NULL),(256,'Lovech','11',22,NULL),(257,'Montana','12',22,NULL),(258,'Pazardzhik','13',22,NULL),(259,'Pernik','14',22,NULL),(260,'Pleven','15',22,NULL),(261,'Plovdiv','16',22,NULL),(262,'Razgrad','17',22,NULL),(263,'Ruse','18',22,NULL),(264,'Silistra','19',22,NULL),(265,'Sliven','20',22,NULL),(266,'Smolyan','21',22,NULL),(267,'Sofia-Grad','22',22,NULL),(268,'Sofia','23',22,NULL),(269,'Stara Zagora','24',22,NULL),(270,'Targovishte','25',22,NULL),(271,'Haskovo','26',22,NULL),(272,'Shumen','27',22,NULL),(273,'Yambol','28',22,NULL),(274,'Al Manāmah (Al ‘Āşimah)','13',23,NULL),(275,'Al Janūbīyah','14',23,NULL),(276,'Al Muḩarraq','15',23,NULL),(277,'Al Wusţá','16',23,NULL),(278,'Ash Shamālīyah','17',23,NULL),(279,'Bubanza','BB',24,NULL),(280,'Bujumbura Rural','BL',24,NULL),(281,'Bujumbura Mairie','BM',24,NULL),(282,'Bururi','BR',24,NULL),(283,'Cankuzo','CA',24,NULL),(284,'Cibitoke','CI',24,NULL),(285,'Gitega','GI',24,NULL),(286,'Kirundo','KI',24,NULL),(287,'Karuzi','KR',24,NULL),(288,'Kayanza','KY',24,NULL),(289,'Makamba','MA',24,NULL),(290,'Muramvya','MU',24,NULL),(291,'Mwaro','MW',24,NULL),(292,'Ngozi','NG',24,NULL),(293,'Rutana','RT',24,NULL),(294,'Ruyigi','RY',24,NULL),(295,'Atakora','AK',25,NULL),(296,'Alibori','AL',25,NULL),(297,'Atlantique','AQ',25,NULL),(298,'Borgou','BO',25,NULL),(299,'Collines','CO',25,NULL),(300,'Donga','DO',25,NULL),(301,'Kouffo','KO',25,NULL),(302,'Littoral','LI',25,NULL),(303,'Mono','MO',25,NULL),(304,'Ouémé','OU',25,NULL),(305,'Plateau','PL',25,NULL),(306,'Zou','ZO',25,NULL),(307,'Belait','BE',28,NULL),(308,'Brunei-Muara','BM',28,NULL),(309,'Temburong','TE',28,NULL),(310,'Tutong','TU',28,NULL),(311,'El Beni','B',29,NULL),(312,'Cochabamba','C',29,NULL),(313,'Chuquisaca','H',29,NULL),(314,'La Paz','L',29,NULL),(315,'Pando','N',29,NULL),(316,'Oruro','O',29,NULL),(317,'Potosí','P',29,NULL),(318,'Santa Cruz','S',29,NULL),(319,'Tarija','T',29,NULL),(320,'Bonaire','BO',30,NULL),(321,'Saba','SA',30,NULL),(322,'Sint Eustatius','SE',30,NULL),(323,'Acre','AC',31,NULL),(324,'Alagoas','AL',31,NULL),(325,'Amazonas','AM',31,NULL),(326,'Amapá','AP',31,NULL),(327,'Bahia','BA',31,NULL),(328,'Ceará','CE',31,NULL),(329,'Distrito Federal','DF',31,NULL),(330,'Espírito Santo','ES',31,NULL),(331,'Fernando de Noronha','FN',31,NULL),(332,'Goiás','GO',31,NULL),(333,'Maranhão','MA',31,NULL),(334,'Minas Gerais','MG',31,NULL),(335,'Mato Grosso do Sul','MS',31,NULL),(336,'Mato Grosso','MT',31,NULL),(337,'Pará','PA',31,NULL),(338,'Paraíba','PB',31,NULL),(339,'Pernambuco','PE',31,NULL),(340,'Piauí','PI',31,NULL),(341,'Paraná','PR',31,NULL),(342,'Rio de Janeiro','RJ',31,NULL),(343,'Rio Grande do Norte','RN',31,NULL),(344,'Rondônia','RO',31,NULL),(345,'Roraima','RR',31,NULL),(346,'Rio Grande do Sul','RS',31,NULL),(347,'Santa Catarina','SC',31,NULL),(348,'Sergipe','SE',31,NULL),(349,'São Paulo','SP',31,NULL),(350,'Tocantins','TO',31,NULL),(351,'Acklins','AK',32,NULL),(352,'Bimini','BI',32,NULL),(353,'Black Point','BP',32,NULL),(354,'Berry Islands','BY',32,NULL),(355,'Central Eleuthera','CE',32,NULL),(356,'Cat Island','CI',32,NULL),(357,'Crooked Island and Long Cay','CK',32,NULL),(358,'Central Abaco','CO',32,NULL),(359,'Central Andros','CS',32,NULL),(360,'East Grand Bahama','EG',32,NULL),(361,'Exuma','EX',32,NULL),(362,'City of Freeport','FP',32,NULL),(363,'Grand Cay','GC',32,NULL),(364,'Harbour Island','HI',32,NULL),(365,'Hope Town','HT',32,NULL),(366,'Inagua','IN',32,NULL),(367,'Long Island','LI',32,NULL),(368,'Mangrove Cay','MC',32,NULL),(369,'Mayaguana','MG',32,NULL),(370,'Moore\'s Island','MI',32,NULL),(371,'North Eleuthera','NE',32,NULL),(372,'North Abaco','NO',32,NULL),(373,'North Andros','NS',32,NULL),(374,'Rum Cay','RC',32,NULL),(375,'Ragged Island','RI',32,NULL),(376,'South Andros','SA',32,NULL),(377,'South Eleuthera','SE',32,NULL),(378,'South Abaco','SO',32,NULL),(379,'San Salvador','SS',32,NULL),(380,'Spanish Wells','SW',32,NULL),(381,'West Grand Bahama','WG',32,NULL),(382,'Paro','11',33,NULL),(383,'Chhukha','12',33,NULL),(384,'Ha','13',33,NULL),(385,'Samtee','14',33,NULL),(386,'Thimphu','15',33,NULL),(387,'Tsirang','21',33,NULL),(388,'Dagana','22',33,NULL),(389,'Punakha','23',33,NULL),(390,'Wangdue Phodrang','24',33,NULL),(391,'Sarpang','31',33,NULL),(392,'Trongsa','32',33,NULL),(393,'Bumthang','33',33,NULL),(394,'Zhemgang','34',33,NULL),(395,'Trashigang','41',33,NULL),(396,'Monggar','42',33,NULL),(397,'Pemagatshel','43',33,NULL),(398,'Lhuentse','44',33,NULL),(399,'Samdrup Jongkha','45',33,NULL),(400,'Gasa','GA',33,NULL),(401,'Trashi Yangtse','TY',33,NULL),(402,'Central','CE',35,NULL),(403,'Ghanzi','GH',35,NULL),(404,'Kgalagadi','KG',35,NULL),(405,'Kgatleng','KL',35,NULL),(406,'Kweneng','KW',35,NULL),(407,'North-East','NE',35,NULL),(408,'North-West','NW',35,NULL),(409,'South-East','SE',35,NULL),(410,'Southern','SO',35,NULL),(411,'Brèsckaja voblasc\'','BR',36,NULL),(412,'Horad Minsk','HM',36,NULL),(413,'Homel\'skaja voblasc\'','HO',36,NULL),(414,'Hrodzenskaja voblasc\'','HR',36,NULL),(415,'Mahilëuskaja voblasc\'','MA',36,NULL),(416,'Minskaja voblasc\'','MI',36,NULL),(417,'Vicebskaja voblasc\'','VI',36,NULL),(418,'Belize','BZ',37,NULL),(419,'Cayo','CY',37,NULL),(420,'Corozal','CZL',37,NULL),(421,'Orange Walk','OW',37,NULL),(422,'Stann Creek','SC',37,NULL),(423,'Toledo','TOL',37,NULL),(424,'Alberta','AB',38,NULL),(425,'British Columbia','BC',38,NULL),(426,'Manitoba','MB',38,NULL),(427,'New Brunswick','NB',38,NULL),(428,'Newfoundland and Labrador','NL',38,NULL),(429,'Nova Scotia','NS',38,NULL),(430,'Northwest Territories','NT',38,NULL),(431,'Nunavut','NU',38,NULL),(432,'Ontario','ON',38,NULL),(433,'Prince Edward Island','PE',38,NULL),(434,'Quebec','QC',38,NULL),(435,'Saskatchewan','SK',38,NULL),(436,'Yukon Territory','YT',38,NULL),(437,'Bas-Congo','BC',40,NULL),(438,'Bandundu','BN',40,NULL),(439,'Équateur','EQ',40,NULL),(440,'Katanga','KA',40,NULL),(441,'Kasai-Oriental','KE',40,NULL),(442,'Kinshasa','KN',40,NULL),(443,'Kasai-Occidental','KW',40,NULL),(444,'Maniema','MA',40,NULL),(445,'Nord-Kivu','NK',40,NULL),(446,'Orientale','OR',40,NULL),(447,'Sud-Kivu','SK',40,NULL),(448,'Ouham','AC',41,NULL),(449,'Bamingui-Bangoran','BB',41,NULL),(450,'Bangui','BGF',41,NULL),(451,'Basse-Kotto','BK',41,NULL),(452,'Haute-Kotto','HK',41,NULL),(453,'Haut-Mbomou','HM',41,NULL),(454,'Haute-Sangha / Mambéré-Kadéï','HS',41,NULL),(455,'Gribingui','KB',41,NULL),(456,'Kémo-Gribingui','KG',41,NULL),(457,'Lobaye','LB',41,NULL),(458,'Mbomou','MB',41,NULL),(459,'Ombella-M\'poko','MP',41,NULL),(460,'Nana-Mambéré','NM',41,NULL),(461,'Ouham-Pendé','OP',41,NULL),(462,'Sangha','SE',41,NULL),(463,'Ouaka','UK',41,NULL),(464,'Vakaga','VK',41,NULL),(465,'Bouenza','11',42,NULL),(466,'Pool','12',42,NULL),(467,'Sangha','13',42,NULL),(468,'Plateaux','14',42,NULL),(469,'Cuvette-Ouest','15',42,NULL),(470,'Lékoumou','2',42,NULL),(471,'Kouilou','5',42,NULL),(472,'Likouala','7',42,NULL),(473,'Cuvette','8',42,NULL),(474,'Niari','9',42,NULL),(475,'Brazzaville','BZV',42,NULL),(476,'Aargau','AG',43,NULL),(477,'Appenzell Innerrhoden','AI',43,NULL),(478,'Appenzell Ausserrhoden','AR',43,NULL),(479,'Bern','BE',43,NULL),(480,'Basel-Landschaft','BL',43,NULL),(481,'Basel-Stadt','BS',43,NULL),(482,'Fribourg','FR',43,NULL),(483,'Genève','GE',43,NULL),(484,'Glarus','GL',43,NULL),(485,'Graubünden','GR',43,NULL),(486,'Jura','JU',43,NULL),(487,'Luzern','LU',43,NULL),(488,'Neuchâtel','NE',43,NULL),(489,'Nidwalden','NW',43,NULL),(490,'Obwalden','OW',43,NULL),(491,'Sankt Gallen','SG',43,NULL),(492,'Schaffhausen','SH',43,NULL),(493,'Solothurn','SO',43,NULL),(494,'Schwyz','SZ',43,NULL),(495,'Thurgau','TG',43,NULL),(496,'Ticino','TI',43,NULL),(497,'Uri','UR',43,NULL),(498,'Vaud','VD',43,NULL),(499,'Valais','VS',43,NULL),(500,'Zug','ZG',43,NULL),(501,'Zürich','ZH',43,NULL),(502,'Lagunes (Région des)','01',44,NULL),(503,'Haut-Sassandra (Région du)','02',44,NULL),(504,'Savanes (Région des)','03',44,NULL),(505,'Vallée du Bandama (Région de la)','04',44,NULL),(506,'Moyen-Comoé (Région du)','05',44,NULL),(507,'18 Montagnes (Région des)','06',44,NULL),(508,'Lacs (Région des)','07',44,NULL),(509,'Zanzan (Région du)','08',44,NULL),(510,'Bas-Sassandra (Région du)','09',44,NULL),(511,'Denguélé (Région du)','10',44,NULL),(512,'Nzi-Comoé (Région)','11',44,NULL),(513,'Marahoué (Région de la)','12',44,NULL),(514,'Sud-Comoé (Région du)','13',44,NULL),(515,'Worodouqou (Région du)','14',44,NULL),(516,'Sud-Bandama (Région du)','15',44,NULL),(517,'Agnébi (Région de l\')','16',44,NULL),(518,'Bafing (Région du)','17',44,NULL),(519,'Fromager (Région du)','18',44,NULL),(520,'Moyen-Cavally (Région du)','19',44,NULL),(521,'Aisén del General Carlos Ibáñez del Campo','AI',46,NULL),(522,'Antofagasta','AN',46,NULL),(523,'Arica y Parinacota','AP',46,NULL),(524,'Araucanía','AR',46,NULL),(525,'Atacama','AT',46,NULL),(526,'Bío-Bío','BI',46,NULL),(527,'Coquimbo','CO',46,NULL),(528,'Libertador General Bernardo O\'Higgins','LI',46,NULL),(529,'Los Lagos','LL',46,NULL),(530,'Los Ríos','LR',46,NULL),(531,'Magallanes y Antártica Chilena','MA',46,NULL),(532,'Maule','ML',46,NULL),(533,'Región Metropolitana de Santiago','RM',46,NULL),(534,'Tarapacá','TA',46,NULL),(535,'Valparaíso','VS',46,NULL),(536,'Adamaoua','AD',47,NULL),(537,'Centre','CE',47,NULL),(538,'Far North','EN',47,NULL),(539,'East','ES',47,NULL),(540,'Littoral','LT',47,NULL),(541,'North','NO',47,NULL),(542,'North-West (Cameroon)','NW',47,NULL),(543,'West','OU',47,NULL),(544,'South','SU',47,NULL),(545,'South-West','SW',47,NULL),(546,'Beijing','11',48,NULL),(547,'Tianjin','12',48,NULL),(548,'Hebei','13',48,NULL),(549,'Shanxi','14',48,NULL),(550,'Nei Mongol','15',48,NULL),(551,'Liaoning','21',48,NULL),(552,'Jilin','22',48,NULL),(553,'Heilongjiang','23',48,NULL),(554,'Shanghai','31',48,NULL),(555,'Jiangsu','32',48,NULL),(556,'Zhejiang','33',48,NULL),(557,'Anhui','34',48,NULL),(558,'Fujian','35',48,NULL),(559,'Jiangxi','36',48,NULL),(560,'Shandong','37',48,NULL),(561,'Henan','41',48,NULL),(562,'Hubei','42',48,NULL),(563,'Hunan','43',48,NULL),(564,'Guangdong','44',48,NULL),(565,'Guangxi','45',48,NULL),(566,'Hainan','46',48,NULL),(567,'Chongqing','50',48,NULL),(568,'Sichuan','51',48,NULL),(569,'Guizhou','52',48,NULL),(570,'Yunnan','53',48,NULL),(571,'Xizang','54',48,NULL),(572,'Shaanxi','61',48,NULL),(573,'Gansu','62',48,NULL),(574,'Qinghai','63',48,NULL),(575,'Ningxia','64',48,NULL),(576,'Xinjiang','65',48,NULL),(577,'Taiwan','71',48,NULL),(578,'Xianggang (Hong-Kong)','91',48,NULL),(579,'Aomen (Macau)','92',48,NULL),(580,'Amazonas','AMA',49,NULL),(581,'Antioquia','ANT',49,NULL),(582,'Arauca','ARA',49,NULL),(583,'Atlántico','ATL',49,NULL),(584,'Bolívar','BOL',49,NULL),(585,'Boyacá','BOY',49,NULL),(586,'Caldas','CAL',49,NULL),(587,'Caquetá','CAQ',49,NULL),(588,'Casanare','CAS',49,NULL),(589,'Cauca','CAU',49,NULL),(590,'Cesar','CES',49,NULL),(591,'Chocó','CHO',49,NULL),(592,'Córdoba','COR',49,NULL),(593,'Cundinamarca','CUN',49,NULL),(594,'Distrito Capital de Bogotá','DC',49,NULL),(595,'Guainía','GUA',49,NULL),(596,'Guaviare','GUV',49,NULL),(597,'Huila','HUI',49,NULL),(598,'La Guajira','LAG',49,NULL),(599,'Magdalena','MAG',49,NULL),(600,'Meta','MET',49,NULL),(601,'Nariño','NAR',49,NULL),(602,'Norte de Santander','NSA',49,NULL),(603,'Putumayo','PUT',49,NULL),(604,'Quindío','QUI',49,NULL),(605,'Risaralda','RIS',49,NULL),(606,'Santander','SAN',49,NULL),(607,'San Andrés, Providencia y Santa Catalina','SAP',49,NULL),(608,'Sucre','SUC',49,NULL),(609,'Tolima','TOL',49,NULL),(610,'Valle del Cauca','VAC',49,NULL),(611,'Vaupés','VAU',49,NULL),(612,'Vichada','VID',49,NULL),(613,'Alajuela','A',50,NULL),(614,'Cartago','C',50,NULL),(615,'Guanacaste','G',50,NULL),(616,'Heredia','H',50,NULL),(617,'Limón','L',50,NULL),(618,'Puntarenas','P',50,NULL),(619,'San José','SJ',50,NULL),(620,'Pinar del Rio','01',51,NULL),(621,'La Habana','02',51,NULL),(622,'Ciudad de La Habana','03',51,NULL),(623,'Matanzas','04',51,NULL),(624,'Villa Clara','05',51,NULL),(625,'Cienfuegos','06',51,NULL),(626,'Sancti Spíritus','07',51,NULL),(627,'Ciego de Ávila','08',51,NULL),(628,'Camagüey','09',51,NULL),(629,'Las Tunas','10',51,NULL),(630,'Holguín','11',51,NULL),(631,'Granma','12',51,NULL),(632,'Santiago de Cuba','13',51,NULL),(633,'Guantánamo','14',51,NULL),(634,'Isla de la Juventud','99',51,NULL),(635,'Ilhas de Barlavento','B',52,NULL),(636,'Ilhas de Sotavento','S',52,NULL),(637,'Lefkosía','01',55,NULL),(638,'Lemesós','02',55,NULL),(639,'Lárnaka','03',55,NULL),(640,'Ammóchostos','04',55,NULL),(641,'Páfos','05',55,NULL),(642,'Kerýneia','06',55,NULL),(643,'Jihočeský kraj','JC',56,NULL),(644,'Jihomoravský kraj','JM',56,NULL),(645,'Karlovarský kraj','KA',56,NULL),(646,'Královéhradecký kraj','KR',56,NULL),(647,'Liberecký kraj','LI',56,NULL),(648,'Moravskoslezský kraj','MO',56,NULL),(649,'Olomoucký kraj','OL',56,NULL),(650,'Pardubický kraj','PA',56,NULL),(651,'Plzeňský kraj','PL',56,NULL),(652,'Praha, hlavní město','PR',56,NULL),(653,'Středočeský kraj','ST',56,NULL),(654,'Ústecký kraj','US',56,NULL),(655,'Vysočina','VY',56,NULL),(656,'Zlínský kraj','ZL',56,NULL),(657,'Brandenburg','BB',57,NULL),(658,'Berlin','BE',57,NULL),(659,'Baden-Württemberg','BW',57,NULL),(660,'Bayern','BY',57,NULL),(661,'Bremen','HB',57,NULL),(662,'Hessen','HE',57,NULL),(663,'Hamburg','HH',57,NULL),(664,'Mecklenburg-Vorpommern','MV',57,NULL),(665,'Niedersachsen','NI',57,NULL),(666,'Nordrhein-Westfalen','NW',57,NULL),(667,'Rheinland-Pfalz','RP',57,NULL),(668,'Schleswig-Holstein','SH',57,NULL),(669,'Saarland','SL',57,NULL),(670,'Sachsen','SN',57,NULL),(671,'Sachsen-Anhalt','ST',57,NULL),(672,'Thüringen','TH',57,NULL),(673,'Arta','AR',58,NULL),(674,'Ali Sabieh','AS',58,NULL),(675,'Dikhil','DI',58,NULL),(676,'Djibouti','DJ',58,NULL),(677,'Obock','OB',58,NULL),(678,'Tadjourah','TA',58,NULL),(679,'Nordjylland','81',59,NULL),(680,'Midtjylland','82',59,NULL),(681,'Syddanmark','83',59,NULL),(682,'Hovedstaden','84',59,NULL),(683,'Sjælland','85',59,NULL),(684,'Saint Peter','01',60,NULL),(685,'Saint Andrew','02',60,NULL),(686,'Saint David','03',60,NULL),(687,'Saint George','04',60,NULL),(688,'Saint John','05',60,NULL),(689,'Saint Joseph','06',60,NULL),(690,'Saint Luke','07',60,NULL),(691,'Saint Mark','08',60,NULL),(692,'Saint Patrick','09',60,NULL),(693,'Saint Paul','10',60,NULL),(694,'Distrito Nacional (Santo Domingo)','01',61,NULL),(695,'Azua','02',61,NULL),(696,'Bahoruco','03',61,NULL),(697,'Barahona','04',61,NULL),(698,'Dajabón','05',61,NULL),(699,'Duarte','06',61,NULL),(700,'La Estrelleta [Elías Piña]','07',61,NULL),(701,'El Seybo [El Seibo]','08',61,NULL),(702,'Espaillat','09',61,NULL),(703,'Independencia','10',61,NULL),(704,'La Altagracia','11',61,NULL),(705,'La Romana','12',61,NULL),(706,'La Vega','13',61,NULL),(707,'María Trinidad Sánchez','14',61,NULL),(708,'Monte Cristi','15',61,NULL),(709,'Pedernales','16',61,NULL),(710,'Peravia','17',61,NULL),(711,'Puerto Plata','18',61,NULL),(712,'Salcedo','19',61,NULL),(713,'Samaná','20',61,NULL),(714,'San Cristóbal','21',61,NULL),(715,'San Juan','22',61,NULL),(716,'San Pedro de Macorís','23',61,NULL),(717,'Sánchez Ramírez','24',61,NULL),(718,'Santiago','25',61,NULL),(719,'Santiago Rodríguez','26',61,NULL),(720,'Valverde','27',61,NULL),(721,'Monseñor Nouel','28',61,NULL),(722,'Monte Plata','29',61,NULL),(723,'Hato Mayor','30',61,NULL),(724,'Adrar','01',62,NULL),(725,'Chlef','02',62,NULL),(726,'Laghouat','03',62,NULL),(727,'Oum el Bouaghi','04',62,NULL),(728,'Batna','05',62,NULL),(729,'Béjaïa','06',62,NULL),(730,'Biskra','07',62,NULL),(731,'Béchar','08',62,NULL),(732,'Blida','09',62,NULL),(733,'Bouira','10',62,NULL),(734,'Tamanghasset','11',62,NULL),(735,'Tébessa','12',62,NULL),(736,'Tlemcen','13',62,NULL),(737,'Tiaret','14',62,NULL),(738,'Tizi Ouzou','15',62,NULL),(739,'Alger','16',62,NULL),(740,'Djelfa','17',62,NULL),(741,'Jijel','18',62,NULL),(742,'Sétif','19',62,NULL),(743,'Saïda','20',62,NULL),(744,'Skikda','21',62,NULL),(745,'Sidi Bel Abbès','22',62,NULL),(746,'Annaba','23',62,NULL),(747,'Guelma','24',62,NULL),(748,'Constantine','25',62,NULL),(749,'Médéa','26',62,NULL),(750,'Mostaganem','27',62,NULL),(751,'Msila','28',62,NULL),(752,'Mascara','29',62,NULL),(753,'Ouargla','30',62,NULL),(754,'Oran','31',62,NULL),(755,'El Bayadh','32',62,NULL),(756,'Illizi','33',62,NULL),(757,'Bordj Bou Arréridj','34',62,NULL),(758,'Boumerdès','35',62,NULL),(759,'El Tarf','36',62,NULL),(760,'Tindouf','37',62,NULL),(761,'Tissemsilt','38',62,NULL),(762,'El Oued','39',62,NULL),(763,'Khenchela','40',62,NULL),(764,'Souk Ahras','41',62,NULL),(765,'Tipaza','42',62,NULL),(766,'Mila','43',62,NULL),(767,'Aïn Defla','44',62,NULL),(768,'Naama','45',62,NULL),(769,'Aïn Témouchent','46',62,NULL),(770,'Ghardaïa','47',62,NULL),(771,'Relizane','48',62,NULL),(772,'Azuay','A',63,NULL),(773,'Bolívar','B',63,NULL),(774,'Carchi','C',63,NULL),(775,'Orellana','D',63,NULL),(776,'Esmeraldas','E',63,NULL),(777,'Cañar','F',63,NULL),(778,'Guayas','G',63,NULL),(779,'Chimborazo','H',63,NULL),(780,'Imbabura','I',63,NULL),(781,'Loja','L',63,NULL),(782,'Manabí','M',63,NULL),(783,'Napo','N',63,NULL),(784,'El Oro','O',63,NULL),(785,'Pichincha','P',63,NULL),(786,'Los Ríos','R',63,NULL),(787,'Morona-Santiago','S',63,NULL),(788,'Santo Domingo de los Tsáchilas','SD',63,NULL),(789,'Santa Elena','SE',63,NULL),(790,'Tungurahua','T',63,NULL),(791,'Sucumbíos','U',63,NULL),(792,'Galápagos','W',63,NULL),(793,'Cotopaxi','X',63,NULL),(794,'Pastaza','Y',63,NULL),(795,'Zamora-Chinchipe','Z',63,NULL),(796,'Harjumaa','37',64,NULL),(797,'Hiiumaa','39',64,NULL),(798,'Ida-Virumaa','44',64,NULL),(799,'Jõgevamaa','49',64,NULL),(800,'Järvamaa','51',64,NULL),(801,'Läänemaa','57',64,NULL),(802,'Lääne-Virumaa','59',64,NULL),(803,'Põlvamaa','65',64,NULL),(804,'Pärnumaa','67',64,NULL),(805,'Raplamaa','70',64,NULL),(806,'Saaremaa','74',64,NULL),(807,'Tartumaa','78',64,NULL),(808,'Valgamaa','82',64,NULL),(809,'Viljandimaa','84',64,NULL),(810,'Võrumaa','86',64,NULL),(811,'Al Iskandarīyah','ALX',65,NULL),(812,'Aswān','ASN',65,NULL),(813,'Asyūt','AST',65,NULL),(814,'Al Bahr al Ahmar','BA',65,NULL),(815,'Al Buhayrah','BH',65,NULL),(816,'Banī Suwayf','BNS',65,NULL),(817,'Al Qāhirah','C',65,NULL),(818,'Ad Daqahlīyah','DK',65,NULL),(819,'Dumyāt','DT',65,NULL),(820,'Al Fayyūm','FYM',65,NULL),(821,'Al Gharbīyah','GH',65,NULL),(822,'Al Jīzah','GZ',65,NULL),(823,'Ḩulwān','HU',65,NULL),(824,'Al Ismā`īlīyah','IS',65,NULL),(825,'Janūb Sīnā\'','JS',65,NULL),(826,'Al Qalyūbīyah','KB',65,NULL),(827,'Kafr ash Shaykh','KFS',65,NULL),(828,'Qinā','KN',65,NULL),(829,'Al Minyā','MN',65,NULL),(830,'Al Minūfīyah','MNF',65,NULL),(831,'Matrūh','MT',65,NULL),(832,'Būr Sa`īd','PTS',65,NULL),(833,'Sūhāj','SHG',65,NULL),(834,'Ash Sharqīyah','SHR',65,NULL),(835,'Shamal Sīnā\'','SIN',65,NULL),(836,'As Sādis min Uktūbar','SU',65,NULL),(837,'As Suways','SUZ',65,NULL),(838,'Al Wādī al Jadīd','WAD',65,NULL),(839,'Ansabā','AN',67,NULL),(840,'Janūbī al Baḩrī al Aḩmar','DK',67,NULL),(841,'Al Janūbī','DU',67,NULL),(842,'Qāsh-Barkah','GB',67,NULL),(843,'Al Awsaţ','MA',67,NULL),(844,'Shimālī al Baḩrī al Aḩmar','SK',67,NULL),(845,'Andalucía','AN',68,NULL),(846,'Aragón','AR',68,NULL),(847,'Asturias, Principado de','AS',68,NULL),(848,'Cantabria','CB',68,NULL),(849,'Ceuta','CE',68,NULL),(850,'Castilla y León','CL',68,NULL),(851,'Castilla-La Mancha','CM',68,NULL),(852,'Canarias','CN',68,NULL),(853,'Catalunya','CT',68,NULL),(854,'Extremadura','EX',68,NULL),(855,'Galicia','GA',68,NULL),(856,'Illes Balears','IB',68,NULL),(857,'Murcia, Región de','MC',68,NULL),(858,'Madrid, Comunidad de','MD',68,NULL),(859,'Melilla','ML',68,NULL),(860,'Navarra, Comunidad Foral de / Nafarroako Foru Komunitatea','NC',68,NULL),(861,'País Vasco / Euskal Herria','PV',68,NULL),(862,'La Rioja','RI',68,NULL),(863,'Valenciana, Comunidad / Valenciana, Comunitat ','VC',68,NULL),(864,'Ādīs Ābeba','AA',69,NULL),(865,'Āfar','AF',69,NULL),(866,'Āmara','AM',69,NULL),(867,'Bīnshangul Gumuz','BE',69,NULL),(868,'Dirē Dawa','DD',69,NULL),(869,'Gambēla Hizboch','GA',69,NULL),(870,'Hārerī Hizb','HA',69,NULL),(871,'Oromīya','OR',69,NULL),(872,'YeDebub Bihēroch Bihēreseboch na Hizboch','SN',69,NULL),(873,'Sumalē','SO',69,NULL),(874,'Tigray','TI',69,NULL),(875,'Ahvenanmaan maakunta','01',70,NULL),(876,'Etelä-Karjala','02',70,NULL),(877,'Etelä-Pohjanmaa','03',70,NULL),(878,'Etelä-Savo','04',70,NULL),(879,'Kainuu','05',70,NULL),(880,'Kanta-Häme','06',70,NULL),(881,'Keski-Pohjanmaa','07',70,NULL),(882,'Keski-Suomi','08',70,NULL),(883,'Kymenlaakso','09',70,NULL),(884,'Lappi','10',70,NULL),(885,'Pirkanmaa','11',70,NULL),(886,'Pohjanmaa','12',70,NULL),(887,'Pohjois-Karjala','13',70,NULL),(888,'Pohjois-Pohjanmaa','14',70,NULL),(889,'Pohjois-Savo','15',70,NULL),(890,'Päijät-Häme','16',70,NULL),(891,'Satakunta','17',70,NULL),(892,'Uusimaa','18',70,NULL),(893,'Varsinais-Suomi','19',70,NULL),(894,'Central','C',71,NULL),(895,'Eastern','E',71,NULL),(896,'Northern','N',71,NULL),(897,'Rotuma','R',71,NULL),(898,'Western','W',71,NULL),(899,'Kosrae','KSA',73,NULL),(900,'Pohnpei','PNI',73,NULL),(901,'Chuuk','TRK',73,NULL),(902,'Yap','YAP',73,NULL),(903,'Alsace','A',75,NULL),(904,'Aquitaine','B',75,NULL),(905,'Saint-Barthélemy','BL',75,NULL),(906,'Auvergne','C',75,NULL),(907,'Clipperton','CP',75,NULL),(908,'Bourgogne','D',75,NULL),(909,'Bretagne','E',75,NULL),(910,'Centre','F',75,NULL),(911,'Champagne-Ardenne','G',75,NULL),(912,'Guyane','GF',75,NULL),(913,'Guadeloupe','GP',75,NULL),(914,'Corse','H',75,NULL),(915,'Franche-Comté','I',75,NULL),(916,'Île-de-France','J',75,NULL),(917,'Languedoc-Roussillon','K',75,NULL),(918,'Limousin','L',75,NULL),(919,'Lorraine','M',75,NULL),(920,'Saint-Martin','MF',75,NULL),(921,'Martinique','MQ',75,NULL),(922,'Midi-Pyrénées','N',75,NULL),(923,'Nouvelle-Calédonie','NC',75,NULL),(924,'Nord-Pas-de-Calais','O',75,NULL),(925,'Basse-Normandie','P',75,NULL),(926,'Polynésie française','PF',75,NULL),(927,'Saint-Pierre-et-Miquelon','PM',75,NULL),(928,'Haute-Normandie','Q',75,NULL),(929,'Pays de la Loire','R',75,NULL),(930,'La Réunion','RE',75,NULL),(931,'Picardie','S',75,NULL),(932,'Poitou-Charentes','T',75,NULL),(933,'Terres australes françaises','TF',75,NULL),(934,'Provence-Alpes-Côte d\'Azur','U',75,NULL),(935,'Rhône-Alpes','V',75,NULL),(936,'Wallis-et-Futuna','WF',75,NULL),(937,'Mayotte','YT',75,NULL),(938,'Estuaire','1',76,NULL),(939,'Haut-Ogooué','2',76,NULL),(940,'Moyen-Ogooué','3',76,NULL),(941,'Ngounié','4',76,NULL),(942,'Nyanga','5',76,NULL),(943,'Ogooué-Ivindo','6',76,NULL),(944,'Ogooué-Lolo','7',76,NULL),(945,'Ogooué-Maritime','8',76,NULL),(946,'Woleu-Ntem','9',76,NULL),(947,'Aberdeenshire','ABD',77,NULL),(948,'Aberdeen City','ABE',77,NULL),(949,'Argyll and Bute','AGB',77,NULL),(950,'Isle of Anglesey;Sir Ynys Môn','AGY',77,NULL),(951,'Angus','ANS',77,NULL),(952,'Antrim','ANT',77,NULL),(953,'Ards','ARD',77,NULL),(954,'Armagh','ARM',77,NULL),(955,'Bath and North East Somerset','BAS',77,NULL),(956,'Blackburn with Darwen','BBD',77,NULL),(957,'Bedford','BDF',77,NULL),(958,'Barking and Dagenham','BDG',77,NULL),(959,'Brent','BEN',77,NULL),(960,'Bexley','BEX',77,NULL),(961,'Belfast','BFS',77,NULL),(962,'Bridgend;Pen-y-bont ar Ogwr','BGE',77,NULL),(963,'Blaenau Gwent','BGW',77,NULL),(964,'Birmingham','BIR',77,NULL),(965,'Buckinghamshire','BKM',77,NULL),(966,'Ballymena','BLA',77,NULL),(967,'Ballymoney','BLY',77,NULL),(968,'Bournemouth','BMH',77,NULL),(969,'Banbridge','BNB',77,NULL),(970,'Barnet','BNE',77,NULL),(971,'Brighton and Hove','BNH',77,NULL),(972,'Barnsley','BNS',77,NULL),(973,'Bolton','BOL',77,NULL),(974,'Blackpool','BPL',77,NULL),(975,'Bracknell Forest','BRC',77,NULL),(976,'Bradford','BRD',77,NULL),(977,'Bromley','BRY',77,NULL),(978,'Bristol, City of','BST',77,NULL),(979,'Bury','BUR',77,NULL),(980,'Cambridgeshire','CAM',77,NULL),(981,'Caerphilly;Caerffili','CAY',77,NULL),(982,'Central Bedfordshire','CBF',77,NULL),(983,'Ceredigion;Sir Ceredigion','CGN',77,NULL),(984,'Craigavon','CGV',77,NULL),(985,'Cheshire East','CHE',77,NULL),(986,'Cheshire West and Chester','CHW',77,NULL),(987,'Carrickfergus','CKF',77,NULL),(988,'Cookstown','CKT',77,NULL),(989,'Calderdale','CLD',77,NULL),(990,'Clackmannanshire','CLK',77,NULL),(991,'Coleraine','CLR',77,NULL),(992,'Cumbria','CMA',77,NULL),(993,'Camden','CMD',77,NULL),(994,'Carmarthenshire;Sir Gaerfyrddin','CMN',77,NULL),(995,'Cornwall','CON',77,NULL),(996,'Coventry','COV',77,NULL),(997,'Cardiff;Caerdydd','CRF',77,NULL),(998,'Croydon','CRY',77,NULL),(999,'Castlereagh','CSR',77,NULL),(1000,'Conwy','CWY',77,NULL),(1001,'Darlington','DAL',77,NULL),(1002,'Derbyshire','DBY',77,NULL),(1003,'Denbighshire;Sir Ddinbych','DEN',77,NULL),(1004,'Derby','DER',77,NULL),(1005,'Devon','DEV',77,NULL),(1006,'Dungannon and South Tyrone','DGN',77,NULL),(1007,'Dumfries and Galloway','DGY',77,NULL),(1008,'Doncaster','DNC',77,NULL),(1009,'Dundee City','DND',77,NULL),(1010,'Dorset','DOR',77,NULL),(1011,'Down','DOW',77,NULL),(1012,'Derry','DRY',77,NULL),(1013,'Dudley','DUD',77,NULL),(1014,'Durham, County','DUR',77,NULL),(1015,'Ealing','EAL',77,NULL),(1016,'England and Wales','EAW',77,NULL),(1017,'East Ayrshire','EAY',77,NULL),(1018,'Edinburgh, City of','EDH',77,NULL),(1019,'East Dunbartonshire','EDU',77,NULL),(1020,'East Lothian','ELN',77,NULL),(1021,'Eilean Siar','ELS',77,NULL),(1022,'Enfield','ENF',77,NULL),(1023,'England','ENG',77,NULL),(1024,'East Renfrewshire','ERW',77,NULL),(1025,'East Riding of Yorkshire','ERY',77,NULL),(1026,'Essex','ESS',77,NULL),(1027,'East Sussex','ESX',77,NULL),(1028,'Falkirk','FAL',77,NULL),(1029,'Fermanagh','FER',77,NULL),(1030,'Fife','FIF',77,NULL),(1031,'Flintshire;Sir y Fflint','FLN',77,NULL),(1032,'Gateshead','GAT',77,NULL),(1033,'Great Britain','GBN',77,NULL),(1034,'Glasgow City','GLG',77,NULL),(1035,'Gloucestershire','GLS',77,NULL),(1036,'Greenwich','GRE',77,NULL),(1037,'Gwynedd','GWN',77,NULL),(1038,'Halton','HAL',77,NULL),(1039,'Hampshire','HAM',77,NULL),(1040,'Havering','HAV',77,NULL),(1041,'Hackney','HCK',77,NULL),(1042,'Herefordshire','HEF',77,NULL),(1043,'Hillingdon','HIL',77,NULL),(1044,'Highland','HLD',77,NULL),(1045,'Hammersmith and Fulham','HMF',77,NULL),(1046,'Hounslow','HNS',77,NULL),(1047,'Hartlepool','HPL',77,NULL),(1048,'Hertfordshire','HRT',77,NULL),(1049,'Harrow','HRW',77,NULL),(1050,'Haringey','HRY',77,NULL),(1051,'Isle of Wight','IOW',77,NULL),(1052,'Islington','ISL',77,NULL),(1053,'Inverclyde','IVC',77,NULL),(1054,'Kensington and Chelsea','KEC',77,NULL),(1055,'Kent','KEN',77,NULL),(1056,'Kingston upon Hull','KHL',77,NULL),(1057,'Kirklees','KIR',77,NULL),(1058,'Kingston upon Thames','KTT',77,NULL),(1059,'Knowsley','KWL',77,NULL),(1060,'Lancashire','LAN',77,NULL),(1061,'Lambeth','LBH',77,NULL),(1062,'Leicester','LCE',77,NULL),(1063,'Leeds','LDS',77,NULL),(1064,'Leicestershire','LEC',77,NULL),(1065,'Lewisham','LEW',77,NULL),(1066,'Lincolnshire','LIN',77,NULL),(1067,'Liverpool','LIV',77,NULL),(1068,'Limavady','LMV',77,NULL),(1069,'London, City of','LND',77,NULL),(1070,'Larne','LRN',77,NULL),(1071,'Lisburn','LSB',77,NULL),(1072,'Luton','LUT',77,NULL),(1073,'Manchester','MAN',77,NULL),(1074,'Middlesbrough','MDB',77,NULL),(1075,'Medway','MDW',77,NULL),(1076,'Magherafelt','MFT',77,NULL),(1077,'Milton Keynes','MIK',77,NULL),(1078,'Midlothian','MLN',77,NULL),(1079,'Monmouthshire;Sir Fynwy','MON',77,NULL),(1080,'Merton','MRT',77,NULL),(1081,'Moray','MRY',77,NULL),(1082,'Merthyr Tydfil;Merthyr Tudful','MTY',77,NULL),(1083,'Moyle','MYL',77,NULL),(1084,'North Ayrshire','NAY',77,NULL),(1085,'Northumberland','NBL',77,NULL),(1086,'North Down','NDN',77,NULL),(1087,'North East Lincolnshire','NEL',77,NULL),(1088,'Newcastle upon Tyne','NET',77,NULL),(1089,'Norfolk','NFK',77,NULL),(1090,'Nottingham','NGM',77,NULL),(1091,'Northern Ireland','NIR',77,NULL),(1092,'North Lanarkshire','NLK',77,NULL),(1093,'North Lincolnshire','NLN',77,NULL),(1094,'North Somerset','NSM',77,NULL),(1095,'Newtownabbey','NTA',77,NULL),(1096,'Northamptonshire','NTH',77,NULL),(1097,'Neath Port Talbot;Castell-nedd Port Talbot','NTL',77,NULL),(1098,'Nottinghamshire','NTT',77,NULL),(1099,'North Tyneside','NTY',77,NULL),(1100,'Newham','NWM',77,NULL),(1101,'Newport;Casnewydd','NWP',77,NULL),(1102,'North Yorkshire','NYK',77,NULL),(1103,'Newry and Mourne','NYM',77,NULL),(1104,'Oldham','OLD',77,NULL),(1105,'Omagh','OMH',77,NULL),(1106,'Orkney Islands','ORK',77,NULL),(1107,'Oxfordshire','OXF',77,NULL),(1108,'Pembrokeshire;Sir Benfro','PEM',77,NULL),(1109,'Perth and Kinross','PKN',77,NULL),(1110,'Plymouth','PLY',77,NULL),(1111,'Poole','POL',77,NULL),(1112,'Portsmouth','POR',77,NULL),(1113,'Powys','POW',77,NULL),(1114,'Peterborough','PTE',77,NULL),(1115,'Redcar and Cleveland','RCC',77,NULL),(1116,'Rochdale','RCH',77,NULL),(1117,'Rhondda, Cynon, Taff;Rhondda, Cynon,Taf','RCT',77,NULL),(1118,'Redbridge','RDB',77,NULL),(1119,'Reading','RDG',77,NULL),(1120,'Renfrewshire','RFW',77,NULL),(1121,'Richmond upon Thames','RIC',77,NULL),(1122,'Rotherham','ROT',77,NULL),(1123,'Rutland','RUT',77,NULL),(1124,'Sandwell','SAW',77,NULL),(1125,'South Ayrshire','SAY',77,NULL),(1126,'Scottish Borders, The','SCB',77,NULL),(1127,'Scotland','SCT',77,NULL),(1128,'Suffolk','SFK',77,NULL),(1129,'Sefton','SFT',77,NULL),(1130,'South Gloucestershire','SGC',77,NULL),(1131,'Sheffield','SHF',77,NULL),(1132,'St. Helens','SHN',77,NULL),(1133,'Shropshire','SHR',77,NULL),(1134,'Stockport','SKP',77,NULL),(1135,'Salford','SLF',77,NULL),(1136,'Slough','SLG',77,NULL),(1137,'South Lanarkshire','SLK',77,NULL),(1138,'Sunderland','SND',77,NULL),(1139,'Solihull','SOL',77,NULL),(1140,'Somerset','SOM',77,NULL),(1141,'Southend-on-Sea','SOS',77,NULL),(1142,'Surrey','SRY',77,NULL),(1143,'Strabane','STB',77,NULL),(1144,'Stoke-on-Trent','STE',77,NULL),(1145,'Stirling','STG',77,NULL),(1146,'Southampton','STH',77,NULL),(1147,'Sutton','STN',77,NULL),(1148,'Staffordshire','STS',77,NULL),(1149,'Stockton-on-Tees','STT',77,NULL),(1150,'South Tyneside','STY',77,NULL),(1151,'Swansea;Abertawe','SWA',77,NULL),(1152,'Swindon','SWD',77,NULL),(1153,'Southwark','SWK',77,NULL),(1154,'Tameside','TAM',77,NULL),(1155,'Telford and Wrekin','TFW',77,NULL),(1156,'Thurrock','THR',77,NULL),(1157,'Torbay','TOB',77,NULL),(1158,'Torfaen;Tor-faen','TOF',77,NULL),(1159,'Trafford','TRF',77,NULL),(1160,'Tower Hamlets','TWH',77,NULL),(1161,'United Kingdom','UKM',77,NULL),(1162,'Vale of Glamorgan, The;Bro Morgannwg','VGL',77,NULL),(1163,'Warwickshire','WAR',77,NULL),(1164,'West Berkshire','WBK',77,NULL),(1165,'West Dunbartonshire','WDU',77,NULL),(1166,'Waltham Forest','WFT',77,NULL),(1167,'Wigan','WGN',77,NULL),(1168,'Wakefield','WKF',77,NULL),(1169,'Walsall','WLL',77,NULL),(1170,'West Lothian','WLN',77,NULL),(1171,'Wales','WLS',77,NULL),(1172,'Wolverhampton','WLV',77,NULL),(1173,'Wandsworth','WND',77,NULL),(1174,'Windsor and Maidenhead','WNM',77,NULL),(1175,'Wokingham','WOK',77,NULL),(1176,'Worcestershire','WOR',77,NULL),(1177,'Wirral','WRL',77,NULL),(1178,'Warrington','WRT',77,NULL),(1179,'Wrexham;Wrecsam','WRX',77,NULL),(1180,'Westminster','WSM',77,NULL),(1181,'West Sussex','WSX',77,NULL),(1182,'York','YOR',77,NULL),(1183,'Shetland Islands','ZET',77,NULL),(1184,'Wiltshire','WIL',77,NULL),(1185,'Saint Andrew','01',78,NULL),(1186,'Saint David','02',78,NULL),(1187,'Saint George','03',78,NULL),(1188,'Saint John','04',78,NULL),(1189,'Saint Mark','05',78,NULL),(1190,'Saint Patrick','06',78,NULL),(1191,'Southern Grenadine Islands','10',78,NULL),(1192,'Abkhazia','AB',79,NULL),(1193,'Ajaria','AJ',79,NULL),(1194,'Guria','GU',79,NULL),(1195,'Imeret’i','IM',79,NULL),(1196,'Kakhet’i','KA',79,NULL),(1197,'K’vemo K’art’li','KK',79,NULL),(1198,'Mts’khet’a-Mt’ianet’i','MM',79,NULL),(1199,'Racha-Lech’khumi-K’vemo Svanet’i','RL',79,NULL),(1200,'Samts’khe-Javakhet’i','SJ',79,NULL),(1201,'Shida K’art’li','SK',79,NULL),(1202,'Samegrelo-Zemo Svanet’i','SZ',79,NULL),(1203,'T’bilisi','TB',79,NULL),(1204,'Greater Accra','AA',82,NULL),(1205,'Ashanti','AH',82,NULL),(1206,'Brong-Ahafo','BA',82,NULL),(1207,'Central','CP',82,NULL),(1208,'Eastern','EP',82,NULL),(1209,'Northern','NP',82,NULL),(1210,'Volta','TV',82,NULL),(1211,'Upper East','UE',82,NULL),(1212,'Upper West','UW',82,NULL),(1213,'Western','WP',82,NULL),(1214,'Kommune Kujalleq','KU',84,NULL),(1215,'Qaasuitsup Kommunia','QA',84,NULL),(1216,'Qeqqata Kommunia','QE',84,NULL),(1217,'Kommuneqarfik Sermersooq','SM',84,NULL),(1218,'Banjul','B',85,NULL),(1219,'Lower River','L',85,NULL),(1220,'Central River','M',85,NULL),(1221,'North Bank','N',85,NULL),(1222,'Upper River','U',85,NULL),(1223,'Western','W',85,NULL),(1224,'Boké','B',86,NULL),(1225,'Conakry','C',86,NULL),(1226,'Kindia','D',86,NULL),(1227,'Faranah','F',86,NULL),(1228,'Kankan','K',86,NULL),(1229,'Labé','L',86,NULL),(1230,'Mamou','M',86,NULL),(1231,'Nzérékoré','N',86,NULL),(1232,'Región Continental','C',88,NULL),(1233,'Región Insular','I',88,NULL),(1234,'Agio Oros','69',89,NULL),(1235,'Anatoliki Makedonia kai Thraki','A',89,NULL),(1236,'Kentriki Makedonia','B',89,NULL),(1237,'Dytiki Makedonia','C',89,NULL),(1238,'Ipeiros','D',89,NULL),(1239,'Thessalia','E',89,NULL),(1240,'Ionia Nisia','F',89,NULL),(1241,'Dytiki Ellada','G',89,NULL),(1242,'Sterea Ellada','H',89,NULL),(1243,'Attiki','I',89,NULL),(1244,'Peloponnisos','J',89,NULL),(1245,'Voreio Aigaio','K',89,NULL),(1246,'Notio Aigaio','L',89,NULL),(1247,'Kriti','M',89,NULL),(1248,'Alta Verapaz','AV',91,NULL),(1249,'Baja Verapaz','BV',91,NULL),(1250,'Chimaltenango','CM',91,NULL),(1251,'Chiquimula','CQ',91,NULL),(1252,'Escuintla','ES',91,NULL),(1253,'Guatemala','GU',91,NULL),(1254,'Huehuetenango','HU',91,NULL),(1255,'Izabal','IZ',91,NULL),(1256,'Jalapa','JA',91,NULL),(1257,'Jutiapa','JU',91,NULL),(1258,'Petén','PE',91,NULL),(1259,'El Progreso','PR',91,NULL),(1260,'Quiché','QC',91,NULL),(1261,'Quetzaltenango','QZ',91,NULL),(1262,'Retalhuleu','RE',91,NULL),(1263,'Sacatepéquez','SA',91,NULL),(1264,'San Marcos','SM',91,NULL),(1265,'Sololá','SO',91,NULL),(1266,'Santa Rosa','SR',91,NULL),(1267,'Suchitepéquez','SU',91,NULL),(1268,'Totonicapán','TO',91,NULL),(1269,'Zacapa','ZA',91,NULL),(1270,'Bissau','BS',93,NULL),(1271,'Leste','L',93,NULL),(1272,'Norte','N',93,NULL),(1273,'Sul','S',93,NULL),(1274,'Barima-Waini','BA',94,NULL),(1275,'Cuyuni-Mazaruni','CU',94,NULL),(1276,'Demerara-Mahaica','DE',94,NULL),(1277,'East Berbice-Corentyne','EB',94,NULL),(1278,'Essequibo Islands-West Demerara','ES',94,NULL),(1279,'Mahaica-Berbice','MA',94,NULL),(1280,'Pomeroon-Supenaam','PM',94,NULL),(1281,'Potaro-Siparuni','PT',94,NULL),(1282,'Upper Demerara-Berbice','UD',94,NULL),(1283,'Upper Takutu-Upper Essequibo','UT',94,NULL),(1284,'Atlántida','AT',97,NULL),(1285,'Choluteca','CH',97,NULL),(1286,'Colón','CL',97,NULL),(1287,'Comayagua','CM',97,NULL),(1288,'Copán','CP',97,NULL),(1289,'Cortés','CR',97,NULL),(1290,'El Paraíso','EP',97,NULL),(1291,'Francisco Morazán','FM',97,NULL),(1292,'Gracias a Dios','GD',97,NULL),(1293,'Islas de la Bahía','IB',97,NULL),(1294,'Intibucá','IN',97,NULL),(1295,'Lempira','LE',97,NULL),(1296,'La Paz','LP',97,NULL),(1297,'Ocotepeque','OC',97,NULL),(1298,'Olancho','OL',97,NULL),(1299,'Santa Bárbara','SB',97,NULL),(1300,'Valle','VA',97,NULL),(1301,'Yoro','YO',97,NULL),(1302,'Zagrebačka županija','01',98,NULL),(1303,'Krapinsko-zagorska županija','02',98,NULL),(1304,'Sisačko-moslavačka županija','03',98,NULL),(1305,'Karlovačka županija','04',98,NULL),(1306,'Varaždinska županija','05',98,NULL),(1307,'Koprivničko-križevačka županija','06',98,NULL),(1308,'Bjelovarsko-bilogorska županija','07',98,NULL),(1309,'Primorsko-goranska županija','08',98,NULL),(1310,'Ličko-senjska županija','09',98,NULL),(1311,'Virovitičko-podravska županija','10',98,NULL),(1312,'Požeško-slavonska županija','11',98,NULL),(1313,'Brodsko-posavska županija','12',98,NULL),(1314,'Zadarska županija','13',98,NULL),(1315,'Osječko-baranjska županija','14',98,NULL),(1316,'Šibensko-kninska županija','15',98,NULL),(1317,'Vukovarsko-srijemska županija','16',98,NULL),(1318,'Splitsko-dalmatinska županija','17',98,NULL),(1319,'Istarska županija','18',98,NULL),(1320,'Dubrovačko-neretvanska županija','19',98,NULL),(1321,'Međimurska županija','20',98,NULL),(1322,'Grad Zagreb','21',98,NULL),(1323,'Artibonite','AR',99,NULL),(1324,'Centre','CE',99,NULL),(1325,'Grande-Anse','GA',99,NULL),(1326,'Nord','ND',99,NULL),(1327,'Nord-Est','NE',99,NULL),(1328,'Nord-Ouest','NO',99,NULL),(1329,'Ouest','OU',99,NULL),(1330,'Sud','SD',99,NULL),(1331,'Sud-Est','SE',99,NULL),(1332,'Baranya','BA',100,NULL),(1333,'Békéscsaba','BC',100,NULL),(1334,'Békés','BE',100,NULL),(1335,'Bács-Kiskun','BK',100,NULL),(1336,'Budapest','BU',100,NULL),(1337,'Borsod-Abaúj-Zemplén','BZ',100,NULL),(1338,'Csongrád','CS',100,NULL),(1339,'Debrecen','DE',100,NULL),(1340,'Dunaújváros','DU',100,NULL),(1341,'Eger','EG',100,NULL),(1342,'Érd','ER',100,NULL),(1343,'Fejér','FE',100,NULL),(1344,'Győr-Moson-Sopron','GS',100,NULL),(1345,'Győr','GY',100,NULL),(1346,'Hajdú-Bihar','HB',100,NULL),(1347,'Heves','HE',100,NULL),(1348,'Hódmezővásárhely','HV',100,NULL),(1349,'Jász-Nagykun-Szolnok','JN',100,NULL),(1350,'Komárom-Esztergom','KE',100,NULL),(1351,'Kecskemét','KM',100,NULL),(1352,'Kaposvár','KV',100,NULL),(1353,'Miskolc','MI',100,NULL),(1354,'Nagykanizsa','NK',100,NULL),(1355,'Nógrád','NO',100,NULL),(1356,'Nyíregyháza','NY',100,NULL),(1357,'Pest','PE',100,NULL),(1358,'Pécs','PS',100,NULL),(1359,'Szeged','SD',100,NULL),(1360,'Székesfehérvár','SF',100,NULL),(1361,'Szombathely','SH',100,NULL),(1362,'Szolnok','SK',100,NULL),(1363,'Sopron','SN',100,NULL),(1364,'Somogy','SO',100,NULL),(1365,'Szekszárd','SS',100,NULL),(1366,'Salgótarján','ST',100,NULL),(1367,'Szabolcs-Szatmár-Bereg','SZ',100,NULL),(1368,'Tatabánya','TB',100,NULL),(1369,'Tolna','TO',100,NULL),(1370,'Vas','VA',100,NULL),(1371,'Veszprém (county)','VE',100,NULL),(1372,'Veszprém','VM',100,NULL),(1373,'Zala','ZA',100,NULL),(1374,'Zalaegerszeg','ZE',100,NULL),(1375,'Papua','IJ',101,NULL),(1376,'Jawa','JW',101,NULL),(1377,'Kalimantan','KA',101,NULL),(1378,'Maluku','ML',101,NULL),(1379,'Nusa Tenggara','NU',101,NULL),(1380,'Sulawesi','SL',101,NULL),(1381,'Sumatera','SM',101,NULL),(1382,'Connacht','C',102,NULL),(1383,'Leinster','L',102,NULL),(1384,'Munster','M',102,NULL),(1385,'Ulster','U',102,NULL),(1386,'HaDarom','D',103,NULL),(1387,'Hefa','HA',103,NULL),(1388,'Yerushalayim Al Quds','JM',103,NULL),(1389,'HaMerkaz','M',103,NULL),(1390,'Tel-Aviv','TA',103,NULL),(1391,'HaZafon','Z',103,NULL),(1392,'Andaman and Nicobar Islands','AN',105,NULL),(1393,'Andhra Pradesh','AP',105,NULL),(1394,'Arunachal Pradesh','AR',105,NULL),(1395,'Assam','AS',105,NULL),(1396,'Bihar','BR',105,NULL),(1397,'Chandigarh','CH',105,NULL),(1398,'Chhattisgarh','CT',105,NULL),(1399,'Damen and Diu','DD',105,NULL),(1400,'Delhi','DL',105,NULL),(1401,'Dadra and Nagar Haveli','DN',105,NULL),(1402,'Goa','GA',105,NULL),(1403,'Gujarat','GJ',105,NULL),(1404,'Himachal Pradesh','HP',105,NULL),(1405,'Haryana','HR',105,NULL),(1406,'Jharkhand','JH',105,NULL),(1407,'Jammu and Kashmir','JK',105,NULL),(1408,'Karnataka','KA',105,NULL),(1409,'Kerala','KL',105,NULL),(1410,'Lakshadweep','LD',105,NULL),(1411,'Maharashtra','MH',105,NULL),(1412,'Meghalaya','ML',105,NULL),(1413,'Manipur','MN',105,NULL),(1414,'Madhya Pradesh','MP',105,NULL),(1415,'Mizoram','MZ',105,NULL),(1416,'Nagaland','NL',105,NULL),(1417,'Orissa','OR',105,NULL),(1418,'Punjab','PB',105,NULL),(1419,'Puducherry','PY',105,NULL),(1420,'Rajasthan','RJ',105,NULL),(1421,'Sikkim','SK',105,NULL),(1422,'Tamil Nadu','TN',105,NULL),(1423,'Tripura','TR',105,NULL),(1424,'Uttar Pradesh','UP',105,NULL),(1425,'Uttarakhand','UT',105,NULL),(1426,'West Bengal','WB',105,NULL),(1427,'Al Anbar','AN',107,NULL),(1428,'Arbil','AR',107,NULL),(1429,'Al Basrah','BA',107,NULL),(1430,'Babil','BB',107,NULL),(1431,'Baghdad','BG',107,NULL),(1432,'Dahuk','DA',107,NULL),(1433,'Diyala','DI',107,NULL),(1434,'Dhi Qar','DQ',107,NULL),(1435,'Karbala\'','KA',107,NULL),(1436,'Maysan','MA',107,NULL),(1437,'Al Muthanna','MU',107,NULL),(1438,'An Najef','NA',107,NULL),(1439,'Ninawa','NI',107,NULL),(1440,'Al Qadisiyah','QA',107,NULL),(1441,'Salah ad Din','SD',107,NULL),(1442,'As Sulaymaniyah','SW',107,NULL),(1443,'At Ta\'mim','TS',107,NULL),(1444,'Wasit','WA',107,NULL),(1445,'Āzarbāyjān-e Sharqī','01',108,NULL),(1446,'Āzarbāyjān-e Gharbī','02',108,NULL),(1447,'Ardabīl','03',108,NULL),(1448,'Eşfahān','04',108,NULL),(1449,'Īlām','05',108,NULL),(1450,'Būshehr','06',108,NULL),(1451,'Tehrān','07',108,NULL),(1452,'Chahār Mahāll va Bakhtīārī','08',108,NULL),(1453,'Khūzestān','10',108,NULL),(1454,'Zanjān','11',108,NULL),(1455,'Semnān','12',108,NULL),(1456,'Sīstān va Balūchestān','13',108,NULL),(1457,'Fārs','14',108,NULL),(1458,'Kermān','15',108,NULL),(1459,'Kordestān','16',108,NULL),(1460,'Kermānshāh','17',108,NULL),(1461,'Kohgīlūyeh va Būyer Ahmad','18',108,NULL),(1462,'Gīlān','19',108,NULL),(1463,'Lorestān','20',108,NULL),(1464,'Māzandarān','21',108,NULL),(1465,'Markazī','22',108,NULL),(1466,'Hormozgān','23',108,NULL),(1467,'Hamadān','24',108,NULL),(1468,'Yazd','25',108,NULL),(1469,'Qom','26',108,NULL),(1470,'Golestān','27',108,NULL),(1471,'Qazvīn','28',108,NULL),(1472,'Khorāsān-e Janūbī','29',108,NULL),(1473,'Khorāsān-e Razavī','30',108,NULL),(1474,'Khorāsān-e Shemālī','31',108,NULL),(1475,'Reykjavík','0',109,NULL),(1476,'Höfuðborgarsvæðið','1',109,NULL),(1477,'Suðurnes','2',109,NULL),(1478,'Vesturland','3',109,NULL),(1479,'Vestfirðir','4',109,NULL),(1480,'Norðurland vestra','5',109,NULL),(1481,'Norðurland eystra','6',109,NULL),(1482,'Austurland','7',109,NULL),(1483,'Suðurland','8',109,NULL),(1484,'Piemonte','21',110,NULL),(1485,'Valle d\'Aosta','23',110,NULL),(1486,'Lombardia','25',110,NULL),(1487,'Trentino-Alto Adige','32',110,NULL),(1488,'Veneto','34',110,NULL),(1489,'Friuli-Venezia Giulia','36',110,NULL),(1490,'Liguria','42',110,NULL),(1491,'Emilia-Romagna','45',110,NULL),(1492,'Toscana','52',110,NULL),(1493,'Umbria','55',110,NULL),(1494,'Marche','57',110,NULL),(1495,'Lazio','62',110,NULL),(1496,'Abruzzo','65',110,NULL),(1497,'Molise','67',110,NULL),(1498,'Campania','72',110,NULL),(1499,'Puglia','75',110,NULL),(1500,'Basilicata','77',110,NULL),(1501,'Calabria','78',110,NULL),(1502,'Sicilia','82',110,NULL),(1503,'Sardegna','88',110,NULL),(1504,'Kingston','01',112,NULL),(1505,'Saint Andrew','02',112,NULL),(1506,'Saint Thomas','03',112,NULL),(1507,'Portland','04',112,NULL),(1508,'Saint Mary','05',112,NULL),(1509,'Saint Ann','06',112,NULL),(1510,'Trelawny','07',112,NULL),(1511,'Saint James','08',112,NULL),(1512,'Hanover','09',112,NULL),(1513,'Westmoreland','10',112,NULL),(1514,'Saint Elizabeth','11',112,NULL),(1515,'Manchester','12',112,NULL),(1516,'Clarendon','13',112,NULL),(1517,'Saint Catherine','14',112,NULL),(1518,'‘Ajlūn','AJ',113,NULL),(1519,'‘Ammān (Al ‘Aşimah)','AM',113,NULL),(1520,'Al ‘Aqabah','AQ',113,NULL),(1521,'Aţ Ţafīlah','AT',113,NULL),(1522,'Az Zarqā\'','AZ',113,NULL),(1523,'Al Balqā\'','BA',113,NULL),(1524,'Irbid','IR',113,NULL),(1525,'Jarash','JA',113,NULL),(1526,'Al Karak','KA',113,NULL),(1527,'Al Mafraq','MA',113,NULL),(1528,'Mādabā','MD',113,NULL),(1529,'Ma‘ān','MN',113,NULL),(1530,'Hokkaido','01',114,NULL),(1531,'Aomori','02',114,NULL),(1532,'Iwate','03',114,NULL),(1533,'Miyagi','04',114,NULL),(1534,'Akita','05',114,NULL),(1535,'Yamagata','06',114,NULL),(1536,'Fukushima','07',114,NULL),(1537,'Ibaraki','08',114,NULL),(1538,'Tochigi','09',114,NULL),(1539,'Gunma','10',114,NULL),(1540,'Saitama','11',114,NULL),(1541,'Chiba','12',114,NULL),(1542,'Tokyo','13',114,NULL),(1543,'Kanagawa','14',114,NULL),(1544,'Niigata','15',114,NULL),(1545,'Toyama','16',114,NULL),(1546,'Ishikawa','17',114,NULL),(1547,'Fukui','18',114,NULL),(1548,'Yamanashi','19',114,NULL),(1549,'Nagano','20',114,NULL),(1550,'Gifu','21',114,NULL),(1551,'Shizuoka','22',114,NULL),(1552,'Aichi','23',114,NULL),(1553,'Mie','24',114,NULL),(1554,'Shiga','25',114,NULL),(1555,'Kyoto','26',114,NULL),(1556,'Osaka','27',114,NULL),(1557,'Hyogo','28',114,NULL),(1558,'Nara','29',114,NULL),(1559,'Wakayama','30',114,NULL),(1560,'Tottori','31',114,NULL),(1561,'Shimane','32',114,NULL),(1562,'Okayama','33',114,NULL),(1563,'Hiroshima','34',114,NULL),(1564,'Yamaguchi','35',114,NULL),(1565,'Tokushima','36',114,NULL),(1566,'Kagawa','37',114,NULL),(1567,'Ehime','38',114,NULL),(1568,'Kochi','39',114,NULL),(1569,'Fukuoka','40',114,NULL),(1570,'Saga','41',114,NULL),(1571,'Nagasaki','42',114,NULL),(1572,'Kumamoto','43',114,NULL),(1573,'Oita','44',114,NULL),(1574,'Miyazaki','45',114,NULL),(1575,'Kagoshima','46',114,NULL),(1576,'Okinawa','47',114,NULL),(1577,'Nairobi Municipality','110',115,NULL),(1578,'Central','200',115,NULL),(1579,'Coast','300',115,NULL),(1580,'Eastern','400',115,NULL),(1581,'North-Eastern Kaskazini Mashariki','500',115,NULL),(1582,'Rift Valley','700',115,NULL),(1583,'Western Magharibi','800',115,NULL),(1584,'Batken','B',116,NULL),(1585,'Chü','C',116,NULL),(1586,'Bishkek','GB',116,NULL),(1587,'Jalal-Abad','J',116,NULL),(1588,'Naryn','N',116,NULL),(1589,'Osh','O',116,NULL),(1590,'Talas','T',116,NULL),(1591,'Ysyk-Köl','Y',116,NULL),(1592,'Banteay Mean Chey','1',117,NULL),(1593,'Krachoh','10',117,NULL),(1594,'Mondol Kiri','11',117,NULL),(1595,'Phnom Penh','12',117,NULL),(1596,'Preah Vihear','13',117,NULL),(1597,'Prey Veaeng','14',117,NULL),(1598,'Pousaat','15',117,NULL),(1599,'Rotanak Kiri','16',117,NULL),(1600,'Siem Reab','17',117,NULL),(1601,'Krong Preah Sihanouk','18',117,NULL),(1602,'Stueng Traeng','19',117,NULL),(1603,'Battambang','2',117,NULL),(1604,'Svaay Rieng','20',117,NULL),(1605,'Taakaev','21',117,NULL),(1606,'Otdar Mean Chey','22',117,NULL),(1607,'Krong Kaeb','23',117,NULL),(1608,'Krong Pailin','24',117,NULL),(1609,'Kampong Cham','3',117,NULL),(1610,'Kampong Chhnang','4',117,NULL),(1611,'Kampong Speu','5',117,NULL),(1612,'Kampong Thom','6',117,NULL),(1613,'Kampot','7',117,NULL),(1614,'Kandal','8',117,NULL),(1615,'Kach Kong','9',117,NULL),(1616,'Gilbert Islands','G',118,NULL),(1617,'Line Islands','L',118,NULL),(1618,'Phoenix Islands','P',118,NULL),(1619,'Andjouân (Anjwān)','A',119,NULL),(1620,'Andjazîdja (Anjazījah)','G',119,NULL),(1621,'Moûhîlî (Mūhīlī)','M',119,NULL),(1622,'Saint Kitts','K',120,NULL),(1623,'Nevis','N',120,NULL),(1624,'P’yŏngyang','01',121,NULL),(1625,'P’yŏngan-namdo','02',121,NULL),(1626,'P’yŏngan-bukto','03',121,NULL),(1627,'Chagang-do','04',121,NULL),(1628,'Hwanghae-namdo','05',121,NULL),(1629,'Hwanghae-bukto','06',121,NULL),(1630,'Kangwŏn-do','07',121,NULL),(1631,'Hamgyŏng-namdo','08',121,NULL),(1632,'Hamgyŏng-bukto','09',121,NULL),(1633,'Yanggang-do','10',121,NULL),(1634,'Nasŏn (Najin-Sŏnbong)','13',121,NULL),(1635,'Seoul Teugbyeolsi','11',122,NULL),(1636,'Busan Gwang\'yeogsi','26',122,NULL),(1637,'Daegu Gwang\'yeogsi','27',122,NULL),(1638,'Incheon Gwang\'yeogsi','28',122,NULL),(1639,'Gwangju Gwang\'yeogsi','29',122,NULL),(1640,'Daejeon Gwang\'yeogsi','30',122,NULL),(1641,'Ulsan Gwang\'yeogsi','31',122,NULL),(1642,'Gyeonggido','41',122,NULL),(1643,'Gang\'weondo','42',122,NULL),(1644,'Chungcheongbukdo','43',122,NULL),(1645,'Chungcheongnamdo','44',122,NULL),(1646,'Jeonrabukdo','45',122,NULL),(1647,'Jeonranamdo','46',122,NULL),(1648,'Gyeongsangbukdo','47',122,NULL),(1649,'Gyeongsangnamdo','48',122,NULL),(1650,'Jejudo','49',122,NULL),(1651,'Al Ahmadi','AH',123,NULL),(1652,'Al Farwānīyah','FA',123,NULL),(1653,'Hawallī','HA',123,NULL),(1654,'Al Jahrrā’','JA',123,NULL),(1655,'Al Kuwayt (Al ‘Āşimah)','KU',123,NULL),(1656,'Mubārak al Kabīr','MU',123,NULL),(1657,'Aqmola oblysy','AKM',125,NULL),(1658,'Aqtöbe oblysy','AKT',125,NULL),(1659,'Almaty','ALA',125,NULL),(1660,'Almaty oblysy','ALM',125,NULL),(1661,'Astana','AST',125,NULL),(1662,'Atyraū oblysy','ATY',125,NULL),(1663,'Qaraghandy oblysy','KAR',125,NULL),(1664,'Qostanay oblysy','KUS',125,NULL),(1665,'Qyzylorda oblysy','KZY',125,NULL),(1666,'Mangghystaū oblysy','MAN',125,NULL),(1667,'Pavlodar oblysy','PAV',125,NULL),(1668,'Soltüstik Quzaqstan oblysy','SEV',125,NULL),(1669,'Shyghys Qazaqstan oblysy','VOS',125,NULL),(1670,'Ongtüstik Qazaqstan oblysy','YUZ',125,NULL),(1671,'Batys Quzaqstan oblysy','ZAP',125,NULL),(1672,'Zhambyl oblysy','ZHA',125,NULL),(1673,'Attapu','AT',126,NULL),(1674,'Bokèo','BK',126,NULL),(1675,'Bolikhamxai','BL',126,NULL),(1676,'Champasak','CH',126,NULL),(1677,'Houaphan','HO',126,NULL),(1678,'Khammouan','KH',126,NULL),(1679,'Louang Namtha','LM',126,NULL),(1680,'Louangphabang','LP',126,NULL),(1681,'Oudômxai','OU',126,NULL),(1682,'Phôngsali','PH',126,NULL),(1683,'Salavan','SL',126,NULL),(1684,'Savannakhét','SV',126,NULL),(1685,'Vientiane','VI',126,NULL),(1686,'Vientiane','VT',126,NULL),(1687,'Xaignabouli','XA',126,NULL),(1688,'Xékong','XE',126,NULL),(1689,'Xiangkhoang','XI',126,NULL),(1690,'Xiasômboun','XN',126,NULL),(1691,'Aakkâr','AK',127,NULL),(1692,'Liban-Nord','AS',127,NULL),(1693,'Beyrouth','BA',127,NULL),(1694,'Baalbek-Hermel','BH',127,NULL),(1695,'Béqaa','BI',127,NULL),(1696,'Liban-Sud','JA',127,NULL),(1697,'Mont-Liban','JL',127,NULL),(1698,'Nabatîyé','NA',127,NULL),(1699,'Balzers','01',129,NULL),(1700,'Eschen','02',129,NULL),(1701,'Gamprin','03',129,NULL),(1702,'Mauren','04',129,NULL),(1703,'Planken','05',129,NULL),(1704,'Ruggell','06',129,NULL),(1705,'Schaan','07',129,NULL),(1706,'Schellenberg','08',129,NULL),(1707,'Triesen','09',129,NULL),(1708,'Triesenberg','10',129,NULL),(1709,'Vaduz','11',129,NULL),(1710,'Basnāhira paḷāta','1',130,NULL),(1711,'Madhyama paḷāta','2',130,NULL),(1712,'Dakuṇu paḷāta','3',130,NULL),(1713,'Uturu paḷāta','4',130,NULL),(1714,'Næ̆gĕnahira paḷāta','5',130,NULL),(1715,'Vayamba paḷāta','6',130,NULL),(1716,'Uturumæ̆da paḷāta','7',130,NULL),(1717,'Ūva paḷāta','8',130,NULL),(1718,'Sabaragamuva paḷāta','9',130,NULL),(1719,'Bong','BG',131,NULL),(1720,'Bomi','BM',131,NULL),(1721,'Grand Cape Mount','CM',131,NULL),(1722,'Grand Bassa','GB',131,NULL),(1723,'Grand Gedeh','GG',131,NULL),(1724,'Grand Kru','GK',131,NULL),(1725,'Lofa','LO',131,NULL),(1726,'Margibi','MG',131,NULL),(1727,'Montserrado','MO',131,NULL),(1728,'Maryland','MY',131,NULL),(1729,'Nimba','NI',131,NULL),(1730,'Rivercess','RI',131,NULL),(1731,'Sinoe','SI',131,NULL),(1732,'Maseru','A',132,NULL),(1733,'Butha-Buthe','B',132,NULL),(1734,'Leribe','C',132,NULL),(1735,'Berea','D',132,NULL),(1736,'Mafeteng','E',132,NULL),(1737,'Mohale\'s Hoek','F',132,NULL),(1738,'Quthing','G',132,NULL),(1739,'Qacha\'s Nek','H',132,NULL),(1740,'Mokhotlong','J',132,NULL),(1741,'Thaba-Tseka','K',132,NULL),(1742,'Alytaus Apskritis','AL',133,NULL),(1743,'Klaipėdos Apskritis','KL',133,NULL),(1744,'Kauno Apskritis','KU',133,NULL),(1745,'Marijampolės Apskritis','MR',133,NULL),(1746,'Panevėžio Apskritis','PN',133,NULL),(1747,'Šiaulių Apskritis','SA',133,NULL),(1748,'Tauragés Apskritis','TA',133,NULL),(1749,'Telšių Apskritis','TE',133,NULL),(1750,'Utenos Apskritis','UT',133,NULL),(1751,'Vilniaus Apskritis','VL',133,NULL),(1752,'Diekirch','D',134,NULL),(1753,'Grevenmacher','G',134,NULL),(1754,'Luxembourg','L',134,NULL),(1755,'Aglonas novads','001',135,NULL),(1756,'Aizkraukles novads','002',135,NULL),(1757,'Aizputes novads','003',135,NULL),(1758,'Aknīstes novads','004',135,NULL),(1759,'Alojas novads','005',135,NULL),(1760,'Alsungas novads','006',135,NULL),(1761,'Alūksnes novads','007',135,NULL),(1762,'Amatas novads','008',135,NULL),(1763,'Apes novads','009',135,NULL),(1764,'Auces novads','010',135,NULL),(1765,'Ādažu novads','011',135,NULL),(1766,'Babītes novads','012',135,NULL),(1767,'Baldones novads','013',135,NULL),(1768,'Baltinavas novads','014',135,NULL),(1769,'Balvu novads','015',135,NULL),(1770,'Bauskas novads','016',135,NULL),(1771,'Beverīnas novads','017',135,NULL),(1772,'Brocēnu novads','018',135,NULL),(1773,'Burtnieku novads','019',135,NULL),(1774,'Carnikavas novads','020',135,NULL),(1775,'Cesvaines novads','021',135,NULL),(1776,'Cēsu novads','022',135,NULL),(1777,'Ciblas novads','023',135,NULL),(1778,'Dagdas novads','024',135,NULL),(1779,'Daugavpils novads','025',135,NULL),(1780,'Dobeles novads','026',135,NULL),(1781,'Dundagas novads','027',135,NULL),(1782,'Durbes novads','028',135,NULL),(1783,'Engures novads','029',135,NULL),(1784,'Ērgļu novads','030',135,NULL),(1785,'Garkalnes novads','031',135,NULL),(1786,'Grobiņas novads','032',135,NULL),(1787,'Gulbenes novads','033',135,NULL),(1788,'Iecavas novads','034',135,NULL),(1789,'Ikšķiles novads','035',135,NULL),(1790,'Ilūkstes novads','036',135,NULL),(1791,'Inčukalna novads','037',135,NULL),(1792,'Jaunjelgavas novads','038',135,NULL),(1793,'Jaunpiebalgas novads','039',135,NULL),(1794,'Jaunpils novads','040',135,NULL),(1795,'Jelgavas novads','041',135,NULL),(1796,'Jēkabpils novads','042',135,NULL),(1797,'Kandavas novads','043',135,NULL),(1798,'Kārsavas novads','044',135,NULL),(1799,'Kocēnu novads','045',135,NULL),(1800,'Kokneses novads','046',135,NULL),(1801,'Krāslavas novads','047',135,NULL),(1802,'Krimuldas novads','048',135,NULL),(1803,'Krustpils novads','049',135,NULL),(1804,'Kuldīgas novads','050',135,NULL),(1805,'Ķeguma novads','051',135,NULL),(1806,'Ķekavas novads','052',135,NULL),(1807,'Lielvārdes novads','053',135,NULL),(1808,'Limbažu novads','054',135,NULL),(1809,'Līgatnes novads','055',135,NULL),(1810,'Līvānu novads','056',135,NULL),(1811,'Lubānas novads','057',135,NULL),(1812,'Ludzas novads','058',135,NULL),(1813,'Madonas novads','059',135,NULL),(1814,'Mazsalacas novads','060',135,NULL),(1815,'Mālpils novads','061',135,NULL),(1816,'Mārupes novads','062',135,NULL),(1817,'Mērsraga novads','063',135,NULL),(1818,'Naukšēnu novads','064',135,NULL),(1819,'Neretas novads','065',135,NULL),(1820,'Nīcas novads','066',135,NULL),(1821,'Ogres novads','067',135,NULL),(1822,'Olaines novads','068',135,NULL),(1823,'Ozolnieku novads','069',135,NULL),(1824,'Pārgaujas novads','070',135,NULL),(1825,'Pāvilostas novads','071',135,NULL),(1826,'Pļaviņu novads','072',135,NULL),(1827,'Preiļu novads','073',135,NULL),(1828,'Priekules novads','074',135,NULL),(1829,'Priekuļu novads','075',135,NULL),(1830,'Raunas novads','076',135,NULL),(1831,'Rēzeknes novads','077',135,NULL),(1832,'Riebiņu novads','078',135,NULL),(1833,'Rojas novads','079',135,NULL),(1834,'Ropažu novads','080',135,NULL),(1835,'Rucavas novads','081',135,NULL),(1836,'Rugāju novads','082',135,NULL),(1837,'Rundāles novads','083',135,NULL),(1838,'Rūjienas novads','084',135,NULL),(1839,'Salas novads','085',135,NULL),(1840,'Salacgrīvas novads','086',135,NULL),(1841,'Salaspils novads','087',135,NULL),(1842,'Saldus novads','088',135,NULL),(1843,'Saulkrastu novads','089',135,NULL),(1844,'Sējas novads','090',135,NULL),(1845,'Siguldas novads','091',135,NULL),(1846,'Skrīveru novads','092',135,NULL),(1847,'Skrundas novads','093',135,NULL),(1848,'Smiltenes novads','094',135,NULL),(1849,'Stopiņu novads','095',135,NULL),(1850,'Strenču novads','096',135,NULL),(1851,'Talsu novads','097',135,NULL),(1852,'Tērvetes novads','098',135,NULL),(1853,'Tukuma novads','099',135,NULL),(1854,'Vaiņodes novads','100',135,NULL),(1855,'Valkas novads','101',135,NULL),(1856,'Varakļānu novads','102',135,NULL),(1857,'Vārkavas novads','103',135,NULL),(1858,'Vecpiebalgas novads','104',135,NULL),(1859,'Vecumnieku novads','105',135,NULL),(1860,'Ventspils novads','106',135,NULL),(1861,'Viesītes novads','107',135,NULL),(1862,'Viļakas novads','108',135,NULL),(1863,'Viļānu novads','109',135,NULL),(1864,'Zilupes novads','110',135,NULL),(1865,'Daugavpils','DGV',135,NULL),(1866,'Jelgava','JEL',135,NULL),(1867,'Jēkabpils','JKB',135,NULL),(1868,'Jūrmala','JUR',135,NULL),(1869,'Liepāja','LPX',135,NULL),(1870,'Rēzekne','REZ',135,NULL),(1871,'Rīga','RIX',135,NULL),(1872,'Ventspils','VEN',135,NULL),(1873,'Valmiera','VMR',135,NULL),(1874,'Banghāzī','BA',136,NULL),(1875,'Al Buţnān','BU',136,NULL),(1876,'Darnah','DR',136,NULL),(1877,'Ghāt','GT',136,NULL),(1878,'Al Jabal al Akhḑar','JA',136,NULL),(1879,'Jaghbūb','JB',136,NULL),(1880,'Al Jabal al Gharbī','JG',136,NULL),(1881,'Al Jifārah','JI',136,NULL),(1882,'Al Jufrah','JU',136,NULL),(1883,'Al Kufrah','KF',136,NULL),(1884,'Al Marqab','MB',136,NULL),(1885,'Mişrātah','MI',136,NULL),(1886,'Al Marj','MJ',136,NULL),(1887,'Murzuq','MQ',136,NULL),(1888,'Nālūt','NL',136,NULL),(1889,'An Nuqaţ al Khams','NQ',136,NULL),(1890,'Sabhā','SB',136,NULL),(1891,'Surt','SR',136,NULL),(1892,'Ţarābulus','TB',136,NULL),(1893,'Al Wāḩāt','WA',136,NULL),(1894,'Wādī al Ḩayāt','WD',136,NULL),(1895,'Wādī ash Shāţiʾ','WS',136,NULL),(1896,'Az Zāwiyah','ZA',136,NULL),(1897,'Tanger-Tétouan','01',137,NULL),(1898,'Gharb-Chrarda-Beni Hssen','02',137,NULL),(1899,'Taza-Al Hoceima-Taounate','03',137,NULL),(1900,'L\'Oriental','04',137,NULL),(1901,'Fès-Boulemane','05',137,NULL),(1902,'Meknès-Tafilalet','06',137,NULL),(1903,'Rabat-Salé-Zemmour-Zaer','07',137,NULL),(1904,'Grand Casablanca','08',137,NULL),(1905,'Chaouia-Ouardigha','09',137,NULL),(1906,'Doukhala-Abda','10',137,NULL),(1907,'Marrakech-Tensift-Al Haouz','11',137,NULL),(1908,'Tadla-Azilal','12',137,NULL),(1909,'Sous-Massa-Draa','13',137,NULL),(1910,'Guelmim-Es Smara','14',137,NULL),(1911,'Laâyoune-Boujdour-Sakia el Hamra','15',137,NULL),(1912,'Oued ed Dahab-Lagouira','16',137,NULL),(1913,'La Colle','CL',138,NULL),(1914,'La Condamine','CO',138,NULL),(1915,'Fontvieille','FO',138,NULL),(1916,'La Gare','GA',138,NULL),(1917,'Jardin Exotique','JE',138,NULL),(1918,'Larvotto','LA',138,NULL),(1919,'Malbousquet','MA',138,NULL),(1920,'Monte-Carlo','MC',138,NULL),(1921,'Moneghetti','MG',138,NULL),(1922,'Monaco-Ville','MO',138,NULL),(1923,'Moulins','MU',138,NULL),(1924,'Port-Hercule','PH',138,NULL),(1925,'Sainte-Dévote','SD',138,NULL),(1926,'La Source','SO',138,NULL),(1927,'Spélugues','SP',138,NULL),(1928,'Saint-Roman','SR',138,NULL),(1929,'Vallon de la Rousse','VR',138,NULL),(1930,'Anenii Noi','AN',139,NULL),(1931,'Bălți','BA',139,NULL),(1932,'Tighina','BD',139,NULL),(1933,'Briceni','BR',139,NULL),(1934,'Basarabeasca','BS',139,NULL),(1935,'Cahul','CA',139,NULL),(1936,'Călărași','CL',139,NULL),(1937,'Cimișlia','CM',139,NULL),(1938,'Criuleni','CR',139,NULL),(1939,'Căușeni','CS',139,NULL),(1940,'Cantemir','CT',139,NULL),(1941,'Chișinău','CU',139,NULL),(1942,'Dondușeni','DO',139,NULL),(1943,'Drochia','DR',139,NULL),(1944,'Dubăsari','DU',139,NULL),(1945,'Edineț','ED',139,NULL),(1946,'Fălești','FA',139,NULL),(1947,'Florești','FL',139,NULL),(1948,'Găgăuzia, Unitatea teritorială autonomă','GA',139,NULL),(1949,'Glodeni','GL',139,NULL),(1950,'Hîncești','HI',139,NULL),(1951,'Ialoveni','IA',139,NULL),(1952,'Leova','LE',139,NULL),(1953,'Nisporeni','NI',139,NULL),(1954,'Ocnița','OC',139,NULL),(1955,'Orhei','OR',139,NULL),(1956,'Rezina','RE',139,NULL),(1957,'Rîșcani','RI',139,NULL),(1958,'Șoldănești','SD',139,NULL),(1959,'Sîngerei','SI',139,NULL),(1960,'Stînga Nistrului, unitatea teritorială din','SN',139,NULL),(1961,'Soroca','SO',139,NULL),(1962,'Strășeni','ST',139,NULL),(1963,'Ștefan Vodă','SV',139,NULL),(1964,'Taraclia','TA',139,NULL),(1965,'Telenești','TE',139,NULL),(1966,'Ungheni','UN',139,NULL),(1967,'Andrijevica','01',140,NULL),(1968,'Bar','02',140,NULL),(1969,'Berane','03',140,NULL),(1970,'Bijelo Polje','04',140,NULL),(1971,'Budva','05',140,NULL),(1972,'Cetinje','06',140,NULL),(1973,'Danilovgrad','07',140,NULL),(1974,'Herceg-Novi','08',140,NULL),(1975,'Kolašin','09',140,NULL),(1976,'Kotor','10',140,NULL),(1977,'Mojkovac','11',140,NULL),(1978,'Nikšić','12',140,NULL),(1979,'Plav','13',140,NULL),(1980,'Pljevlja','14',140,NULL),(1981,'Plužine','15',140,NULL),(1982,'Podgorica','16',140,NULL),(1983,'Rožaje','17',140,NULL),(1984,'Šavnik','18',140,NULL),(1985,'Tivat','19',140,NULL),(1986,'Ulcinj','20',140,NULL),(1987,'Žabljak','21',140,NULL),(1988,'Toamasina','A',142,NULL),(1989,'Antsiranana','D',142,NULL),(1990,'Fianarantsoa','F',142,NULL),(1991,'Mahajanga','M',142,NULL),(1992,'Antananarivo','T',142,NULL),(1993,'Toliara','U',142,NULL),(1994,'Ralik chain','L',143,NULL),(1995,'Ratak chain','T',143,NULL),(1996,'Aerodrom','01',144,NULL),(1997,'Aračinovo','02',144,NULL),(1998,'Berovo','03',144,NULL),(1999,'Bitola','04',144,NULL),(2000,'Bogdanci','05',144,NULL),(2001,'Bogovinje','06',144,NULL),(2002,'Bosilovo','07',144,NULL),(2003,'Brvenica','08',144,NULL),(2004,'Butel','09',144,NULL),(2005,'Valandovo','10',144,NULL),(2006,'Vasilevo','11',144,NULL),(2007,'Vevčani','12',144,NULL),(2008,'Veles','13',144,NULL),(2009,'Vinica','14',144,NULL),(2010,'Vraneštica','15',144,NULL),(2011,'Vrapčište','16',144,NULL),(2012,'Gazi Baba','17',144,NULL),(2013,'Gevgelija','18',144,NULL),(2014,'Gostivar','19',144,NULL),(2015,'Gradsko','20',144,NULL),(2016,'Debar','21',144,NULL),(2017,'Debarca','22',144,NULL),(2018,'Delčevo','23',144,NULL),(2019,'Demir Kapija','24',144,NULL),(2020,'Demir Hisar','25',144,NULL),(2021,'Dojran','26',144,NULL),(2022,'Dolneni','27',144,NULL),(2023,'Drugovo','28',144,NULL),(2024,'Gjorče Petrov','29',144,NULL),(2025,'Želino','30',144,NULL),(2026,'Zajas','31',144,NULL),(2027,'Zelenikovo','32',144,NULL),(2028,'Zrnovci','33',144,NULL),(2029,'Ilinden','34',144,NULL),(2030,'Jegunovce','35',144,NULL),(2031,'Kavadarci','36',144,NULL),(2032,'Karbinci','37',144,NULL),(2033,'Karpoš','38',144,NULL),(2034,'Kisela Voda','39',144,NULL),(2035,'Kičevo','40',144,NULL),(2036,'Konče','41',144,NULL),(2037,'Kočani','42',144,NULL),(2038,'Kratovo','43',144,NULL),(2039,'Kriva Palanka','44',144,NULL),(2040,'Krivogaštani','45',144,NULL),(2041,'Kruševo','46',144,NULL),(2042,'Kumanovo','47',144,NULL),(2043,'Lipkovo','48',144,NULL),(2044,'Lozovo','49',144,NULL),(2045,'Mavrovo-i-Rostuša','50',144,NULL),(2046,'Makedonska Kamenica','51',144,NULL),(2047,'Makedonski Brod','52',144,NULL),(2048,'Mogila','53',144,NULL),(2049,'Negotino','54',144,NULL),(2050,'Novaci','55',144,NULL),(2051,'Novo Selo','56',144,NULL),(2052,'Oslomej','57',144,NULL),(2053,'Ohrid','58',144,NULL),(2054,'Petrovec','59',144,NULL),(2055,'Pehčevo','60',144,NULL),(2056,'Plasnica','61',144,NULL),(2057,'Prilep','62',144,NULL),(2058,'Probištip','63',144,NULL),(2059,'Radoviš','64',144,NULL),(2060,'Rankovce','65',144,NULL),(2061,'Resen','66',144,NULL),(2062,'Rosoman','67',144,NULL),(2063,'Saraj','68',144,NULL),(2064,'Sveti Nikole','69',144,NULL),(2065,'Sopište','70',144,NULL),(2066,'Staro Nagoričane','71',144,NULL),(2067,'Struga','72',144,NULL),(2068,'Strumica','73',144,NULL),(2069,'Studeničani','74',144,NULL),(2070,'Tearce','75',144,NULL),(2071,'Tetovo','76',144,NULL),(2072,'Centar','77',144,NULL),(2073,'Centar Župa','78',144,NULL),(2074,'Čair','79',144,NULL),(2075,'Čaška','80',144,NULL),(2076,'Češinovo-Obleševo','81',144,NULL),(2077,'Čučer Sandevo','82',144,NULL),(2078,'Štip','83',144,NULL),(2079,'Šuto Orizari','84',144,NULL),(2080,'Kayes','1',145,NULL),(2081,'Koulikoro','2',145,NULL),(2082,'Sikasso','3',145,NULL),(2083,'Ségou','4',145,NULL),(2084,'Mopti','5',145,NULL),(2085,'Tombouctou','6',145,NULL),(2086,'Gao','7',145,NULL),(2087,'Kidal','8',145,NULL),(2088,'Bamako','BK0',145,NULL),(2089,'Sagaing','01',146,NULL),(2090,'Bago','02',146,NULL),(2091,'Magway','03',146,NULL),(2092,'Mandalay','04',146,NULL),(2093,'Tanintharyi','05',146,NULL),(2094,'Yangon','06',146,NULL),(2095,'Ayeyarwady','07',146,NULL),(2096,'Kachin','11',146,NULL),(2097,'Kayah','12',146,NULL),(2098,'Kayin','13',146,NULL),(2099,'Chin','14',146,NULL),(2100,'Mon','15',146,NULL),(2101,'Rakhine','16',146,NULL),(2102,'Shan','17',146,NULL),(2103,'Orhon','035',147,NULL),(2104,'Darhan uul','037',147,NULL),(2105,'Hentiy','039',147,NULL),(2106,'Hövsgöl','041',147,NULL),(2107,'Hovd','043',147,NULL),(2108,'Uvs','046',147,NULL),(2109,'Töv','047',147,NULL),(2110,'Selenge','049',147,NULL),(2111,'Sühbaatar','051',147,NULL),(2112,'Ömnögovi','053',147,NULL),(2113,'Övörhangay','055',147,NULL),(2114,'Dzavhan','057',147,NULL),(2115,'Dundgovi','059',147,NULL),(2116,'Dornod','061',147,NULL),(2117,'Dornogovi','063',147,NULL),(2118,'Govi-Sumber','064',147,NULL),(2119,'Govi-Altay','065',147,NULL),(2120,'Bulgan','067',147,NULL),(2121,'Bayanhongor','069',147,NULL),(2122,'Bayan-Ölgiy','071',147,NULL),(2123,'Arhangay','073',147,NULL),(2124,'Ulanbaatar','1',147,NULL),(2125,'Hodh ech Chargui','01',151,NULL),(2126,'Hodh el Charbi','02',151,NULL),(2127,'Assaba','03',151,NULL),(2128,'Gorgol','04',151,NULL),(2129,'Brakna','05',151,NULL),(2130,'Trarza','06',151,NULL),(2131,'Adrar','07',151,NULL),(2132,'Dakhlet Nouadhibou','08',151,NULL),(2133,'Tagant','09',151,NULL),(2134,'Guidimaka','10',151,NULL),(2135,'Tiris Zemmour','11',151,NULL),(2136,'Inchiri','12',151,NULL),(2137,'Nouakchott','NKC',151,NULL),(2138,'Attard','01',153,NULL),(2139,'Balzan','02',153,NULL),(2140,'Birgu','03',153,NULL),(2141,'Birkirkara','04',153,NULL),(2142,'Birżebbuġa','05',153,NULL),(2143,'Bormla','06',153,NULL),(2144,'Dingli','07',153,NULL),(2145,'Fgura','08',153,NULL),(2146,'Floriana','09',153,NULL),(2147,'Fontana','10',153,NULL),(2148,'Gudja','11',153,NULL),(2149,'Gżira','12',153,NULL),(2150,'Għajnsielem','13',153,NULL),(2151,'Għarb','14',153,NULL),(2152,'Għargħur','15',153,NULL),(2153,'Għasri','16',153,NULL),(2154,'Għaxaq','17',153,NULL),(2155,'Ħamrun','18',153,NULL),(2156,'Iklin','19',153,NULL),(2157,'Isla','20',153,NULL),(2158,'Kalkara','21',153,NULL),(2159,'Kerċem','22',153,NULL),(2160,'Kirkop','23',153,NULL),(2161,'Lija','24',153,NULL),(2162,'Luqa','25',153,NULL),(2163,'Marsa','26',153,NULL),(2164,'Marsaskala','27',153,NULL),(2165,'Marsaxlokk','28',153,NULL),(2166,'Mdina','29',153,NULL),(2167,'Mellieħa','30',153,NULL),(2168,'Mġarr','31',153,NULL),(2169,'Mosta','32',153,NULL),(2170,'Mqabba','33',153,NULL),(2171,'Msida','34',153,NULL),(2172,'Mtarfa','35',153,NULL),(2173,'Munxar','36',153,NULL),(2174,'Nadur','37',153,NULL),(2175,'Naxxar','38',153,NULL),(2176,'Paola','39',153,NULL),(2177,'Pembroke','40',153,NULL),(2178,'Pietà','41',153,NULL),(2179,'Qala','42',153,NULL),(2180,'Qormi','43',153,NULL),(2181,'Qrendi','44',153,NULL),(2182,'Rabat Għawdex','45',153,NULL),(2183,'Rabat Malta','46',153,NULL),(2184,'Safi','47',153,NULL),(2185,'San Ġiljan','48',153,NULL),(2186,'San Ġwann','49',153,NULL),(2187,'San Lawrenz','50',153,NULL),(2188,'San Pawl il-Baħar','51',153,NULL),(2189,'Sannat','52',153,NULL),(2190,'Santa Luċija','53',153,NULL),(2191,'Santa Venera','54',153,NULL),(2192,'Siġġiewi','55',153,NULL),(2193,'Sliema','56',153,NULL),(2194,'Swieqi','57',153,NULL),(2195,'Ta’ Xbiex','58',153,NULL),(2196,'Tarxien','59',153,NULL),(2197,'Valletta','60',153,NULL),(2198,'Xagħra','61',153,NULL),(2199,'Xewkija','62',153,NULL),(2200,'Xgħajra','63',153,NULL),(2201,'Żabbar','64',153,NULL),(2202,'Żebbuġ Għawdex','65',153,NULL),(2203,'Żebbuġ Malta','66',153,NULL),(2204,'Żejtun','67',153,NULL),(2205,'Żurrieq','68',153,NULL),(2206,'Agalega Islands','AG',154,NULL),(2207,'Black River','BL',154,NULL),(2208,'Beau Bassin-Rose Hill','BR',154,NULL),(2209,'Cargados Carajos Shoals','CC',154,NULL),(2210,'Curepipe','CU',154,NULL),(2211,'Flacq','FL',154,NULL),(2212,'Grand Port','GP',154,NULL),(2213,'Moka','MO',154,NULL),(2214,'Pamplemousses','PA',154,NULL),(2215,'Port Louis','PL',154,NULL),(2216,'Port Louis','PU',154,NULL),(2217,'Plaines Wilhems','PW',154,NULL),(2218,'Quatre Bornes','QB',154,NULL),(2219,'Rodrigues Island','RO',154,NULL),(2220,'Rivière du Rempart','RP',154,NULL),(2221,'Savanne','SA',154,NULL),(2222,'Vacoas-Phoenix','VP',154,NULL),(2223,'Central','CE',155,NULL),(2224,'Male','MLE',155,NULL),(2225,'North Central','NC',155,NULL),(2226,'North','NO',155,NULL),(2227,'South Central','SC',155,NULL),(2228,'South','SU',155,NULL),(2229,'Upper North','UN',155,NULL),(2230,'Upper South','US',155,NULL),(2231,'Central Region','C',156,NULL),(2232,'Northern Region','N',156,NULL),(2233,'Southern Region','S',156,NULL),(2234,'Aguascalientes','AGU',157,NULL),(2235,'Baja California','BCN',157,NULL),(2236,'Baja California Sur','BCS',157,NULL),(2237,'Campeche','CAM',157,NULL),(2238,'Chihuahua','CHH',157,NULL),(2239,'Chiapas','CHP',157,NULL),(2240,'Coahuila','COA',157,NULL),(2241,'Colima','COL',157,NULL),(2242,'Distrito Federal','DIF',157,NULL),(2243,'Durango','DUR',157,NULL),(2244,'Guerrero','GRO',157,NULL),(2245,'Guanajuato','GUA',157,NULL),(2246,'Hidalgo','HID',157,NULL),(2247,'Jalisco','JAL',157,NULL),(2248,'México','MEX',157,NULL),(2249,'Michoacán','MIC',157,NULL),(2250,'Morelos','MOR',157,NULL),(2251,'Nayarit','NAY',157,NULL),(2252,'Nuevo León','NLE',157,NULL),(2253,'Oaxaca','OAX',157,NULL),(2254,'Puebla','PUE',157,NULL),(2255,'Querétaro','QUE',157,NULL),(2256,'Quintana Roo','ROO',157,NULL),(2257,'Sinaloa','SIN',157,NULL),(2258,'San Luis Potosí','SLP',157,NULL),(2259,'Sonora','SON',157,NULL),(2260,'Tabasco','TAB',157,NULL),(2261,'Tamaulipas','TAM',157,NULL),(2262,'Tlaxcala','TLA',157,NULL),(2263,'Veracruz','VER',157,NULL),(2264,'Yucatán','YUC',157,NULL),(2265,'Zacatecas','ZAC',157,NULL),(2266,'Johor','01',158,NULL),(2267,'Kedah','02',158,NULL),(2268,'Kelantan','03',158,NULL),(2269,'Melaka','04',158,NULL),(2270,'Negeri Sembilan','05',158,NULL),(2271,'Pahang','06',158,NULL),(2272,'Pulau Pinang','07',158,NULL),(2273,'Perak','08',158,NULL),(2274,'Perlis','09',158,NULL),(2275,'Selangor','10',158,NULL),(2276,'Terengganu','11',158,NULL),(2277,'Sabah','12',158,NULL),(2278,'Sarawak','13',158,NULL),(2279,'Wilayah Persekutuan Kuala Lumpur','14',158,NULL),(2280,'Wilayah Persekutuan Labuan','15',158,NULL),(2281,'Wilayah Persekutuan Putrajaya','16',158,NULL),(2282,'Niassa','A',159,NULL),(2283,'Manica','B',159,NULL),(2284,'Gaza','G',159,NULL),(2285,'Inhambane','I',159,NULL),(2286,'Maputo','L',159,NULL),(2287,'Maputo (city)','MPM',159,NULL),(2288,'Numpula','N',159,NULL),(2289,'Cabo Delgado','P',159,NULL),(2290,'Zambezia','Q',159,NULL),(2291,'Sofala','S',159,NULL),(2292,'Tete','T',159,NULL),(2293,'Caprivi','CA',160,NULL),(2294,'Erongo','ER',160,NULL),(2295,'Hardap','HA',160,NULL),(2296,'Karas','KA',160,NULL),(2297,'Khomas','KH',160,NULL),(2298,'Kunene','KU',160,NULL),(2299,'Otjozondjupa','OD',160,NULL),(2300,'Omaheke','OH',160,NULL),(2301,'Okavango','OK',160,NULL),(2302,'Oshana','ON',160,NULL),(2303,'Omusati','OS',160,NULL),(2304,'Oshikoto','OT',160,NULL),(2305,'Ohangwena','OW',160,NULL),(2306,'Agadez','1',162,NULL),(2307,'Diffa','2',162,NULL),(2308,'Dosso','3',162,NULL),(2309,'Maradi','4',162,NULL),(2310,'Tahoua','5',162,NULL),(2311,'Tillabéri','6',162,NULL),(2312,'Zinder','7',162,NULL),(2313,'Niamey','8',162,NULL),(2314,'Abia','AB',164,NULL),(2315,'Adamawa','AD',164,NULL),(2316,'Akwa Ibom','AK',164,NULL),(2317,'Anambra','AN',164,NULL),(2318,'Bauchi','BA',164,NULL),(2319,'Benue','BE',164,NULL),(2320,'Borno','BO',164,NULL),(2321,'Bayelsa','BY',164,NULL),(2322,'Cross River','CR',164,NULL),(2323,'Delta','DE',164,NULL),(2324,'Ebonyi','EB',164,NULL),(2325,'Edo','ED',164,NULL),(2326,'Ekiti','EK',164,NULL),(2327,'Enugu','EN',164,NULL),(2328,'Abuja Capital Territory','FC',164,NULL),(2329,'Gombe','GO',164,NULL),(2330,'Imo','IM',164,NULL),(2331,'Jigawa','JI',164,NULL),(2332,'Kaduna','KD',164,NULL),(2333,'Kebbi','KE',164,NULL),(2334,'Kano','KN',164,NULL),(2335,'Kogi','KO',164,NULL),(2336,'Katsina','KT',164,NULL),(2337,'Kwara','KW',164,NULL),(2338,'Lagos','LA',164,NULL),(2339,'Nassarawa','NA',164,NULL),(2340,'Niger','NI',164,NULL),(2341,'Ogun','OG',164,NULL),(2342,'Ondo','ON',164,NULL),(2343,'Osun','OS',164,NULL),(2344,'Oyo','OY',164,NULL),(2345,'Plateau','PL',164,NULL),(2346,'Rivers','RI',164,NULL),(2347,'Sokoto','SO',164,NULL),(2348,'Taraba','TA',164,NULL),(2349,'Yobe','YO',164,NULL),(2350,'Zamfara','ZA',164,NULL),(2351,'Atlántico Norte','AN',165,NULL),(2352,'Atlántico Sur','AS',165,NULL),(2353,'Boaco','BO',165,NULL),(2354,'Carazo','CA',165,NULL),(2355,'Chinandega','CI',165,NULL),(2356,'Chontales','CO',165,NULL),(2357,'Estelí','ES',165,NULL),(2358,'Granada','GR',165,NULL),(2359,'Jinotega','JI',165,NULL),(2360,'León','LE',165,NULL),(2361,'Madriz','MD',165,NULL),(2362,'Managua','MN',165,NULL),(2363,'Masaya','MS',165,NULL),(2364,'Matagalpa','MT',165,NULL),(2365,'Nueva Segovia','NS',165,NULL),(2366,'Rivas','RI',165,NULL),(2367,'Río San Juan','SJ',165,NULL),(2368,'Aruba','AW',166,NULL),(2369,'Bonaire','BQ1',166,NULL),(2370,'Saba','BQ2',166,NULL),(2371,'Sint Eustatius','BQ3',166,NULL),(2372,'Curaçao','CW',166,NULL),(2373,'Drenthe','DR',166,NULL),(2374,'Flevoland','FL',166,NULL),(2375,'Friesland','FR',166,NULL),(2376,'Gelderland','GE',166,NULL),(2377,'Groningen','GR',166,NULL),(2378,'Limburg','LI',166,NULL),(2379,'Noord-Brabant','NB',166,NULL),(2380,'Noord-Holland','NH',166,NULL),(2381,'Overijssel','OV',166,NULL),(2382,'Sint Maarten','SX',166,NULL),(2383,'Utrecht','UT',166,NULL),(2384,'Zeeland','ZE',166,NULL),(2385,'Zuid-Holland','ZH',166,NULL),(2386,'Østfold','01',167,NULL),(2387,'Akershus','02',167,NULL),(2388,'Oslo','03',167,NULL),(2389,'Hedmark','04',167,NULL),(2390,'Oppland','05',167,NULL),(2391,'Buskerud','06',167,NULL),(2392,'Vestfold','07',167,NULL),(2393,'Telemark','08',167,NULL),(2394,'Aust-Agder','09',167,NULL),(2395,'Vest-Agder','10',167,NULL),(2396,'Rogaland','11',167,NULL),(2397,'Hordaland','12',167,NULL),(2398,'Sogn og Fjordane','14',167,NULL),(2399,'Møre og Romsdal','15',167,NULL),(2400,'Sør-Trøndelag','16',167,NULL),(2401,'Nord-Trøndelag','17',167,NULL),(2402,'Nordland','18',167,NULL),(2403,'Troms','19',167,NULL),(2404,'Finnmark','20',167,NULL),(2405,'Svalbard (Arctic Region)','21',167,NULL),(2406,'Jan Mayen (Arctic Region)','22',167,NULL),(2407,'Madhyamanchal','1',168,NULL),(2408,'Madhya Pashchimanchal','2',168,NULL),(2409,'Pashchimanchal','3',168,NULL),(2410,'Purwanchal','4',168,NULL),(2411,'Sudur Pashchimanchal','5',168,NULL),(2412,'Aiwo','01',169,NULL),(2413,'Anabar','02',169,NULL),(2414,'Anetan','03',169,NULL),(2415,'Anibare','04',169,NULL),(2416,'Baiti','05',169,NULL),(2417,'Boe','06',169,NULL),(2418,'Buada','07',169,NULL),(2419,'Denigomodu','08',169,NULL),(2420,'Ewa','09',169,NULL),(2421,'Ijuw','10',169,NULL),(2422,'Meneng','11',169,NULL),(2423,'Nibok','12',169,NULL),(2424,'Uaboe','13',169,NULL),(2425,'Yaren','14',169,NULL),(2426,'Chatham Islands Territory','CIT',171,NULL),(2427,'North Island','N',171,NULL),(2428,'South Island','S',171,NULL),(2429,'Al Bāţinah','BA',172,NULL),(2430,'Al Buraymī','BU',172,NULL),(2431,'Ad Dākhilīya','DA',172,NULL),(2432,'Masqaţ','MA',172,NULL),(2433,'Musandam','MU',172,NULL),(2434,'Ash Sharqīyah','SH',172,NULL),(2435,'Al Wusţá','WU',172,NULL),(2436,'Az̧ Z̧āhirah','ZA',172,NULL),(2437,'Z̧ufār','ZU',172,NULL),(2438,'Bocas del Toro','1',173,NULL),(2439,'Coclé','2',173,NULL),(2440,'Colón','3',173,NULL),(2441,'Chiriquí','4',173,NULL),(2442,'Darién','5',173,NULL),(2443,'Herrera','6',173,NULL),(2444,'Los Santos','7',173,NULL),(2445,'Panamá','8',173,NULL),(2446,'Veraguas','9',173,NULL),(2447,'Emberá','EM',173,NULL),(2448,'Kuna Yala','KY',173,NULL),(2449,'Ngöbe-Buglé','NB',173,NULL),(2450,'Amazonas','AMA',174,NULL),(2451,'Ancash','ANC',174,NULL),(2452,'Apurímac','APU',174,NULL),(2453,'Arequipa','ARE',174,NULL),(2454,'Ayacucho','AYA',174,NULL),(2455,'Cajamarca','CAJ',174,NULL),(2456,'El Callao','CAL',174,NULL),(2457,'Cusco [Cuzco]','CUS',174,NULL),(2458,'Huánuco','HUC',174,NULL),(2459,'Huancavelica','HUV',174,NULL),(2460,'Ica','ICA',174,NULL),(2461,'Junín','JUN',174,NULL),(2462,'La Libertad','LAL',174,NULL),(2463,'Lambayeque','LAM',174,NULL),(2464,'Lima','LIM',174,NULL),(2465,'Municipalidad Metropolitana de Lima','LMA',174,NULL),(2466,'Loreto','LOR',174,NULL),(2467,'Madre de Dios','MDD',174,NULL),(2468,'Moquegua','MOQ',174,NULL),(2469,'Pasco','PAS',174,NULL),(2470,'Piura','PIU',174,NULL),(2471,'Puno','PUN',174,NULL),(2472,'San Martín','SAM',174,NULL),(2473,'Tacna','TAC',174,NULL),(2474,'Tumbes','TUM',174,NULL),(2475,'Ucayali','UCA',174,NULL),(2476,'Chimbu','CPK',176,NULL),(2477,'Central','CPM',176,NULL),(2478,'East New Britain','EBR',176,NULL),(2479,'Eastern Highlands','EHG',176,NULL),(2480,'Enga','EPW',176,NULL),(2481,'East Sepik','ESW',176,NULL),(2482,'Gulf','GPK',176,NULL),(2483,'Milne Bay','MBA',176,NULL),(2484,'Morobe','MPL',176,NULL),(2485,'Madang','MPM',176,NULL),(2486,'Manus','MRL',176,NULL),(2487,'National Capital District (Port Moresby)','NCD',176,NULL),(2488,'New Ireland','NIK',176,NULL),(2489,'Northern','NPP',176,NULL),(2490,'Bougainville','NSB',176,NULL),(2491,'Sandaun','SAN',176,NULL),(2492,'Southern Highlands','SHM',176,NULL),(2493,'West New Britain','WBK',176,NULL),(2494,'Western Highlands','WHM',176,NULL),(2495,'Western','WPD',176,NULL),(2496,'National Capital Region','00',177,NULL),(2497,'Ilocos (Region I)','01',177,NULL),(2498,'Cagayan Valley (Region II)','02',177,NULL),(2499,'Central Luzon (Region III)','03',177,NULL),(2500,'Bicol (Region V)','05',177,NULL),(2501,'Western Visayas (Region VI)','06',177,NULL),(2502,'Central Visayas (Region VII)','07',177,NULL),(2503,'Eastern Visayas (Region VIII)','08',177,NULL),(2504,'Zamboanga Peninsula (Region IX)','09',177,NULL),(2505,'Northern Mindanao (Region X)','10',177,NULL),(2506,'Davao (Region XI)','11',177,NULL),(2507,'Soccsksargen (Region XII)','12',177,NULL),(2508,'Caraga (Region XIII)','13',177,NULL),(2509,'Autonomous Region in Muslim Mindanao (ARMM)','14',177,NULL),(2510,'Cordillera Administrative Region (CAR)','15',177,NULL),(2511,'CALABARZON (Region IV-A)','40',177,NULL),(2512,'MIMAROPA (Region IV-B)','41',177,NULL),(2513,'Balochistan','BA',178,NULL),(2514,'Gilgit-Baltistan','GB',178,NULL),(2515,'Islamabad','IS',178,NULL),(2516,'Azad Kashmir','JK',178,NULL),(2517,'Khyber Pakhtunkhwa','KP',178,NULL),(2518,'Punjab','PB',178,NULL),(2519,'Sindh','SD',178,NULL),(2520,'Federally Administered Tribal Areas','TA',178,NULL),(2521,'Dolnośląskie','DS',179,NULL),(2522,'Kujawsko-pomorskie','KP',179,NULL),(2523,'Lubuskie','LB',179,NULL),(2524,'Łódzkie','LD',179,NULL),(2525,'Lubelskie','LU',179,NULL),(2526,'Małopolskie','MA',179,NULL),(2527,'Mazowieckie','MZ',179,NULL),(2528,'Opolskie','OP',179,NULL),(2529,'Podlaskie','PD',179,NULL),(2530,'Podkarpackie','PK',179,NULL),(2531,'Pomorskie','PM',179,NULL),(2532,'Świętokrzyskie','SK',179,NULL),(2533,'Śląskie','SL',179,NULL),(2534,'Warmińsko-mazurskie','WN',179,NULL),(2535,'Wielkopolskie','WP',179,NULL),(2536,'Zachodniopomorskie','ZP',179,NULL),(2537,'Bethlehem','BTH',182,NULL),(2538,'Deir El Balah','DEB',182,NULL),(2539,'Gaza','GZA',182,NULL),(2540,'Hebron','HBN',182,NULL),(2541,'Jerusalem','JEM',182,NULL),(2542,'Jenin','JEN',182,NULL),(2543,'Jericho - Al Aghwar','JRH',182,NULL),(2544,'Khan Yunis','KYS',182,NULL),(2545,'Nablus','NBS',182,NULL),(2546,'North Gaza','NGZ',182,NULL),(2547,'Qalqilya','QQA',182,NULL),(2548,'Ramallah','RBH',182,NULL),(2549,'Rafah','RFH',182,NULL),(2550,'Salfit','SLT',182,NULL),(2551,'Tubas','TBS',182,NULL),(2552,'Tulkarm','TKM',182,NULL),(2553,'Aveiro','01',183,NULL),(2554,'Beja','02',183,NULL),(2555,'Braga','03',183,NULL),(2556,'Bragança','04',183,NULL),(2557,'Castelo Branco','05',183,NULL),(2558,'Coimbra','06',183,NULL),(2559,'Évora','07',183,NULL),(2560,'Faro','08',183,NULL),(2561,'Guarda','09',183,NULL),(2562,'Leiria','10',183,NULL),(2563,'Lisboa','11',183,NULL),(2564,'Portalegre','12',183,NULL),(2565,'Porto','13',183,NULL),(2566,'Santarém','14',183,NULL),(2567,'Setúbal','15',183,NULL),(2568,'Viana do Castelo','16',183,NULL),(2569,'Vila Real','17',183,NULL),(2570,'Viseu','18',183,NULL),(2571,'Região Autónoma dos Açores','20',183,NULL),(2572,'Região Autónoma da Madeira','30',183,NULL),(2573,'Aimeliik','002',184,NULL),(2574,'Airai','004',184,NULL),(2575,'Angaur','010',184,NULL),(2576,'Hatobohei','050',184,NULL),(2577,'Kayangel','100',184,NULL),(2578,'Koror','150',184,NULL),(2579,'Melekeok','212',184,NULL),(2580,'Ngaraard','214',184,NULL),(2581,'Ngarchelong','218',184,NULL),(2582,'Ngardmau','222',184,NULL),(2583,'Ngatpang','224',184,NULL),(2584,'Ngchesar','226',184,NULL),(2585,'Ngeremlengui','227',184,NULL),(2586,'Ngiwal','228',184,NULL),(2587,'Peleliu','350',184,NULL),(2588,'Sonsorol','370',184,NULL),(2589,'Concepción','1',185,NULL),(2590,'Alto Paraná','10',185,NULL),(2591,'Central','11',185,NULL),(2592,'Ñeembucú','12',185,NULL),(2593,'Amambay','13',185,NULL),(2594,'Canindeyú','14',185,NULL),(2595,'Presidente Hayes','15',185,NULL),(2596,'Alto Paraguay','16',185,NULL),(2597,'Boquerón','19',185,NULL),(2598,'San Pedro','2',185,NULL),(2599,'Cordillera','3',185,NULL),(2600,'Guairá','4',185,NULL),(2601,'Caaguazú','5',185,NULL),(2602,'Caazapá','6',185,NULL),(2603,'Itapúa','7',185,NULL),(2604,'Misiones','8',185,NULL),(2605,'Paraguarí','9',185,NULL),(2606,'Asunción','ASU',185,NULL),(2607,'Ad Dawhah','DA',186,NULL),(2608,'Al Khawr wa adh Dhakhīrah','KH',186,NULL),(2609,'Ash Shamal','MS',186,NULL),(2610,'Ar Rayyan','RA',186,NULL),(2611,'Umm Salal','US',186,NULL),(2612,'Al Wakrah','WA',186,NULL),(2613,'Az̧ Z̧a‘āyin','ZA',186,NULL),(2614,'Alba','AB',188,NULL),(2615,'Argeș','AG',188,NULL),(2616,'Arad','AR',188,NULL),(2617,'București','B',188,NULL),(2618,'Bacău','BC',188,NULL),(2619,'Bihor','BH',188,NULL),(2620,'Bistrița-Năsăud','BN',188,NULL),(2621,'Brăila','BR',188,NULL),(2622,'Botoșani','BT',188,NULL),(2623,'Brașov','BV',188,NULL),(2624,'Buzău','BZ',188,NULL),(2625,'Cluj','CJ',188,NULL),(2626,'Călărași','CL',188,NULL),(2627,'Caraș-Severin','CS',188,NULL),(2628,'Constanța','CT',188,NULL),(2629,'Covasna','CV',188,NULL),(2630,'Dâmbovița','DB',188,NULL),(2631,'Dolj','DJ',188,NULL),(2632,'Gorj','GJ',188,NULL),(2633,'Galați','GL',188,NULL),(2634,'Giurgiu','GR',188,NULL),(2635,'Hunedoara','HD',188,NULL),(2636,'Harghita','HR',188,NULL),(2637,'Ilfov','IF',188,NULL),(2638,'Ialomița','IL',188,NULL),(2639,'Iași','IS',188,NULL),(2640,'Mehedinți','MH',188,NULL),(2641,'Maramureș','MM',188,NULL),(2642,'Mureș','MS',188,NULL),(2643,'Neamț','NT',188,NULL),(2644,'Olt','OT',188,NULL),(2645,'Prahova','PH',188,NULL),(2646,'Sibiu','SB',188,NULL),(2647,'Sălaj','SJ',188,NULL),(2648,'Satu Mare','SM',188,NULL),(2649,'Suceava','SV',188,NULL),(2650,'Tulcea','TL',188,NULL),(2651,'Timiș','TM',188,NULL),(2652,'Teleorman','TR',188,NULL),(2653,'Vâlcea','VL',188,NULL),(2654,'Vrancea','VN',188,NULL),(2655,'Vaslui','VS',188,NULL),(2656,'Beograd','00',189,NULL),(2657,'Mačvanski okrug','08',189,NULL),(2658,'Kolubarski okrug','09',189,NULL),(2659,'Podunavski okrug','10',189,NULL),(2660,'Braničevski okrug','11',189,NULL),(2661,'Šumadijski okrug','12',189,NULL),(2662,'Pomoravski okrug','13',189,NULL),(2663,'Borski okrug','14',189,NULL),(2664,'Zaječarski okrug','15',189,NULL),(2665,'Zlatiborski okrug','16',189,NULL),(2666,'Moravički okrug','17',189,NULL),(2667,'Raški okrug','18',189,NULL),(2668,'Rasinski okrug','19',189,NULL),(2669,'Nišavski okrug','20',189,NULL),(2670,'Toplički okrug','21',189,NULL),(2671,'Pirotski okrug','22',189,NULL),(2672,'Jablanički okrug','23',189,NULL),(2673,'Pčinjski okrug','24',189,NULL),(2674,'Kosovo-Metohija','KM',189,NULL),(2675,'Vojvodina','VO',189,NULL),(2676,'Adygeya, Respublika','AD',190,NULL),(2677,'Altay, Respublika','AL',190,NULL),(2678,'Altayskiy kray','ALT',190,NULL),(2679,'Amurskaya oblast\'','AMU',190,NULL),(2680,'Arkhangel\'skaya oblast\'','ARK',190,NULL),(2681,'Astrakhanskaya oblast\'','AST',190,NULL),(2682,'Bashkortostan, Respublika','BA',190,NULL),(2683,'Belgorodskaya oblast\'','BEL',190,NULL),(2684,'Bryanskaya oblast\'','BRY',190,NULL),(2685,'Buryatiya, Respublika','BU',190,NULL),(2686,'Chechenskaya Respublika','CE',190,NULL),(2687,'Chelyabinskaya oblast\'','CHE',190,NULL),(2688,'Chukotskiy avtonomnyy okrug','CHU',190,NULL),(2689,'Chuvashskaya Respublika','CU',190,NULL),(2690,'Dagestan, Respublika','DA',190,NULL),(2691,'Respublika Ingushetiya','IN',190,NULL),(2692,'Irkutiskaya oblast\'','IRK',190,NULL),(2693,'Ivanovskaya oblast\'','IVA',190,NULL),(2694,'Kamchatskiy kray','KAM',190,NULL),(2695,'Kabardino-Balkarskaya Respublika','KB',190,NULL),(2696,'Karachayevo-Cherkesskaya Respublika','KC',190,NULL),(2697,'Krasnodarskiy kray','KDA',190,NULL),(2698,'Kemerovskaya oblast\'','KEM',190,NULL),(2699,'Kaliningradskaya oblast\'','KGD',190,NULL),(2700,'Kurganskaya oblast\'','KGN',190,NULL),(2701,'Khabarovskiy kray','KHA',190,NULL),(2702,'Khanty-Mansiysky avtonomnyy okrug-Yugra','KHM',190,NULL),(2703,'Kirovskaya oblast\'','KIR',190,NULL),(2704,'Khakasiya, Respublika','KK',190,NULL),(2705,'Kalmykiya, Respublika','KL',190,NULL),(2706,'Kaluzhskaya oblast\'','KLU',190,NULL),(2707,'Komi, Respublika','KO',190,NULL),(2708,'Kostromskaya oblast\'','KOS',190,NULL),(2709,'Kareliya, Respublika','KR',190,NULL),(2710,'Kurskaya oblast\'','KRS',190,NULL),(2711,'Krasnoyarskiy kray','KYA',190,NULL),(2712,'Leningradskaya oblast\'','LEN',190,NULL),(2713,'Lipetskaya oblast\'','LIP',190,NULL),(2714,'Magadanskaya oblast\'','MAG',190,NULL),(2715,'Mariy El, Respublika','ME',190,NULL),(2716,'Mordoviya, Respublika','MO',190,NULL),(2717,'Moskovskaya oblast\'','MOS',190,NULL),(2718,'Moskva','MOW',190,NULL),(2719,'Murmanskaya oblast\'','MUR',190,NULL),(2720,'Nenetskiy avtonomnyy okrug','NEN',190,NULL),(2721,'Novgorodskaya oblast\'','NGR',190,NULL),(2722,'Nizhegorodskaya oblast\'','NIZ',190,NULL),(2723,'Novosibirskaya oblast\'','NVS',190,NULL),(2724,'Omskaya oblast\'','OMS',190,NULL),(2725,'Orenburgskaya oblast\'','ORE',190,NULL),(2726,'Orlovskaya oblast\'','ORL',190,NULL),(2727,'Permskiy kray','PER',190,NULL),(2728,'Penzenskaya oblast\'','PNZ',190,NULL),(2729,'Primorskiy kray','PRI',190,NULL),(2730,'Pskovskaya oblast\'','PSK',190,NULL),(2731,'Rostovskaya oblast\'','ROS',190,NULL),(2732,'Ryazanskaya oblast\'','RYA',190,NULL),(2733,'Sakha, Respublika [Yakutiya]','SA',190,NULL),(2734,'Sakhalinskaya oblast\'','SAK',190,NULL),(2735,'Samaraskaya oblast\'','SAM',190,NULL),(2736,'Saratovskaya oblast\'','SAR',190,NULL),(2737,'Severnaya Osetiya-Alaniya, Respublika','SE',190,NULL),(2738,'Smolenskaya oblast\'','SMO',190,NULL),(2739,'Sankt-Peterburg','SPE',190,NULL),(2740,'Stavropol\'skiy kray','STA',190,NULL),(2741,'Sverdlovskaya oblast\'','SVE',190,NULL),(2742,'Tatarstan, Respublika','TA',190,NULL),(2743,'Tambovskaya oblast\'','TAM',190,NULL),(2744,'Tomskaya oblast\'','TOM',190,NULL),(2745,'Tul\'skaya oblast\'','TUL',190,NULL),(2746,'Tverskaya oblast\'','TVE',190,NULL),(2747,'Tyva, Respublika [Tuva]','TY',190,NULL),(2748,'Tyumenskaya oblast\'','TYU',190,NULL),(2749,'Udmurtskaya Respublika','UD',190,NULL),(2750,'Ul\'yanovskaya oblast\'','ULY',190,NULL),(2751,'Volgogradskaya oblast\'','VGG',190,NULL),(2752,'Vladimirskaya oblast\'','VLA',190,NULL),(2753,'Vologodskaya oblast\'','VLG',190,NULL),(2754,'Voronezhskaya oblast\'','VOR',190,NULL),(2755,'Yamalo-Nenetskiy avtonomnyy okrug','YAN',190,NULL),(2756,'Yaroslavskaya oblast\'','YAR',190,NULL),(2757,'Yevreyskaya avtonomnaya oblast\'','YEV',190,NULL),(2758,'Zabajkal\'skij kraj','ZAB',190,NULL),(2759,'Ville de Kigali','01',191,NULL),(2760,'Est','02',191,NULL),(2761,'Nord','03',191,NULL),(2762,'Ouest','04',191,NULL),(2763,'Sud','05',191,NULL),(2764,'Ar Riyāḍ','01',192,NULL),(2765,'Makkah','02',192,NULL),(2766,'Al Madīnah','03',192,NULL),(2767,'Ash Sharqīyah','04',192,NULL),(2768,'Al Qaşīm','05',192,NULL),(2769,'Ḥā\'il','06',192,NULL),(2770,'Tabūk','07',192,NULL),(2771,'Al Ḥudūd ash Shamāliyah','08',192,NULL),(2772,'Jīzan','09',192,NULL),(2773,'Najrān','10',192,NULL),(2774,'Al Bāhah','11',192,NULL),(2775,'Al Jawf','12',192,NULL),(2776,'`Asīr','14',192,NULL),(2777,'Central','CE',193,NULL),(2778,'Choiseul','CH',193,NULL),(2779,'Capital Territory (Honiara)','CT',193,NULL),(2780,'Guadalcanal','GU',193,NULL),(2781,'Isabel','IS',193,NULL),(2782,'Makira','MK',193,NULL),(2783,'Malaita','ML',193,NULL),(2784,'Rennell and Bellona','RB',193,NULL),(2785,'Temotu','TE',193,NULL),(2786,'Western','WE',193,NULL),(2787,'Anse aux Pins','01',194,NULL),(2788,'Anse Boileau','02',194,NULL),(2789,'Anse Etoile','03',194,NULL),(2790,'Anse Louis','04',194,NULL),(2791,'Anse Royale','05',194,NULL),(2792,'Baie Lazare','06',194,NULL),(2793,'Baie Sainte Anne','07',194,NULL),(2794,'Beau Vallon','08',194,NULL),(2795,'Bel Air','09',194,NULL),(2796,'Bel Ombre','10',194,NULL),(2797,'Cascade','11',194,NULL),(2798,'Glacis','12',194,NULL),(2799,'Grand Anse Mahe','13',194,NULL),(2800,'Grand Anse Praslin','14',194,NULL),(2801,'La Digue','15',194,NULL),(2802,'English River','16',194,NULL),(2803,'Mont Buxton','17',194,NULL),(2804,'Mont Fleuri','18',194,NULL),(2805,'Plaisance','19',194,NULL),(2806,'Pointe Larue','20',194,NULL),(2807,'Port Glaud','21',194,NULL),(2808,'Saint Louis','22',194,NULL),(2809,'Takamaka','23',194,NULL),(2810,'Les Mamelles','24',194,NULL),(2811,'Roche Caiman','25',194,NULL),(2812,'Zalingei','DC',195,NULL),(2813,'Sharq Dārfūr','DE',195,NULL),(2814,'Shamāl Dārfūr','DN',195,NULL),(2815,'Janūb Dārfūr','DS',195,NULL),(2816,'Gharb Dārfūr','DW',195,NULL),(2817,'Al Qaḑārif','GD',195,NULL),(2818,'Al Jazīrah','GZ',195,NULL),(2819,'Kassalā','KA',195,NULL),(2820,'Al Kharţūm','KH',195,NULL),(2821,'Shamāl Kurdufān','KN',195,NULL),(2822,'Janūb Kurdufān','KS',195,NULL),(2823,'An Nīl al Azraq','NB',195,NULL),(2824,'Ash Shamālīyah','NO',195,NULL),(2825,'An Nīl','NR',195,NULL),(2826,'An Nīl al Abyaḑ','NW',195,NULL),(2827,'Al Baḩr al Aḩmar','RS',195,NULL),(2828,'Sinnār','SI',195,NULL),(2829,'Stockholms län','AB',196,NULL),(2830,'Västerbottens län','AC',196,NULL),(2831,'Norrbottens län','BD',196,NULL),(2832,'Uppsala län','C',196,NULL),(2833,'Södermanlands län','D',196,NULL),(2834,'Östergötlands län','E',196,NULL),(2835,'Jönköpings län','F',196,NULL),(2836,'Kronobergs län','G',196,NULL),(2837,'Kalmar län','H',196,NULL),(2838,'Gotlands län','I',196,NULL),(2839,'Blekinge län','K',196,NULL),(2840,'Skåne län','M',196,NULL),(2841,'Hallands län','N',196,NULL),(2842,'Västra Götalands län','O',196,NULL),(2843,'Värmlands län','S',196,NULL),(2844,'Örebro län','T',196,NULL),(2845,'Västmanlands län','U',196,NULL),(2846,'Dalarnas län','W',196,NULL),(2847,'Gävleborgs län','X',196,NULL),(2848,'Västernorrlands län','Y',196,NULL),(2849,'Jämtlands län','Z',196,NULL),(2850,'Central Singapore','01',197,NULL),(2851,'North East','02',197,NULL),(2852,'North West','03',197,NULL),(2853,'South East','04',197,NULL),(2854,'South West','05',197,NULL),(2855,'Ascension','AC',198,NULL),(2856,'Saint Helena','HL',198,NULL),(2857,'Tristan da Cunha','TA',198,NULL),(2858,'Ajdovščina','001',199,NULL),(2859,'Beltinci','002',199,NULL),(2860,'Bled','003',199,NULL),(2861,'Bohinj','004',199,NULL),(2862,'Borovnica','005',199,NULL),(2863,'Bovec','006',199,NULL),(2864,'Brda','007',199,NULL),(2865,'Brezovica','008',199,NULL),(2866,'Brežice','009',199,NULL),(2867,'Tišina','010',199,NULL),(2868,'Celje','011',199,NULL),(2869,'Cerklje na Gorenjskem','012',199,NULL),(2870,'Cerknica','013',199,NULL),(2871,'Cerkno','014',199,NULL),(2872,'Črenšovci','015',199,NULL),(2873,'Črna na Koroškem','016',199,NULL),(2874,'Črnomelj','017',199,NULL),(2875,'Destrnik','018',199,NULL),(2876,'Divača','019',199,NULL),(2877,'Dobrepolje','020',199,NULL),(2878,'Dobrova-Polhov Gradec','021',199,NULL),(2879,'Dol pri Ljubljani','022',199,NULL),(2880,'Domžale','023',199,NULL),(2881,'Dornava','024',199,NULL),(2882,'Dravograd','025',199,NULL),(2883,'Duplek','026',199,NULL),(2884,'Gorenja vas-Poljane','027',199,NULL),(2885,'Gorišnica','028',199,NULL),(2886,'Gornja Radgona','029',199,NULL),(2887,'Gornji Grad','030',199,NULL),(2888,'Gornji Petrovci','031',199,NULL),(2889,'Grosuplje','032',199,NULL),(2890,'Šalovci','033',199,NULL),(2891,'Hrastnik','034',199,NULL),(2892,'Hrpelje-Kozina','035',199,NULL),(2893,'Idrija','036',199,NULL),(2894,'Ig','037',199,NULL),(2895,'Ilirska Bistrica','038',199,NULL),(2896,'Ivančna Gorica','039',199,NULL),(2897,'Izola/Isola','040',199,NULL),(2898,'Jesenice','041',199,NULL),(2899,'Juršinci','042',199,NULL),(2900,'Kamnik','043',199,NULL),(2901,'Kanal','044',199,NULL),(2902,'Kidričevo','045',199,NULL),(2903,'Kobarid','046',199,NULL),(2904,'Kobilje','047',199,NULL),(2905,'Kočevje','048',199,NULL),(2906,'Komen','049',199,NULL),(2907,'Koper/Capodistria','050',199,NULL),(2908,'Kozje','051',199,NULL),(2909,'Kranj','052',199,NULL),(2910,'Kranjska Gora','053',199,NULL),(2911,'Krško','054',199,NULL),(2912,'Kungota','055',199,NULL),(2913,'Kuzma','056',199,NULL),(2914,'Laško','057',199,NULL),(2915,'Lenart','058',199,NULL),(2916,'Lendava/Lendva','059',199,NULL),(2917,'Litija','060',199,NULL),(2918,'Ljubljana','061',199,NULL),(2919,'Ljubno','062',199,NULL),(2920,'Ljutomer','063',199,NULL),(2921,'Logatec','064',199,NULL),(2922,'Loška dolina','065',199,NULL),(2923,'Loški Potok','066',199,NULL),(2924,'Luče','067',199,NULL),(2925,'Lukovica','068',199,NULL),(2926,'Majšperk','069',199,NULL),(2927,'Maribor','070',199,NULL),(2928,'Medvode','071',199,NULL),(2929,'Mengeš','072',199,NULL),(2930,'Metlika','073',199,NULL),(2931,'Mežica','074',199,NULL),(2932,'Miren-Kostanjevica','075',199,NULL),(2933,'Mislinja','076',199,NULL),(2934,'Moravče','077',199,NULL),(2935,'Moravske Toplice','078',199,NULL),(2936,'Mozirje','079',199,NULL),(2937,'Murska Sobota','080',199,NULL),(2938,'Muta','081',199,NULL),(2939,'Naklo','082',199,NULL),(2940,'Nazarje','083',199,NULL),(2941,'Nova Gorica','084',199,NULL),(2942,'Novo mesto','085',199,NULL),(2943,'Odranci','086',199,NULL),(2944,'Ormož','087',199,NULL),(2945,'Osilnica','088',199,NULL),(2946,'Pesnica','089',199,NULL),(2947,'Piran/Pirano','090',199,NULL),(2948,'Pivka','091',199,NULL),(2949,'Podčetrtek','092',199,NULL),(2950,'Podvelka','093',199,NULL),(2951,'Postojna','094',199,NULL),(2952,'Preddvor','095',199,NULL),(2953,'Ptuj','096',199,NULL),(2954,'Puconci','097',199,NULL),(2955,'Rače-Fram','098',199,NULL),(2956,'Radeče','099',199,NULL),(2957,'Radenci','100',199,NULL),(2958,'Radlje ob Dravi','101',199,NULL),(2959,'Radovljica','102',199,NULL),(2960,'Ravne na Koroškem','103',199,NULL),(2961,'Ribnica','104',199,NULL),(2962,'Rogašovci','105',199,NULL),(2963,'Rogaška Slatina','106',199,NULL),(2964,'Rogatec','107',199,NULL),(2965,'Ruše','108',199,NULL),(2966,'Semič','109',199,NULL),(2967,'Sevnica','110',199,NULL),(2968,'Sežana','111',199,NULL),(2969,'Slovenj Gradec','112',199,NULL),(2970,'Slovenska Bistrica','113',199,NULL),(2971,'Slovenske Konjice','114',199,NULL),(2972,'Starče','115',199,NULL),(2973,'Sveti Jurij','116',199,NULL),(2974,'Šenčur','117',199,NULL),(2975,'Šentilj','118',199,NULL),(2976,'Šentjernej','119',199,NULL),(2977,'Šentjur','120',199,NULL),(2978,'Škocjan','121',199,NULL),(2979,'Škofja Loka','122',199,NULL),(2980,'Škofljica','123',199,NULL),(2981,'Šmarje pri Jelšah','124',199,NULL),(2982,'Šmartno ob Paki','125',199,NULL),(2983,'Šoštanj','126',199,NULL),(2984,'Štore','127',199,NULL),(2985,'Tolmin','128',199,NULL),(2986,'Trbovlje','129',199,NULL),(2987,'Trebnje','130',199,NULL),(2988,'Tržič','131',199,NULL),(2989,'Turnišče','132',199,NULL),(2990,'Velenje','133',199,NULL),(2991,'Velike Lašče','134',199,NULL),(2992,'Videm','135',199,NULL),(2993,'Vipava','136',199,NULL),(2994,'Vitanje','137',199,NULL),(2995,'Vodice','138',199,NULL),(2996,'Vojnik','139',199,NULL),(2997,'Vrhnika','140',199,NULL),(2998,'Vuzenica','141',199,NULL),(2999,'Zagorje ob Savi','142',199,NULL),(3000,'Zavrč','143',199,NULL),(3001,'Zreče','144',199,NULL),(3002,'Železniki','146',199,NULL),(3003,'Žiri','147',199,NULL),(3004,'Benedikt','148',199,NULL),(3005,'Bistrica ob Sotli','149',199,NULL),(3006,'Bloke','150',199,NULL),(3007,'Braslovče','151',199,NULL),(3008,'Cankova','152',199,NULL),(3009,'Cerkvenjak','153',199,NULL),(3010,'Dobje','154',199,NULL),(3011,'Dobrna','155',199,NULL),(3012,'Dobrovnik/Dobronak','156',199,NULL),(3013,'Dolenjske Toplice','157',199,NULL),(3014,'Grad','158',199,NULL),(3015,'Hajdina','159',199,NULL),(3016,'Hoče-Slivnica','160',199,NULL),(3017,'Hodoš/Hodos','161',199,NULL),(3018,'Horjul','162',199,NULL),(3019,'Jezersko','163',199,NULL),(3020,'Komenda','164',199,NULL),(3021,'Kostel','165',199,NULL),(3022,'Križevci','166',199,NULL),(3023,'Lovrenc na Pohorju','167',199,NULL),(3024,'Markovci','168',199,NULL),(3025,'Miklavž na Dravskem polju','169',199,NULL),(3026,'Mirna Peč','170',199,NULL),(3027,'Oplotnica','171',199,NULL),(3028,'Podlehnik','172',199,NULL),(3029,'Polzela','173',199,NULL),(3030,'Prebold','174',199,NULL),(3031,'Prevalje','175',199,NULL),(3032,'Razkrižje','176',199,NULL),(3033,'Ribnica na Pohorju','177',199,NULL),(3034,'Selnica ob Dravi','178',199,NULL),(3035,'Sodražica','179',199,NULL),(3036,'Solčava','180',199,NULL),(3037,'Sveta Ana','181',199,NULL),(3038,'Sveta Andraž v Slovenskih Goricah','182',199,NULL),(3039,'Šempeter-Vrtojba','183',199,NULL),(3040,'Tabor','184',199,NULL),(3041,'Trnovska vas','185',199,NULL),(3042,'Trzin','186',199,NULL),(3043,'Velika Polana','187',199,NULL),(3044,'Veržej','188',199,NULL),(3045,'Vransko','189',199,NULL),(3046,'Žalec','190',199,NULL),(3047,'Žetale','191',199,NULL),(3048,'Žirovnica','192',199,NULL),(3049,'Žužemberk','193',199,NULL),(3050,'Šmartno pri Litiji','194',199,NULL),(3051,'Apače','195',199,NULL),(3052,'Cirkulane','196',199,NULL),(3053,'Kosanjevica na Krki','197',199,NULL),(3054,'Makole','198',199,NULL),(3055,'Mokronog-Trebelno','199',199,NULL),(3056,'Poljčane','200',199,NULL),(3057,'Renče-Vogrsko','201',199,NULL),(3058,'Središče ob Dravi','202',199,NULL),(3059,'Straža','203',199,NULL),(3060,'Sveta Trojica v Slovenskih Goricah','204',199,NULL),(3061,'Sveti Tomaž','205',199,NULL),(3062,'Šmarjeske Topliče','206',199,NULL),(3063,'Gorje','207',199,NULL),(3064,'Log-Dragomer','208',199,NULL),(3065,'Rečica ob Savinji','209',199,NULL),(3066,'Sveti Jurij v Slovenskih Goricah','210',199,NULL),(3067,'Šentrupert','211',199,NULL),(3068,'Banskobystrický kraj','BC',201,NULL),(3069,'Bratislavský kraj','BL',201,NULL),(3070,'Košický kraj','KI',201,NULL),(3071,'Nitriansky kraj','NI',201,NULL),(3072,'Prešovský kraj','PV',201,NULL),(3073,'Trnavský kraj','TA',201,NULL),(3074,'Trenčiansky kraj','TC',201,NULL),(3075,'Žilinský kraj','ZI',201,NULL),(3076,'Eastern','E',202,NULL),(3077,'Northern','N',202,NULL),(3078,'Southern (Sierra Leone)','S',202,NULL),(3079,'Western Area (Freetown)','W',202,NULL),(3080,'Acquaviva','01',203,NULL),(3081,'Chiesanuova','02',203,NULL),(3082,'Domagnano','03',203,NULL),(3083,'Faetano','04',203,NULL),(3084,'Fiorentino','05',203,NULL),(3085,'Borgo Maggiore','06',203,NULL),(3086,'San Marino','07',203,NULL),(3087,'Montegiardino','08',203,NULL),(3088,'Serravalle','09',203,NULL),(3089,'Diourbel','DB',204,NULL),(3090,'Dakar','DK',204,NULL),(3091,'Fatick','FK',204,NULL),(3092,'Kaffrine','KA',204,NULL),(3093,'Kolda','KD',204,NULL),(3094,'Kédougou','KE',204,NULL),(3095,'Kaolack','KL',204,NULL),(3096,'Louga','LG',204,NULL),(3097,'Matam','MT',204,NULL),(3098,'Sédhiou','SE',204,NULL),(3099,'Saint-Louis','SL',204,NULL),(3100,'Tambacounda','TC',204,NULL),(3101,'Thiès','TH',204,NULL),(3102,'Ziguinchor','ZG',204,NULL),(3103,'Awdal','AW',205,NULL),(3104,'Bakool','BK',205,NULL),(3105,'Banaadir','BN',205,NULL),(3106,'Bari','BR',205,NULL),(3107,'Bay','BY',205,NULL),(3108,'Galguduud','GA',205,NULL),(3109,'Gedo','GE',205,NULL),(3110,'Hiirsan','HI',205,NULL),(3111,'Jubbada Dhexe','JD',205,NULL),(3112,'Jubbada Hoose','JH',205,NULL),(3113,'Mudug','MU',205,NULL),(3114,'Nugaal','NU',205,NULL),(3115,'Saneag','SA',205,NULL),(3116,'Shabeellaha Dhexe','SD',205,NULL),(3117,'Shabeellaha Hoose','SH',205,NULL),(3118,'Sool','SO',205,NULL),(3119,'Togdheer','TO',205,NULL),(3120,'Woqooyi Galbeed','WO',205,NULL),(3121,'Brokopondo','BR',206,NULL),(3122,'Commewijne','CM',206,NULL),(3123,'Coronie','CR',206,NULL),(3124,'Marowijne','MA',206,NULL),(3125,'Nickerie','NI',206,NULL),(3126,'Paramaribo','PM',206,NULL),(3127,'Para','PR',206,NULL),(3128,'Saramacca','SA',206,NULL),(3129,'Sipaliwini','SI',206,NULL),(3130,'Wanica','WA',206,NULL),(3131,'Northern Bahr el-Ghazal','BN',207,NULL),(3132,'Western Bahr el-Ghazal','BW',207,NULL),(3133,'Central Equatoria','EC',207,NULL),(3134,'Eastern Equatoria','EE8',207,NULL),(3135,'Western Equatoria','EW',207,NULL),(3136,'Jonglei','JG',207,NULL),(3137,'Lakes','LK',207,NULL),(3138,'Upper Nile','NU',207,NULL),(3139,'Unity','UY',207,NULL),(3140,'Warrap','WR',207,NULL),(3141,'Príncipe','P',208,NULL),(3142,'São Tomé','S',208,NULL),(3143,'Ahuachapán','AH',209,NULL),(3144,'Cabañas','CA',209,NULL),(3145,'Chalatenango','CH',209,NULL),(3146,'Cuscatlán','CU',209,NULL),(3147,'La Libertad','LI',209,NULL),(3148,'Morazán','MO',209,NULL),(3149,'La Paz','PA',209,NULL),(3150,'Santa Ana','SA',209,NULL),(3151,'San Miguel','SM',209,NULL),(3152,'Sonsonate','SO',209,NULL),(3153,'San Salvador','SS',209,NULL),(3154,'San Vicente','SV',209,NULL),(3155,'La Unión','UN',209,NULL),(3156,'Usulután','US',209,NULL),(3157,'Dimashq','DI',211,NULL),(3158,'Dar\'a','DR',211,NULL),(3159,'Dayr az Zawr','DY',211,NULL),(3160,'Al Hasakah','HA',211,NULL),(3161,'Homs','HI',211,NULL),(3162,'Halab','HL',211,NULL),(3163,'Hamah','HM',211,NULL),(3164,'Idlib','ID',211,NULL),(3165,'Al Ladhiqiyah','LA',211,NULL),(3166,'Al Qunaytirah','QU',211,NULL),(3167,'Ar Raqqah','RA',211,NULL),(3168,'Rif Dimashq','RD',211,NULL),(3169,'As Suwayda\'','SU',211,NULL),(3170,'Tartus','TA',211,NULL),(3171,'Hhohho','HH',212,NULL),(3172,'Lubombo','LU',212,NULL),(3173,'Manzini','MA',212,NULL),(3174,'Shiselweni','SH',212,NULL),(3175,'Al Baṭḩah','BA',214,NULL),(3176,'Baḩr al Ghazāl','BG',214,NULL),(3177,'Būrkū','BO',214,NULL),(3178,'Shārī Bāqirmī','CB',214,NULL),(3179,'Innīdī','EN',214,NULL),(3180,'Qīrā','GR',214,NULL),(3181,'Ḥajjar Lamīs','HL',214,NULL),(3182,'Kānim','KA',214,NULL),(3183,'Al Buḩayrah','LC',214,NULL),(3184,'Lūqūn al Gharbī','LO',214,NULL),(3185,'Lūqūn ash Sharqī','LR',214,NULL),(3186,'Māndūl','MA',214,NULL),(3187,'Shārī al Awsaṭ','MC',214,NULL),(3188,'Māyū Kībbī ash Sharqī','ME',214,NULL),(3189,'Māyū Kībbī al Gharbī','MO',214,NULL),(3190,'Madīnat Injamīnā','ND',214,NULL),(3191,'Waddāy','OD',214,NULL),(3192,'Salāmāt','SA',214,NULL),(3193,'Sīlā','SI',214,NULL),(3194,'Tānjilī','TA',214,NULL),(3195,'Tibastī','TI',214,NULL),(3196,'Wādī Fīrā','WF',214,NULL),(3197,'Région du Centre','C',216,NULL),(3198,'Région de la Kara','K',216,NULL),(3199,'Région Maritime','M',216,NULL),(3200,'Région des Plateaux','P',216,NULL),(3201,'Région des Savannes','S',216,NULL),(3202,'Krung Thep Maha Nakhon Bangkok','10',217,NULL),(3203,'Samut Prakan','11',217,NULL),(3204,'Nonthaburi','12',217,NULL),(3205,'Pathum Thani','13',217,NULL),(3206,'Phra Nakhon Si Ayutthaya','14',217,NULL),(3207,'Ang Thong','15',217,NULL),(3208,'Lop Buri','16',217,NULL),(3209,'Sing Buri','17',217,NULL),(3210,'Chai Nat','18',217,NULL),(3211,'Saraburi','19',217,NULL),(3212,'Chon Buri','20',217,NULL),(3213,'Rayong','21',217,NULL),(3214,'Chanthaburi','22',217,NULL),(3215,'Trat','23',217,NULL),(3216,'Chachoengsao','24',217,NULL),(3217,'Prachin Buri','25',217,NULL),(3218,'Nakhon Nayok','26',217,NULL),(3219,'Sa Kaeo','27',217,NULL),(3220,'Nakhon Ratchasima','30',217,NULL),(3221,'Buri Ram','31',217,NULL),(3222,'Surin','32',217,NULL),(3223,'Si Sa Ket','33',217,NULL),(3224,'Ubon Ratchathani','34',217,NULL),(3225,'Yasothon','35',217,NULL),(3226,'Chaiyaphum','36',217,NULL),(3227,'Amnat Charoen','37',217,NULL),(3228,'Nong Bua Lam Phu','39',217,NULL),(3229,'Khon Kaen','40',217,NULL),(3230,'Udon Thani','41',217,NULL),(3231,'Loei','42',217,NULL),(3232,'Nong Khai','43',217,NULL),(3233,'Maha Sarakham','44',217,NULL),(3234,'Roi Et','45',217,NULL),(3235,'Kalasin','46',217,NULL),(3236,'Sakon Nakhon','47',217,NULL),(3237,'Nakhon Phanom','48',217,NULL),(3238,'Mukdahan','49',217,NULL),(3239,'Chiang Mai','50',217,NULL),(3240,'Lamphun','51',217,NULL),(3241,'Lampang','52',217,NULL),(3242,'Uttaradit','53',217,NULL),(3243,'Phrae','54',217,NULL),(3244,'Nan','55',217,NULL),(3245,'Phayao','56',217,NULL),(3246,'Chiang Rai','57',217,NULL),(3247,'Mae Hong Son','58',217,NULL),(3248,'Nakhon Sawan','60',217,NULL),(3249,'Uthai Thani','61',217,NULL),(3250,'Kamphaeng Phet','62',217,NULL),(3251,'Tak','63',217,NULL),(3252,'Sukhothai','64',217,NULL),(3253,'Phitsanulok','65',217,NULL),(3254,'Phichit','66',217,NULL),(3255,'Phetchabun','67',217,NULL),(3256,'Ratchaburi','70',217,NULL),(3257,'Kanchanaburi','71',217,NULL),(3258,'Suphan Buri','72',217,NULL),(3259,'Nakhon Pathom','73',217,NULL),(3260,'Samut Sakhon','74',217,NULL),(3261,'Samut Songkhram','75',217,NULL),(3262,'Phetchaburi','76',217,NULL),(3263,'Prachuap Khiri Khan','77',217,NULL),(3264,'Nakhon Si Thammarat','80',217,NULL),(3265,'Krabi','81',217,NULL),(3266,'Phangnga','82',217,NULL),(3267,'Phuket','83',217,NULL),(3268,'Surat Thani','84',217,NULL),(3269,'Ranong','85',217,NULL),(3270,'Chumphon','86',217,NULL),(3271,'Songkhla','90',217,NULL),(3272,'Satun','91',217,NULL),(3273,'Trang','92',217,NULL),(3274,'Phatthalung','93',217,NULL),(3275,'Pattani','94',217,NULL),(3276,'Yala','95',217,NULL),(3277,'Narathiwat','96',217,NULL),(3278,'Phatthaya','S',217,NULL),(3279,'Gorno-Badakhshan','GB',218,NULL),(3280,'Khatlon','KT',218,NULL),(3281,'Sughd','SU',218,NULL),(3282,'Aileu','AL',220,NULL),(3283,'Ainaro','AN',220,NULL),(3284,'Baucau','BA',220,NULL),(3285,'Bobonaro','BO',220,NULL),(3286,'Cova Lima','CO',220,NULL),(3287,'Díli','DI',220,NULL),(3288,'Ermera','ER',220,NULL),(3289,'Lautem','LA',220,NULL),(3290,'Liquiça','LI',220,NULL),(3291,'Manufahi','MF',220,NULL),(3292,'Manatuto','MT',220,NULL),(3293,'Oecussi','OE',220,NULL),(3294,'Viqueque','VI',220,NULL),(3295,'Ahal','A',221,NULL),(3296,'Balkan','B',221,NULL),(3297,'Daşoguz','D',221,NULL),(3298,'Lebap','L',221,NULL),(3299,'Mary','M',221,NULL),(3300,'Aşgabat','S',221,NULL),(3301,'Tunis','11',222,NULL),(3302,'Ariana','12',222,NULL),(3303,'Ben Arous','13',222,NULL),(3304,'La Manouba','14',222,NULL),(3305,'Nabeul','21',222,NULL),(3306,'Zaghouan','22',222,NULL),(3307,'Bizerte','23',222,NULL),(3308,'Béja','31',222,NULL),(3309,'Jendouba','32',222,NULL),(3310,'Le Kef','33',222,NULL),(3311,'Siliana','34',222,NULL),(3312,'Kairouan','41',222,NULL),(3313,'Kasserine','42',222,NULL),(3314,'Sidi Bouzid','43',222,NULL),(3315,'Sousse','51',222,NULL),(3316,'Monastir','52',222,NULL),(3317,'Mahdia','53',222,NULL),(3318,'Sfax','61',222,NULL),(3319,'Gafsa','71',222,NULL),(3320,'Tozeur','72',222,NULL),(3321,'Kebili','73',222,NULL),(3322,'Gabès','81',222,NULL),(3323,'Medenine','82',222,NULL),(3324,'Tataouine','83',222,NULL),(3325,'\'Eua','01',223,NULL),(3326,'Ha\'apai','02',223,NULL),(3327,'Niuas','03',223,NULL),(3328,'Tongatapu','04',223,NULL),(3329,'Vava\'u','05',223,NULL),(3330,'Adana','01',224,NULL),(3331,'Adıyaman','02',224,NULL),(3332,'Afyonkarahisar','03',224,NULL),(3333,'Ağrı','04',224,NULL),(3334,'Amasya','05',224,NULL),(3335,'Ankara','06',224,NULL),(3336,'Antalya','07',224,NULL),(3337,'Artvin','08',224,NULL),(3338,'Aydın','09',224,NULL),(3339,'Balıkesir','10',224,NULL),(3340,'Bilecik','11',224,NULL),(3341,'Bingöl','12',224,NULL),(3342,'Bitlis','13',224,NULL),(3343,'Bolu','14',224,NULL),(3344,'Burdur','15',224,NULL),(3345,'Bursa','16',224,NULL),(3346,'Çanakkale','17',224,NULL),(3347,'Çankırı','18',224,NULL),(3348,'Çorum','19',224,NULL),(3349,'Denizli','20',224,NULL),(3350,'Diyarbakır','21',224,NULL),(3351,'Edirne','22',224,NULL),(3352,'Elazığ','23',224,NULL),(3353,'Erzincan','24',224,NULL),(3354,'Erzurum','25',224,NULL),(3355,'Eskişehir','26',224,NULL),(3356,'Gaziantep','27',224,NULL),(3357,'Giresun','28',224,NULL),(3358,'Gümüşhane','29',224,NULL),(3359,'Hakkâri','30',224,NULL),(3360,'Hatay','31',224,NULL),(3361,'Isparta','32',224,NULL),(3362,'Mersin','33',224,NULL),(3363,'İstanbul','34',224,NULL),(3364,'İzmir','35',224,NULL),(3365,'Kars','36',224,NULL),(3366,'Kastamonu','37',224,NULL),(3367,'Kayseri','38',224,NULL),(3368,'Kırklareli','39',224,NULL),(3369,'Kırşehir','40',224,NULL),(3370,'Kocaeli','41',224,NULL),(3371,'Konya','42',224,NULL),(3372,'Kütahya','43',224,NULL),(3373,'Malatya','44',224,NULL),(3374,'Manisa','45',224,NULL),(3375,'Kahramanmaraş','46',224,NULL),(3376,'Mardin','47',224,NULL),(3377,'Muğla','48',224,NULL),(3378,'Muş','49',224,NULL),(3379,'Nevşehir','50',224,NULL),(3380,'Niğde','51',224,NULL),(3381,'Ordu','52',224,NULL),(3382,'Rize','53',224,NULL),(3383,'Sakarya','54',224,NULL),(3384,'Samsun','55',224,NULL),(3385,'Siirt','56',224,NULL),(3386,'Sinop','57',224,NULL),(3387,'Sivas','58',224,NULL),(3388,'Tekirdağ','59',224,NULL),(3389,'Tokat','60',224,NULL),(3390,'Trabzon','61',224,NULL),(3391,'Tunceli','62',224,NULL),(3392,'Şanlıurfa','63',224,NULL),(3393,'Uşak','64',224,NULL),(3394,'Van','65',224,NULL),(3395,'Yozgat','66',224,NULL),(3396,'Zonguldak','67',224,NULL),(3397,'Aksaray','68',224,NULL),(3398,'Bayburt','69',224,NULL),(3399,'Karaman','70',224,NULL),(3400,'Kırıkkale','71',224,NULL),(3401,'Batman','72',224,NULL),(3402,'Şırnak','73',224,NULL),(3403,'Bartın','74',224,NULL),(3404,'Ardahan','75',224,NULL),(3405,'Iğdır','76',224,NULL),(3406,'Yalova','77',224,NULL),(3407,'Karabük','78',224,NULL),(3408,'Kilis','79',224,NULL),(3409,'Osmaniye','80',224,NULL),(3410,'Düzce','81',224,NULL),(3411,'Arima','ARI',225,NULL),(3412,'Chaguanas','CHA',225,NULL),(3413,'Couva-Tabaquite-Talparo','CTT',225,NULL),(3414,'Diego Martin','DMN',225,NULL),(3415,'Eastern Tobago','ETO',225,NULL),(3416,'Penal-Debe','PED',225,NULL),(3417,'Port of Spain','POS',225,NULL),(3418,'Princes Town','PRT',225,NULL),(3419,'Point Fortin','PTF',225,NULL),(3420,'Rio Claro-Mayaro','RCM',225,NULL),(3421,'San Fernando','SFO',225,NULL),(3422,'Sangre Grande','SGE',225,NULL),(3423,'Siparia','SIP',225,NULL),(3424,'San Juan-Laventille','SJL',225,NULL),(3425,'Tunapuna-Piarco','TUP',225,NULL),(3426,'Western Tobago','WTO',225,NULL),(3427,'Funafuti','FUN',226,NULL),(3428,'Niutao','NIT',226,NULL),(3429,'Nukufetau','NKF',226,NULL),(3430,'Nukulaelae','NKL',226,NULL),(3431,'Nanumea','NMA',226,NULL),(3432,'Nanumanga','NMG',226,NULL),(3433,'Nui','NUI',226,NULL),(3434,'Vaitupu','VAI',226,NULL),(3435,'Changhua','CHA',227,NULL),(3436,'Chiay City','CYI',227,NULL),(3437,'Chiayi','CYQ',227,NULL),(3438,'Hsinchu','HSQ',227,NULL),(3439,'Hsinchui City','HSZ',227,NULL),(3440,'Hualien','HUA',227,NULL),(3441,'Ilan','ILA',227,NULL),(3442,'Keelung City','KEE',227,NULL),(3443,'Kaohsiung City','KHH',227,NULL),(3444,'Kaohsiung','KHQ',227,NULL),(3445,'Miaoli','MIA',227,NULL),(3446,'Nantou','NAN',227,NULL),(3447,'Penghu','PEN',227,NULL),(3448,'Pingtung','PIF',227,NULL),(3449,'Taoyuan','TAO',227,NULL),(3450,'Tainan City','TNN',227,NULL),(3451,'Tainan','TNQ',227,NULL),(3452,'Taipei City','TPE',227,NULL),(3453,'Taipei','TPQ',227,NULL),(3454,'Taitung','TTT',227,NULL),(3455,'Taichung City','TXG',227,NULL),(3456,'Taichung','TXQ',227,NULL),(3457,'Yunlin','YUN',227,NULL),(3458,'Arusha','01',228,NULL),(3459,'Dar-es-Salaam','02',228,NULL),(3460,'Dodoma','03',228,NULL),(3461,'Iringa','04',228,NULL),(3462,'Kagera','05',228,NULL),(3463,'Kaskazini Pemba','06',228,NULL),(3464,'Kaskazini Unguja','07',228,NULL),(3465,'Kigoma','08',228,NULL),(3466,'Kilimanjaro','09',228,NULL),(3467,'Kusini Pemba','10',228,NULL),(3468,'Kusini Unguja','11',228,NULL),(3469,'Lindi','12',228,NULL),(3470,'Mara','13',228,NULL),(3471,'Mbeya','14',228,NULL),(3472,'Mjini Magharibi','15',228,NULL),(3473,'Morogoro','16',228,NULL),(3474,'Mtwara','17',228,NULL),(3475,'Mwanza','18',228,NULL),(3476,'Pwani','19',228,NULL),(3477,'Rukwa','20',228,NULL),(3478,'Ruvuma','21',228,NULL),(3479,'Shinyanga','22',228,NULL),(3480,'Singida','23',228,NULL),(3481,'Tabora','24',228,NULL),(3482,'Tanga','25',228,NULL),(3483,'Manyara','26',228,NULL),(3484,'Vinnyts\'ka Oblast\'','05',229,NULL),(3485,'Volyns\'ka Oblast\'','07',229,NULL),(3486,'Luhans\'ka Oblast\'','09',229,NULL),(3487,'Dnipropetrovs\'ka Oblast\'','12',229,NULL),(3488,'Donets\'ka Oblast\'','14',229,NULL),(3489,'Zhytomyrs\'ka Oblast\'','18',229,NULL),(3490,'Zakarpats\'ka Oblast\'','21',229,NULL),(3491,'Zaporiz\'ka Oblast\'','23',229,NULL),(3492,'Ivano-Frankivs\'ka Oblast\'','26',229,NULL),(3493,'Kyïvs\'ka mis\'ka rada','30',229,NULL),(3494,'Kyïvs\'ka Oblast\'','32',229,NULL),(3495,'Kirovohrads\'ka Oblast\'','35',229,NULL),(3496,'Sevastopol','40',229,NULL),(3497,'Respublika Krym','43',229,NULL),(3498,'L\'vivs\'ka Oblast\'','46',229,NULL),(3499,'Mykolaïvs\'ka Oblast\'','48',229,NULL),(3500,'Odes\'ka Oblast\'','51',229,NULL),(3501,'Poltavs\'ka Oblast\'','53',229,NULL),(3502,'Rivnens\'ka Oblast\'','56',229,NULL),(3503,'Sums \'ka Oblast\'','59',229,NULL),(3504,'Ternopil\'s\'ka Oblast\'','61',229,NULL),(3505,'Kharkivs\'ka Oblast\'','63',229,NULL),(3506,'Khersons\'ka Oblast\'','65',229,NULL),(3507,'Khmel\'nyts\'ka Oblast\'','68',229,NULL),(3508,'Cherkas\'ka Oblast\'','71',229,NULL),(3509,'Chernihivs\'ka Oblast\'','74',229,NULL),(3510,'Chernivets\'ka Oblast\'','77',229,NULL),(3511,'Central','C',230,NULL),(3512,'Eastern','E',230,NULL),(3513,'Northern','N',230,NULL),(3514,'Western','W',230,NULL),(3515,'Johnston Atoll','67',231,NULL),(3516,'Midway Islands','71',231,NULL),(3517,'Navassa Island','76',231,NULL),(3518,'Wake Island','79',231,NULL),(3519,'Baker Island','81',231,NULL),(3520,'Howland Island','84',231,NULL),(3521,'Jarvis Island','86',231,NULL),(3522,'Kingman Reef','89',231,NULL),(3523,'Palmyra Atoll','95',231,NULL),(3524,'Alaska','AK',232,NULL),(3525,'Alabama','AL',232,NULL),(3526,'Arkansas','AR',232,NULL),(3527,'American Samoa','AS',232,NULL),(3528,'Arizona','AZ',232,NULL),(3529,'California','CA',232,NULL),(3530,'Colorado','CO',232,NULL),(3531,'Connecticut','CT',232,NULL),(3532,'District of Columbia','DC',232,NULL),(3533,'Delaware','DE',232,NULL),(3534,'Florida','FL',232,NULL),(3535,'Georgia','GA',232,NULL),(3536,'Guam','GU',232,NULL),(3537,'Hawaii','HI',232,NULL),(3538,'Iowa','IA',232,NULL),(3539,'Idaho','ID',232,NULL),(3540,'Illinois','IL',232,NULL),(3541,'Indiana','IN',232,NULL),(3542,'Kansas','KS',232,NULL),(3543,'Kentucky','KY',232,NULL),(3544,'Louisiana','LA',232,NULL),(3545,'Massachusetts','MA',232,NULL),(3546,'Maryland','MD',232,NULL),(3547,'Maine','ME',232,NULL),(3548,'Michigan','MI',232,NULL),(3549,'Minnesota','MN',232,NULL),(3550,'Missouri','MO',232,NULL),(3551,'Northern Mariana Islands','MP',232,NULL),(3552,'Mississippi','MS',232,NULL),(3553,'Montana','MT',232,NULL),(3554,'North Carolina','NC',232,NULL),(3555,'North Dakota','ND',232,NULL),(3556,'Nebraska','NE',232,NULL),(3557,'New Hampshire','NH',232,NULL),(3558,'New Jersey','NJ',232,NULL),(3559,'New Mexico','NM',232,NULL),(3560,'Nevada','NV',232,NULL),(3561,'New York','NY',232,NULL),(3562,'Ohio','OH',232,NULL),(3563,'Oklahoma','OK',232,NULL),(3564,'Oregon','OR',232,NULL),(3565,'Pennsylvania','PA',232,NULL),(3566,'Puerto Rico','PR',232,NULL),(3567,'Rhode Island','RI',232,NULL),(3568,'South Carolina','SC',232,NULL),(3569,'South Dakota','SD',232,NULL),(3570,'Tennessee','TN',232,NULL),(3571,'Texas','TX',232,NULL),(3572,'United States Minor Outlying Islands','UM',232,NULL),(3573,'Utah','UT',232,NULL),(3574,'Virginia','VA',232,NULL),(3575,'Virgin Islands','VI',232,NULL),(3576,'Vermont','VT',232,NULL),(3577,'Washington','WA',232,NULL),(3578,'Wisconsin','WI',232,NULL),(3579,'West Virginia','WV',232,NULL),(3580,'Wyoming','WY',232,NULL),(3581,'Armed Forces Americas (except Canada)','AA',232,NULL),(3582,'Armed Forces Africa, Canada, Europe, Middle East','AE',232,NULL),(3583,'Armed Forces Pacific','AP',232,NULL),(3584,'Artigas','AR',233,NULL),(3585,'Canelones','CA',233,NULL),(3586,'Cerro Largo','CL',233,NULL),(3587,'Colonia','CO',233,NULL),(3588,'Durazno','DU',233,NULL),(3589,'Florida','FD',233,NULL),(3590,'Flores','FS',233,NULL),(3591,'Lavalleja','LA',233,NULL),(3592,'Maldonado','MA',233,NULL),(3593,'Montevideo','MO',233,NULL),(3594,'Paysandú','PA',233,NULL),(3595,'Río Negro','RN',233,NULL),(3596,'Rocha','RO',233,NULL),(3597,'Rivera','RV',233,NULL),(3598,'Salto','SA',233,NULL),(3599,'San José','SJ',233,NULL),(3600,'Soriano','SO',233,NULL),(3601,'Tacuarembó','TA',233,NULL),(3602,'Treinta y Tres','TT',233,NULL),(3603,'Andijon','AN',234,NULL),(3604,'Buxoro','BU',234,NULL),(3605,'Farg\'ona','FA',234,NULL),(3606,'Jizzax','JI',234,NULL),(3607,'Namangan','NG',234,NULL),(3608,'Navoiy','NW',234,NULL),(3609,'Qashqadaryo','QA',234,NULL),(3610,'Qoraqalpog\'iston Respublikasi','QR',234,NULL),(3611,'Samarqand','SA',234,NULL),(3612,'Sirdaryo','SI',234,NULL),(3613,'Surxondaryo','SU',234,NULL),(3614,'Toshkent','TK',234,NULL),(3615,'Toshkent','TO',234,NULL),(3616,'Xorazm','XO',234,NULL),(3617,'Charlotte','01',236,NULL),(3618,'Saint Andrew','02',236,NULL),(3619,'Saint David','03',236,NULL),(3620,'Saint George','04',236,NULL),(3621,'Saint Patrick','05',236,NULL),(3622,'Grenadines','06',236,NULL),(3623,'Distrito Federal','A',237,NULL),(3624,'Anzoátegui','B',237,NULL),(3625,'Apure','C',237,NULL),(3626,'Aragua','D',237,NULL),(3627,'Barinas','E',237,NULL),(3628,'Bolívar','F',237,NULL),(3629,'Carabobo','G',237,NULL),(3630,'Cojedes','H',237,NULL),(3631,'Falcón','I',237,NULL),(3632,'Guárico','J',237,NULL),(3633,'Lara','K',237,NULL),(3634,'Mérida','L',237,NULL),(3635,'Miranda','M',237,NULL),(3636,'Monagas','N',237,NULL),(3637,'Nueva Esparta','O',237,NULL),(3638,'Portuguesa','P',237,NULL),(3639,'Sucre','R',237,NULL),(3640,'Táchira','S',237,NULL),(3641,'Trujillo','T',237,NULL),(3642,'Yaracuy','U',237,NULL),(3643,'Zulia','V',237,NULL),(3644,'Dependencias Federales','W',237,NULL),(3645,'Vargas','X',237,NULL),(3646,'Delta Amacuro','Y',237,NULL),(3647,'Amazonas','Z',237,NULL),(3648,'Lai Châu','01',240,NULL),(3649,'Lào Cai','02',240,NULL),(3650,'Hà Giang','03',240,NULL),(3651,'Cao Bằng','04',240,NULL),(3652,'Sơn La','05',240,NULL),(3653,'Yên Bái','06',240,NULL),(3654,'Tuyên Quang','07',240,NULL),(3655,'Lạng Sơn','09',240,NULL),(3656,'Quảng Ninh','13',240,NULL),(3657,'Hoà Bình','14',240,NULL),(3658,'Hà Tây','15',240,NULL),(3659,'Ninh Bình','18',240,NULL),(3660,'Thái Bình','20',240,NULL),(3661,'Thanh Hóa','21',240,NULL),(3662,'Nghệ An','22',240,NULL),(3663,'Hà Tỉnh','23',240,NULL),(3664,'Quảng Bình','24',240,NULL),(3665,'Quảng Trị','25',240,NULL),(3666,'Thừa Thiên-Huế','26',240,NULL),(3667,'Quảng Nam','27',240,NULL),(3668,'Kon Tum','28',240,NULL),(3669,'Quảng Ngãi','29',240,NULL),(3670,'Gia Lai','30',240,NULL),(3671,'Bình Định','31',240,NULL),(3672,'Phú Yên','32',240,NULL),(3673,'Đắc Lắk','33',240,NULL),(3674,'Khánh Hòa','34',240,NULL),(3675,'Lâm Đồng','35',240,NULL),(3676,'Ninh Thuận','36',240,NULL),(3677,'Tây Ninh','37',240,NULL),(3678,'Đồng Nai','39',240,NULL),(3679,'Bình Thuận','40',240,NULL),(3680,'Long An','41',240,NULL),(3681,'Bà Rịa-Vũng Tàu','43',240,NULL),(3682,'An Giang','44',240,NULL),(3683,'Đồng Tháp','45',240,NULL),(3684,'Tiền Giang','46',240,NULL),(3685,'Kiên Giang','47',240,NULL),(3686,'Vĩnh Long','49',240,NULL),(3687,'Bến Tre','50',240,NULL),(3688,'Trà Vinh','51',240,NULL),(3689,'Sóc Trăng','52',240,NULL),(3690,'Bắc Kạn','53',240,NULL),(3691,'Bắc Giang','54',240,NULL),(3692,'Bạc Liêu','55',240,NULL),(3693,'Bắc Ninh','56',240,NULL),(3694,'Bình Dương','57',240,NULL),(3695,'Bình Phước','58',240,NULL),(3696,'Cà Mau','59',240,NULL),(3697,'Hải Duong','61',240,NULL),(3698,'Hà Nam','63',240,NULL),(3699,'Hưng Yên','66',240,NULL),(3700,'Nam Định','67',240,NULL),(3701,'Phú Thọ','68',240,NULL),(3702,'Thái Nguyên','69',240,NULL),(3703,'Vĩnh Phúc','70',240,NULL),(3704,'Điện Biên','71',240,NULL),(3705,'Đắk Nông','72',240,NULL),(3706,'Hậu Giang','73',240,NULL),(3707,'Cần Thơ','CT',240,NULL),(3708,'Đà Nẵng','DN',240,NULL),(3709,'Hà Nội','HN',240,NULL),(3710,'Hải Phòng','HP',240,NULL),(3711,'Hồ Chí Minh [Sài Gòn]','SG',240,NULL),(3712,'Malampa','MAP',241,NULL),(3713,'Pénama','PAM',241,NULL),(3714,'Sanma','SAM',241,NULL),(3715,'Shéfa','SEE',241,NULL),(3716,'Taféa','TAE',241,NULL),(3717,'Torba','TOB',241,NULL),(3718,'A\'ana','AA',243,NULL),(3719,'Aiga-i-le-Tai','AL',243,NULL),(3720,'Atua','AT',243,NULL),(3721,'Fa\'asaleleaga','FA',243,NULL),(3722,'Gaga\'emauga','GE',243,NULL),(3723,'Gagaifomauga','GI',243,NULL),(3724,'Palauli','PA',243,NULL),(3725,'Satupa\'itea','SA',243,NULL),(3726,'Tuamasaga','TU',243,NULL),(3727,'Va\'a-o-Fonoti','VF',243,NULL),(3728,'Vaisigano','VS',243,NULL),(3729,'Abyān','AB',244,NULL),(3730,'\'Adan','AD',244,NULL),(3731,'\'Amrān','AM',244,NULL),(3732,'Al Bayḑā\'','BA',244,NULL),(3733,'Aḑ Ḑāli‘','DA',244,NULL),(3734,'Dhamār','DH',244,NULL),(3735,'Ḩaḑramawt','HD',244,NULL),(3736,'Ḩajjah','HJ',244,NULL),(3737,'Ibb','IB',244,NULL),(3738,'Al Jawf','JA',244,NULL),(3739,'Laḩij','LA',244,NULL),(3740,'Ma\'rib','MA',244,NULL),(3741,'Al Mahrah','MR',244,NULL),(3742,'Al Ḩudaydah','MU',244,NULL),(3743,'Al Maḩwīt','MW',244,NULL),(3744,'Raymah','RA',244,NULL),(3745,'Şa\'dah','SD',244,NULL),(3746,'Shabwah','SH',244,NULL),(3747,'Şan\'ā\'','SN',244,NULL),(3748,'Tā\'izz','TA',244,NULL),(3749,'Eastern Cape','EC',246,NULL),(3750,'Free State','FS',246,NULL),(3751,'Gauteng','GP',246,NULL),(3752,'Limpopo','LP',246,NULL),(3753,'Mpumalanga','MP',246,NULL),(3754,'Northern Cape','NC',246,NULL),(3755,'North-West (South Africa)','NW',246,NULL),(3756,'Western Cape','WC',246,NULL),(3757,'Kwazulu-Natal','ZN',246,NULL),(3758,'Western','01',247,NULL),(3759,'Central','02',247,NULL),(3760,'Eastern','03',247,NULL),(3761,'Luapula','04',247,NULL),(3762,'Northern','05',247,NULL),(3763,'North-Western','06',247,NULL),(3764,'Southern (Zambia)','07',247,NULL),(3765,'Copperbelt','08',247,NULL),(3766,'Lusaka','09',247,NULL),(3767,'Bulawayo','BU',248,NULL),(3768,'Harare','HA',248,NULL),(3769,'Manicaland','MA',248,NULL),(3770,'Mashonaland Central','MC',248,NULL),(3771,'Mashonaland East','ME',248,NULL),(3772,'Midlands','MI',248,NULL),(3773,'Matabeleland North','MN',248,NULL),(3774,'Matabeleland South','MS',248,NULL),(3775,'Masvingo','MV',248,NULL),(3776,'Mashonaland West','MW',248,NULL);
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_items`
--

DROP TABLE IF EXISTS `spree_stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_location_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `backorderable` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_items_on_stock_location_id` (`stock_location_id`),
  KEY `stock_item_by_loc_and_var_id` (`stock_location_id`,`variant_id`),
  KEY `index_spree_stock_items_on_deleted_at` (`deleted_at`),
  KEY `index_spree_stock_items_on_backorderable` (`backorderable`),
  KEY `index_spree_stock_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_items`
--

LOCK TABLES `spree_stock_items` WRITE;
/*!40000 ALTER TABLE `spree_stock_items` DISABLE KEYS */;
INSERT INTO `spree_stock_items` VALUES (1,1,1,-6,'2017-01-29 07:39:33','2017-01-29 09:00:07',1,NULL),(2,1,2,-1,'2017-01-29 07:39:33','2017-01-29 09:00:07',1,NULL),(3,1,3,0,'2017-01-29 07:39:34','2017-01-29 07:39:34',1,NULL),(4,1,4,0,'2017-01-29 07:39:34','2017-01-29 07:39:34',1,NULL),(5,1,5,0,'2017-01-29 07:39:34','2017-01-29 07:39:34',1,NULL),(6,1,6,198,'2017-01-29 07:39:34','2017-01-29 09:09:34',1,NULL),(7,1,7,0,'2017-01-29 07:39:35','2017-01-29 07:39:35',1,NULL),(8,1,8,0,'2017-01-29 07:39:35','2017-01-29 07:39:35',1,NULL),(9,1,9,0,'2017-01-29 07:39:35','2017-01-29 07:39:35',1,NULL),(10,1,10,0,'2017-01-29 07:39:37','2017-01-29 07:39:37',1,NULL),(11,1,11,0,'2017-01-29 07:39:37','2017-01-29 07:39:37',1,NULL),(12,1,12,0,'2017-01-29 07:39:37','2017-01-29 07:39:37',1,NULL),(13,1,13,0,'2017-01-29 07:39:38','2017-01-29 07:39:38',1,NULL),(14,1,14,0,'2017-01-29 07:39:38','2017-01-29 07:39:38',1,NULL),(15,1,15,0,'2017-01-29 07:39:38','2017-01-29 07:39:38',1,NULL),(16,1,16,0,'2017-01-29 07:39:38','2017-01-29 07:39:38',1,NULL),(17,1,17,198,'2017-01-29 08:35:25','2017-01-30 15:39:31',1,NULL);
/*!40000 ALTER TABLE `spree_stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_locations`
--

DROP TABLE IF EXISTS `spree_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `backorderable_default` tinyint(1) DEFAULT '0',
  `propagate_all_variants` tinyint(1) DEFAULT '1',
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_locations_on_active` (`active`),
  KEY `index_spree_stock_locations_on_backorderable_default` (`backorderable_default`),
  KEY `index_spree_stock_locations_on_country_id` (`country_id`),
  KEY `index_spree_stock_locations_on_propagate_all_variants` (`propagate_all_variants`),
  KEY `index_spree_stock_locations_on_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_locations`
--

LOCK TABLES `spree_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_stock_locations` DISABLE KEYS */;
INSERT INTO `spree_stock_locations` VALUES (1,'default','2017-01-29 07:39:05','2017-01-29 07:39:05',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `spree_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_movements`
--

DROP TABLE IF EXISTS `spree_stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_movements_on_stock_item_id` (`stock_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_movements`
--

LOCK TABLES `spree_stock_movements` WRITE;
/*!40000 ALTER TABLE `spree_stock_movements` DISABLE KEYS */;
INSERT INTO `spree_stock_movements` VALUES (1,1,-1,NULL,'2017-01-29 07:56:01','2017-01-29 07:56:01',1,'Spree::Shipment'),(2,17,200,NULL,'2017-01-29 08:37:53','2017-01-29 08:37:53',NULL,NULL),(3,17,-1,NULL,'2017-01-29 08:59:28','2017-01-29 08:59:28',9,'Spree::Shipment'),(4,1,-3,NULL,'2017-01-29 08:59:28','2017-01-29 08:59:28',10,'Spree::Shipment'),(5,1,-2,NULL,'2017-01-29 09:00:07','2017-01-29 09:00:07',11,'Spree::Shipment'),(6,2,-1,NULL,'2017-01-29 09:00:07','2017-01-29 09:00:07',11,'Spree::Shipment'),(7,6,199,NULL,'2017-01-29 09:08:17','2017-01-29 09:08:17',NULL,NULL),(8,6,-1,NULL,'2017-01-29 09:09:34','2017-01-29 09:09:34',14,'Spree::Shipment'),(9,17,-1,NULL,'2017-01-30 15:39:31','2017-01-30 15:39:31',15,'Spree::Shipment');
/*!40000 ALTER TABLE `spree_stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_transfers`
--

DROP TABLE IF EXISTS `spree_stock_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_location_id` int(11) DEFAULT NULL,
  `destination_location_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_transfers_on_number` (`number`),
  KEY `index_spree_stock_transfers_on_source_location_id` (`source_location_id`),
  KEY `index_spree_stock_transfers_on_destination_location_id` (`destination_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_transfers`
--

LOCK TABLES `spree_stock_transfers` WRITE;
/*!40000 ALTER TABLE `spree_stock_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_stock_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stores`
--

DROP TABLE IF EXISTS `spree_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_from_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stores_on_code` (`code`),
  KEY `index_spree_stores_on_default` (`default`),
  KEY `index_spree_stores_on_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stores`
--

LOCK TABLES `spree_stores` WRITE;
/*!40000 ALTER TABLE `spree_stores` DISABLE KEYS */;
INSERT INTO `spree_stores` VALUES (1,'Spree Demo Site','demo.spreecommerce.com',NULL,NULL,NULL,'spree@example.com',NULL,'spree',1,'2017-01-29 07:39:11','2017-01-29 07:39:11');
/*!40000 ALTER TABLE `spree_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tax_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_tax_categories_on_deleted_at` (`deleted_at`),
  KEY `index_spree_tax_categories_on_is_default` (`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
INSERT INTO `spree_tax_categories` VALUES (1,'Clothing',NULL,0,NULL,'2017-01-29 07:39:32','2017-01-29 07:39:32',NULL),(2,'Food',NULL,0,NULL,'2017-01-29 07:39:32','2017-01-29 07:39:32',NULL);
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_tax_rates_on_deleted_at` (`deleted_at`),
  KEY `index_spree_tax_rates_on_included_in_price` (`included_in_price`),
  KEY `index_spree_tax_rates_on_show_rate_in_label` (`show_rate_in_label`),
  KEY `index_spree_tax_rates_on_tax_category_id` (`tax_category_id`),
  KEY `index_spree_tax_rates_on_zone_id` (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
INSERT INTO `spree_tax_rates` VALUES (1,0.05000,2,1,0,'2017-01-29 07:39:33','2017-01-29 07:39:33','North America',1,NULL);
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_taxonomies_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (1,'Categories','2017-01-29 07:39:39','2017-01-30 15:39:31',1),(2,'Brand','2017-01-29 07:39:39','2017-01-30 15:39:31',2);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `suggestable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`),
  KEY `index_spree_taxons_on_position` (`position`),
  KEY `index_spree_taxons_on_suggestable` (`suggestable`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (1,NULL,0,'Categories','categories',1,1,12,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:39','2017-01-30 15:39:31',NULL,NULL,NULL,0,0),(2,NULL,0,'Brand','brand',2,13,22,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:39','2017-01-30 15:39:31',NULL,NULL,NULL,0,0),(3,1,1,'Bags','categories/bags',1,2,3,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:39','2017-01-30 15:39:31',NULL,NULL,NULL,1,0),(4,1,2,'Mugs','categories/mugs',1,4,5,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:39','2017-01-29 07:39:40',NULL,NULL,NULL,1,0),(5,1,0,'Clothing','categories/clothing',1,6,11,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:40','2017-01-29 09:09:34',NULL,NULL,NULL,1,0),(6,5,0,'Shirts','categories/clothing/shirts',1,7,8,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:40','2017-01-29 07:39:41',NULL,NULL,NULL,2,0),(7,5,0,'T-Shirts','categories/clothing/t-shirts',1,9,10,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:40','2017-01-29 09:09:34',NULL,NULL,NULL,2,0),(8,2,0,'Ruby','brand/ruby',2,14,15,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:40','2017-01-29 09:09:34',NULL,NULL,NULL,1,0),(9,2,0,'Apache','brand/apache',2,16,17,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:41','2017-01-29 07:39:41',NULL,NULL,NULL,1,0),(10,2,0,'Spree','brand/spree',2,18,19,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:41','2017-01-29 07:39:41',NULL,NULL,NULL,1,0),(11,2,0,'Rails','brand/rails',2,20,21,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:41','2017-01-30 15:39:31',NULL,NULL,NULL,1,0);
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons_promotion_rules`
--

DROP TABLE IF EXISTS `spree_taxons_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxon_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_taxons_promotion_rules_on_taxon_id` (`taxon_id`),
  KEY `index_spree_taxons_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons_promotion_rules`
--

LOCK TABLES `spree_taxons_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_taxons_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_taxons_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons_prototypes`
--

DROP TABLE IF EXISTS `spree_taxons_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxon_id` int(11) DEFAULT NULL,
  `prototype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_taxons_prototypes_on_taxon_id` (`taxon_id`),
  KEY `index_spree_taxons_prototypes_on_prototype_id` (`prototype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons_prototypes`
--

LOCK TABLES `spree_taxons_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_taxons_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_taxons_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_trackers_on_active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_user_authentications`
--

DROP TABLE IF EXISTS `spree_user_authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_user_authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `profile_pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_user_authentications_on_provider_and_user_id` (`provider`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_user_authentications`
--

LOCK TABLES `spree_user_authentications` WRITE;
/*!40000 ALTER TABLE `spree_user_authentications` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_user_authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `spree_api_key` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`),
  KEY `index_spree_users_on_spree_api_key` (`spree_api_key`),
  KEY `index_spree_users_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'362d7d045b0c83148425b9651fbb426406ea69d74ce67d378768f55f2be1845a90fef43db3dc895fc7d45a864a295275770295a62088fa2a48f4621d80562137','dQdXDe44jXsNcNB5aYap','spree@example.com',NULL,NULL,NULL,NULL,9,0,NULL,'2017-01-30 15:48:15','2017-01-29 09:05:08','127.0.0.1','192.168.0.4','spree@example.com',NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-29 07:39:27','2017-01-30 15:48:15','1983325f681ae17b7dd1a4c2b34938691bfa102fdc6c8f01',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'95aa85fc2c41c9a30ee8f1300638dda14d0a46442be9ec4d5d633e5a6207eb2a0e8c970448cfc6ce38633676c8d8e5745e8ad79a776ef154c68131b56e6b73c3','9993pbJUHyVyE8h36wpd','kaustubhwise@gmail.com',NULL,NULL,NULL,NULL,8,0,NULL,'2017-01-29 09:09:02','2017-01-29 09:01:05','192.168.0.4','192.168.0.4','kaustubhwise@gmail.com',2,2,NULL,NULL,NULL,NULL,'2017-01-29 07:52:58','2017-01-29 09:09:02','aa694797bbb01e05ce8909db86c95da38e88f004ab655a8d',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'e0f3820af4937862359ace6a0beb9b32a49c1feadb5cf23c9fef6769225525ff180d5ec93294295daf8022208b29992048a0da393e013fff7832f8f15446d9af','ypxHvixgtsbZXExDrcX2','shital1391@gmail.com',NULL,NULL,NULL,NULL,1,0,NULL,'2017-01-29 08:13:58','2017-01-29 08:13:58','192.168.0.4','192.168.0.4','shital1391@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-29 08:13:58','2017-01-29 08:13:58','e1bc3f2932872c31241e9d382560f9d27d0f078e6cff60ea',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'da4deb9454d64a728d8005121ba7f6a6bdb9b504d39690108b921ce1f6d3cb00a5ec2d81476eccd51ef6ce2f4d5e50876fd922af87ee67cc66bda13e63c303bc','DYLC-HtTTpxNPwcfwLVN','star1391@gmail.com',NULL,NULL,NULL,NULL,3,0,NULL,'2017-01-29 08:59:44','2017-01-29 08:27:14','192.168.0.4','192.168.0.4','star1391@gmail.com',3,3,NULL,NULL,NULL,NULL,'2017-01-29 08:14:48','2017-01-29 08:59:44','3d2fc003f7bdcbf80aec45abb7837724fcb0f2bc7ab349f4',NULL,NULL,NULL,NULL,NULL,'Shital Jaju','8237693221');
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT '0.00',
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `cost_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `track_inventory` tinyint(1) DEFAULT '1',
  `tax_category_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_items_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`),
  KEY `index_spree_variants_on_sku` (`sku`),
  KEY `index_spree_variants_on_tax_category_id` (`tax_category_id`),
  KEY `index_spree_variants_on_deleted_at` (`deleted_at`),
  KEY `index_spree_variants_on_is_master` (`is_master`),
  KEY `index_spree_variants_on_position` (`position`),
  KEY `index_spree_variants_on_track_inventory` (`track_inventory`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'',0.00,NULL,NULL,NULL,NULL,1,1,NULL,'USD',1,1,NULL,'2017-01-29 09:00:07',1),(2,'',0.00,NULL,NULL,NULL,NULL,1,2,NULL,'USD',1,1,NULL,'2017-01-29 09:00:07',1),(3,'',0.00,NULL,NULL,NULL,NULL,1,3,NULL,'USD',1,1,NULL,'2017-01-29 07:39:34',1),(4,'',0.00,NULL,NULL,NULL,NULL,1,4,NULL,'USD',1,1,NULL,'2017-01-29 07:39:34',1),(5,'',0.00,NULL,NULL,NULL,NULL,1,5,NULL,'USD',1,1,NULL,'2017-01-29 07:39:34',1),(6,'',0.00,NULL,NULL,NULL,NULL,1,6,NULL,'USD',1,1,NULL,'2017-01-29 09:09:34',1),(7,'',0.00,NULL,NULL,NULL,NULL,1,7,NULL,'USD',1,1,NULL,'2017-01-29 07:39:35',1),(8,'',0.00,NULL,NULL,NULL,NULL,1,8,NULL,'USD',1,1,NULL,'2017-01-29 07:39:35',1),(9,'',0.00,NULL,NULL,NULL,NULL,1,9,NULL,'USD',1,1,NULL,'2017-01-29 07:39:35',1),(10,'',0.00,NULL,NULL,NULL,NULL,1,10,NULL,'USD',1,1,NULL,'2017-01-29 07:39:37',1),(11,'',0.00,NULL,NULL,NULL,NULL,1,11,NULL,'USD',1,1,NULL,'2017-01-29 07:39:37',1),(12,'',0.00,NULL,NULL,NULL,NULL,1,12,NULL,'USD',1,1,NULL,'2017-01-29 07:39:37',1),(13,'',0.00,NULL,NULL,NULL,NULL,1,13,NULL,'USD',1,1,NULL,'2017-01-29 07:39:38',1),(14,'',0.00,NULL,NULL,NULL,NULL,1,14,NULL,'USD',1,1,NULL,'2017-01-29 07:39:38',1),(15,'',0.00,NULL,NULL,NULL,NULL,1,15,NULL,'USD',1,1,NULL,'2017-01-29 07:39:38',1),(16,'',0.00,NULL,NULL,NULL,NULL,1,16,NULL,'USD',1,1,NULL,'2017-01-29 07:39:39',1),(17,'123',0.00,NULL,NULL,NULL,NULL,0,1,22.00,'USD',2,1,NULL,'2017-01-30 15:39:31',1);
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_wished_products`
--

DROP TABLE IF EXISTS `spree_wished_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_wished_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_wished_products`
--

LOCK TABLES `spree_wished_products` WRITE;
/*!40000 ALTER TABLE `spree_wished_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_wished_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_wishlists`
--

DROP TABLE IF EXISTS `spree_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_wishlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_wishlists_on_user_id` (`user_id`),
  KEY `index_spree_wishlists_on_user_id_and_is_default` (`user_id`,`is_default`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_wishlists`
--

LOCK TABLES `spree_wishlists` WRITE;
/*!40000 ALTER TABLE `spree_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_zone_members_on_zone_id` (`zone_id`),
  KEY `index_spree_zone_members_on_zoneable_id_and_zoneable_type` (`zoneable_id`,`zoneable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,179,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(2,70,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(3,183,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(4,188,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(5,57,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(6,75,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(7,201,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(8,100,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(9,199,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(10,102,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(11,12,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(12,68,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(13,110,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(14,20,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(15,196,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(16,135,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(17,22,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(18,77,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(19,133,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(20,55,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(21,134,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(22,153,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(23,59,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(24,166,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(25,64,'Spree::Country',1,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(26,232,'Spree::Country',2,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(27,38,'Spree::Country',2,'2017-01-29 07:39:24','2017-01-29 07:39:24'),(28,105,'Spree::Country',3,'2017-01-29 08:53:57','2017-01-29 08:53:57');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_zones_on_default_tax` (`default_tax`),
  KEY `index_spree_zones_on_kind` (`kind`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',0,25,'2017-01-29 07:39:24','2017-01-29 07:39:24',NULL),(2,'North America','USA + Canada',0,2,'2017-01-29 07:39:24','2017-01-29 07:39:24',NULL),(3,'India','Free',0,1,'2017-01-29 08:53:57','2017-01-29 08:53:57','country');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-30 22:32:17
