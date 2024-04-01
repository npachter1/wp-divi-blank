-- MySQL dump 10.13  Distrib 5.7.42-46, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: wp_summitcountys1
-- ------------------------------------------------------
-- Server version	8.0.35-27

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wpengine.com/','','2024-03-27 18:32:49','2024-03-27 18:32:49','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://summitcountys1.wpenginepowered.com','yes'),(2,'home','https://summitcountys1.wpenginepowered.com','yes'),(3,'blogname','Neil Pachter Site','yes'),(4,'blogdescription','Your SUPER-powered WP Engine Site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','neil_pachter@comcast.net','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:40:\"userway-accessibility-widget/userway.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";i:3;s:23:\"wp-smushit/wp-smush.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','Divi','yes'),(41,'stylesheet','Divi_Child','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','56657','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','0','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(79,'uninstall_plugins','a:2:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:40:\"userway-accessibility-widget/userway.php\";s:21:\"usw_userway_uninstall\";}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1727116368','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'wp_force_deactivated_plugins','a:0:{}','yes'),(99,'wp_attachment_pages_enabled','0','yes'),(100,'initial_db_version','56657','yes'),(101,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:68:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"et_support_center\";b:1;s:24:\"et_support_center_system\";b:1;s:31:\"et_support_center_remote_access\";b:1;s:31:\"et_support_center_documentation\";b:1;s:27:\"et_support_center_safe_mode\";b:1;s:22:\"et_support_center_logs\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes'),(102,'fresh_site','0','yes'),(103,'user_count','2','no'),(104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),(105,'sidebars_widgets','a:9:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(106,'cron','a:17:{i:1711580210;a:1:{s:25:\"smush_check_for_conflicts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1711580695;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"c9059feef497c200e69cb9956a81f005\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:5;}}}}i:1711580778;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"686c8315be36c96dc00d0d7ed3656b43\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:6;}}}}i:1711580912;a:1:{s:27:\"wpseo_indexable_index_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:15:\"fifteen_minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1711582371;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1711584000;a:1:{s:22:\"wdev_logger_clear_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1711591547;a:1:{s:46:\"WPEngineSecurityAuditor_Scans_fingerprint_core\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1711607571;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1711607613;a:1:{s:39:\"WPEngineSecurityAuditor_Scans_scheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1711616251;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1711650771;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1711659495;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1711659497;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1711660108;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1712169932;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1714165513;a:1:{s:32:\"et_core_page_resource_auto_clear\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}','yes'),(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes'),(122,'_transient_doing_cron','1711564371.3555529117584228515625','yes'),(123,'widget_wpe_powered_by_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(124,'recovery_keys','a:0:{}','yes'),(125,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.3\";s:7:\"version\";s:5:\"6.4.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1711580209;s:15:\"version_checked\";s:5:\"6.4.3\";s:12:\"translations\";a:0:{}}','no'),(127,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1711580209;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:40:\"userway-accessibility-widget/userway.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:42:\"w.org/plugins/userway-accessibility-widget\";s:4:\"slug\";s:28:\"userway-accessibility-widget\";s:6:\"plugin\";s:40:\"userway-accessibility-widget/userway.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/userway-accessibility-widget/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/userway-accessibility-widget.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:73:\"https://ps.w.org/userway-accessibility-widget/assets/icon.svg?rev=2526447\";s:3:\"svg\";s:73:\"https://ps.w.org/userway-accessibility-widget/assets/icon.svg?rev=2526447\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/userway-accessibility-widget/assets/banner-1544x500.png?rev=2798246\";s:2:\"1x\";s:83:\"https://ps.w.org/userway-accessibility-widget/assets/banner-772x250.png?rev=2798246\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"genesis-blocks/genesis-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/genesis-blocks\";s:4:\"slug\";s:14:\"genesis-blocks\";s:6:\"plugin\";s:33:\"genesis-blocks/genesis-blocks.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/genesis-blocks/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/genesis-blocks.3.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/genesis-blocks/assets/icon-256x256.png?rev=2368840\";s:2:\"1x\";s:67:\"https://ps.w.org/genesis-blocks/assets/icon-128x128.png?rev=2368839\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/genesis-blocks/assets/banner-1544x500.png?rev=2368838\";s:2:\"1x\";s:69:\"https://ps.w.org/genesis-blocks/assets/banner-772x250.png?rev=2368837\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.1\";}s:23:\"wp-smushit/wp-smush.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/wp-smushit\";s:4:\"slug\";s:10:\"wp-smushit\";s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:11:\"new_version\";s:6:\"3.15.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-smushit/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-smushit.3.15.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-256x256.png?rev=2746115\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-128x128.png?rev=2746115\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-smushit/assets/banner-1544x500.png?rev=2624292\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-smushit/assets/banner-772x250.png?rev=2624292\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"22.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.22.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.3\";}}}','no'),(128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1711580209;s:7:\"checked\";a:2:{s:4:\"Divi\";s:6:\"4.24.2\";s:10:\"Divi_Child\";s:19:\"Updated for Divi 3+\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:4:\"Divi\";a:6:{s:5:\"theme\";s:4:\"Divi\";s:11:\"new_version\";s:6:\"4.24.2\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";s:7:\"package\";s:0:\"\";s:8:\"requires\";s:0:\"\";s:12:\"requires_php\";s:0:\"\";}}s:12:\"translations\";a:0:{}}','no'),(129,'theme_mods_twentytwentyfour','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1711565140;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes'),(130,'current_theme','Divi Child Theme','yes'),(131,'theme_switched','','yes'),(132,'theme_mods_genesis-block-theme','a:3:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1711573512;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes'),(133,'wpe_template','Genesis Blocks Free','yes'),(136,'genesis_blocks_has_content_to_migrate','0','yes'),(137,'can_compress_scripts','1','yes'),(139,'finished_updating_comment_type','1','yes'),(140,'recently_activated','a:1:{s:33:\"genesis-blocks/genesis-blocks.php\";i:1711573212;}','yes'),(142,'theme_mods_Divi','a:6:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:0:{}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1711573590;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}}}}','yes'),(143,'et_pb_cache_notice','a:1:{s:6:\"4.24.2\";s:6:\"ignore\";}','yes'),(144,'et_core_version','4.24.2','yes'),(146,'et_divi','a:159:{s:39:\"static_css_custom_css_safety_check_done\";b:1;s:29:\"presets_storage_migrated_flag\";b:1;s:39:\"builder_global_presets_history_migrated\";b:1;s:23:\"2_5_flush_rewrite_rules\";s:4:\"done\";s:30:\"et_flush_rewrite_rules_library\";s:6:\"4.24.2\";s:31:\"divi_previous_installed_version\";s:0:\"\";s:29:\"divi_latest_installed_version\";s:6:\"4.24.2\";s:27:\"divi_skip_font_subset_force\";b:1;s:27:\"et_pb_clear_templates_cache\";b:1;s:23:\"builder_custom_defaults\";O:8:\"stdClass\":0:{}s:33:\"customizer_settings_migrated_flag\";b:1;s:34:\"builder_custom_defaults_unmigrated\";b:0;s:40:\"divi_email_provider_credentials_migrated\";b:1;s:29:\"custom_defaults_migrated_flag\";b:1;s:15:\"divi_1_3_images\";s:7:\"checked\";s:21:\"et_pb_layouts_updated\";b:1;s:30:\"library_removed_legacy_layouts\";b:1;s:30:\"divi_2_4_documentation_message\";s:9:\"triggered\";s:9:\"divi_logo\";s:0:\"\";s:14:\"divi_fixed_nav\";s:2:\"on\";s:26:\"divi_gallery_layout_enable\";s:5:\"false\";s:18:\"divi_color_palette\";s:63:\"#000000|#ffffff|#e02b20|#e09900|#edf000|#7cda24|#0c71c3|#8300e9\";s:15:\"divi_grab_image\";s:5:\"false\";s:15:\"divi_blog_style\";s:5:\"false\";s:12:\"divi_sidebar\";s:16:\"et_right_sidebar\";s:22:\"divi_shop_page_sidebar\";s:16:\"et_right_sidebar\";s:33:\"divi_gf_enable_all_character_sets\";s:5:\"false\";s:23:\"divi_show_facebook_icon\";s:2:\"on\";s:22:\"divi_show_twitter_icon\";s:2:\"on\";s:24:\"divi_show_instagram_icon\";s:2:\"on\";s:18:\"divi_show_rss_icon\";s:2:\"on\";s:17:\"divi_facebook_url\";s:1:\"#\";s:16:\"divi_twitter_url\";s:1:\"#\";s:18:\"divi_instagram_url\";s:1:\"#\";s:12:\"divi_rss_url\";s:0:\"\";s:34:\"divi_woocommerce_archive_num_posts\";i:9;s:17:\"divi_catnum_posts\";i:6;s:21:\"divi_archivenum_posts\";i:5;s:20:\"divi_searchnum_posts\";i:5;s:17:\"divi_tagnum_posts\";i:5;s:16:\"divi_date_format\";s:6:\"M j, Y\";s:16:\"divi_use_excerpt\";s:5:\"false\";s:16:\"divi_back_to_top\";s:5:\"false\";s:18:\"divi_smooth_scroll\";s:5:\"false\";s:25:\"divi_disable_translations\";s:5:\"false\";s:29:\"divi_enable_responsive_images\";s:2:\"on\";s:15:\"divi_custom_css\";s:0:\"\";s:29:\"divi_dynamic_module_framework\";s:2:\"on\";s:16:\"divi_dynamic_css\";s:2:\"on\";s:30:\"divi_dynamic_icons_child_theme\";s:5:\"false\";s:22:\"divi_inline_stylesheet\";s:2:\"on\";s:17:\"divi_critical_css\";s:2:\"on\";s:30:\"divi_critical_threshold_height\";s:6:\"Medium\";s:25:\"divi_dynamic_js_libraries\";s:2:\"on\";s:19:\"divi_disable_emojis\";s:2:\"on\";s:20:\"divi_defer_block_css\";s:2:\"on\";s:24:\"divi_google_fonts_inline\";s:5:\"false\";s:51:\"divi_limit_google_fonts_support_for_legacy_browsers\";s:2:\"on\";s:23:\"divi_enable_jquery_body\";s:2:\"on\";s:32:\"divi_enable_jquery_compatibility\";s:2:\"on\";s:29:\"divi_enable_jquery_body_super\";s:5:\"false\";s:21:\"divi_enable_dropdowns\";s:2:\"on\";s:14:\"divi_home_link\";s:2:\"on\";s:15:\"divi_sort_pages\";s:10:\"post_title\";s:15:\"divi_order_page\";s:3:\"asc\";s:22:\"divi_tiers_shown_pages\";i:3;s:32:\"divi_enable_dropdowns_categories\";s:2:\"on\";s:21:\"divi_categories_empty\";s:2:\"on\";s:27:\"divi_tiers_shown_categories\";i:3;s:13:\"divi_sort_cat\";s:4:\"name\";s:14:\"divi_order_cat\";s:3:\"asc\";s:20:\"divi_disable_toptier\";s:5:\"false\";s:27:\"et_pb_post_type_integration\";a:3:{s:4:\"post\";s:2:\"on\";s:4:\"page\";s:2:\"on\";s:7:\"project\";s:2:\"on\";}s:21:\"et_pb_static_css_file\";s:2:\"on\";s:19:\"et_pb_css_in_footer\";s:3:\"off\";s:25:\"et_pb_product_tour_global\";s:2:\"on\";s:24:\"et_enable_classic_editor\";s:3:\"off\";s:14:\"divi_postinfo2\";a:4:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";i:3;s:8:\"comments\";}s:22:\"divi_show_postcomments\";s:2:\"on\";s:15:\"divi_thumbnails\";s:2:\"on\";s:20:\"divi_page_thumbnails\";s:5:\"false\";s:23:\"divi_show_pagescomments\";s:5:\"false\";s:14:\"divi_postinfo1\";a:3:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";}s:21:\"divi_thumbnails_index\";s:2:\"on\";s:19:\"divi_seo_home_title\";s:5:\"false\";s:25:\"divi_seo_home_description\";s:5:\"false\";s:22:\"divi_seo_home_keywords\";s:5:\"false\";s:23:\"divi_seo_home_canonical\";s:5:\"false\";s:23:\"divi_seo_home_titletext\";s:0:\"\";s:29:\"divi_seo_home_descriptiontext\";s:0:\"\";s:26:\"divi_seo_home_keywordstext\";s:0:\"\";s:18:\"divi_seo_home_type\";s:27:\"BlogName | Blog description\";s:22:\"divi_seo_home_separate\";s:3:\" | \";s:21:\"divi_seo_single_title\";s:5:\"false\";s:27:\"divi_seo_single_description\";s:5:\"false\";s:24:\"divi_seo_single_keywords\";s:5:\"false\";s:25:\"divi_seo_single_canonical\";s:5:\"false\";s:27:\"divi_seo_single_field_title\";s:9:\"seo_title\";s:33:\"divi_seo_single_field_description\";s:15:\"seo_description\";s:30:\"divi_seo_single_field_keywords\";s:12:\"seo_keywords\";s:20:\"divi_seo_single_type\";s:21:\"Post title | BlogName\";s:24:\"divi_seo_single_separate\";s:3:\" | \";s:24:\"divi_seo_index_canonical\";s:5:\"false\";s:26:\"divi_seo_index_description\";s:5:\"false\";s:19:\"divi_seo_index_type\";s:24:\"Category name | BlogName\";s:23:\"divi_seo_index_separate\";s:3:\" | \";s:28:\"divi_integrate_header_enable\";s:2:\"on\";s:26:\"divi_integrate_body_enable\";s:2:\"on\";s:31:\"divi_integrate_singletop_enable\";s:2:\"on\";s:34:\"divi_integrate_singlebottom_enable\";s:2:\"on\";s:21:\"divi_integration_head\";s:0:\"\";s:21:\"divi_integration_body\";s:0:\"\";s:27:\"divi_integration_single_top\";s:0:\"\";s:30:\"divi_integration_single_bottom\";s:0:\"\";s:15:\"divi_468_enable\";s:5:\"false\";s:14:\"divi_468_image\";s:0:\"\";s:12:\"divi_468_url\";s:0:\"\";s:16:\"divi_468_adsense\";s:0:\"\";s:19:\"product_tour_status\";a:2:{i:1;s:3:\"off\";i:2;s:3:\"off\";}s:32:\"et_fb_pref_settings_bar_location\";s:6:\"bottom\";s:28:\"et_fb_pref_builder_animation\";s:4:\"true\";s:41:\"et_fb_pref_builder_display_modal_settings\";s:5:\"false\";s:39:\"et_fb_pref_builder_enable_dummy_content\";s:4:\"true\";s:46:\"et_fb_pref_builder_enable_visual_theme_builder\";s:4:\"true\";s:21:\"et_fb_pref_event_mode\";s:5:\"hover\";s:20:\"et_fb_pref_view_mode\";s:7:\"desktop\";s:32:\"et_fb_pref_hide_disabled_modules\";s:5:\"false\";s:28:\"et_fb_pref_history_intervals\";i:1;s:29:\"et_fb_pref_page_creation_flow\";s:7:\"default\";s:42:\"et_fb_pref_quick_actions_always_start_with\";s:7:\"nothing\";s:44:\"et_fb_pref_quick_actions_show_recent_queries\";s:3:\"off\";s:39:\"et_fb_pref_quick_actions_recent_queries\";s:0:\"\";s:40:\"et_fb_pref_quick_actions_recent_category\";s:0:\"\";s:27:\"et_fb_pref_modal_preference\";s:7:\"default\";s:30:\"et_fb_pref_modal_snap_location\";s:0:\"\";s:21:\"et_fb_pref_modal_snap\";s:5:\"false\";s:27:\"et_fb_pref_modal_fullscreen\";s:5:\"false\";s:32:\"et_fb_pref_modal_dimension_width\";i:400;s:33:\"et_fb_pref_modal_dimension_height\";i:400;s:27:\"et_fb_pref_modal_position_x\";i:30;s:27:\"et_fb_pref_modal_position_y\";i:88;s:24:\"et_fb_pref_toolbar_click\";s:4:\"true\";s:26:\"et_fb_pref_toolbar_desktop\";s:4:\"true\";s:23:\"et_fb_pref_toolbar_grid\";s:4:\"true\";s:24:\"et_fb_pref_toolbar_hover\";s:4:\"true\";s:24:\"et_fb_pref_toolbar_phone\";s:4:\"true\";s:25:\"et_fb_pref_toolbar_tablet\";s:4:\"true\";s:28:\"et_fb_pref_toolbar_wireframe\";s:4:\"true\";s:23:\"et_fb_pref_toolbar_zoom\";s:4:\"true\";s:36:\"et_fb_pref_lv_modal_dimension_height\";i:0;s:35:\"et_fb_pref_lv_modal_dimension_width\";i:0;s:30:\"et_fb_pref_lv_modal_position_x\";i:0;s:30:\"et_fb_pref_lv_modal_position_y\";i:0;s:34:\"et_fb_pref_responsive_tablet_width\";i:768;s:35:\"et_fb_pref_responsive_tablet_height\";i:0;s:33:\"et_fb_pref_responsive_phone_width\";i:400;s:34:\"et_fb_pref_responsive_phone_height\";i:0;s:35:\"et_fb_pref_responsive_minimum_width\";i:320;s:35:\"et_fb_pref_responsive_maximum_width\";i:980;}','yes'),(147,'widget_aboutmewidget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(148,'widget_adsensewidget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(149,'widget_advwidget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(150,'shop_catalog_image_size','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}','yes'),(151,'shop_single_image_size','a:3:{s:5:\"width\";s:3:\"510\";s:6:\"height\";s:4:\"9999\";s:4:\"crop\";i:0;}','yes'),(152,'shop_thumbnail_image_size','a:3:{s:5:\"width\";s:3:\"157\";s:6:\"height\";s:3:\"157\";s:4:\"crop\";i:1;}','yes'),(153,'et_safe_mode_plugins_allowlist','a:8:{i:0;s:15:\"etdev/etdev.php\";i:1;s:15:\"bloom/bloom.php\";i:2;s:19:\"monarch/monarch.php\";i:3;s:29:\"divi-builder/divi-builder.php\";i:4;s:27:\"ari-adminer/ari-adminer.php\";i:5;s:31:\"query-monitor/query-monitor.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";}','yes'),(154,'et_support_center_installed','true','yes'),(155,'et_images_temp_folder','/nas/content/live/summitcountys1/wp-content/uploads/et_temp','yes'),(156,'et_schedule_clean_images_last_time','1711573513','yes'),(157,'et_bfb_settings','a:2:{s:10:\"enable_bfb\";s:2:\"on\";s:10:\"toggle_bfb\";s:2:\"on\";}','yes'),(158,'et_pb_builder_options','a:2:{i:0;b:0;s:35:\"email_provider_credentials_migrated\";b:1;}','yes'),(159,'et_divi_builder_global_presets_ng','O:8:\"stdClass\":1:{s:22:\"et_pb_fullwidth_slider\";O:8:\"stdClass\":2:{s:7:\"presets\";O:8:\"stdClass\":2:{s:8:\"_initial\";O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"Fullwidth Slider Preset 1\";s:7:\"created\";i:0;s:7:\"updated\";i:0;s:7:\"version\";s:6:\"4.24.2\";s:8:\"settings\";O:8:\"stdClass\":0:{}}s:36:\"6c42009f-f9f1-4090-b4fd-491d1f64acfa\";O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"Fullwidth Slider Preset 2\";s:7:\"created\";i:1711574866517;s:7:\"updated\";i:1711574866517;s:7:\"version\";s:6:\"4.24.2\";s:8:\"settings\";O:8:\"stdClass\":0:{}}}s:7:\"default\";s:8:\"_initial\";}}','no'),(160,'et_account_status','not_found','no'),(161,'_site_transient_et_update_all_plugins','O:8:\"stdClass\":3:{s:7:\"checked\";a:5:{s:40:\"userway-accessibility-widget/userway.php\";s:5:\"2.5.1\";s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:33:\"genesis-blocks/genesis-blocks.php\";s:5:\"3.1.3\";s:23:\"wp-smushit/wp-smush.php\";s:6:\"3.15.5\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"22.3\";}s:8:\"response\";a:0:{}s:12:\"last_checked\";i:1711580209;}','no'),(162,'_site_transient_et_update_themes','O:8:\"stdClass\":4:{s:7:\"checked\";a:2:{s:4:\"Divi\";s:6:\"4.24.2\";s:10:\"Divi_Child\";s:19:\"Updated for Divi 3+\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:4:\"Divi\";a:6:{s:5:\"theme\";s:4:\"Divi\";s:11:\"new_version\";s:6:\"4.24.2\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";s:7:\"package\";s:0:\"\";s:8:\"requires\";s:0:\"\";s:12:\"requires_php\";s:0:\"\";}}s:12:\"last_checked\";i:1711580210;}','no'),(163,'et_support_center_setup_done','processed','yes'),(165,'theme_mods_Divi_Child','a:5:{i:0;b:0;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:0:{}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";s:18:\"custom_css_post_id\";i:7;}','yes'),(167,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"22.3\";}','yes'),(168,'wpseo','a:110:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:20:\"taxonomy_made_public\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"22.3\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1711573708;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:0:\"\";s:8:\"home_url\";s:42:\"https://summitcountys1.wpenginepowered.com\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:10:{s:15:\"layout_category\";s:15:\"layout_category\";s:10:\"layout_tag\";s:10:\"layout_tag\";s:11:\"layout_pack\";s:11:\"layout_pack\";s:11:\"layout_type\";s:11:\"layout_type\";s:12:\"module_width\";s:12:\"module_width\";s:5:\"scope\";s:5:\"scope\";s:15:\"et_tb_item_type\";s:15:\"et_tb_item_type\";s:16:\"project_category\";s:16:\"project_category\";s:11:\"project_tag\";s:11:\"project_tag\";s:20:\"et_code_snippet_type\";s:20:\"et_code_snippet_type\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1711573712;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"project\";}s:28:\"last_known_public_taxonomies\";a:9:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:15:\"layout_category\";i:4;s:10:\"layout_tag\";i:5;s:15:\"et_tb_item_type\";i:6;s:16:\"project_category\";i:7;s:11:\"project_tag\";i:8;s:20:\"et_code_snippet_type\";}s:23:\"last_known_no_unindexed\";a:3:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1711580124;s:31:\"wpseo_unindexed_post_link_count\";i:1711580124;s:31:\"wpseo_unindexed_term_link_count\";i:1711580124;}s:14:\"new_post_types\";a:0:{}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:0;}','yes'),(169,'wpseo_titles','a:202:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:15:\"org-description\";s:0:\"\";s:9:\"org-email\";s:0:\"\";s:9:\"org-phone\";s:0:\"\";s:14:\"org-legal-name\";s:0:\"\";s:17:\"org-founding-date\";s:0:\"\";s:20:\"org-number-employees\";s:0:\"\";s:10:\"org-vat-id\";s:0:\"\";s:10:\"org-tax-id\";s:0:\"\";s:7:\"org-iso\";s:0:\"\";s:8:\"org-duns\";s:0:\"\";s:11:\"org-leicode\";s:0:\"\";s:9:\"org-naics\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:13:\"title-project\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-project\";s:0:\"\";s:15:\"noindex-project\";b:0;s:26:\"display-metabox-pt-project\";b:1;s:26:\"post_types-project-maintax\";i:0;s:24:\"schema-page-type-project\";s:7:\"WebPage\";s:27:\"schema-article-type-project\";s:4:\"None\";s:20:\"social-title-project\";s:9:\"%%title%%\";s:26:\"social-description-project\";s:0:\"\";s:24:\"social-image-url-project\";s:0:\"\";s:23:\"social-image-id-project\";i:0;s:23:\"title-ptarchive-project\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-project\";s:0:\"\";s:25:\"bctitle-ptarchive-project\";s:0:\"\";s:25:\"noindex-ptarchive-project\";b:0;s:30:\"social-title-ptarchive-project\";s:21:\"%%pt_plural%% Archive\";s:36:\"social-description-ptarchive-project\";s:0:\"\";s:34:\"social-image-url-ptarchive-project\";s:0:\"\";s:33:\"social-image-id-ptarchive-project\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:25:\"title-tax-layout_category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:28:\"metadesc-tax-layout_category\";s:0:\"\";s:35:\"display-metabox-tax-layout_category\";b:1;s:27:\"noindex-tax-layout_category\";b:0;s:32:\"social-title-tax-layout_category\";s:23:\"%%term_title%% Archives\";s:38:\"social-description-tax-layout_category\";s:0:\"\";s:36:\"social-image-url-tax-layout_category\";s:0:\"\";s:35:\"social-image-id-tax-layout_category\";i:0;s:33:\"taxonomy-layout_category-ptparent\";i:0;s:20:\"title-tax-layout_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:23:\"metadesc-tax-layout_tag\";s:0:\"\";s:30:\"display-metabox-tax-layout_tag\";b:1;s:22:\"noindex-tax-layout_tag\";b:0;s:27:\"social-title-tax-layout_tag\";s:23:\"%%term_title%% Archives\";s:33:\"social-description-tax-layout_tag\";s:0:\"\";s:31:\"social-image-url-tax-layout_tag\";s:0:\"\";s:30:\"social-image-id-tax-layout_tag\";i:0;s:28:\"taxonomy-layout_tag-ptparent\";i:0;s:25:\"title-tax-et_tb_item_type\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:28:\"metadesc-tax-et_tb_item_type\";s:0:\"\";s:35:\"display-metabox-tax-et_tb_item_type\";b:1;s:27:\"noindex-tax-et_tb_item_type\";b:0;s:32:\"social-title-tax-et_tb_item_type\";s:23:\"%%term_title%% Archives\";s:38:\"social-description-tax-et_tb_item_type\";s:0:\"\";s:36:\"social-image-url-tax-et_tb_item_type\";s:0:\"\";s:35:\"social-image-id-tax-et_tb_item_type\";i:0;s:33:\"taxonomy-et_tb_item_type-ptparent\";i:0;s:26:\"title-tax-project_category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:29:\"metadesc-tax-project_category\";s:0:\"\";s:36:\"display-metabox-tax-project_category\";b:1;s:28:\"noindex-tax-project_category\";b:0;s:33:\"social-title-tax-project_category\";s:23:\"%%term_title%% Archives\";s:39:\"social-description-tax-project_category\";s:0:\"\";s:37:\"social-image-url-tax-project_category\";s:0:\"\";s:36:\"social-image-id-tax-project_category\";i:0;s:34:\"taxonomy-project_category-ptparent\";i:0;s:21:\"title-tax-project_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-project_tag\";s:0:\"\";s:31:\"display-metabox-tax-project_tag\";b:1;s:23:\"noindex-tax-project_tag\";b:0;s:28:\"social-title-tax-project_tag\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-project_tag\";s:0:\"\";s:32:\"social-image-url-tax-project_tag\";s:0:\"\";s:31:\"social-image-id-tax-project_tag\";i:0;s:29:\"taxonomy-project_tag-ptparent\";i:0;s:30:\"title-tax-et_code_snippet_type\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:33:\"metadesc-tax-et_code_snippet_type\";s:0:\"\";s:40:\"display-metabox-tax-et_code_snippet_type\";b:1;s:32:\"noindex-tax-et_code_snippet_type\";b:0;s:37:\"social-title-tax-et_code_snippet_type\";s:23:\"%%term_title%% Archives\";s:43:\"social-description-tax-et_code_snippet_type\";s:0:\"\";s:41:\"social-image-url-tax-et_code_snippet_type\";s:0:\"\";s:40:\"social-image-id-tax-et_code_snippet_type\";i:0;s:38:\"taxonomy-et_code_snippet_type-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes'),(170,'wpseo_social','a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}','yes'),(171,'wpseo_sitemap_cache_validator_global','6H7Gr','no'),(172,'wp-smush-settings','a:25:{s:4:\"auto\";b:1;s:5:\"lossy\";i:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:0;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:8:\"no_scale\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:10:\"js_builder\";b:0;s:5:\"gform\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:0;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:0;s:17:\"background_images\";b:1;s:16:\"rest_api_support\";b:0;s:8:\"webp_mod\";b:0;s:16:\"background_email\";b:0;}','yes'),(173,'wp-smush-install-type','existing','no'),(174,'wp-smush-version','3.15.5','no'),(176,'wpmudev_recommended_plugins_registered','a:1:{s:23:\"wp-smushit/wp-smush.php\";a:1:{s:13:\"registered_at\";i:1711573742;}}','no'),(177,'wp_smush_pre_3_12_6_site','0','no'),(178,'wp_smush_global_stats','a:1:{s:25:\"rescan_required_timestamp\";i:1711573743;}','no'),(179,'wp_smush_image_sizes_state','a:2:{s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:3:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";b:1;}s:6:\"medium\";a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;}s:5:\"large\";a:3:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;}s:9:\"1536x1536\";a:3:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";b:0;}s:9:\"2048x2048\";a:3:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";b:0;}s:21:\"et-pb-post-main-image\";a:3:{s:5:\"width\";i:400;s:6:\"height\";i:250;s:4:\"crop\";b:1;}s:31:\"et-pb-post-main-image-fullwidth\";a:3:{s:5:\"width\";i:1080;s:6:\"height\";i:675;s:4:\"crop\";b:1;}s:21:\"et-pb-portfolio-image\";a:3:{s:5:\"width\";i:400;s:6:\"height\";i:284;s:4:\"crop\";b:1;}s:28:\"et-pb-portfolio-module-image\";a:3:{s:5:\"width\";i:510;s:6:\"height\";i:382;s:4:\"crop\";b:1;}s:28:\"et-pb-portfolio-image-single\";a:3:{s:5:\"width\";i:1080;s:6:\"height\";i:9999;s:4:\"crop\";b:0;}s:35:\"et-pb-gallery-module-image-portrait\";a:3:{s:5:\"width\";i:400;s:6:\"height\";i:516;s:4:\"crop\";b:1;}s:37:\"et-pb-post-main-image-fullwidth-large\";a:3:{s:5:\"width\";i:2880;s:6:\"height\";i:1800;s:4:\"crop\";b:1;}s:32:\"et-pb-image--responsive--desktop\";a:3:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"crop\";b:1;}s:31:\"et-pb-image--responsive--tablet\";a:3:{s:5:\"width\";i:980;s:6:\"height\";i:551;s:4:\"crop\";b:1;}s:30:\"et-pb-image--responsive--phone\";a:3:{s:5:\"width\";i:480;s:6:\"height\";i:270;s:4:\"crop\";b:1;}s:12:\"medium_large\";a:2:{s:5:\"width\";i:768;s:6:\"height\";i:0;}}s:4:\"hash\";i:105544970357;}','yes'),(181,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(182,'et_google_api_settings','a:3:{s:7:\"api_key\";s:0:\"\";s:16:\"use_google_fonts\";s:2:\"on\";s:26:\"enqueue_google_maps_script\";s:2:\"on\";}','yes'),(183,'et_automatic_updates_options','a:2:{s:8:\"username\";s:7:\"lnelson\";s:7:\"api_key\";s:40:\"ef09b9e19e9a2ece9d1e51bfdb2d42c40fbf6369\";}','no'),(184,'et_support_site_id','(F$KO@^8kP6r7*aISfeu','yes'),(189,'wpseo_sitemap_1_cache_validator','6JjlW','no'),(190,'wpseo_sitemap_page_cache_validator','6Jjm1','no'),(191,'et_divi_builder_global_presets_history_ng','O:8:\"stdClass\":2:{s:7:\"history\";a:1:{i:0;O:8:\"stdClass\":3:{s:8:\"settings\";O:8:\"stdClass\":1:{s:22:\"et_pb_fullwidth_slider\";O:8:\"stdClass\":2:{s:7:\"presets\";O:8:\"stdClass\":2:{s:8:\"_initial\";O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"Fullwidth Slider Preset 1\";s:7:\"created\";i:0;s:7:\"updated\";i:0;s:7:\"version\";s:6:\"4.24.2\";s:8:\"settings\";O:8:\"stdClass\":0:{}}s:36:\"6c42009f-f9f1-4090-b4fd-491d1f64acfa\";O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"Fullwidth Slider Preset 2\";s:7:\"created\";i:1711574866517;s:7:\"updated\";i:1711574866517;s:7:\"version\";s:6:\"4.24.2\";s:8:\"settings\";O:8:\"stdClass\":0:{}}}s:7:\"default\";s:8:\"_initial\";}}s:4:\"time\";i:1711574866673;s:5:\"label\";s:35:\"Preset Created For Fullwidth Slider\";}}s:5:\"index\";s:1:\"0\";}','no'),(192,'wpmudev_notices','a:3:{s:7:\"plugins\";a:1:{s:5:\"smush\";i:1711576384;}s:5:\"queue\";a:1:{s:5:\"smush\";a:3:{s:5:\"email\";i:1711576383;s:4:\"rate\";i:1711576383;s:8:\"giveaway\";i:1711576383;}}s:4:\"done\";a:0:{}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(7,8,'_edit_lock','1711574219:1'),(8,8,'_et_pb_use_builder','on'),(9,8,'_et_gb_content_width',''),(10,8,'footnotes',''),(11,8,'_edit_last','1'),(12,8,'_et_pb_post_hide_nav','default'),(13,8,'_et_pb_page_layout','et_right_sidebar'),(14,8,'_et_pb_side_nav','off'),(15,8,'_yoast_wpseo_estimated-reading-time-minutes','0'),(16,8,'_yoast_wpseo_wordproof_timestamp',''),(18,8,'_et_pb_built_for_post_type','page'),(19,8,'_et_pb_ab_subjects',''),(20,8,'_et_pb_enable_shortcode_tracking',''),(21,8,'_et_pb_ab_current_shortcode','[et_pb_split_track id=\"8\" /]'),(22,8,'_et_pb_custom_css',''),(23,8,'_et_pb_gutter_width','3'),(24,8,'_thumbnail_id','0'),(25,8,'_global_colors_info','{}'),(26,8,'_et_pb_first_image',''),(27,8,'_et_pb_truncate_post',''),(28,8,'_et_pb_truncate_post_date',''),(29,8,'_et_builder_version','VB|Divi|4.24.2'),(30,8,'_et_pb_show_page_creation','off');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-03-27 18:32:49','2024-03-27 18:32:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-03-27 18:32:49','2024-03-27 18:32:49','',0,'https://summitcountys1.wpenginepowered.com/?p=1',0,'post','',1),(2,1,'2024-03-27 18:32:49','2024-03-27 18:32:49','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://summitcountys1.wpenginepowered.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-03-27 18:32:49','2024-03-27 18:32:49','',0,'https://summitcountys1.wpenginepowered.com/?page_id=2',0,'page','',0),(3,1,'2024-03-27 18:32:49','2024-03-27 18:32:49','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://summitcountys1.wpenginepowered.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2024-03-27 18:32:49','2024-03-27 18:32:49','',0,'https://summitcountys1.wpenginepowered.com/?page_id=3',0,'page','',0),(4,1,'2024-03-27 20:58:17','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-03-27 20:58:17','0000-00-00 00:00:00','',0,'https://summitcountys1.wpenginepowered.com/?p=4',0,'post','',0),(7,1,'2024-03-27 21:12:59','2024-03-27 21:12:59','','Divi_Child','','publish','closed','closed','','divi_child','','','2024-03-27 21:12:59','2024-03-27 21:12:59','',0,'https://summitcountys1.wpenginepowered.com/?p=7',0,'custom_css','',0),(8,1,'2024-03-27 22:01:23','2024-03-27 22:01:23','[et_pb_section fb_built=\"1\" fullwidth=\"on\" theme_builder_area=\"post_content\" _builder_version=\"4.24.2\" _module_preset=\"default\"][et_pb_fullwidth_slider _builder_version=\"4.24.2\" _module_preset=\"default\" theme_builder_area=\"post_content\" hover_enabled=\"0\" sticky_enabled=\"0\"][et_pb_slide heading=\"Your Title Goes Here\" button_text=\"Click Here\" _builder_version=\"4.24.2\" _module_preset=\"default\" theme_builder_area=\"post_content\"]<p>Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.</p>[/et_pb_slide][et_pb_slide heading=\"Your Title Goes Here\" button_text=\"Click Here\" _builder_version=\"4.24.2\" _module_preset=\"default\" theme_builder_area=\"post_content\"]<p>Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.</p>[/et_pb_slide][/et_pb_fullwidth_slider][/et_pb_section][et_pb_section fb_built=\"1\" theme_builder_area=\"post_content\" _builder_version=\"4.24.2\" _module_preset=\"default\"][et_pb_row _builder_version=\"4.24.2\" _module_preset=\"default\" column_structure=\"1_2,1_2\" theme_builder_area=\"post_content\"][et_pb_column _builder_version=\"4.24.2\" _module_preset=\"default\" type=\"1_2\" theme_builder_area=\"post_content\"][et_pb_blog _builder_version=\"4.24.2\" _module_preset=\"default\" theme_builder_area=\"post_content\" hover_enabled=\"0\" sticky_enabled=\"0\"][/et_pb_blog][/et_pb_column][et_pb_column _builder_version=\"4.24.2\" _module_preset=\"default\" type=\"1_2\" theme_builder_area=\"post_content\"][/et_pb_column][/et_pb_row][/et_pb_section]','Home','','publish','closed','closed','','home','','','2024-03-27 22:01:24','2024-03-27 22:01:24','',0,'https://summitcountys1.wpenginepowered.com/?page_id=8',0,'page','',0),(9,1,'2024-03-27 21:16:46','2024-03-27 21:16:46','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-divi_child','','','2024-03-27 21:16:46','2024-03-27 21:16:46','',0,'https://summitcountys1.wpenginepowered.com/?p=9',0,'wp_global_styles','',0),(11,2,'2024-03-27 21:53:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-03-27 21:53:04','0000-00-00 00:00:00','',0,'https://summitcountys1.wpenginepowered.com/?p=11',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_smush_dir_images`
--

