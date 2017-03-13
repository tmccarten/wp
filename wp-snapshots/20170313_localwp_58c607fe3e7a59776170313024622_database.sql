/* DUPLICATOR MYSQL SCRIPT CREATED ON : 2017-03-13 02:46:32 */

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


/* INSERT TABLE DATA: wp_comments */
INSERT INTO `wp_comments` VALUES("1", "1", "A WordPress Commenter", "wapuu@wordpress.example", "https://wordpress.org/", "", "2017-02-08 11:38:35", "2017-02-08 11:38:35", "Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.", "0", "1", "", "", "0", "0");

/* INSERT TABLE DATA: wp_duplicator_packages */
INSERT INTO `wp_duplicator_packages` VALUES("3", "20170313_localwp", "58c607fe3e7a59776170313024622", "20", "2017-03-13 02:46:32", "wp_pj0noo", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-03-13 02:46:22\";s:7:\"Version\";s:6:\"1.1.34\";s:9:\"VersionWP\";s:5:\"4.7.3\";s:9:\"VersionDB\";s:6:\"5.6.17\";s:10:\"VersionPHP\";s:6:\"5.5.12\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:3;s:4:\"Name\";s:16:\"20170313_localwp\";s:4:\"Hash\";s:29:\"58c607fe3e7a59776170313024622\";s:8:\"NameHash\";s:46:\"20170313_localwp_58c607fe3e7a59776170313024622\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:40:\"D:/Software/wamp/www/wp/wp-snapshots/tmp\";s:8:\"StoreURL\";s:33:\"http://localhost/wp/wp-snapshots/\";s:8:\"ScanFile\";s:56:\"20170313_localwp_58c607fe3e7a59776170313024622_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";s:9:\"wp_pj0noo\";s:7:\"Archive\";O:11:\"DUP_Archive\":13:{s:10:\"FilterDirs\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:4:\"File\";s:58:\"20170313_localwp_58c607fe3e7a59776170313024622_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:23:\"D:/Software/wamp/www/wp\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":6:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-03-13 02:46:22\";s:7:\"Version\";s:6:\"1.1.34\";s:9:\"VersionWP\";s:5:\"4.7.3\";s:9:\"VersionDB\";s:6:\"5.6.17\";s:10:\"VersionPHP\";s:6:\"5.5.12\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:16:\"20170313_localwp\";s:4:\"Hash\";s:29:\"58c607fe3e7a59776170313024622\";s:8:\"NameHash\";s:46:\"20170313_localwp_58c607fe3e7a59776170313024622\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:40:\"D:/Software/wamp/www/wp/wp-snapshots/tmp\";s:8:\"StoreURL\";s:33:\"http://localhost/wp/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":12:{s:4:\"File\";s:60:\"20170313_localwp_58c607fe3e7a59776170313024622_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:25:\"06167055.webdevmmu.uk/wp/\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:29:\"06167055webdevmmuukwpm2nvq355\";s:10:\"OptsDBUser\";s:16:\"wpehf3k493hmdvi8\";s:12:\"OptsSSLAdmin\";i:0;s:12:\"OptsSSLLogin\";i:0;s:11:\"OptsCacheWP\";i:0;s:13:\"OptsCachePath\";i:0;s:10:\"OptsURLNew\";s:0:\"\";s:10:\"\0*\0Package\";r:52;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:59:\"20170313_localwp_58c607fe3e7a59776170313024622_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}}s:9:\"Installer\";r:74;s:8:\"Database\";r:87;}");

/* INSERT TABLE DATA: wp_options */
INSERT INTO `wp_options` VALUES("1", "siteurl", "http://localhost/wp", "yes");
INSERT INTO `wp_options` VALUES("2", "home", "http://localhost/wp", "yes");
INSERT INTO `wp_options` VALUES("3", "blogname", "Local WP", "yes");
INSERT INTO `wp_options` VALUES("4", "blogdescription", "Just another WordPress site", "yes");
INSERT INTO `wp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `wp_options` VALUES("6", "admin_email", "06167055@stu.mmu.ac.uk", "yes");
INSERT INTO `wp_options` VALUES("7", "start_of_week", "1", "yes");
INSERT INTO `wp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `wp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `wp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `wp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `wp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `wp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `wp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `wp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `wp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `wp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `wp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `wp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `wp_options` VALUES("21", "default_pingback_flag", "1", "yes");
INSERT INTO `wp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `wp_options` VALUES("23", "date_format", "F j, Y", "yes");
INSERT INTO `wp_options` VALUES("24", "time_format", "g:i a", "yes");
INSERT INTO `wp_options` VALUES("25", "links_updated_date_format", "F j, Y g:i a", "yes");
INSERT INTO `wp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `wp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("28", "permalink_structure", "/index.php/%year%/%monthnum%/%day%/%postname%/", "yes");
INSERT INTO `wp_options` VALUES("29", "rewrite_rules", "a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=18&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}", "yes");
INSERT INTO `wp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `wp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `wp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `wp_options` VALUES("33", "active_plugins", "a:2:{i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:25:\"duplicator/duplicator.php\";}", "yes");
INSERT INTO `wp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `wp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `wp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `wp_options` VALUES("37", "gmt_offset", "0", "yes");
INSERT INTO `wp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `wp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `wp_options` VALUES("40", "template", "agency_ready_wp", "yes");
INSERT INTO `wp_options` VALUES("41", "stylesheet", "agency_ready_wp", "yes");
INSERT INTO `wp_options` VALUES("42", "comment_whitelist", "1", "yes");
INSERT INTO `wp_options` VALUES("43", "blacklist_keys", "", "no");
INSERT INTO `wp_options` VALUES("44", "comment_registration", "0", "yes");
INSERT INTO `wp_options` VALUES("45", "html_type", "text/html", "yes");
INSERT INTO `wp_options` VALUES("46", "use_trackback", "0", "yes");
INSERT INTO `wp_options` VALUES("47", "default_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("48", "db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("49", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `wp_options` VALUES("50", "upload_path", "", "yes");
INSERT INTO `wp_options` VALUES("51", "blog_public", "1", "yes");
INSERT INTO `wp_options` VALUES("52", "default_link_category", "2", "yes");
INSERT INTO `wp_options` VALUES("53", "show_on_front", "page", "yes");
INSERT INTO `wp_options` VALUES("54", "tag_base", "", "yes");
INSERT INTO `wp_options` VALUES("55", "show_avatars", "1", "yes");
INSERT INTO `wp_options` VALUES("56", "avatar_rating", "G", "yes");
INSERT INTO `wp_options` VALUES("57", "upload_url_path", "", "yes");
INSERT INTO `wp_options` VALUES("58", "thumbnail_size_w", "150", "yes");
INSERT INTO `wp_options` VALUES("59", "thumbnail_size_h", "150", "yes");
INSERT INTO `wp_options` VALUES("60", "thumbnail_crop", "1", "yes");
INSERT INTO `wp_options` VALUES("61", "medium_size_w", "300", "yes");
INSERT INTO `wp_options` VALUES("62", "medium_size_h", "300", "yes");
INSERT INTO `wp_options` VALUES("63", "avatar_default", "mystery", "yes");
INSERT INTO `wp_options` VALUES("64", "large_size_w", "1024", "yes");
INSERT INTO `wp_options` VALUES("65", "large_size_h", "1024", "yes");
INSERT INTO `wp_options` VALUES("66", "image_default_link_type", "none", "yes");
INSERT INTO `wp_options` VALUES("67", "image_default_size", "", "yes");
INSERT INTO `wp_options` VALUES("68", "image_default_align", "", "yes");
INSERT INTO `wp_options` VALUES("69", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("70", "close_comments_days_old", "14", "yes");
INSERT INTO `wp_options` VALUES("71", "thread_comments", "1", "yes");
INSERT INTO `wp_options` VALUES("72", "thread_comments_depth", "5", "yes");
INSERT INTO `wp_options` VALUES("73", "page_comments", "0", "yes");
INSERT INTO `wp_options` VALUES("74", "comments_per_page", "50", "yes");
INSERT INTO `wp_options` VALUES("75", "default_comments_page", "newest", "yes");
INSERT INTO `wp_options` VALUES("76", "comment_order", "asc", "yes");
INSERT INTO `wp_options` VALUES("77", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("78", "widget_categories", "a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("79", "widget_text", "a:9:{i:2;a:2:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:200:\"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>\";}i:3;a:2:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";}i:4;a:2:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:200:\"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>\";}i:5;a:2:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";}s:12:\"_multiwidget\";i:1;i:6;a:2:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:200:\"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>\";}i:7;a:2:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";}i:8;a:2:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:200:\"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>\";}i:9;a:2:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";}}", "yes");
INSERT INTO `wp_options` VALUES("80", "widget_rss", "a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("81", "uninstall_plugins", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("82", "timezone_string", "", "yes");
INSERT INTO `wp_options` VALUES("83", "page_for_posts", "21", "yes");
INSERT INTO `wp_options` VALUES("84", "page_on_front", "18", "yes");
INSERT INTO `wp_options` VALUES("85", "default_post_format", "0", "yes");
INSERT INTO `wp_options` VALUES("86", "link_manager_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("87", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `wp_options` VALUES("88", "site_icon", "0", "yes");
INSERT INTO `wp_options` VALUES("89", "medium_large_size_w", "768", "yes");
INSERT INTO `wp_options` VALUES("90", "medium_large_size_h", "0", "yes");
INSERT INTO `wp_options` VALUES("91", "initial_db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("92", "wp_user_roles", "a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}", "yes");
INSERT INTO `wp_options` VALUES("93", "fresh_site", "0", "yes");
INSERT INTO `wp_options` VALUES("94", "widget_search", "a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}}", "yes");
INSERT INTO `wp_options` VALUES("95", "widget_recent-posts", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("96", "widget_recent-comments", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("97", "widget_archives", "a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("98", "widget_meta", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("99", "sidebars_widgets", "a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `wp_options` VALUES("100", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("101", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("102", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("103", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("104", "cron", "a:4:{i:1489405116;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1489405159;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1489407855;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `wp_options` VALUES("105", "theme_mods_twentyseventeen", "a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:22;s:7:\"panel_2\";i:19;s:7:\"panel_3\";i:21;s:7:\"panel_4\";i:20;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1487717885;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}}", "yes");
INSERT INTO `wp_options` VALUES("118", "can_compress_scripts", "0", "no");
INSERT INTO `wp_options` VALUES("147", "recently_activated", "a:2:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1489372905;s:9:\"hello.php\";i:1489177364;}", "yes");
INSERT INTO `wp_options` VALUES("154", "wpcf7", "a:2:{s:7:\"version\";s:5:\"4.6.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1486556511;s:7:\"version\";s:5:\"4.6.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}", "yes");
INSERT INTO `wp_options` VALUES("158", "nav_menu_options", "a:1:{s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `wp_options` VALUES("183", "theme_mods_agency_ready_wp", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}}", "yes");
INSERT INTO `wp_options` VALUES("184", "current_theme", "Tom McCarten Portfolio", "yes");
INSERT INTO `wp_options` VALUES("185", "theme_switched", "", "yes");
INSERT INTO `wp_options` VALUES("186", "theme_switched_via_customizer", "", "yes");
INSERT INTO `wp_options` VALUES("187", "customize_stashed_theme_mods", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("195", "auto_core_update_notified", "a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"06167055@stu.mmu.ac.uk\";s:7:\"version\";s:5:\"4.7.3\";s:9:\"timestamp\";i:1489174930;}", "no");
INSERT INTO `wp_options` VALUES("261", "duplicator_version_plugin", "1.1.34", "yes");
INSERT INTO `wp_options` VALUES("264", "ai1wm_secret_key", "yZM9WmSGAkt2", "yes");
INSERT INTO `wp_options` VALUES("265", "ai1wm_status", "a:3:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:216:\"<a href=\"http://localhost/wp/wp-content/ai1wm-backups/06167055.webdevmmu.uk-wp-20170313-021636-809.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\"><span>Download 06167055.webdevmmu.uk</span><em>Size: 8 MB</em></a>\";s:5:\"title\";N;}", "yes");
INSERT INTO `wp_options` VALUES("266", "duplicator_settings", "a:10:{s:7:\"version\";s:6:\"1.1.34\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:0;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;}", "yes");
INSERT INTO `wp_options` VALUES("267", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.3\";s:7:\"version\";s:5:\"4.7.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1489372770;s:15:\"version_checked\";s:5:\"4.7.3\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("268", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1489372891;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:3:\"3.2\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.41\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"4.6.1\";s:25:\"duplicator/duplicator.php\";s:6:\"1.1.34\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.3.3.zip\";s:6:\"tested\";s:5:\"4.7.3\";s:13:\"compatibility\";O:8:\"stdClass\":1:{s:6:\"scalar\";O:8:\"stdClass\":1:{s:6:\"scalar\";b:0;}}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"4.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.4.7.zip\";s:6:\"tested\";s:5:\"4.7.3\";s:13:\"compatibility\";O:8:\"stdClass\":1:{s:6:\"scalar\";O:8:\"stdClass\":1:{s:6:\"scalar\";b:0;}}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"46859\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.41\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.41.zip\";}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"22600\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.1.34\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.1.34.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}}}", "no");
INSERT INTO `wp_options` VALUES("269", "_site_transient_timeout_theme_roots", "1489374571", "no");
INSERT INTO `wp_options` VALUES("270", "_site_transient_theme_roots", "a:4:{s:15:\"agency_ready_wp\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}", "no");
INSERT INTO `wp_options` VALUES("271", "_site_transient_update_themes", "O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1489372772;s:7:\"checked\";a:4:{s:15:\"agency_ready_wp\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"1.1\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("274", "ai1wm_updater", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("275", "_transient_timeout_plugin_slugs", "1489459380", "no");
INSERT INTO `wp_options` VALUES("276", "_transient_plugin_slugs", "a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:25:\"duplicator/duplicator.php\";i:4;s:9:\"hello.php\";}", "no");
INSERT INTO `wp_options` VALUES("278", "duplicator_ui_view_state", "a:1:{s:24:\"dup-pack-installer-panel\";s:1:\"1\";}", "yes");
INSERT INTO `wp_options` VALUES("279", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-03-13 02:46:22\";s:7:\"Version\";s:6:\"1.1.34\";s:9:\"VersionWP\";s:5:\"4.7.3\";s:9:\"VersionDB\";s:6:\"5.6.17\";s:10:\"VersionPHP\";s:6:\"5.5.12\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:16:\"20170313_localwp\";s:4:\"Hash\";s:29:\"58c607fe3e7a59776170313024622\";s:8:\"NameHash\";s:46:\"20170313_localwp_58c607fe3e7a59776170313024622\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:40:\"D:/Software/wamp/www/wp/wp-snapshots/tmp\";s:8:\"StoreURL\";s:33:\"http://localhost/wp/wp-snapshots/\";s:8:\"ScanFile\";s:56:\"20170313_localwp_58c607fe3e7a59776170313024622_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":13:{s:10:\"FilterDirs\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:23:\"D:/Software/wamp/www/wp\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":6:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-03-13 02:46:22\";s:7:\"Version\";s:6:\"1.1.34\";s:9:\"VersionWP\";s:5:\"4.7.3\";s:9:\"VersionDB\";s:6:\"5.6.17\";s:10:\"VersionPHP\";s:6:\"5.5.12\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:16:\"20170313_localwp\";s:4:\"Hash\";s:29:\"58c607fe3e7a59776170313024622\";s:8:\"NameHash\";s:46:\"20170313_localwp_58c607fe3e7a59776170313024622\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:40:\"D:/Software/wamp/www/wp/wp-snapshots/tmp\";s:8:\"StoreURL\";s:33:\"http://localhost/wp/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":12:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:25:\"06167055.webdevmmu.uk/wp/\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:29:\"06167055webdevmmuukwpm2nvq355\";s:10:\"OptsDBUser\";s:16:\"wpehf3k493hmdvi8\";s:12:\"OptsSSLAdmin\";i:0;s:12:\"OptsSSLLogin\";i:0;s:11:\"OptsCacheWP\";i:0;s:13:\"OptsCachePath\";i:0;s:10:\"OptsURLNew\";s:0:\"\";s:10:\"\0*\0Package\";r:52;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:52;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}}s:9:\"Installer\";r:74;s:8:\"Database\";r:87;}", "yes");

/* INSERT TABLE DATA: wp_postmeta */
INSERT INTO `wp_postmeta` VALUES("1", "2", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("2", "1", "_edit_lock", "1486554171:1");
INSERT INTO `wp_postmeta` VALUES("24", "13", "_form", "<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]");
INSERT INTO `wp_postmeta` VALUES("25", "13", "_mail", "a:8:{s:7:\"subject\";s:38:\"06167055.webdevmmu.uk \"[your-subject]\"\";s:6:\"sender\";s:45:\"[your-name] <wordpress@06167055.webdevmmu.uk>\";s:4:\"body\";s:178:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on 06167055.webdevmmu.uk (http://localhost/wp)\";s:9:\"recipient\";s:22:\"06167055@stu.mmu.ac.uk\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("26", "13", "_mail_2", "a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:38:\"06167055.webdevmmu.uk \"[your-subject]\"\";s:6:\"sender\";s:55:\"06167055.webdevmmu.uk <wordpress@06167055.webdevmmu.uk>\";s:4:\"body\";s:120:\"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on 06167055.webdevmmu.uk (http://localhost/wp)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:32:\"Reply-To: 06167055@stu.mmu.ac.uk\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("27", "13", "_messages", "a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}");
INSERT INTO `wp_postmeta` VALUES("28", "13", "_additional_settings", NULL);
INSERT INTO `wp_postmeta` VALUES("29", "13", "_locale", "en_US");
INSERT INTO `wp_postmeta` VALUES("30", "2", "_edit_lock", "1486556455:1");
INSERT INTO `wp_postmeta` VALUES("31", "15", "_wp_attached_file", "2017/02/espresso-1.jpg");
INSERT INTO `wp_postmeta` VALUES("32", "15", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/02/espresso-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("33", "15", "_starter_content_theme", "twentyseventeen");
INSERT INTO `wp_postmeta` VALUES("35", "16", "_wp_attached_file", "2017/02/sandwich-1.jpg");
INSERT INTO `wp_postmeta` VALUES("36", "16", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/02/sandwich-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("37", "16", "_starter_content_theme", "twentyseventeen");
INSERT INTO `wp_postmeta` VALUES("39", "17", "_wp_attached_file", "2017/02/coffee-1.jpg");
INSERT INTO `wp_postmeta` VALUES("40", "17", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/02/coffee-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("41", "17", "_starter_content_theme", "twentyseventeen");
INSERT INTO `wp_postmeta` VALUES("44", "19", "_thumbnail_id", "16");
INSERT INTO `wp_postmeta` VALUES("46", "20", "_thumbnail_id", "15");
INSERT INTO `wp_postmeta` VALUES("48", "21", "_thumbnail_id", "17");
INSERT INTO `wp_postmeta` VALUES("50", "22", "_thumbnail_id", "15");
INSERT INTO `wp_postmeta` VALUES("52", "29", "_menu_item_type", "custom");
INSERT INTO `wp_postmeta` VALUES("53", "29", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("54", "29", "_menu_item_object_id", "29");
INSERT INTO `wp_postmeta` VALUES("55", "29", "_menu_item_object", "custom");
INSERT INTO `wp_postmeta` VALUES("56", "29", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("57", "29", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("58", "29", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("59", "29", "_menu_item_url", "http://localhost/wp");
INSERT INTO `wp_postmeta` VALUES("60", "30", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("61", "30", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("62", "30", "_menu_item_object_id", "19");
INSERT INTO `wp_postmeta` VALUES("63", "30", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("64", "30", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("65", "30", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("66", "30", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("67", "30", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("68", "31", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("69", "31", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("70", "31", "_menu_item_object_id", "21");
INSERT INTO `wp_postmeta` VALUES("71", "31", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("72", "31", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("73", "31", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("74", "31", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("75", "31", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("76", "32", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("77", "32", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("78", "32", "_menu_item_object_id", "20");
INSERT INTO `wp_postmeta` VALUES("79", "32", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("80", "32", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("81", "32", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("82", "32", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("83", "32", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("84", "33", "_menu_item_type", "custom");
INSERT INTO `wp_postmeta` VALUES("85", "33", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("86", "33", "_menu_item_object_id", "33");
INSERT INTO `wp_postmeta` VALUES("87", "33", "_menu_item_object", "custom");
INSERT INTO `wp_postmeta` VALUES("88", "33", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("89", "33", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("90", "33", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("91", "33", "_menu_item_url", "https://www.yelp.com");
INSERT INTO `wp_postmeta` VALUES("92", "34", "_menu_item_type", "custom");
INSERT INTO `wp_postmeta` VALUES("93", "34", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("94", "34", "_menu_item_object_id", "34");
INSERT INTO `wp_postmeta` VALUES("95", "34", "_menu_item_object", "custom");
INSERT INTO `wp_postmeta` VALUES("96", "34", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("97", "34", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("98", "34", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("99", "34", "_menu_item_url", "https://www.facebook.com/wordpress");
INSERT INTO `wp_postmeta` VALUES("100", "35", "_menu_item_type", "custom");
INSERT INTO `wp_postmeta` VALUES("101", "35", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("102", "35", "_menu_item_object_id", "35");
INSERT INTO `wp_postmeta` VALUES("103", "35", "_menu_item_object", "custom");
INSERT INTO `wp_postmeta` VALUES("104", "35", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("105", "35", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("106", "35", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("107", "35", "_menu_item_url", "https://twitter.com/wordpress");
INSERT INTO `wp_postmeta` VALUES("108", "36", "_menu_item_type", "custom");
INSERT INTO `wp_postmeta` VALUES("109", "36", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("110", "36", "_menu_item_object_id", "36");
INSERT INTO `wp_postmeta` VALUES("111", "36", "_menu_item_object", "custom");
INSERT INTO `wp_postmeta` VALUES("112", "36", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("113", "36", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("114", "36", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("115", "36", "_menu_item_url", "https://www.instagram.com/explore/tags/wordcamp/");
INSERT INTO `wp_postmeta` VALUES("116", "37", "_menu_item_type", "custom");
INSERT INTO `wp_postmeta` VALUES("117", "37", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("118", "37", "_menu_item_object_id", "37");
INSERT INTO `wp_postmeta` VALUES("119", "37", "_menu_item_object", "custom");
INSERT INTO `wp_postmeta` VALUES("120", "37", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("121", "37", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("122", "37", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("123", "37", "_menu_item_url", "mailto:wordpress@example.com");
INSERT INTO `wp_postmeta` VALUES("126", "20", "_edit_lock", "1489177339:1");
INSERT INTO `wp_postmeta` VALUES("127", "20", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("128", "41", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("129", "41", "_wp_trash_meta_time", "1487717885");
INSERT INTO `wp_postmeta` VALUES("130", "19", "_edit_lock", "1489177739:1");
INSERT INTO `wp_postmeta` VALUES("131", "44", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("132", "44", "_edit_lock", "1489177044:1");
INSERT INTO `wp_postmeta` VALUES("135", "46", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("136", "46", "_edit_lock", "1489177181:1");
INSERT INTO `wp_postmeta` VALUES("139", "21", "_edit_lock", "1489177310:1");
INSERT INTO `wp_postmeta` VALUES("140", "22", "_edit_lock", "1489177366:1");
INSERT INTO `wp_postmeta` VALUES("141", "18", "_edit_lock", "1489177403:1");
INSERT INTO `wp_postmeta` VALUES("142", "48", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("143", "48", "_edit_lock", "1489372834:1");

/* INSERT TABLE DATA: wp_posts */
INSERT INTO `wp_posts` VALUES("1", "1", "2017-02-08 11:38:35", "2017-02-08 11:38:35", "Welcome to WordPress. This is your first post. Edit or delete it, then start writing!", "Hello world!", "", "publish", "open", "open", "", "hello-world", "", "", "2017-02-08 11:38:35", "2017-02-08 11:38:35", "", "0", "http://localhost/wp/?p=1", "0", "post", "", "1");
INSERT INTO `wp_posts` VALUES("2", "1", "2017-02-08 11:38:35", "2017-02-08 11:38:35", "This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!", "Sample Page", "", "publish", "closed", "open", "", "sample-page", "", "", "2017-02-08 11:38:35", "2017-02-08 11:38:35", "", "0", "http://localhost/wp/?page_id=2", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("13", "1", "2017-02-08 12:21:51", "2017-02-08 12:21:51", "<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\n06167055.webdevmmu.uk \"[your-subject]\"\n[your-name] <wordpress@06167055.webdevmmu.uk>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on 06167055.webdevmmu.uk (http://localhost/wp)\n06167055@stu.mmu.ac.uk\nReply-To: [your-email]\n\n0\n0\n\n06167055.webdevmmu.uk \"[your-subject]\"\n06167055.webdevmmu.uk <wordpress@06167055.webdevmmu.uk>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on 06167055.webdevmmu.uk (http://localhost/wp)\n[your-email]\nReply-To: 06167055@stu.mmu.ac.uk\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.", "Contact form 1", "", "publish", "closed", "closed", "", "contact-form-1", "", "", "2017-02-08 12:21:51", "2017-02-08 12:21:51", "", "0", "http://localhost/wp/?post_type=wpcf7_contact_form&p=13", "0", "wpcf7_contact_form", "", "0");
INSERT INTO `wp_posts` VALUES("15", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Espresso", "", "inherit", "open", "closed", "", "espresso", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/wp-content/uploads/2017/02/espresso-1.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("16", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Sandwich", "", "inherit", "open", "closed", "", "sandwich", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/wp-content/uploads/2017/02/sandwich-1.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("17", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Coffee", "", "inherit", "open", "closed", "", "coffee", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/wp-content/uploads/2017/02/coffee-1.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("18", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.", "Home", "", "publish", "closed", "closed", "", "home", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/?page_id=18", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("19", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.", "About", "", "publish", "closed", "closed", "", "about", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/?page_id=19", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("20", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "[contact-form-7 id=\"13\" title=\"Contact form 1\"]", "Contact", "", "publish", "closed", "closed", "", "contact", "", "", "2017-02-08 12:27:44", "2017-02-08 12:27:44", "", "0", "http://localhost/wp/?page_id=20", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("21", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Blog", "", "publish", "closed", "closed", "", "blog", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/?page_id=21", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("22", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.", "A homepage section", "", "publish", "closed", "closed", "", "a-homepage-section", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/?page_id=22", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("24", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.", "Home", "", "inherit", "closed", "closed", "", "18-revision-v1", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "18", "http://localhost/wp/index.php/2017/02/08/18-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("25", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.", "About", "", "inherit", "closed", "closed", "", "19-revision-v1", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "19", "http://localhost/wp/index.php/2017/02/08/19-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("26", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.", "Contact", "", "inherit", "closed", "closed", "", "20-revision-v1", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "20", "http://localhost/wp/index.php/2017/02/08/20-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("27", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Blog", "", "inherit", "closed", "closed", "", "21-revision-v1", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "21", "http://localhost/wp/index.php/2017/02/08/21-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("28", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.", "A homepage section", "", "inherit", "closed", "closed", "", "22-revision-v1", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "22", "http://localhost/wp/index.php/2017/02/08/22-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("29", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Home", "", "publish", "closed", "closed", "", "home", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/home/", "0", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("30", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", " ", "", "", "publish", "closed", "closed", "", "30", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/30/", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("31", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", " ", "", "", "publish", "closed", "closed", "", "31", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/31/", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("32", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", " ", "", "", "publish", "closed", "closed", "", "32", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/32/", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("33", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Yelp", "", "publish", "closed", "closed", "", "yelp", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/yelp/", "0", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("34", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Facebook", "", "publish", "closed", "closed", "", "facebook", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/facebook/", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("35", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Twitter", "", "publish", "closed", "closed", "", "twitter", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/twitter/", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("36", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Instagram", "", "publish", "closed", "closed", "", "instagram", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/instagram/", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("37", "1", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "Email", "", "publish", "closed", "closed", "", "email", "", "", "2017-02-08 12:26:47", "2017-02-08 12:26:47", "", "0", "http://localhost/wp/index.php/2017/02/08/email/", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("38", "1", "2017-02-08 12:27:30", "2017-02-08 12:27:30", "[contact-form-7 id=\"13\" title=\"Contact form 1\"]", "Contact", "", "inherit", "closed", "closed", "", "20-autosave-v1", "", "", "2017-02-08 12:27:30", "2017-02-08 12:27:30", "", "20", "http://localhost/wp/index.php/2017/02/08/20-autosave-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("39", "1", "2017-02-08 12:27:44", "2017-02-08 12:27:44", "[contact-form-7 id=\"13\" title=\"Contact form 1\"]", "Contact", "", "inherit", "closed", "closed", "", "20-revision-v1", "", "", "2017-02-08 12:27:44", "2017-02-08 12:27:44", "", "20", "http://localhost/wp/index.php/2017/02/08/20-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("41", "1", "2017-02-21 22:58:05", "2017-02-21 22:58:05", "{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-6\",\n                \"search-3\",\n                \"text-7\"\n            ],\n            \"sidebar-2\": [\n                \"text-8\"\n            ],\n            \"sidebar-3\": [\n                \"text-9\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1\n    }\n}", "", "", "trash", "closed", "closed", "", "f6fd6d1b-a434-4fe9-9b21-7d1b0028edc5", "", "", "2017-02-21 22:58:05", "2017-02-21 22:58:05", "", "0", "http://localhost/wp/?p=41", "0", "customize_changeset", "", "0");
INSERT INTO `wp_posts` VALUES("43", "1", "2017-03-10 20:15:56", "0000-00-00 00:00:00", "", "Auto Draft", "", "auto-draft", "open", "open", "", "", "", "", "2017-03-10 20:15:56", "0000-00-00 00:00:00", "", "0", "http://localhost/wp/?p=43", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("44", "1", "2017-03-10 20:18:40", "2017-03-10 20:18:40", "Let me see what this looks like", "Testing this thing...", "", "publish", "open", "open", "", "testing-this-thing", "", "", "2017-03-10 20:18:40", "2017-03-10 20:18:40", "", "0", "http://localhost/wp/?p=44", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("45", "1", "2017-03-10 20:18:40", "2017-03-10 20:18:40", "Let me see what this looks like", "Testing this thing...", "", "inherit", "closed", "closed", "", "44-revision-v1", "", "", "2017-03-10 20:18:40", "2017-03-10 20:18:40", "", "44", "http://localhost/wp/index.php/2017/03/10/44-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("46", "1", "2017-03-10 20:20:19", "2017-03-10 20:20:19", "Let me see what happens here", "Second test", "", "publish", "open", "open", "", "second-test", "", "", "2017-03-10 20:20:19", "2017-03-10 20:20:19", "", "0", "http://localhost/wp/?p=46", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("47", "1", "2017-03-10 20:20:19", "2017-03-10 20:20:19", "Let me see what happens here", "Second test", "", "inherit", "closed", "closed", "", "46-revision-v1", "", "", "2017-03-10 20:20:19", "2017-03-10 20:20:19", "", "46", "http://localhost/wp/index.php/2017/03/10/46-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("48", "1", "2017-03-13 02:42:38", "2017-03-13 02:42:38", "lets see if it works on the live site in a minute...", "TEsting this locally...", "", "publish", "open", "open", "", "testing-this-locally", "", "", "2017-03-13 02:42:38", "2017-03-13 02:42:38", "", "0", "http://localhost/wp/?p=48", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("49", "1", "2017-03-13 02:42:38", "2017-03-13 02:42:38", "lets see if it works on the live site in a minute...", "TEsting this locally...", "", "inherit", "closed", "closed", "", "48-revision-v1", "", "", "2017-03-13 02:42:38", "2017-03-13 02:42:38", "", "48", "http://localhost/wp/index.php/2017/03/13/48-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("50", "1", "2017-03-13 02:42:58", "0000-00-00 00:00:00", "", "Auto Draft", "", "auto-draft", "open", "open", "", "", "", "", "2017-03-13 02:42:58", "0000-00-00 00:00:00", "", "0", "http://localhost/wp/?p=50", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("51", "1", "2017-03-13 02:42:59", "0000-00-00 00:00:00", "", "Auto Draft", "", "auto-draft", "open", "open", "", "", "", "", "2017-03-13 02:42:59", "0000-00-00 00:00:00", "", "0", "http://localhost/wp/?p=51", "0", "post", "", "0");

/* INSERT TABLE DATA: wp_term_relationships */
INSERT INTO `wp_term_relationships` VALUES("1", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("29", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("30", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("31", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("32", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("33", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("34", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("35", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("36", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("37", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("44", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("46", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("48", "1", "0");

/* INSERT TABLE DATA: wp_term_taxonomy */
INSERT INTO `wp_term_taxonomy` VALUES("1", "1", "category", "", "0", "4");
INSERT INTO `wp_term_taxonomy` VALUES("2", "2", "nav_menu", "", "0", "4");
INSERT INTO `wp_term_taxonomy` VALUES("3", "3", "nav_menu", "", "0", "5");

/* INSERT TABLE DATA: wp_terms */
INSERT INTO `wp_terms` VALUES("1", "Uncategorized", "uncategorized", "0");
INSERT INTO `wp_terms` VALUES("2", "Top Menu", "top-menu", "0");
INSERT INTO `wp_terms` VALUES("3", "Social Links Menu", "social-links-menu", "0");

/* INSERT TABLE DATA: wp_usermeta */
INSERT INTO `wp_usermeta` VALUES("1", "1", "nickname", "tommccarten");
INSERT INTO `wp_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `wp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("6", "1", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("7", "1", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("8", "1", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("9", "1", "show_admin_bar_front", "true");
INSERT INTO `wp_usermeta` VALUES("10", "1", "locale", "");
INSERT INTO `wp_usermeta` VALUES("11", "1", "wp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("12", "1", "wp_user_level", "10");
INSERT INTO `wp_usermeta` VALUES("13", "1", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("14", "1", "show_welcome_panel", "1");
INSERT INTO `wp_usermeta` VALUES("15", "1", "session_tokens", "a:5:{s:64:\"963400ddcf02156f67794051ac53dbda0ffe1dcdee0249600353ee2867fe31b6\";a:4:{s:10:\"expiration\";i:1489541635;s:2:\"ip\";s:14:\"31.220.254.128\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36\";s:5:\"login\";i:1489368835;}s:64:\"174e4d7fcfbcf4a3f338cff7d689c340bdeda4b3bd33a8b03078c57ed1beb44e\";a:4:{s:10:\"expiration\";i:1489542921;s:2:\"ip\";s:14:\"31.220.254.128\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36\";s:5:\"login\";i:1489370121;}s:64:\"9487823f6bea0b7399ef35adc2098f2dac1bc88a3dfa3f9ad1911f9f56c2af6e\";a:4:{s:10:\"expiration\";i:1490580876;s:2:\"ip\";s:14:\"31.220.254.128\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36\";s:5:\"login\";i:1489371276;}s:64:\"e3fe49428f13e79ed69f0555faec148dc64e9f490de081f45306b70135bdf02c\";a:4:{s:10:\"expiration\";i:1489545093;s:2:\"ip\";s:14:\"31.220.254.128\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36\";s:5:\"login\";i:1489372293;}s:64:\"259dc2abb8471fcaac2519bd213373ad5e806aeee6d5dbbc1bc32fd793b94f05\";a:4:{s:10:\"expiration\";i:1490582368;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36\";s:5:\"login\";i:1489372768;}}");
INSERT INTO `wp_usermeta` VALUES("16", "1", "wp_dashboard_quick_press_last_post_id", "43");
INSERT INTO `wp_usermeta` VALUES("17", "1", "managenav-menuscolumnshidden", "a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `wp_usermeta` VALUES("18", "1", "metaboxhidden_nav-menus", "a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}");
INSERT INTO `wp_usermeta` VALUES("19", "1", "default_password_nag", "");

/* INSERT TABLE DATA: wp_users */
INSERT INTO `wp_users` VALUES("1", "wp_pj0noo", "$P$BjO4TlzupmncqBx/o8L.k/T2ZRTd800", "wp_pj0noo", "06167055@stu.mmu.ac.uk", "", "2017-02-08 11:38:35", "", "0", "wp_pj0noo");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2017-03-13 02:46:32*/
/* DUPLICATOR_MYSQLDUMP_EOF */
