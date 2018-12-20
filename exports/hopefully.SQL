-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24-0ubuntu0.18.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for wp_headless
CREATE DATABASE
IF NOT EXISTS `ohcs2475_thetechgeeks` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `ohcs2475_thetechgeeks`;

-- Dumping structure for table wp_headless.wp_commentmeta
CREATE TABLE
IF NOT EXISTS `wp_commentmeta`
(
  `meta_id` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar
(255) CHARACTER
SET utf8
COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER
SET utf8
COLLATE utf8_general_ci,
  PRIMARY KEY
(`meta_id`),
  KEY `comment_id`
(`comment_id`),
  KEY `meta_key`
(`meta_key`
(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- Dumping data for table wp_headless.wp_commentmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_comments
CREATE TABLE
IF NOT EXISTS `wp_comments`
(
  `comment_ID` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_general_ci NOT NULL,
  `comment_author_email` varchar
(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar
(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar
(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_general_ci NOT NULL,
  `comment_karma` int
(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar
(20) COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_type` varchar
(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_parent` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint
(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY
(`comment_ID`),
  KEY `comment_post_ID`
(`comment_post_ID`),
  KEY `comment_approved_date_gmt`
(`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt`
(`comment_date_gmt`),
  KEY `comment_parent`
(`comment_parent`),
  KEY `comment_author_email`
(`comment_author_email`
(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table wp_headless.wp_comments: ~1 rows (approximately)
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
REPLACE INTO `wp_comments`
(`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-14 05:58:14', '2018-12-14 05:58:14', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_links
CREATE TABLE
IF NOT EXISTS `wp_links`
(
  `link_id` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_name` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_image` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_target` varchar
(25) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_description` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_visible` varchar
(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint
(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int
(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_general_ci NOT NULL,
  `link_rss` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY
(`link_id`),
  KEY `link_visible`
(`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table wp_headless.wp_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_options
CREATE TABLE
IF NOT EXISTS `wp_options`
(
  `option_id` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar
(191) CHARACTER
SET utf8
COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER
SET utf8
COLLATE utf8_general_ci NOT NULL,
  `autoload` varchar
(20) CHARACTER
SET utf8
COLLATE utf8_general_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY
(`option_id`),
  UNIQUE KEY `option_name`
(`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table wp_headless.wp_options: ~138 rows (approximately)
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
REPLACE INTO `wp_options`
(`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.geromeheath.co.uk', 'yes'),
(2, 'home', 'http://www.geromeheath.co.uk', 'yes'),
(3, 'blogname', 'Postlight Headless WP Starter', 'yes'),
(4, 'blogdescription', 'Just another (headless) WordPress site by your friends at Postlight', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nedstark@headlesswpstarter.dev', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:108:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:10:"graphql/?$";s:22:"index.php?graphql=true";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:33:"slide/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"slide/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"slide/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"slide/([^/]+)/embed/?$";s:38:"index.php?slide=$matches[1]&embed=true";s:26:"slide/([^/]+)/trackback/?$";s:32:"index.php?slide=$matches[1]&tb=1";s:34:"slide/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&paged=$matches[2]";s:41:"slide/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&cpage=$matches[2]";s:30:"slide/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?slide=$matches[1]&page=$matches[2]";s:22:"slide/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"slide/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"slide/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:31:"acf-to-wp-api/acf-to-wp-api.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";i:4;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:5;s:29:"wp-api-menus/wp-api-menus.php";i:6;s:25:"wp-graphql/wp-graphql.php";i:7;s:33:"wp-healthcheck/wp-healthcheck.php";i:8;s:47:"wp-migrate-db-pro-cli/wp-migrate-db-pro-cli.php";i:9;s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";i:10;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:11;s:45:"wp-rest-api-v2-menus/wp-rest-api-v2-menus.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'postlight-headless-wp', 'yes'),
(41, 'stylesheet', 'postlight-headless-wp', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:"wp-healthcheck/wp-healthcheck.php";a:2:{i:0;s:14:"WP_Healthcheck";i:1;s:16:"plugin_uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1545213501;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1545242301;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1545285793;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545286026;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1544767102;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(112, 'current_theme', 'Postlight Headless WordPress', 'yes'),
(113, 'theme_switched', '', 'yes'),
(115, 'theme_mods_postlight-headless-wp', 'a:1:{s:18:"nav_menu_locations";a:3:{s:11:"header-menu";i:2;s:8:"main-nav";i:3;s:10:"footer-nav";i:4;}}', 'yes'),
(118, 'wpmdb_settings', 'a:11:{s:3:"key";s:40:"bIOUMkdAIFDzYN57OXU82B0LrgOa5QlSvW3n5pCC";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;s:18:"prog_tables_hidden";b:1;s:21:"pause_before_finalize";b:0;}', 'no'),
(119, 'wpmdb_schema_version', '1', 'no'),
(120, 'category_children', 'a:0:{}', 'yes'),
(128, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1545205992;s:7:"checked";a:2:{s:21:"postlight-headless-wp";s:0:"";s:14:"twentynineteen";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(132, 'acf_version', '5.7.0', 'yes'),
(133, '_site_transient_timeout_browser_0ac1f9240df96b3586c220faef490724', '1545372195', 'no'),
(134, '_site_transient_browser_0ac1f9240df96b3586c220faef490724', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"71.0.3578.98";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(169, 'recently_activated', 'a:0:{}', 'yes'),
(172, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:2:{i:0;i:4;i:1;i:3;}}', 'yes'),
(186, 'cptui_post_types', 'a:1:{s:5:"slide";a:29:{s:4:"name";s:5:"slide";s:5:"label";s:6:"Slides";s:14:"singular_label";s:5:"Slide";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:5:"false";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:5:"slide";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:14:"featured_image";s:11:"Slide Image";s:18:"set_featured_image";s:15:"Set Slide Image";s:21:"remove_featured_image";s:18:"Remove Slide Image";s:18:"use_featured_image";s:15:"Use Slide Image";s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(201, 'show_comments_cookies_opt_in', '0', 'yes'),
(202, 'db_upgraded', '', 'yes'),
(203, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.1";s:7:"version";s:5:"5.0.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1545205989;s:15:"version_checked";s:5:"5.0.1";s:12:"translations";a:0:{}}', 'no'),
(204, 'can_compress_scripts', '1', 'no'),
(211, 'cptui_new_install', 'false', 'yes'),
(223, 'wphc_disable_autoload_history', '', 'no'),
(230, 'wphc_version', '1.3.1', 'yes'),
(294, '_site_transient_timeout_wpmdb_upgrade_data', '1545210447', 'no'),
(295, '_site_transient_wpmdb_upgrade_data', 'a:5:{s:17:"wp-migrate-db-pro";a:2:{s:7:"version";s:5:"1.9.2";s:6:"tested";s:5:"5.0.1";}s:29:"wp-migrate-db-pro-media-files";a:2:{s:7:"version";s:6:"1.4.12";s:6:"tested";s:5:"5.0.1";}s:21:"wp-migrate-db-pro-cli";a:2:{s:7:"version";s:5:"1.3.4";s:6:"tested";s:5:"5.0.1";}s:33:"wp-migrate-db-pro-multisite-tools";a:2:{s:7:"version";s:5:"1.2.4";s:6:"tested";s:5:"5.0.1";}s:36:"wp-migrate-db-pro-theme-plugin-files";a:2:{s:7:"version";s:5:"1.0.4";s:6:"tested";s:5:"5.0.1";}}', 'no'),
(299, '_transient_timeout_acf_plugin_updates', '1545292390', 'no'),
(300, '_transient_acf_plugin_updates', 'a:3:{s:7:"plugins";a:1:{s:34:"advanced-custom-fields-pro/acf.php";a:8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.7.9";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.9";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:10:"expiration";i:86400;s:6:"status";i:1;}', 'no'),
(301, '_site_transient_timeout_theme_roots', '1545207791', 'no'),
(302, '_site_transient_theme_roots', 'a:2:{s:21:"postlight-headless-wp";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";}', 'no'),
(303, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1545205993;s:7:"checked";a:12:{s:31:"acf-to-wp-api/acf-to-wp-api.php";s:5:"1.4.0";s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.7.0";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.6.1";s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";s:5:"2.0.6";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"3.0.2";s:45:"wp-rest-api-v2-menus/wp-rest-api-v2-menus.php";s:5:"0.3.2";s:25:"wp-graphql/wp-graphql.php";s:6:"0.0.28";s:33:"wp-healthcheck/wp-healthcheck.php";s:5:"1.3.1";s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";s:5:"1.7.2";s:47:"wp-migrate-db-pro-cli/wp-migrate-db-pro-cli.php";s:3:"1.3";s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";s:5:"1.4.7";s:29:"wp-api-menus/wp-api-menus.php";s:5:"1.3.1";}s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.7.9";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.9";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:31:"acf-to-wp-api/acf-to-wp-api.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/acf-to-wp-api";s:4:"slug";s:13:"acf-to-wp-api";s:6:"plugin";s:31:"acf-to-wp-api/acf-to-wp-api.php";s:11:"new_version";s:5:"1.4.0";s:3:"url";s:44:"https://wordpress.org/plugins/acf-to-wp-api/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/acf-to-wp-api.1.4.0.zip";s:5:"icons";a:1:{s:7:"default";s:57:"https://s.w.org/plugins/geopattern-icon/acf-to-wp-api.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.6.1";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.1.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}}s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:41:"w.org/plugins/force-regenerate-thumbnails";s:4:"slug";s:27:"force-regenerate-thumbnails";s:6:"plugin";s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";s:11:"new_version";s:5:"2.0.6";s:3:"url";s:58:"https://wordpress.org/plugins/force-regenerate-thumbnails/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/force-regenerate-thumbnails.zip";s:5:"icons";a:1:{s:7:"default";s:71:"https://s.w.org/plugins/geopattern-icon/force-regenerate-thumbnails.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:5:"icons";a:1:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}}s:45:"wp-rest-api-v2-menus/wp-rest-api-v2-menus.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/wp-rest-api-v2-menus";s:4:"slug";s:20:"wp-rest-api-v2-menus";s:6:"plugin";s:45:"wp-rest-api-v2-menus/wp-rest-api-v2-menus.php";s:11:"new_version";s:5:"0.3.2";s:3:"url";s:51:"https://wordpress.org/plugins/wp-rest-api-v2-menus/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/wp-rest-api-v2-menus.0.3.2.zip";s:5:"icons";a:1:{s:7:"default";s:64:"https://s.w.org/plugins/geopattern-icon/wp-rest-api-v2-menus.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:33:"wp-healthcheck/wp-healthcheck.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-healthcheck";s:4:"slug";s:14:"wp-healthcheck";s:6:"plugin";s:33:"wp-healthcheck/wp-healthcheck.php";s:11:"new_version";s:5:"1.3.1";s:3:"url";s:45:"https://wordpress.org/plugins/wp-healthcheck/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-healthcheck.zip";s:5:"icons";a:3:{s:2:"2x";s:67:"https://ps.w.org/wp-healthcheck/assets/icon-256x256.png?rev=1769990";s:2:"1x";s:59:"https://ps.w.org/wp-healthcheck/assets/icon.svg?rev=1769990";s:3:"svg";s:59:"https://ps.w.org/wp-healthcheck/assets/icon.svg?rev=1769990";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:29:"wp-api-menus/wp-api-menus.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/wp-api-menus";s:4:"slug";s:12:"wp-api-menus";s:6:"plugin";s:29:"wp-api-menus/wp-api-menus.php";s:11:"new_version";s:5:"1.3.1";s:3:"url";s:43:"https://wordpress.org/plugins/wp-api-menus/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/wp-api-menus.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/wp-api-menus/assets/icon-256x256.png?rev=1070279";s:2:"1x";s:65:"https://ps.w.org/wp-api-menus/assets/icon-128x128.png?rev=1070279";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/wp-api-menus/assets/banner-1544x500.png?rev=1070279";s:2:"1x";s:67:"https://ps.w.org/wp-api-menus/assets/banner-772x250.png?rev=1070279";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(305, '_site_transient_timeout_available_translations', '1545217662', 'no'),
(306, '_site_transient_available_translations', 'a:114:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-04 14:53:20";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/5.0/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-17 17:03:31";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 08:43:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-11 16:43:39";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-18 01:37:03";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-16 20:26:14";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-14 13:53:59";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.9/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-18 18:53:16";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 08:46:24";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 13:51:06";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-05 17:02:13";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.0/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-05 17:04:22";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-18 10:00:39";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.0.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-16 22:31:31";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.9/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-16 16:16:28";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-10 07:52:38";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-16 16:15:52";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 21:52:53";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 21:53:14";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-13 12:01:56";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-16 04:34:59";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-17 20:40:29";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-06 21:26:01";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-07 18:38:30";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-14 13:48:04";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.9/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-17 09:04:18";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 15:03:42";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-06 12:47:45";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:9:"5.0-beta3";s:7:"updated";s:19:"2018-11-28 16:04:33";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-04 08:05:41";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-18 19:13:01";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-17 22:20:45";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-08 18:24:55";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 12:06:51";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-14 12:33:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-18 18:30:31";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-06-17 09:33:44";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-13 10:00:38";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 10:23:47";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 13:16:13";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:6:"4.7.11";s:7:"updated";s:19:"2018-09-20 11:13:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 15:03:33";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-18 18:01:10";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-14 12:07:33";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-21 14:15:57";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-22 02:28:45";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-18 14:32:44";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-16 19:15:50";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-30 20:27:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-13 13:26:05";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-16 08:18:53";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.0.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-04 07:59:37";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-16 08:19:20";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 19:12:58";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-14 07:39:13";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 13:09:27";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-17 18:27:57";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.9/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 09:30:48";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 18:39:22";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-18 00:12:15";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-13 09:34:32";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:3:"skr";a:8:{s:8:"language";s:3:"skr";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 15:51:40";s:12:"english_name";s:7:"Saraiki";s:11:"native_name";s:14:"سرائیکی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0.1/skr.zip";s:3:"iso";a:1:{i:3;s:3:"skr";}s:7:"strings";a:1:{s:8:"continue";s:17:"جاری رکھو";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 16:09:38";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-19 00:24:55";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 14:32:02";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-02 17:08:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-13 21:27:35";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 16:35:18";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-18 05:52:46";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.9/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-17 09:44:25";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-18 01:45:17";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-15 19:21:21";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-07 06:14:39";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-12-13 10:58:14";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_postmeta
CREATE TABLE
IF NOT EXISTS `wp_postmeta`
(
  `meta_id` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar
(255) CHARACTER
SET utf8
COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER
SET utf8
COLLATE utf8_general_ci,
  PRIMARY KEY
(`meta_id`),
  KEY `post_id`
(`post_id`),
  KEY `meta_key`
(`meta_key`
(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table wp_headless.wp_postmeta: ~108 rows (approximately)
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
REPLACE INTO `wp_postmeta`
(`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 1, '_wp_old_slug', 'hello-world'),
(6, 6, '_menu_item_type', 'post_type'),
(7, 6, '_menu_item_menu_item_parent', '0'),
(8, 6, '_menu_item_object_id', '1'),
(9, 6, '_menu_item_object', 'post'),
(10, 6, '_menu_item_target', ''),
(11, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12, 6, '_menu_item_xfn', ''),
(13, 6, '_menu_item_url', ''),
(14, 7, '_menu_item_type', 'post_type'),
(15, 7, '_menu_item_menu_item_parent', '0'),
(16, 7, '_menu_item_object_id', '2'),
(17, 7, '_menu_item_object', 'page'),
(18, 7, '_menu_item_target', ''),
(19, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(20, 7, '_menu_item_xfn', ''),
(21, 7, '_menu_item_url', ''),
(22, 8, '_menu_item_type', 'taxonomy'),
(23, 8, '_menu_item_menu_item_parent', '0'),
(24, 8, '_menu_item_object_id', '1'),
(25, 8, '_menu_item_object', 'category'),
(26, 8, '_menu_item_target', ''),
(27, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 8, '_menu_item_xfn', ''),
(29, 8, '_menu_item_url', ''),
(30, 9, '_menu_item_type', 'custom'),
(31, 9, '_menu_item_menu_item_parent', '0'),
(32, 9, '_menu_item_object_id', '9'),
(33, 9, '_menu_item_object', 'custom'),
(34, 9, '_menu_item_target', ''),
(35, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 9, '_menu_item_xfn', ''),
(37, 9, '_menu_item_url', 'https://trackchanges.postlight.com/introducing-postlights-wordpress-react-starter-kit-a61e2633c48c'),
(38, 11, '_edit_last', '1'),
(41, 11, '_edit_lock', '1544767497:1'),
(42, 13, '_edit_last', '1'),
(45, 13, '_edit_lock', '1544767510:1'),
(46, 15, '_edit_last', '1'),
(49, 15, '_edit_lock', '1544767522:1'),
(50, 17, '_edit_last', '1'),
(53, 17, '_edit_lock', '1544767534:1'),
(54, 19, '_edit_last', '1'),
(57, 19, '_edit_lock', '1544767549:1'),
(58, 21, '_edit_last', '1'),
(61, 21, '_edit_lock', '1544767562:1'),
(62, 23, '_edit_last', '1'),
(65, 23, '_edit_lock', '1544767580:1'),
(66, 25, '_edit_last', '1'),
(69, 25, '_edit_lock', '1544767590:1'),
(70, 27, '_edit_last', '1'),
(73, 27, '_edit_lock', '1544767598:1'),
(74, 29, '_edit_last', '1'),
(77, 29, '_edit_lock', '1544767660:1'),
(78, 31, '_menu_item_type', 'post_type'),
(79, 31, '_menu_item_menu_item_parent', '0'),
(80, 31, '_menu_item_object_id', '5'),
(81, 31, '_menu_item_object', 'page'),
(82, 31, '_menu_item_target', ''),
(83, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 31, '_menu_item_xfn', ''),
(85, 31, '_menu_item_url', ''),
(87, 32, '_menu_item_type', 'post_type'),
(88, 32, '_menu_item_menu_item_parent', '0'),
(89, 32, '_menu_item_object_id', '2'),
(90, 32, '_menu_item_object', 'page'),
(91, 32, '_menu_item_target', ''),
(92, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 32, '_menu_item_xfn', ''),
(94, 32, '_menu_item_url', ''),
(96, 33, '_menu_item_type', 'post_type'),
(97, 33, '_menu_item_menu_item_parent', '0'),
(98, 33, '_menu_item_object_id', '5'),
(99, 33, '_menu_item_object', 'page'),
(100, 33, '_menu_item_target', ''),
(101, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(102, 33, '_menu_item_xfn', ''),
(103, 33, '_menu_item_url', ''),
(105, 34, '_menu_item_type', 'post_type'),
(106, 34, '_menu_item_menu_item_parent', '0'),
(107, 34, '_menu_item_object_id', '2'),
(108, 34, '_menu_item_object', 'page'),
(109, 34, '_menu_item_target', ''),
(110, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(111, 34, '_menu_item_xfn', ''),
(112, 34, '_menu_item_url', ''),
(114, 35, '_edit_last', '1'),
(115, 35, '_edit_lock', '1544950831:1'),
(116, 36, '_wp_attached_file', '2018/12/IMG_0925.png'),
(117, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:20:"2018/12/IMG_0925.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_0925-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_0925-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_0925-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:22:"IMG_0925-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"IMG_0925-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:21:"single-post-thumbnail";a:4:{s:4:"file";s:20:"IMG_0925-400x400.png";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(118, 37, '_edit_last', '1'),
(119, 37, '_edit_lock', '1544952602:1'),
(120, 38, '_wp_attached_file', '2018/12/IMG_0923.jpg'),
(121, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4032;s:6:"height";i:3024;s:4:"file";s:20:"2018/12/IMG_0923.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_0923-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_0923-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_0923-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_0923-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"IMG_0923-50x38.jpg";s:5:"width";i:50;s:6:"height";i:38;s:9:"mime-type";s:10:"image/jpeg";}s:21:"single-post-thumbnail";a:4:{s:4:"file";s:20:"IMG_0923-400x300.jpg";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 35, '_thumbnail_id', '38'),
(124, 37, '_wp_old_slug', 'london-skyline'),
(125, 35, '_wp_old_slug', 'new-slide-1'),
(126, 38, '_edit_lock', '1544950981:1'),
(127, 37, '_thumbnail_id', '36'),
(128, 40, '_edit_last', '1'),
(129, 40, '_edit_lock', '1544986217:1'),
(130, 40, '_thumbnail_id', '43'),
(131, 41, '_wp_attached_file', '2018/12/FerrariMonza_SP2_dealer.png'),
(132, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:335;s:6:"height";i:105;s:4:"file";s:35:"2018/12/FerrariMonza_SP2_dealer.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"FerrariMonza_SP2_dealer-150x105.png";s:5:"width";i:150;s:6:"height";i:105;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:34:"FerrariMonza_SP2_dealer-300x94.png";s:5:"width";i:300;s:6:"height";i:94;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"FerrariMonza_SP2_dealer-50x16.png";s:5:"width";i:50;s:6:"height";i:16;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 41, '_edit_lock', '1544953396:1'),
(134, 41, '_edit_last', '1'),
(135, 42, '_wp_attached_file', '2018/12/maxresdefault.jpg'),
(136, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:25:"2018/12/maxresdefault.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"maxresdefault-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"maxresdefault-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"maxresdefault-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"maxresdefault-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"maxresdefault-50x28.jpg";s:5:"width";i:50;s:6:"height";i:28;s:9:"mime-type";s:10:"image/jpeg";}s:21:"single-post-thumbnail";a:4:{s:4:"file";s:25:"maxresdefault-400x225.jpg";s:5:"width";i:400;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 43, '_wp_attached_file', '2018/12/IMG_0961.jpg'),
(138, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4032;s:6:"height";i:3024;s:4:"file";s:20:"2018/12/IMG_0961.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_0961-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_0961-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_0961-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_0961-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"IMG_0961-50x38.jpg";s:5:"width";i:50;s:6:"height";i:38;s:9:"mime-type";s:10:"image/jpeg";}s:21:"single-post-thumbnail";a:4:{s:4:"file";s:20:"IMG_0961-400x300.jpg";s:5:"width";i:400;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.2";s:6:"credit";s:0:"";s:6:"camera";s:14:"iPhone 6s Plus";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1544607615";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"4.15";s:3:"iso";s:2:"50";s:13:"shutter_speed";s:17:"0.058823529411765";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(139, 40, '_wp_old_slug', 'test'),
(140, 44, '_edit_last', '1'),
(141, 44, '_edit_lock', '1544986019:1'),
(142, 40, 'link', 'http://sore-oranges.surge.sh/'),
(143, 40, '_link', 'field_5c169db53f367');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_posts
CREATE TABLE
IF NOT EXISTS `wp_posts`
(
  `ID` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_general_ci NOT NULL,
  `post_title` text COLLATE utf8_general_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_general_ci NOT NULL,
  `post_status` varchar
(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar
(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar
(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'open',
  `post_password` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `post_name` varchar
(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_general_ci NOT NULL,
  `pinged` text COLLATE utf8_general_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_general_ci NOT NULL,
  `post_parent` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `menu_order` int
(11) NOT NULL DEFAULT '0',
  `post_type` varchar
(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar
(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_count` bigint
(20) NOT NULL DEFAULT '0',
  PRIMARY KEY
(`ID`),
  KEY `post_name`
(`post_name`
(191)),
  KEY `type_status_date`
(`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent`
(`post_parent`),
  KEY `post_author`
(`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table wp_headless.wp_posts: ~45 rows (approximately)
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
REPLACE INTO `wp_posts`
(`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-14 05:58:14', '2018-12-14 05:58:14', 'Welcome to WordPress. This is your first post. <a href="http://www.geromeheath.co.uk/wp-json/postlight/v1/post?slug=sample-post&edit=true" target="_new">Edit</a> or delete it, then start writing!', 'Sample Post', '', 'publish', 'open', 'open', '', 'sample-post', '', '', '2018-12-14 05:59:15', '2018-12-14 05:59:15', '', 0, 'http://www.geromeheath.co.uk/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-14 05:58:14', '2018-12-14 05:58:14', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation
(in most themes). Most people start
with an About page that introduces them to potential site visitors. It might say something like
this:
\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like
this:
\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go
to <a href="http://www.geromeheath.co.uk/wp-admin/">your dashboard</a> to
delete this page and
create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', '
open', '', 'sample-page', '', '', '2018-12-14 05:58:14', '2018-12-14 05:58:14', '', 0, '
http://www.geromeheath.co.uk/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2018-12-14 05:58:14', '2018-12-14 05:58:14', '<h2>Who we are</h2><p>Our website address
is:
http://www.geromeheath.co.uk.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address
(also called a hash) may be provided to the Gravatar service to see
if you are using it. The Gravatar service privacy policy is available
here:
https:
//automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>
If you upload images to the website, you should avoid uploading images
with embedded location data
(EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>
If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>
If you have an account and you log in to this site, we will
set a temporary
cookie to determine
if your browser accepts cookies. This cookie contains no personal data and is discarded when you
close your browser
.</p><p>When you log in, we will also
set up several
cookies to
save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year.
If you select &quot;
Remember Me&quot;, your login will persist for two weeks.
If you log out of your account, the login cookies will be removed.</p><p>
If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content
(e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as
if the visitor has visited the other website.</p><p>These websites may collect data about you,
use cookies
, embed additional third-party tracking, and monitor your interaction
with that embedded content, including tracking your interaction
with the embedded content
if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data
with</h2><h2>How long we retain your data</h2><p>
If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website
(
if any), we also store the personal information they provide in their user profile. All users can see, edit, or
delete their personal information at
any time
(except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>
If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do
with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', '
open', '', 'privacy-policy', '', '', '2018-12-14 05:58:14', '2018-12-14 05:58:14', '', 0, '
http://www.geromeheath.co.uk/?page_id=3', 0, 'page', '', 0),
	(4, 0, '2018-12-14 05:59:15', '2018-12-14 05:59:15', 'Welcome to WordPress. This is your first post. <a href="http://www.geromeheath.co.uk/wp-json/postlight/v1/post?slug=sample-post&edit=true" target="_new">Edit</a> or
delete it
, then start writing!', 'Sample Post', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-14 05:59:15', '2018-12-14 05:59:15', '', 1, '
http://www.geromeheath.co.uk/2018/12/14/1-revision-v1/', 0, 'revision', '', 0),
	(5, 0, '2018-12-14 05:59:21', '2018-12-14 05:59:21', 'You\'ve successfully set up <a href="https://github.com/postlight/headless-wp-starter" target="_new">Postlight\'s WordPress + React Starter Kit</a> on your computer.\n\nYou are now running a <a href="http://www.geromeheath.co.uk/wp-admin/">WordPress backend</a> and you\'re looking at the React frontend, built with <a href="http://learnnextjs.com" target="_new">Next.js</a>.\n\nAll the content you see here is created in WordPress -- posts, pages, categories, and menus. <a href="http://www.geromeheath.co.uk/wp-json/postlight/v1/page?slug=welcome&edit=true" target="_new">Edit this page</a> to update it.', 'Congratulations!', '', 'publish', 'closed', 'closed', '', 'welcome', '', '', '2018-12-14 05:59:21', '2018-12-14 05:59:21', '', 0, 'http://www.geromeheath.co.uk/welcome/', 0, 'page', '', 0),
(6, 0, '2018-12-14 05:59:40', '2018-12-14 05:59:40', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2018-12-14 05:59:40', '2018-12-14 05:59:40', '', 0, 'http://www.geromeheath.co.uk/2018/12/14/6/', 0, 'nav_menu_item', '', 0),
(7, 0, '2018-12-14 05:59:45', '2018-12-14 05:59:45', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2018-12-14 05:59:45', '2018-12-14 05:59:45', '', 0, 'http://www.geromeheath.co.uk/2018/12/14/7/', 2, 'nav_menu_item', '', 0),
(8, 0, '2018-12-14 05:59:51', '2018-12-14 05:59:51', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2018-12-14 05:59:51', '2018-12-14 05:59:51', '', 0, 'http://www.geromeheath.co.uk/2018/12/14/8/', 3, 'nav_menu_item', '', 0),
(9, 0, '2018-12-14 05:59:57', '2018-12-14 05:59:57', '', 'Read about the Starter Kit on Medium', '', 'publish', 'closed', 'closed', '', 'read-about-the-starter-kit-on-medium', '', '', '2018-12-14 05:59:57', '2018-12-14 05:59:57', '', 0, 'http://www.geromeheath.co.uk/2018/12/14/read-about-the-starter-kit-on-medium/', 4, 'nav_menu_item', '', 0),
(10, 1, '2018-12-14 06:03:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-14 06:03:15', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8080/?p=10', 0, 'post', '', 0),
(11, 1, '2018-12-14 06:07:15', '2018-12-14 06:07:15', '', 'What\'s up Gerome', '', 'publish', '
open', '
open', '', 'whats-up-gerome', '', '', '2018-12-14 06:07:15', '2018-12-14 06:07:15', '', 0, '
http:
//127.0.0.1:8080/?p=11', 0, 'post', '', 0),
	(12, 1, '2018-12-14 06:07:15', '2018-12-14 06:07:15', '', 'What\'s up Gerome', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-12-14 06:07:15', '2018-12-14 06:07:15', '', 11, 'http://127.0.0.1:8080/2018/12/14/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-12-14 06:07:32', '2018-12-14 06:07:32', '', 'New Shoes 2018', '', 'publish', 'open', 'open', '', 'new-shoes-2018', '', '', '2018-12-14 06:07:32', '2018-12-14 06:07:32', '', 0, 'http://127.0.0.1:8080/?p=13', 0, 'post', '', 0),
(14, 1, '2018-12-14 06:07:32', '2018-12-14 06:07:32', '', 'New Shoes 2018', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-14 06:07:32', '2018-12-14 06:07:32', '', 13, 'http://127.0.0.1:8080/2018/12/14/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-12-14 06:07:45', '2018-12-14 06:07:45', '', 'EV RE20', '', 'publish', 'open', 'open', '', 'ev-re20', '', '', '2018-12-14 06:07:45', '2018-12-14 06:07:45', '', 0, 'http://127.0.0.1:8080/?p=15', 0, 'post', '', 0),
(16, 1, '2018-12-14 06:07:45', '2018-12-14 06:07:45', '', 'EV RE20', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-12-14 06:07:45', '2018-12-14 06:07:45', '', 15, 'http://127.0.0.1:8080/2018/12/14/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-12-14 06:07:53', '2018-12-14 06:07:53', '', 'I Love Lamp', '', 'publish', 'open', 'open', '', 'i-love-lamp', '', '', '2018-12-14 06:07:53', '2018-12-14 06:07:53', '', 0, 'http://127.0.0.1:8080/?p=17', 0, 'post', '', 0),
(18, 1, '2018-12-14 06:07:53', '2018-12-14 06:07:53', '', 'I Love Lamp', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-12-14 06:07:53', '2018-12-14 06:07:53', '', 17, 'http://127.0.0.1:8080/2018/12/14/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-12-14 06:08:09', '2018-12-14 06:08:09', '', 'Somethingness Nothingness', '', 'publish', 'open', 'open', '', 'somethingness-nothingness', '', '', '2018-12-14 06:08:09', '2018-12-14 06:08:09', '', 0, 'http://127.0.0.1:8080/?p=19', 0, 'post', '', 0),
(20, 1, '2018-12-14 06:08:09', '2018-12-14 06:08:09', '', 'Somethingness Nothingness', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-14 06:08:09', '2018-12-14 06:08:09', '', 19, 'http://127.0.0.1:8080/2018/12/14/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-12-14 06:08:23', '2018-12-14 06:08:23', '', 'The Blanket truth', '', 'publish', 'open', 'open', '', 'the-blanket-truth', '', '', '2018-12-14 06:08:23', '2018-12-14 06:08:23', '', 0, 'http://127.0.0.1:8080/?p=21', 0, 'post', '', 0),
(22, 1, '2018-12-14 06:08:23', '2018-12-14 06:08:23', '', 'The Blanket truth', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-12-14 06:08:23', '2018-12-14 06:08:23', '', 21, 'http://127.0.0.1:8080/2018/12/14/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-12-14 06:08:40', '2018-12-14 06:08:40', '', 'Everything is something', '', 'publish', 'open', 'open', '', 'everything-is-something', '', '', '2018-12-14 06:08:40', '2018-12-14 06:08:40', '', 0, 'http://127.0.0.1:8080/?p=23', 0, 'post', '', 0),
(24, 1, '2018-12-14 06:08:40', '2018-12-14 06:08:40', '', 'Everything is something', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-12-14 06:08:40', '2018-12-14 06:08:40', '', 23, 'http://127.0.0.1:8080/2018/12/14/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-12-14 06:08:51', '2018-12-14 06:08:51', '', 'Level Up tuts', '', 'publish', 'open', 'open', '', 'level-up-tuts', '', '', '2018-12-14 06:08:51', '2018-12-14 06:08:51', '', 0, 'http://127.0.0.1:8080/?p=25', 0, 'post', '', 0),
(26, 1, '2018-12-14 06:08:51', '2018-12-14 06:08:51', '', 'Level Up tuts', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-12-14 06:08:51', '2018-12-14 06:08:51', '', 25, 'http://127.0.0.1:8080/2018/12/14/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-12-14 06:09:00', '2018-12-14 06:09:00', '', 'TEst 2', '', 'publish', 'open', 'open', '', 'test-2', '', '', '2018-12-14 06:09:00', '2018-12-14 06:09:00', '', 0, 'http://127.0.0.1:8080/?p=27', 0, 'post', '', 0),
(28, 1, '2018-12-14 06:09:00', '2018-12-14 06:09:00', '', 'TEst 2', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-12-14 06:09:00', '2018-12-14 06:09:00', '', 27, 'http://127.0.0.1:8080/2018/12/14/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-12-14 06:09:11', '2018-12-14 06:09:11', '', 'Hello New Post', '', 'publish', 'open', 'open', '', 'hello-new-post', '', '', '2018-12-14 06:09:11', '2018-12-14 06:09:11', '', 0, 'http://127.0.0.1:8080/?p=29', 0, 'post', '', 0),
(30, 1, '2018-12-14 06:09:11', '2018-12-14 06:09:11', '', 'Hello New Post', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-12-14 06:09:11', '2018-12-14 06:09:11', '', 29, 'http://127.0.0.1:8080/2018/12/14/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-12-15 07:34:09', '2018-12-15 07:34:09', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-12-15 07:45:57', '2018-12-15 07:45:57', '', 0, 'http://127.0.0.1:8080/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-12-15 07:34:09', '2018-12-15 07:34:09', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-12-15 07:45:57', '2018-12-15 07:45:57', '', 0, 'http://127.0.0.1:8080/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2018-12-15 07:46:46', '2018-12-15 07:46:46', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2018-12-15 07:46:46', '2018-12-15 07:46:46', '', 0, 'http://127.0.0.1:8080/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-12-15 07:46:46', '2018-12-15 07:46:46', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-12-15 07:46:46', '2018-12-15 07:46:46', '', 0, 'http://127.0.0.1:8080/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2018-12-16 07:34:19', '2018-12-16 07:34:19', '', 'London Skyline', '', 'publish', 'closed', 'closed', '', 'london-skyline', '', '', '2018-12-16 09:02:40', '2018-12-16 09:02:40', '', 0, 'http://127.0.0.1:8080/?post_type=slide&#038;p=35', 0, 'slide', '', 0),
(36, 1, '2018-12-16 07:47:22', '2018-12-16 07:47:22', '', 'School of Rock', '', 'inherit', 'open', 'closed', '', 'img_0925', '', '', '2018-12-16 07:47:35', '2018-12-16 07:47:35', '', 35, 'http://127.0.0.1:8080/wp-content/uploads/2018/12/IMG_0925.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-12-16 08:28:00', '2018-12-16 08:28:00', '', 'School of Rock', '', 'publish', 'closed', 'closed', '', 'school-of-rock', '', '', '2018-12-16 09:30:15', '2018-12-16 09:30:15', '', 0, 'http://127.0.0.1:8080/?post_type=slide&#038;p=37', 0, 'slide', '', 0),
(38, 1, '2018-12-16 08:25:10', '2018-12-16 08:25:10', '', 'IMG_0923', '', 'inherit', 'open', 'closed', '', 'img_0923', '', '', '2018-12-16 08:25:10', '2018-12-16 08:25:10', '', 37, 'http://127.0.0.1:8080/wp-content/uploads/2018/12/IMG_0923.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-12-16 08:57:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-16 08:57:07', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:8080/?post_type=acf-field-group&p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2018-12-16 09:03:09', '2018-12-16 09:03:09', '', 'School Play', '', 'publish', 'closed', 'closed', '', 'school-play', '', '', '2018-12-16 18:50:17', '2018-12-16 18:50:17', '', 0, 'http://127.0.0.1:8080/?post_type=slide&#038;p=40', 0, 'slide', '', 0),
(41, 1, '2018-12-16 09:45:26', '2018-12-16 09:45:26', '', 'FerrariMonza_SP2_dealer', '', 'inherit', 'open', 'closed', '', 'ferrarimonza_sp2_dealer', '', '', '2018-12-16 09:45:37', '2018-12-16 09:45:37', '', 0, 'http://127.0.0.1:8080/wp-content/uploads/2018/12/FerrariMonza_SP2_dealer.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2018-12-16 10:11:39', '2018-12-16 10:11:39', '', 'maxresdefault', '', 'inherit', 'open', 'closed', '', 'maxresdefault', '', '', '2018-12-16 10:11:39', '2018-12-16 10:11:39', '', 0, 'http://127.0.0.1:8080/wp-content/uploads/2018/12/maxresdefault.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-12-16 11:49:08', '2018-12-16 11:49:08', '', 'IMG_0961', '', 'inherit', 'open', 'closed', '', 'img_0961', '', '', '2018-12-16 11:49:08', '2018-12-16 11:49:08', '', 0, 'http://127.0.0.1:8080/wp-content/uploads/2018/12/IMG_0961.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-12-16 18:49:12', '2018-12-16 18:49:12', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"slide";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'group_5c169da1c3f7b', '', '', '2018-12-16 18:49:12', '2018-12-16 18:49:12', '', 0, 'http://127.0.0.1:8080/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2018-12-16 18:49:12', '2018-12-16 18:49:12', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5c169db53f367', '', '', '2018-12-16 18:49:12', '2018-12-16 18:49:12', '', 44, 'http://127.0.0.1:8080/?post_type=acf-field&p=45', 0, 'acf-field', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_termmeta
CREATE TABLE
IF NOT EXISTS `wp_termmeta`
(
  `meta_id` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar
(255) CHARACTER
SET utf8
COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER
SET utf8
COLLATE utf8_general_ci,
  PRIMARY KEY
(`meta_id`),
  KEY `term_id`
(`term_id`),
  KEY `meta_key`
(`meta_key`
(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table wp_headless.wp_termmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_terms
CREATE TABLE
IF NOT EXISTS `wp_terms`
(
  `term_id` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar
(200) CHARACTER
SET utf8
COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slug` varchar
(200) CHARACTER
SET utf8
COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `term_group` bigint
(10) NOT NULL DEFAULT '0',
  PRIMARY KEY
(`term_id`),
  KEY `slug`
(`slug`
(191)),
  KEY `name`
(`name`
(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table wp_headless.wp_terms: ~4 rows (approximately)
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
REPLACE INTO `wp_terms`
(`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sample Category', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Main Nav', 'main-nav', 0),
(4, 'Footer Nav', 'footer-nav', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_term_relationships
CREATE TABLE
IF NOT EXISTS `wp_term_relationships`
(
  `object_id` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int
(11) NOT NULL DEFAULT '0',
  PRIMARY KEY
(`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id`
(`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table wp_headless.wp_term_relationships: ~18 rows (approximately)
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
REPLACE INTO `wp_term_relationships`
(`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(11, 1, 0),
(13, 1, 0),
(15, 1, 0),
(17, 1, 0),
(19, 1, 0),
(21, 1, 0),
(23, 1, 0),
(25, 1, 0),
(27, 1, 0),
(29, 1, 0),
(31, 3, 0),
(32, 3, 0),
(33, 4, 0),
(34, 4, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_term_taxonomy
CREATE TABLE
IF NOT EXISTS `wp_term_taxonomy`
(
  `term_taxonomy_id` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar
(32) CHARACTER
SET utf8
COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER
SET utf8
COLLATE utf8_general_ci NOT NULL,
  `parent` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint
(20) NOT NULL DEFAULT '0',
  PRIMARY KEY
(`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy`
(`term_id`,`taxonomy`),
  KEY `taxonomy`
(`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table wp_headless.wp_term_taxonomy: ~4 rows (approximately)
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
REPLACE INTO `wp_term_taxonomy`
(`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 11),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_usermeta
CREATE TABLE
IF NOT EXISTS `wp_usermeta`
(
  `umeta_id` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint
(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar
(255) CHARACTER
SET utf8
COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER
SET utf8
COLLATE utf8_general_ci,
  PRIMARY KEY
(`umeta_id`),
  KEY `user_id`
(`user_id`),
  KEY `meta_key`
(`meta_key`
(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table wp_headless.wp_usermeta: ~27 rows (approximately)
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
REPLACE INTO `wp_usermeta`
(`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nedstark'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '10'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'nav_menu_recently_edited', '4'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'closedpostboxes_slide', 'a:0:{}'),
(23, 1, 'metaboxhidden_slide', 'a:0:{}'),
(24, 1, 'meta-box-order_slide', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:9:"submitdiv";s:6:"normal";s:20:"slugdiv,postimagediv";s:8:"advanced";s:0:"";}'),
(25, 1, 'screen_layout_slide', '2'),
(26, 1, 'wp_user-settings', 'libraryContent=browse'),
(27, 1, 'wp_user-settings-time', '1544946587'),
(29, 1, 'session_tokens', 'a:1:{s:64:"2c7fd521c03407522d92f0cf1725dad5a0f10e60423b7b2d62832728c48ba465";a:4:{s:10:"expiration";i:1545340043;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1545167243;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Dumping structure for table wp_headless.wp_users
CREATE TABLE
IF NOT EXISTS `wp_users`
(
  `ID` bigint
(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar
(60) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_pass` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_nicename` varchar
(50) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_email` varchar
(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_url` varchar
(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar
(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_status` int
(11) NOT NULL DEFAULT '0',
  `display_name` varchar
(250) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY
(`ID`),
  KEY `user_login_key`
(`user_login`),
  KEY `user_nicename`
(`user_nicename`),
  KEY `user_email`
(`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table wp_headless.wp_users: ~1 rows (approximately)
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
REPLACE INTO `wp_users`
(`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nedstark', '$P$B5R7jlUN279KfZ5jywyNbhEkolro1E/', 'nedstark', 'nedstark@headlesswpstarter.dev', '', '2018-12-14 05:58:14', '', 0, 'nedstark');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