DROP TABLE IF EXISTS `wp_smush_dir_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int unsigned DEFAULT NULL,
  `orig_size` int unsigned DEFAULT NULL,
  `file_time` int unsigned DEFAULT NULL,
  `last_scan` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path_hash` (`path_hash`),
  KEY `image_size` (`image_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_smush_dir_images`
--

LOCK TABLES `wp_smush_dir_images` WRITE;
/*!40000 ALTER TABLE `wp_smush_dir_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_smush_dir_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(9,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Divi_Child','divi_child',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','summitcountys1'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'default_password_nag',''),(16,1,'show_welcome_panel','1'),(17,1,'session_tokens','a:3:{s:64:\"7ec9095f6a441c2e286829e489a93bf521cbb82ef3659aec53ded15f983b09a9\";a:4:{s:10:\"expiration\";i:1712782695;s:2:\"ip\";s:13:\"96.90.174.121\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36\";s:5:\"login\";i:1711573095;}s:64:\"2718cbc58d7b8de12407ea40b60efca13b5ccf2cb58cb8d50f729558a9b2f85d\";a:4:{s:10:\"expiration\";i:1711745926;s:2:\"ip\";s:13:\"96.90.174.121\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36\";s:5:\"login\";i:1711573126;}s:64:\"543ae5f7851047c6682f8d43c34a5f9d0f99c19cc908c63c19045b46a9baf298\";a:4:{s:10:\"expiration\";i:1712789807;s:2:\"ip\";s:12:\"174.29.87.46\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36\";s:5:\"login\";i:1711580207;}}'),(18,1,'wp_dashboard_quick_press_last_post_id','4'),(19,1,'community-events-location','a:1:{s:2:\"ip\";s:11:\"174.29.87.0\";}'),(20,2,'nickname','lnelson219'),(21,2,'first_name','Lee'),(22,2,'last_name','Nelson'),(23,2,'description',''),(24,2,'rich_editing','true'),(25,2,'syntax_highlighting','true'),(26,2,'comment_shortcuts','false'),(27,2,'admin_color','fresh'),(28,2,'use_ssl','0'),(29,2,'show_admin_bar_front','true'),(30,2,'locale',''),(31,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(32,2,'wp_user_level','10'),(33,2,'dismissed_wp_pointers',''),(34,1,'wp_yoast_notifications','a:2:{i:0;a:2:{s:7:\"message\";s:496:\"<p><strong>Huge SEO Issue: You&#039;re blocking access to robots.</strong> If you want search engines to show this site in their results, you must <a href=\"https://summitcountys1.wpenginepowered.com/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility. <button type=\"button\" id=\"robotsmessage-dismiss-button\" class=\"button-link hide-if-no-js\" data-nonce=\"d56cf7b8fc\">I don&#039;t want this site to show in the search results.</button></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-search-engines-discouraged\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:380:\"<p>We need to re-analyze some of your SEO data because of a change in the visibility of your taxonomies. Please help us do that by running the SEO data optimization. </p><p>We estimate this will take less than a minute.</p><a class=\"button\" href=\"https://summitcountys1.wpenginepowered.com/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Start SEO data optimization</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),(35,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-03-27T21:16:50.722Z\";}'),(36,2,'session_tokens','a:1:{s:64:\"eb6c8eeaf8f6458e180ab97ba4e908f09965a73e328b19c1caa4c19d8ed58b2b\";a:4:{s:10:\"expiration\";i:1711749182;s:2:\"ip\";s:13:\"96.90.174.121\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0\";s:5:\"login\";i:1711576382;}}'),(37,2,'wp_dashboard_quick_press_last_post_id','11'),(38,2,'wp_yoast_notifications','a:2:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:8;s:9:\"\0*\0reason\";s:20:\"taxonomy_made_public\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:7:\"user_id\";i:2;s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:496:\"<p><strong>Huge SEO Issue: You&#039;re blocking access to robots.</strong> If you want search engines to show this site in their results, you must <a href=\"https://summitcountys1.wpenginepowered.com/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility. <button type=\"button\" id=\"robotsmessage-dismiss-button\" class=\"button-link hide-if-no-js\" data-nonce=\"bef13df671\">I don&#039;t want this site to show in the search results.</button></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-search-engines-discouraged\";s:7:\"user_id\";i:2;s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),(39,2,'community-events-location','a:1:{s:2:\"ip\";s:11:\"96.90.174.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'summitcountys1','$P$Bqvy2xObYYN2eeSUl1cvJboGKee0gr1','summitcountys1','neil_pachter@comcast.net','https://summitcountys1.wpenginepowered.com','2024-03-27 18:32:49','',0,'summitcountys1'),(2,'lnelson219','$P$Bn96QhMGqoVqQBnqJn.cN45TfRxhQJ0','lnelson219','lnelson219@gmail.com','','2024-03-27 20:59:48','',0,'Lee Nelson');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_userway`
--

DROP TABLE IF EXISTS `wp_userway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_userway` (
  `preference_id` int NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `state` smallint NOT NULL,
  `created_time` timestamp NOT NULL,
  `updated_time` timestamp NOT NULL,
  PRIMARY KEY (`preference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_userway`
--

LOCK TABLES `wp_userway` WRITE;
/*!40000 ALTER TABLE `wp_userway` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_userway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_indexable` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'https://summitcountys1.wpenginepowered.com/?author=1','52:9a67de7da9cd97b1b7651bdb2c0d82a4',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://secure.gravatar.com/avatar/9de4dc9230680f7ce052361ba4bf1ca0?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://secure.gravatar.com/avatar/9de4dc9230680f7ce052361ba4bf1ca0?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2024-03-27 21:16:00','2024-03-27 22:01:24',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-03-27 22:01:24','2024-03-27 18:32:49',NULL),(2,'https://summitcountys1.wpenginepowered.com/','43:c60db52494ff62d2fbee9dbe9a82f0c6',NULL,'home-page',NULL,NULL,NULL,'%%sitename%% %%page%% %%sep%% %%sitedesc%%','Your SUPER-powered WP Engine Site','Home',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'%%sitename%%','','','0',NULL,NULL,NULL,NULL,NULL,'2024-03-27 21:16:00','2024-03-27 22:01:24',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-03-27 22:01:24','2024-03-27 18:32:49',NULL),(3,'https://summitcountys1.wpenginepowered.com/?page_id=3','53:9ffbf3d61b3de5320f4d10f0df9eaedd',3,'post','page',1,0,NULL,NULL,'Privacy Policy','draft',0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-27 21:16:41','2024-03-27 21:16:41',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-03-27 18:32:49','2024-03-27 18:32:49',0),(4,'https://summitcountys1.wpenginepowered.com/?page_id=2','53:3396a433ed96364719d5e815a0785f8a',2,'post','page',1,0,NULL,NULL,'Sample Page','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2024-03-27 21:16:41','2024-03-27 22:55:24',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-03-27 18:32:49','2024-03-27 18:32:49',0),(5,'https://summitcountys1.wpenginepowered.com/?post_type=project','61:a7df57a5135f8fa812d7651d32836dd8',NULL,'post-type-archive','project',NULL,NULL,'%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%','','Projects',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-27 21:16:45','2024-03-27 21:16:45',1,NULL,NULL,NULL,NULL,0,NULL,2,NULL,NULL,NULL),(6,'https://summitcountys1.wpenginepowered.com/?page_id=8','53:25bf3e7cc27934d87c6e619db729cde6',8,'post','page',1,0,NULL,NULL,'Home','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2024-03-27 21:16:56','2024-03-27 22:01:24',1,NULL,NULL,NULL,NULL,0,0,2,'2024-03-27 22:01:24','2024-03-27 22:01:23',0),(7,'https://summitcountys1.wpenginepowered.com/?p=1','47:2fc9d6c9a796e90541bcf65c91caa2f3',1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2024-03-27 22:55:24','2024-03-27 22:55:24',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-03-27 18:32:49','2024-03-27 18:32:49',0),(8,'https://summitcountys1.wpenginepowered.com/?cat=1','49:4fb22d1920c430e225a49983aa0e62cf',1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2024-03-27 22:55:24','2024-03-27 22:55:24',1,NULL,NULL,NULL,NULL,0,NULL,2,'2024-03-27 18:32:49','2024-03-27 18:32:49',NULL),(9,NULL,NULL,NULL,'system-page','404',NULL,NULL,'Page not found %%sep%% %%sitename%%',NULL,'Error 404: Page not found',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-27 22:55:24','2024-03-27 22:55:24',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL),(10,NULL,NULL,NULL,'system-page','search-result',NULL,NULL,'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-27 22:55:24','2024-03-27 22:55:24',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL),(11,NULL,NULL,NULL,'date-archive',NULL,NULL,NULL,'%%date%% %%page%% %%sep%% %%sitename%%','',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-27 22:55:24','2024-03-27 22:55:24',1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int unsigned NOT NULL,
  `ancestor_id` int unsigned NOT NULL,
  `depth` int unsigned DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (1,0,0,1),(2,0,0,1),(3,0,0,1),(4,0,0,1),(5,0,0,1),(6,0,0,1),(7,0,0,1),(8,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840'),(2,'20171228151841'),(3,'20190529075038'),(4,'20191011111109'),(5,'20200408101900'),(6,'20200420073606'),(7,'20200428123747'),(8,'20200428194858'),(9,'20200429105310'),(10,'20200430075614'),(11,'20200430150130'),(12,'20200507054848'),(13,'20200513133401'),(14,'20200609154515'),(15,'20200616130143'),(16,'20200617122511'),(17,'20200702141921'),(18,'20200728095334'),(19,'20201202144329'),(20,'20201216124002'),(21,'20201216141134'),(22,'20210817092415'),(23,'20211020091404'),(24,'20230417083836');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint unsigned DEFAULT NULL,
  `target_post_id` bigint unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int unsigned DEFAULT NULL,
  `target_indexable_id` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `width` int unsigned DEFAULT NULL,
  `size` int unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (1,'https://summitcountys1.wpenginepowered.com/wp-admin/',2,NULL,'internal',4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wp_summitcountys1'
--

--
-- Dumping routines for database 'wp_summitcountys1'
--
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
