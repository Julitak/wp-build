# WordPress MySQL database migration
#
# Generated: Wednesday 22. March 2017 06:14 UTC
# Hostname: localhost
# Database: `wp_projektas`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-03-13 05:33:47', '2017-03-13 05:33:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vcs-2/julita-kriauciunaite', 'yes'),
(2, 'home', 'http://localhost/vcs-2/julita-kriauciunaite', 'yes'),
(3, 'blogname', 'kvazimodas', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gwarla@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=57&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:24:"calendar-event/index.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:78:"C:\\Wamp\\www\\vcs-2\\julita-kriauciunaite/wp-content/themes/vcs-starter/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'vcs-starter', 'yes'),
(41, 'stylesheet', 'vcs-starter', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(66, 'image_default_link_type', 'none', 'yes'),
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
(79, 'widget_text', 'a:5:{i:2;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:3;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}i:4;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:5;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:15:"hicpo_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '57', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1490171118;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490204028;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490247237;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490728564;a:1:{s:18:"wpseo_onpage_fetch";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1489410753;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(118, 'can_compress_scripts', '1', 'no'),
(152, 'theme_mods_storefront', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(160, 'current_theme', 'VCS Starter', 'yes'),
(161, 'theme_mods_vcs-starter', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:7:{s:18:"primary-navigation";i:2;s:17:"second-navigation";i:4;s:15:"tech-navigation";i:5;s:24:"entertainment-navigation";i:6;s:19:"business-navigation";i:7;s:20:"lifestyle-navigation";i:8;s:21:"media_list-navigation";i:10;}}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(163, 'recently_activated', 'a:1:{s:24:"wordpress-seo/wp-seo.php";i:1490123819;}', 'yes'),
(170, 'acf_version', '4.4.11', 'yes'),
(177, 'wpseo', 'a:23:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"4.5";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:20:"enable_setting_pages";b:0;s:21:"enable_admin_bar_menu";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1489413715;}', 'yes'),
(178, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(179, 'wpseo_titles', 'a:54:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(180, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"7254190314875c1909de9482ecee573f";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(181, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(182, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(183, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(184, 'wpseo_flush_rewrite', '1', 'yes'),
(190, 'hicpo_activation', '1', 'yes'),
(191, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.7";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1489413912;s:7:"version";s:3:"4.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(210, 'category_children', 'a:0:{}', 'yes'),
(213, 'WPLANG', '', 'yes'),
(250, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(302, 'wpseo_onpage', 'a:2:{s:6:"status";i:0;s:10:"last_fetch";i:1490123765;}', 'yes'),
(307, 'wpseo_sitemap_cache_validator_global', '61H2F', 'no'),
(310, 'widget_total_soft_cal', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1742 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(65, 31, '_form', '<label class="sr-only" for="inlineFormInput">Name</label>\n\n[email email-734 id:inlineFormInput class:form-control class:mb-2 class:mr-sm-2 class:mb-sm-0 placeholder "Enter email address"]\n\n[submit class:btn "SIGN UP"]'),
(66, 31, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:27:"kvazimodas "[your-subject]"";s:6:"sender";s:30:"[your-name] <gwarla@gmail.com>";s:9:"recipient";s:16:"gwarla@gmail.com";s:4:"body";s:192:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on kvazimodas (http://localhost/vcs-2/julita-kriauciunaite)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(67, 31, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:27:"kvazimodas "[your-subject]"";s:6:"sender";s:29:"kvazimodas <gwarla@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:134:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on kvazimodas (http://localhost/vcs-2/julita-kriauciunaite)";s:18:"additional_headers";s:26:"Reply-To: gwarla@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(68, 31, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(69, 31, '_additional_settings', ''),
(70, 31, '_locale', 'en_US'),
(71, 1, '_edit_lock', '1489739381:1'),
(72, 33, '_menu_item_type', 'custom'),
(73, 33, '_menu_item_menu_item_parent', '0'),
(74, 33, '_menu_item_object_id', '33'),
(75, 33, '_menu_item_object', 'custom'),
(76, 33, '_menu_item_target', ''),
(77, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 33, '_menu_item_xfn', ''),
(79, 33, '_menu_item_url', 'http://localhost/vcs-2/julita-kriauciunaite/'),
(80, 33, '_menu_item_orphaned', '1489501906'),
(81, 34, '_menu_item_type', 'post_type'),
(82, 34, '_menu_item_menu_item_parent', '0'),
(83, 34, '_menu_item_object_id', '2'),
(84, 34, '_menu_item_object', 'page'),
(85, 34, '_menu_item_target', ''),
(86, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 34, '_menu_item_xfn', ''),
(88, 34, '_menu_item_url', ''),
(89, 34, '_menu_item_orphaned', '1489501906'),
(90, 35, '_menu_item_type', 'custom'),
(91, 35, '_menu_item_menu_item_parent', '0'),
(92, 35, '_menu_item_object_id', '35'),
(93, 35, '_menu_item_object', 'custom'),
(94, 35, '_menu_item_target', ''),
(95, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 35, '_menu_item_xfn', ''),
(97, 35, '_menu_item_url', 'http://localhost/vcs-2/julita-kriauciunaite/'),
(98, 35, '_menu_item_orphaned', '1489744511'),
(99, 36, '_menu_item_type', 'post_type'),
(100, 36, '_menu_item_menu_item_parent', '0'),
(101, 36, '_menu_item_object_id', '2'),
(102, 36, '_menu_item_object', 'page'),
(103, 36, '_menu_item_target', ''),
(104, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 36, '_menu_item_xfn', ''),
(106, 36, '_menu_item_url', ''),
(107, 36, '_menu_item_orphaned', '1489744511'),
(126, 39, '_menu_item_type', 'post_type'),
(127, 39, '_menu_item_menu_item_parent', '0'),
(128, 39, '_menu_item_object_id', '2'),
(129, 39, '_menu_item_object', 'page'),
(130, 39, '_menu_item_target', ''),
(131, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(132, 39, '_menu_item_xfn', ''),
(133, 39, '_menu_item_url', ''),
(134, 39, '_menu_item_orphaned', '1489744755'),
(135, 40, '_menu_item_type', 'custom'),
(136, 40, '_menu_item_menu_item_parent', '0'),
(137, 40, '_menu_item_object_id', '40'),
(138, 40, '_menu_item_object', 'custom'),
(139, 40, '_menu_item_target', ''),
(140, 40, '_menu_item_classes', 'a:1:{i:0;s:9:"icon-home";}'),
(141, 40, '_menu_item_xfn', ''),
(142, 40, '_menu_item_url', '#'),
(144, 41, '_menu_item_type', 'custom'),
(145, 41, '_menu_item_menu_item_parent', '0'),
(146, 41, '_menu_item_object_id', '41'),
(147, 41, '_menu_item_object', 'custom'),
(148, 41, '_menu_item_target', ''),
(149, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(150, 41, '_menu_item_xfn', ''),
(151, 41, '_menu_item_url', '#'),
(153, 42, '_menu_item_type', 'custom'),
(154, 42, '_menu_item_menu_item_parent', '0'),
(155, 42, '_menu_item_object_id', '42'),
(156, 42, '_menu_item_object', 'custom'),
(157, 42, '_menu_item_target', ''),
(158, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(159, 42, '_menu_item_xfn', ''),
(160, 42, '_menu_item_url', '#my-slider'),
(162, 43, '_menu_item_type', 'custom'),
(163, 43, '_menu_item_menu_item_parent', '0'),
(164, 43, '_menu_item_object_id', '43'),
(165, 43, '_menu_item_object', 'custom'),
(166, 43, '_menu_item_target', ''),
(167, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(168, 43, '_menu_item_xfn', ''),
(169, 43, '_menu_item_url', '#home'),
(171, 44, '_menu_item_type', 'custom'),
(172, 44, '_menu_item_menu_item_parent', '0'),
(173, 44, '_menu_item_object_id', '44'),
(174, 44, '_menu_item_object', 'custom'),
(175, 44, '_menu_item_target', ''),
(176, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 44, '_menu_item_xfn', ''),
(178, 44, '_menu_item_url', '#name'),
(189, 2, '_wp_trash_meta_status', 'publish'),
(190, 2, '_wp_trash_meta_time', '1489753291'),
(191, 2, '_wp_desired_post_slug', 'sample-page'),
(192, 47, '_edit_last', '1'),
(193, 47, '_edit_lock', '1489753298:1'),
(203, 47, '_wp_trash_meta_status', 'draft'),
(204, 47, '_wp_trash_meta_time', '1489948929') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(205, 47, '_wp_desired_post_slug', ''),
(206, 51, '_menu_item_type', 'custom'),
(207, 51, '_menu_item_menu_item_parent', '0'),
(208, 51, '_menu_item_object_id', '51'),
(209, 51, '_menu_item_object', 'custom'),
(210, 51, '_menu_item_target', ''),
(211, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(212, 51, '_menu_item_xfn', ''),
(213, 51, '_menu_item_url', '#'),
(214, 51, '_menu_item_orphaned', '1489949750'),
(215, 52, '_menu_item_type', 'custom'),
(216, 52, '_menu_item_menu_item_parent', '0'),
(217, 52, '_menu_item_object_id', '52'),
(218, 52, '_menu_item_object', 'custom'),
(219, 52, '_menu_item_target', ''),
(220, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(221, 52, '_menu_item_xfn', ''),
(222, 52, '_menu_item_url', 'http://https://twitter.com/?lang=en'),
(223, 52, '_menu_item_orphaned', '1489949823'),
(224, 53, '_menu_item_type', 'custom'),
(225, 53, '_menu_item_menu_item_parent', '0'),
(226, 53, '_menu_item_object_id', '53'),
(227, 53, '_menu_item_object', 'custom'),
(228, 53, '_menu_item_target', ''),
(229, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 53, '_menu_item_xfn', ''),
(231, 53, '_menu_item_url', 'http://www.google.com'),
(232, 53, '_menu_item_orphaned', '1489949913'),
(233, 54, '_menu_item_type', 'custom'),
(234, 54, '_menu_item_menu_item_parent', '0'),
(235, 54, '_menu_item_object_id', '54'),
(236, 54, '_menu_item_object', 'custom'),
(237, 54, '_menu_item_target', ''),
(238, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(239, 54, '_menu_item_xfn', ''),
(240, 54, '_menu_item_url', 'http://google.com'),
(241, 54, '_menu_item_orphaned', '1489949988'),
(242, 55, '_menu_item_type', 'custom'),
(243, 55, '_menu_item_menu_item_parent', '0'),
(244, 55, '_menu_item_object_id', '55'),
(245, 55, '_menu_item_object', 'custom'),
(246, 55, '_menu_item_target', ''),
(247, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(248, 55, '_menu_item_xfn', ''),
(249, 55, '_menu_item_url', 'http://www.facebook.com'),
(250, 55, '_menu_item_orphaned', '1489950071'),
(260, 57, '_edit_last', '1'),
(261, 57, '_wp_page_template', 'default'),
(262, 57, '_edit_lock', '1490155291:1'),
(263, 59, '_wp_trash_meta_status', 'auto-draft'),
(264, 59, '_wp_trash_meta_time', '1489981581'),
(265, 59, '_wp_desired_post_slug', ''),
(266, 61, '_edit_last', '1'),
(267, 61, 'field_58cf51331b791', 'a:12:{s:3:"key";s:19:"field_58cf51331b791";s:5:"label";s:5:"Image";s:4:"name";s:10:"k_sl_image";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:8:"facebook";s:8:"facebook";s:7:"twitter";s:7:"twitter";s:6:"google";s:6:"google";s:8:"linkedin";s:8:"linkedin";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cf53a11b793";s:8:"operator";s:2:"==";s:5:"value";s:8:"facebook";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(268, 61, 'field_58cf52fc1b792', 'a:14:{s:3:"key";s:19:"field_58cf52fc1b792";s:5:"label";s:4:"Link";s:4:"name";s:9:"k_sl_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cf51331b791";s:8:"operator";s:2:"==";s:5:"value";s:8:"facebook";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(269, 61, 'field_58cf53a11b793', 'a:12:{s:3:"key";s:19:"field_58cf53a11b793";s:5:"label";s:7:"Image 2";s:4:"name";s:12:"k_sl_image_2";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:8:"facebook";s:8:"facebook";s:7:"twitter";s:7:"twitter";s:6:"google";s:6:"google";s:8:"linkedin";s:8:"linkedin";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cf51331b791";s:8:"operator";s:2:"==";s:5:"value";s:8:"facebook";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(270, 61, 'field_58cf54101b795', 'a:14:{s:3:"key";s:19:"field_58cf54101b795";s:5:"label";s:6:"Link 2";s:4:"name";s:11:"k_sl_link_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cf51331b791";s:8:"operator";s:2:"==";s:5:"value";s:8:"facebook";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(271, 61, 'field_58cf53cf1b794', 'a:12:{s:3:"key";s:19:"field_58cf53cf1b794";s:5:"label";s:7:"Image 3";s:4:"name";s:12:"k_sl_image_3";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:8:"facebook";s:8:"facebook";s:7:"twitter";s:7:"twitter";s:6:"google";s:6:"google";s:8:"linkedin";s:8:"linkedin";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cf51331b791";s:8:"operator";s:2:"==";s:5:"value";s:8:"facebook";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(272, 61, 'field_58cf543c1b796', 'a:14:{s:3:"key";s:19:"field_58cf543c1b796";s:5:"label";s:6:"Link 3";s:4:"name";s:11:"k_sl_link_3";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cf51331b791";s:8:"operator";s:2:"==";s:5:"value";s:8:"facebook";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(274, 61, 'position', 'normal'),
(275, 61, 'layout', 'default'),
(276, 61, 'hide_on_screen', 'a:1:{i:0;s:7:"excerpt";}'),
(277, 61, '_edit_lock', '1490012673:1'),
(285, 62, 'k_sl_image', 'Facebook'),
(286, 62, '_k_sl_image', 'field_58cf51331b791'),
(287, 62, 'k_sl_link', '#'),
(288, 62, '_k_sl_link', 'field_58cf52fc1b792'),
(289, 62, 'k_sl_image_2', 'Twitter'),
(290, 62, '_k_sl_image_2', 'field_58cf53a11b793'),
(291, 62, 'k_sl_link_2', '#'),
(292, 62, '_k_sl_link_2', 'field_58cf54101b795'),
(293, 62, 'k_sl_image_3', 'Google+'),
(294, 62, '_k_sl_image_3', 'field_58cf53cf1b794'),
(295, 62, 'k_sl_link_3', '#'),
(296, 62, '_k_sl_link_3', 'field_58cf543c1b796'),
(297, 57, 'k_sl_image', 'facebook'),
(298, 57, '_k_sl_image', 'field_58cf51331b791'),
(299, 57, 'k_sl_link', '#'),
(300, 57, '_k_sl_link', 'field_58cf52fc1b792'),
(301, 57, 'k_sl_image_2', 'twitter'),
(302, 57, '_k_sl_image_2', 'field_58cf53a11b793'),
(303, 57, 'k_sl_link_2', '#'),
(304, 57, '_k_sl_link_2', 'field_58cf54101b795'),
(305, 57, 'k_sl_image_3', 'google'),
(306, 57, '_k_sl_image_3', 'field_58cf53cf1b794'),
(307, 57, 'k_sl_link_3', '#'),
(308, 57, '_k_sl_link_3', 'field_58cf543c1b796'),
(311, 63, 'k_sl_image', 'facebook'),
(312, 63, '_k_sl_image', 'field_58cf51331b791'),
(313, 63, 'k_sl_link', '#'),
(314, 63, '_k_sl_link', 'field_58cf52fc1b792'),
(315, 63, 'k_sl_image_2', 'twitter'),
(316, 63, '_k_sl_image_2', 'field_58cf53a11b793'),
(317, 63, 'k_sl_link_2', '#'),
(318, 63, '_k_sl_link_2', 'field_58cf54101b795'),
(319, 63, 'k_sl_image_3', 'google'),
(320, 63, '_k_sl_image_3', 'field_58cf53cf1b794'),
(321, 63, 'k_sl_link_3', '#'),
(322, 63, '_k_sl_link_3', 'field_58cf543c1b796'),
(323, 64, 'k_sl_image', 'facebook') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(324, 64, '_k_sl_image', 'field_58cf51331b791'),
(325, 64, 'k_sl_link', 'www.facebook.com'),
(326, 64, '_k_sl_link', 'field_58cf52fc1b792'),
(327, 64, 'k_sl_image_2', 'twitter'),
(328, 64, '_k_sl_image_2', 'field_58cf53a11b793'),
(329, 64, 'k_sl_link_2', 'www.twitter.com'),
(330, 64, '_k_sl_link_2', 'field_58cf54101b795'),
(331, 64, 'k_sl_image_3', 'google'),
(332, 64, '_k_sl_image_3', 'field_58cf53cf1b794'),
(333, 64, 'k_sl_link_3', 'www.google.com'),
(334, 64, '_k_sl_link_3', 'field_58cf543c1b796'),
(335, 65, 'k_sl_image', 'facebook'),
(336, 65, '_k_sl_image', 'field_58cf51331b791'),
(337, 65, 'k_sl_link', '#'),
(338, 65, '_k_sl_link', 'field_58cf52fc1b792'),
(339, 65, 'k_sl_image_2', 'twitter'),
(340, 65, '_k_sl_image_2', 'field_58cf53a11b793'),
(341, 65, 'k_sl_link_2', '#'),
(342, 65, '_k_sl_link_2', 'field_58cf54101b795'),
(343, 65, 'k_sl_image_3', 'google'),
(344, 65, '_k_sl_image_3', 'field_58cf53cf1b794'),
(345, 65, 'k_sl_link_3', '#'),
(346, 65, '_k_sl_link_3', 'field_58cf543c1b796'),
(347, 66, '_menu_item_type', 'custom'),
(348, 66, '_menu_item_menu_item_parent', '0'),
(349, 66, '_menu_item_object_id', '66'),
(350, 66, '_menu_item_object', 'custom'),
(351, 66, '_menu_item_target', ''),
(352, 66, '_menu_item_classes', 'a:1:{i:0;s:9:"icon-home";}'),
(353, 66, '_menu_item_xfn', ''),
(354, 66, '_menu_item_url', '#'),
(356, 67, '_menu_item_type', 'custom'),
(357, 67, '_menu_item_menu_item_parent', '0'),
(358, 67, '_menu_item_object_id', '67'),
(359, 67, '_menu_item_object', 'custom'),
(360, 67, '_menu_item_target', ''),
(361, 67, '_menu_item_classes', 'a:1:{i:0;s:18:"icon-shopping-cart";}'),
(362, 67, '_menu_item_xfn', ''),
(363, 67, '_menu_item_url', '#'),
(365, 68, '_menu_item_type', 'custom'),
(366, 68, '_menu_item_menu_item_parent', '0'),
(367, 68, '_menu_item_object_id', '68'),
(368, 68, '_menu_item_object', 'custom'),
(369, 68, '_menu_item_target', ''),
(370, 68, '_menu_item_classes', 'a:1:{i:0;s:9:"icon-edit";}'),
(371, 68, '_menu_item_xfn', ''),
(372, 68, '_menu_item_url', '#'),
(374, 69, '_menu_item_type', 'custom'),
(375, 69, '_menu_item_menu_item_parent', '0'),
(376, 69, '_menu_item_object_id', '69'),
(377, 69, '_menu_item_object', 'custom'),
(378, 69, '_menu_item_target', ''),
(379, 69, '_menu_item_classes', 'a:1:{i:0;s:10:"icon-users";}'),
(380, 69, '_menu_item_xfn', ''),
(381, 69, '_menu_item_url', '#'),
(383, 70, '_menu_item_type', 'custom'),
(384, 70, '_menu_item_menu_item_parent', '0'),
(385, 70, '_menu_item_object_id', '70'),
(386, 70, '_menu_item_object', 'custom'),
(387, 70, '_menu_item_target', ''),
(388, 70, '_menu_item_classes', 'a:1:{i:0;s:11:"icon-trophy";}'),
(389, 70, '_menu_item_xfn', ''),
(390, 70, '_menu_item_url', '#'),
(392, 71, '_menu_item_type', 'custom'),
(393, 71, '_menu_item_menu_item_parent', '0'),
(394, 71, '_menu_item_object_id', '71'),
(395, 71, '_menu_item_object', 'custom'),
(396, 71, '_menu_item_target', ''),
(397, 71, '_menu_item_classes', 'a:1:{i:0;s:21:"icon-info-with-circle";}'),
(398, 71, '_menu_item_xfn', ''),
(399, 71, '_menu_item_url', '#'),
(401, 72, '_menu_item_type', 'custom'),
(402, 72, '_menu_item_menu_item_parent', '0'),
(403, 72, '_menu_item_object_id', '72'),
(404, 72, '_menu_item_object', 'custom'),
(405, 72, '_menu_item_target', ''),
(406, 72, '_menu_item_classes', 'a:1:{i:0;s:9:"icon-mail";}'),
(407, 72, '_menu_item_xfn', ''),
(408, 72, '_menu_item_url', '#'),
(410, 73, '_edit_last', '1'),
(411, 73, '_edit_lock', '1490014371:1'),
(412, 73, '_wp_page_template', 'default'),
(413, 74, 'k_sl_image', 'facebook'),
(414, 74, '_k_sl_image', 'field_58cf51331b791'),
(415, 74, 'k_sl_link', ''),
(416, 74, '_k_sl_link', 'field_58cf52fc1b792'),
(417, 74, 'k_sl_image_2', 'facebook'),
(418, 74, '_k_sl_image_2', 'field_58cf53a11b793'),
(419, 74, 'k_sl_link_2', ''),
(420, 74, '_k_sl_link_2', 'field_58cf54101b795'),
(421, 74, 'k_sl_image_3', 'facebook'),
(422, 74, '_k_sl_image_3', 'field_58cf53cf1b794'),
(423, 74, 'k_sl_link_3', ''),
(424, 74, '_k_sl_link_3', 'field_58cf543c1b796'),
(425, 73, 'k_sl_image', 'facebook'),
(426, 73, '_k_sl_image', 'field_58cf51331b791'),
(427, 73, 'k_sl_link', ''),
(428, 73, '_k_sl_link', 'field_58cf52fc1b792'),
(429, 73, 'k_sl_image_2', 'facebook'),
(430, 73, '_k_sl_image_2', 'field_58cf53a11b793') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(431, 73, 'k_sl_link_2', ''),
(432, 73, '_k_sl_link_2', 'field_58cf54101b795'),
(433, 73, 'k_sl_image_3', 'facebook'),
(434, 73, '_k_sl_image_3', 'field_58cf53cf1b794'),
(435, 73, 'k_sl_link_3', ''),
(436, 73, '_k_sl_link_3', 'field_58cf543c1b796'),
(437, 79, '_edit_last', '1'),
(438, 79, 'field_58cf84309917b', 'a:14:{s:3:"key";s:19:"field_58cf84309917b";s:5:"label";s:12:"Phone Number";s:4:"name";s:18:"k_c_s_phone_number";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(439, 79, 'field_58cf84c89917c', 'a:14:{s:3:"key";s:19:"field_58cf84c89917c";s:5:"label";s:14:"Phone Number 2";s:4:"name";s:20:"k_c_s_phone_number_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(441, 79, 'position', 'normal'),
(442, 79, 'layout', 'default'),
(443, 79, 'hide_on_screen', ''),
(444, 79, '_edit_lock', '1490020386:1'),
(446, 80, 'k_c_s_phone_number', '123445667788'),
(447, 80, '_k_c_s_phone_number', 'field_58cf84309917b'),
(448, 80, 'k_c_s_phone_number_2', ''),
(449, 80, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(450, 80, 'k_sl_image', 'facebook'),
(451, 80, '_k_sl_image', 'field_58cf51331b791'),
(452, 80, 'k_sl_link', '#'),
(453, 80, '_k_sl_link', 'field_58cf52fc1b792'),
(454, 80, 'k_sl_image_2', 'twitter'),
(455, 80, '_k_sl_image_2', 'field_58cf53a11b793'),
(456, 80, 'k_sl_link_2', '#'),
(457, 80, '_k_sl_link_2', 'field_58cf54101b795'),
(458, 80, 'k_sl_image_3', 'google'),
(459, 80, '_k_sl_image_3', 'field_58cf53cf1b794'),
(460, 80, 'k_sl_link_3', '#'),
(461, 80, '_k_sl_link_3', 'field_58cf543c1b796'),
(462, 57, 'k_c_s_phone_number', '(912) 555-1234'),
(463, 57, '_k_c_s_phone_number', 'field_58cf84309917b'),
(464, 57, 'k_c_s_phone_number_2', '(912) 555-5678'),
(465, 57, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(466, 81, 'k_c_s_phone_number', '123445667788'),
(467, 81, '_k_c_s_phone_number', 'field_58cf84309917b'),
(468, 81, 'k_c_s_phone_number_2', '123445667788'),
(469, 81, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(470, 81, 'k_sl_image', 'facebook'),
(471, 81, '_k_sl_image', 'field_58cf51331b791'),
(472, 81, 'k_sl_link', '#'),
(473, 81, '_k_sl_link', 'field_58cf52fc1b792'),
(474, 81, 'k_sl_image_2', 'twitter'),
(475, 81, '_k_sl_image_2', 'field_58cf53a11b793'),
(476, 81, 'k_sl_link_2', '#'),
(477, 81, '_k_sl_link_2', 'field_58cf54101b795'),
(478, 81, 'k_sl_image_3', 'google'),
(479, 81, '_k_sl_image_3', 'field_58cf53cf1b794'),
(480, 81, 'k_sl_link_3', '#'),
(481, 81, '_k_sl_link_3', 'field_58cf543c1b796'),
(482, 82, 'k_c_s_phone_number', '(912) 555-1234'),
(483, 82, '_k_c_s_phone_number', 'field_58cf84309917b'),
(484, 82, 'k_c_s_phone_number_2', '(912) 555-5678'),
(485, 82, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(486, 82, 'k_sl_image', 'facebook'),
(487, 82, '_k_sl_image', 'field_58cf51331b791'),
(488, 82, 'k_sl_link', '#'),
(489, 82, '_k_sl_link', 'field_58cf52fc1b792'),
(490, 82, 'k_sl_image_2', 'twitter'),
(491, 82, '_k_sl_image_2', 'field_58cf53a11b793'),
(492, 82, 'k_sl_link_2', '#'),
(493, 82, '_k_sl_link_2', 'field_58cf54101b795'),
(494, 82, 'k_sl_image_3', 'google'),
(495, 82, '_k_sl_image_3', 'field_58cf53cf1b794'),
(496, 82, 'k_sl_link_3', '#'),
(497, 82, '_k_sl_link_3', 'field_58cf543c1b796'),
(498, 79, 'field_58cf8ed7befca', 'a:14:{s:3:"key";s:19:"field_58cf8ed7befca";s:5:"label";s:7:"Address";s:4:"name";s:13:"k_c_s_address";s:4:"type";s:4:"text";s:12:"instructions";s:98:"If you want the line to break, wrap it in span elements like this - "<span>\'..your text..\'</span>"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(499, 79, 'field_58cf8f11befcb', 'a:14:{s:3:"key";s:19:"field_58cf8f11befcb";s:5:"label";s:21:"Address Maps Location";s:4:"name";s:18:"k_c_s_address_maps";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(501, 83, 'k_c_s_phone_number', '(912) 555-1234'),
(502, 83, '_k_c_s_phone_number', 'field_58cf84309917b'),
(503, 83, 'k_c_s_phone_number_2', '(912) 555-5678'),
(504, 83, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(505, 83, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(506, 83, '_k_c_s_address', 'field_58cf8ed7befca'),
(507, 83, 'k_c_s_address_maps', ''),
(508, 83, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(509, 83, 'k_sl_image', 'facebook'),
(510, 83, '_k_sl_image', 'field_58cf51331b791'),
(511, 83, 'k_sl_link', '#'),
(512, 83, '_k_sl_link', 'field_58cf52fc1b792'),
(513, 83, 'k_sl_image_2', 'twitter'),
(514, 83, '_k_sl_image_2', 'field_58cf53a11b793'),
(515, 83, 'k_sl_link_2', '#'),
(516, 83, '_k_sl_link_2', 'field_58cf54101b795'),
(517, 83, 'k_sl_image_3', 'google'),
(518, 83, '_k_sl_image_3', 'field_58cf53cf1b794'),
(519, 83, 'k_sl_link_3', '#'),
(520, 83, '_k_sl_link_3', 'field_58cf543c1b796'),
(521, 57, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(522, 57, '_k_c_s_address', 'field_58cf8ed7befca'),
(523, 57, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(524, 57, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(525, 84, 'k_c_s_phone_number', '(912) 555-1234'),
(526, 84, '_k_c_s_phone_number', 'field_58cf84309917b'),
(527, 84, 'k_c_s_phone_number_2', '(912) 555-5678'),
(528, 84, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(529, 84, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(530, 84, '_k_c_s_address', 'field_58cf8ed7befca'),
(531, 84, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(532, 84, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(533, 84, 'k_sl_image', 'facebook') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(534, 84, '_k_sl_image', 'field_58cf51331b791'),
(535, 84, 'k_sl_link', '#'),
(536, 84, '_k_sl_link', 'field_58cf52fc1b792'),
(537, 84, 'k_sl_image_2', 'twitter'),
(538, 84, '_k_sl_image_2', 'field_58cf53a11b793'),
(539, 84, 'k_sl_link_2', '#'),
(540, 84, '_k_sl_link_2', 'field_58cf54101b795'),
(541, 84, 'k_sl_image_3', 'google'),
(542, 84, '_k_sl_image_3', 'field_58cf53cf1b794'),
(543, 84, 'k_sl_link_3', '#'),
(544, 84, '_k_sl_link_3', 'field_58cf543c1b796'),
(548, 79, 'field_58cf92fe2c5ab', 'a:14:{s:3:"key";s:19:"field_58cf92fe2c5ab";s:5:"label";s:13:"Email address";s:4:"name";s:19:"k_c_s_email_address";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(549, 79, 'field_58cf93292c5ac', 'a:14:{s:3:"key";s:19:"field_58cf93292c5ac";s:5:"label";s:15:"Email address 2";s:4:"name";s:21:"k_c_s_email_address_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(550, 79, 'rule', 'a:5:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(551, 85, 'k_c_s_phone_number', '(912) 555-1234'),
(552, 85, '_k_c_s_phone_number', 'field_58cf84309917b'),
(553, 85, 'k_c_s_phone_number_2', '(912) 555-5678'),
(554, 85, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(555, 85, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(556, 85, '_k_c_s_address', 'field_58cf8ed7befca'),
(557, 85, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(558, 85, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(559, 85, 'k_c_s_email_address', 'hello@website.comyooo'),
(560, 85, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(561, 85, 'k_c_s_email_address_2', ''),
(562, 85, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(563, 85, 'k_sl_image', 'facebook'),
(564, 85, '_k_sl_image', 'field_58cf51331b791'),
(565, 85, 'k_sl_link', '#'),
(566, 85, '_k_sl_link', 'field_58cf52fc1b792'),
(567, 85, 'k_sl_image_2', 'twitter'),
(568, 85, '_k_sl_image_2', 'field_58cf53a11b793'),
(569, 85, 'k_sl_link_2', '#'),
(570, 85, '_k_sl_link_2', 'field_58cf54101b795'),
(571, 85, 'k_sl_image_3', 'google'),
(572, 85, '_k_sl_image_3', 'field_58cf53cf1b794'),
(573, 85, 'k_sl_link_3', '#'),
(574, 85, '_k_sl_link_3', 'field_58cf543c1b796'),
(575, 57, 'k_c_s_email_address', 'hello@website.com'),
(576, 57, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(577, 57, 'k_c_s_email_address_2', 'office@website.com'),
(578, 57, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(579, 86, 'k_c_s_phone_number', '(912) 555-1234'),
(580, 86, '_k_c_s_phone_number', 'field_58cf84309917b'),
(581, 86, 'k_c_s_phone_number_2', '(912) 555-5678'),
(582, 86, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(583, 86, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(584, 86, '_k_c_s_address', 'field_58cf8ed7befca'),
(585, 86, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(586, 86, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(587, 86, 'k_c_s_email_address', 'hello@website.com'),
(588, 86, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(589, 86, 'k_c_s_email_address_2', 'office@website.com'),
(590, 86, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(591, 86, 'k_sl_image', 'facebook'),
(592, 86, '_k_sl_image', 'field_58cf51331b791'),
(593, 86, 'k_sl_link', '#'),
(594, 86, '_k_sl_link', 'field_58cf52fc1b792'),
(595, 86, 'k_sl_image_2', 'twitter'),
(596, 86, '_k_sl_image_2', 'field_58cf53a11b793'),
(597, 86, 'k_sl_link_2', '#'),
(598, 86, '_k_sl_link_2', 'field_58cf54101b795'),
(599, 86, 'k_sl_image_3', 'google'),
(600, 86, '_k_sl_image_3', 'field_58cf53cf1b794'),
(601, 86, 'k_sl_link_3', '#'),
(602, 86, '_k_sl_link_3', 'field_58cf543c1b796'),
(621, 91, '_menu_item_type', 'custom'),
(622, 91, '_menu_item_menu_item_parent', '0'),
(623, 91, '_menu_item_object_id', '91'),
(624, 91, '_menu_item_object', 'custom'),
(625, 91, '_menu_item_target', ''),
(626, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(627, 91, '_menu_item_xfn', ''),
(628, 91, '_menu_item_url', '#'),
(630, 92, '_menu_item_type', 'custom'),
(631, 92, '_menu_item_menu_item_parent', '0'),
(632, 92, '_menu_item_object_id', '92'),
(633, 92, '_menu_item_object', 'custom'),
(634, 92, '_menu_item_target', ''),
(635, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(636, 92, '_menu_item_xfn', ''),
(637, 92, '_menu_item_url', '#'),
(639, 93, '_menu_item_type', 'custom'),
(640, 93, '_menu_item_menu_item_parent', '0'),
(641, 93, '_menu_item_object_id', '93'),
(642, 93, '_menu_item_object', 'custom'),
(643, 93, '_menu_item_target', ''),
(644, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(645, 93, '_menu_item_xfn', ''),
(646, 93, '_menu_item_url', '#'),
(657, 95, '_menu_item_type', 'custom'),
(658, 95, '_menu_item_menu_item_parent', '0'),
(659, 95, '_menu_item_object_id', '95'),
(660, 95, '_menu_item_object', 'custom'),
(661, 95, '_menu_item_target', ''),
(662, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(663, 95, '_menu_item_xfn', ''),
(664, 95, '_menu_item_url', '#'),
(666, 96, '_menu_item_type', 'custom'),
(667, 96, '_menu_item_menu_item_parent', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(668, 96, '_menu_item_object_id', '96'),
(669, 96, '_menu_item_object', 'custom'),
(670, 96, '_menu_item_target', ''),
(671, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(672, 96, '_menu_item_xfn', ''),
(673, 96, '_menu_item_url', '#'),
(675, 97, '_menu_item_type', 'custom'),
(676, 97, '_menu_item_menu_item_parent', '0'),
(677, 97, '_menu_item_object_id', '97'),
(678, 97, '_menu_item_object', 'custom'),
(679, 97, '_menu_item_target', ''),
(680, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(681, 97, '_menu_item_xfn', ''),
(682, 97, '_menu_item_url', '#'),
(684, 98, '_menu_item_type', 'custom'),
(685, 98, '_menu_item_menu_item_parent', '0'),
(686, 98, '_menu_item_object_id', '98'),
(687, 98, '_menu_item_object', 'custom'),
(688, 98, '_menu_item_target', ''),
(689, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(690, 98, '_menu_item_xfn', ''),
(691, 98, '_menu_item_url', '#'),
(693, 99, '_menu_item_type', 'custom'),
(694, 99, '_menu_item_menu_item_parent', '0'),
(695, 99, '_menu_item_object_id', '99'),
(696, 99, '_menu_item_object', 'custom'),
(697, 99, '_menu_item_target', ''),
(698, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(699, 99, '_menu_item_xfn', ''),
(700, 99, '_menu_item_url', '#'),
(702, 100, '_menu_item_type', 'custom'),
(703, 100, '_menu_item_menu_item_parent', '0'),
(704, 100, '_menu_item_object_id', '100'),
(705, 100, '_menu_item_object', 'custom'),
(706, 100, '_menu_item_target', ''),
(707, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(708, 100, '_menu_item_xfn', ''),
(709, 100, '_menu_item_url', '#'),
(711, 101, '_menu_item_type', 'custom'),
(712, 101, '_menu_item_menu_item_parent', '0'),
(713, 101, '_menu_item_object_id', '101'),
(714, 101, '_menu_item_object', 'custom'),
(715, 101, '_menu_item_target', ''),
(716, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(717, 101, '_menu_item_xfn', ''),
(718, 101, '_menu_item_url', '#'),
(720, 102, '_menu_item_type', 'custom'),
(721, 102, '_menu_item_menu_item_parent', '0'),
(722, 102, '_menu_item_object_id', '102'),
(723, 102, '_menu_item_object', 'custom'),
(724, 102, '_menu_item_target', ''),
(725, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(726, 102, '_menu_item_xfn', ''),
(727, 102, '_menu_item_url', '#'),
(729, 103, '_menu_item_type', 'custom'),
(730, 103, '_menu_item_menu_item_parent', '0'),
(731, 103, '_menu_item_object_id', '103'),
(732, 103, '_menu_item_object', 'custom'),
(733, 103, '_menu_item_target', ''),
(734, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(735, 103, '_menu_item_xfn', ''),
(736, 103, '_menu_item_url', '#'),
(738, 104, '_menu_item_type', 'custom'),
(739, 104, '_menu_item_menu_item_parent', '0'),
(740, 104, '_menu_item_object_id', '104'),
(741, 104, '_menu_item_object', 'custom'),
(742, 104, '_menu_item_target', ''),
(743, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(744, 104, '_menu_item_xfn', ''),
(745, 104, '_menu_item_url', '#'),
(747, 107, '_menu_item_type', 'custom'),
(748, 107, '_menu_item_menu_item_parent', '0'),
(749, 107, '_menu_item_object_id', '107'),
(750, 107, '_menu_item_object', 'custom'),
(751, 107, '_menu_item_target', ''),
(752, 107, '_menu_item_classes', 'a:1:{i:0;s:13:"icon-facebook";}'),
(753, 107, '_menu_item_xfn', ''),
(754, 107, '_menu_item_url', '#'),
(756, 108, '_menu_item_type', 'custom'),
(757, 108, '_menu_item_menu_item_parent', '0'),
(758, 108, '_menu_item_object_id', '108'),
(759, 108, '_menu_item_object', 'custom'),
(760, 108, '_menu_item_target', ''),
(761, 108, '_menu_item_classes', 'a:1:{i:0;s:12:"icon-twitter";}'),
(762, 108, '_menu_item_xfn', ''),
(763, 108, '_menu_item_url', '#'),
(765, 109, '_menu_item_type', 'custom'),
(766, 109, '_menu_item_menu_item_parent', '0'),
(767, 109, '_menu_item_object_id', '109'),
(768, 109, '_menu_item_object', 'custom'),
(769, 109, '_menu_item_target', ''),
(770, 109, '_menu_item_classes', 'a:1:{i:0;s:11:"icon-google";}'),
(771, 109, '_menu_item_xfn', ''),
(772, 109, '_menu_item_url', '#'),
(774, 110, '_menu_item_type', 'custom'),
(775, 110, '_menu_item_menu_item_parent', '0'),
(776, 110, '_menu_item_object_id', '110'),
(777, 110, '_menu_item_object', 'custom'),
(778, 110, '_menu_item_target', ''),
(779, 110, '_menu_item_classes', 'a:1:{i:0;s:9:"icon-feed";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(780, 110, '_menu_item_xfn', ''),
(781, 110, '_menu_item_url', '#'),
(783, 111, '_menu_item_type', 'custom'),
(784, 111, '_menu_item_menu_item_parent', '0'),
(785, 111, '_menu_item_object_id', '111'),
(786, 111, '_menu_item_object', 'custom'),
(787, 111, '_menu_item_target', ''),
(788, 111, '_menu_item_classes', 'a:1:{i:0;s:14:"icon-pinterest";}'),
(789, 111, '_menu_item_xfn', ''),
(790, 111, '_menu_item_url', '#'),
(792, 61, 'field_58cfc60742288', 'a:12:{s:3:"key";s:19:"field_58cfc60742288";s:5:"label";s:7:"Image 4";s:4:"name";s:12:"k_sl_image_4";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:8:"facebook";s:8:"facebook";s:7:"twitter";s:7:"twitter";s:6:"google";s:6:"google";s:9:"linkedin2";s:9:"linkedin2";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cf51331b791";s:8:"operator";s:2:"==";s:5:"value";s:8:"facebook";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(798, 61, 'field_58cfc6c179a2b', 'a:14:{s:3:"key";s:19:"field_58cfc6c179a2b";s:5:"label";s:6:"Link 4";s:4:"name";s:11:"k_sl_link_4";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_58cf51331b791";s:8:"operator";s:2:"==";s:5:"value";s:8:"facebook";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(804, 112, 'k_c_s_phone_number', '(912) 555-1234'),
(805, 112, '_k_c_s_phone_number', 'field_58cf84309917b'),
(806, 112, 'k_c_s_phone_number_2', '(912) 555-5678'),
(807, 112, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(808, 112, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(809, 112, '_k_c_s_address', 'field_58cf8ed7befca'),
(810, 112, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(811, 112, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(812, 112, 'k_c_s_email_address', 'hello@website.com'),
(813, 112, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(814, 112, 'k_c_s_email_address_2', 'office@website.com'),
(815, 112, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(816, 112, 'k_sl_image', 'facebook'),
(817, 112, '_k_sl_image', 'field_58cf51331b791'),
(818, 112, 'k_sl_link', '#'),
(819, 112, '_k_sl_link', 'field_58cf52fc1b792'),
(820, 112, 'k_sl_image_2', 'twitter'),
(821, 112, '_k_sl_image_2', 'field_58cf53a11b793'),
(822, 112, 'k_sl_link_2', '#'),
(823, 112, '_k_sl_link_2', 'field_58cf54101b795'),
(824, 112, 'k_sl_image_3', 'google'),
(825, 112, '_k_sl_image_3', 'field_58cf53cf1b794'),
(826, 112, 'k_sl_link_3', '#'),
(827, 112, '_k_sl_link_3', 'field_58cf543c1b796'),
(828, 112, 'k_sl_image_4', 'linkedin2'),
(829, 112, '_k_sl_image_4', 'field_58cfc60742288'),
(830, 112, 'k_sl_link_4', ''),
(831, 112, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(832, 57, 'k_sl_image_4', 'linkedin2'),
(833, 57, '_k_sl_image_4', 'field_58cfc60742288'),
(834, 57, 'k_sl_link_4', '#'),
(835, 57, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(836, 113, 'k_c_s_phone_number', '(912) 555-1234'),
(837, 113, '_k_c_s_phone_number', 'field_58cf84309917b'),
(838, 113, 'k_c_s_phone_number_2', '(912) 555-5678'),
(839, 113, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(840, 113, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(841, 113, '_k_c_s_address', 'field_58cf8ed7befca'),
(842, 113, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(843, 113, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(844, 113, 'k_c_s_email_address', 'hello@website.com'),
(845, 113, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(846, 113, 'k_c_s_email_address_2', 'office@website.com'),
(847, 113, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(848, 113, 'k_sl_image', 'facebook'),
(849, 113, '_k_sl_image', 'field_58cf51331b791'),
(850, 113, 'k_sl_link', '#'),
(851, 113, '_k_sl_link', 'field_58cf52fc1b792'),
(852, 113, 'k_sl_image_2', 'twitter'),
(853, 113, '_k_sl_image_2', 'field_58cf53a11b793'),
(854, 113, 'k_sl_link_2', '#'),
(855, 113, '_k_sl_link_2', 'field_58cf54101b795'),
(856, 113, 'k_sl_image_3', 'google'),
(857, 113, '_k_sl_image_3', 'field_58cf53cf1b794'),
(858, 113, 'k_sl_link_3', '#'),
(859, 113, '_k_sl_link_3', 'field_58cf543c1b796'),
(860, 113, 'k_sl_image_4', 'linkedin2'),
(861, 113, '_k_sl_image_4', 'field_58cfc60742288'),
(862, 113, 'k_sl_link_4', '#'),
(863, 113, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(864, 61, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(865, 114, 'k_c_s_phone_number', '(912) 555-1234'),
(866, 114, '_k_c_s_phone_number', 'field_58cf84309917b'),
(867, 114, 'k_c_s_phone_number_2', '(912) 555-5678'),
(868, 114, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(869, 114, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(870, 114, '_k_c_s_address', 'field_58cf8ed7befca'),
(871, 114, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(872, 114, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(873, 114, 'k_c_s_email_address', 'hello@website.com'),
(874, 114, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(875, 114, 'k_c_s_email_address_2', 'office@website.com'),
(876, 114, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(877, 114, 'k_sl_image', 'twitter'),
(878, 114, '_k_sl_image', 'field_58cf51331b791'),
(879, 114, 'k_sl_link', '#'),
(880, 114, '_k_sl_link', 'field_58cf52fc1b792'),
(881, 114, 'k_sl_image_2', 'twitter'),
(882, 114, '_k_sl_image_2', 'field_58cf53a11b793'),
(883, 114, 'k_sl_link_2', '#'),
(884, 114, '_k_sl_link_2', 'field_58cf54101b795'),
(885, 114, 'k_sl_image_3', 'google'),
(886, 114, '_k_sl_image_3', 'field_58cf53cf1b794'),
(887, 114, 'k_sl_link_3', '#'),
(888, 114, '_k_sl_link_3', 'field_58cf543c1b796'),
(889, 114, 'k_sl_image_4', 'linkedin2'),
(890, 114, '_k_sl_image_4', 'field_58cfc60742288'),
(891, 114, 'k_sl_link_4', '#') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(892, 114, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(893, 115, 'k_c_s_phone_number', '(912) 555-1234'),
(894, 115, '_k_c_s_phone_number', 'field_58cf84309917b'),
(895, 115, 'k_c_s_phone_number_2', '(912) 555-5678'),
(896, 115, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(897, 115, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(898, 115, '_k_c_s_address', 'field_58cf8ed7befca'),
(899, 115, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(900, 115, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(901, 115, 'k_c_s_email_address', 'hello@website.com'),
(902, 115, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(903, 115, 'k_c_s_email_address_2', 'office@website.com'),
(904, 115, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(905, 115, 'k_sl_image', 'facebook'),
(906, 115, '_k_sl_image', 'field_58cf51331b791'),
(907, 115, 'k_sl_link', '#'),
(908, 115, '_k_sl_link', 'field_58cf52fc1b792'),
(909, 115, 'k_sl_image_2', 'twitter'),
(910, 115, '_k_sl_image_2', 'field_58cf53a11b793'),
(911, 115, 'k_sl_link_2', '#'),
(912, 115, '_k_sl_link_2', 'field_58cf54101b795'),
(913, 115, 'k_sl_image_3', 'google'),
(914, 115, '_k_sl_image_3', 'field_58cf53cf1b794'),
(915, 115, 'k_sl_link_3', '#'),
(916, 115, '_k_sl_link_3', 'field_58cf543c1b796'),
(917, 115, 'k_sl_image_4', 'linkedin2'),
(918, 115, '_k_sl_image_4', 'field_58cfc60742288'),
(919, 115, 'k_sl_link_4', '#'),
(920, 115, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(921, 116, '_edit_last', '1'),
(922, 116, 'field_58cfd071133fb', 'a:14:{s:3:"key";s:19:"field_58cfd071133fb";s:5:"label";s:9:"Section 1";s:4:"name";s:15:"k_hps_section_1";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:4:"page";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(925, 116, 'position', 'normal'),
(926, 116, 'layout', 'default'),
(927, 116, 'hide_on_screen', ''),
(928, 116, '_edit_lock', '1490156618:1'),
(929, 73, '_wp_trash_meta_status', 'publish'),
(930, 73, '_wp_trash_meta_time', '1490014519'),
(931, 73, '_wp_desired_post_slug', 'contacts'),
(932, 117, '_edit_last', '1'),
(933, 117, '_edit_lock', '1490018878:1'),
(934, 117, '_wp_page_template', 'default'),
(935, 118, 'k_sl_image', 'facebook'),
(936, 118, '_k_sl_image', 'field_58cf51331b791'),
(937, 118, 'k_sl_link', ''),
(938, 118, '_k_sl_link', 'field_58cf52fc1b792'),
(939, 118, 'k_sl_image_2', 'facebook'),
(940, 118, '_k_sl_image_2', 'field_58cf53a11b793'),
(941, 118, 'k_sl_link_2', ''),
(942, 118, '_k_sl_link_2', 'field_58cf54101b795'),
(943, 118, 'k_sl_image_3', 'facebook'),
(944, 118, '_k_sl_image_3', 'field_58cf53cf1b794'),
(945, 118, 'k_sl_link_3', ''),
(946, 118, '_k_sl_link_3', 'field_58cf543c1b796'),
(947, 118, 'k_sl_image_4', 'facebook'),
(948, 118, '_k_sl_image_4', 'field_58cfc60742288'),
(949, 118, 'k_sl_link_4', ''),
(950, 118, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(951, 117, 'k_sl_image', 'facebook'),
(952, 117, '_k_sl_image', 'field_58cf51331b791'),
(953, 117, 'k_sl_link', ''),
(954, 117, '_k_sl_link', 'field_58cf52fc1b792'),
(955, 117, 'k_sl_image_2', 'facebook'),
(956, 117, '_k_sl_image_2', 'field_58cf53a11b793'),
(957, 117, 'k_sl_link_2', ''),
(958, 117, '_k_sl_link_2', 'field_58cf54101b795'),
(959, 117, 'k_sl_image_3', 'facebook'),
(960, 117, '_k_sl_image_3', 'field_58cf53cf1b794'),
(961, 117, 'k_sl_link_3', ''),
(962, 117, '_k_sl_link_3', 'field_58cf543c1b796'),
(963, 117, 'k_sl_image_4', 'facebook'),
(964, 117, '_k_sl_image_4', 'field_58cfc60742288'),
(965, 117, 'k_sl_link_4', ''),
(966, 117, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(967, 119, 'k_c_s_phone_number', '(912) 555-1234'),
(968, 119, '_k_c_s_phone_number', 'field_58cf84309917b'),
(969, 119, 'k_c_s_phone_number_2', '(912) 555-5678'),
(970, 119, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(971, 119, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(972, 119, '_k_c_s_address', 'field_58cf8ed7befca'),
(973, 119, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(974, 119, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(975, 119, 'k_c_s_email_address', 'hello@website.com'),
(976, 119, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(977, 119, 'k_c_s_email_address_2', 'office@website.com'),
(978, 119, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(979, 119, 'k_hps_section_1', 'a:1:{i:0;s:3:"117";}'),
(980, 119, '_k_hps_section_1', 'field_58cfd071133fb'),
(981, 119, '_', 'field_58cfd100133fc'),
(982, 119, 'k_sl_image', 'facebook'),
(983, 119, '_k_sl_image', 'field_58cf51331b791'),
(984, 119, 'k_sl_link', '#'),
(985, 119, '_k_sl_link', 'field_58cf52fc1b792'),
(986, 119, 'k_sl_image_2', 'twitter'),
(987, 119, '_k_sl_image_2', 'field_58cf53a11b793'),
(988, 119, 'k_sl_link_2', '#'),
(989, 119, '_k_sl_link_2', 'field_58cf54101b795'),
(990, 119, 'k_sl_image_3', 'google'),
(991, 119, '_k_sl_image_3', 'field_58cf53cf1b794'),
(992, 119, 'k_sl_link_3', '#'),
(993, 119, '_k_sl_link_3', 'field_58cf543c1b796') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(994, 119, 'k_sl_image_4', 'linkedin2'),
(995, 119, '_k_sl_image_4', 'field_58cfc60742288'),
(996, 119, 'k_sl_link_4', '#'),
(997, 119, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(998, 57, 'k_hps_section_1', 'a:1:{i:0;s:3:"117";}'),
(999, 57, '_k_hps_section_1', 'field_58cfd071133fb'),
(1000, 57, '_', 'field_58d199eb77f3b'),
(1002, 120, 'k_sl_image', 'facebook'),
(1003, 120, '_k_sl_image', 'field_58cf51331b791'),
(1004, 120, 'k_sl_link', ''),
(1005, 120, '_k_sl_link', 'field_58cf52fc1b792'),
(1006, 120, 'k_sl_image_2', 'facebook'),
(1007, 120, '_k_sl_image_2', 'field_58cf53a11b793'),
(1008, 120, 'k_sl_link_2', ''),
(1009, 120, '_k_sl_link_2', 'field_58cf54101b795'),
(1010, 120, 'k_sl_image_3', 'facebook'),
(1011, 120, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1012, 120, 'k_sl_link_3', ''),
(1013, 120, '_k_sl_link_3', 'field_58cf543c1b796'),
(1014, 120, 'k_sl_image_4', 'facebook'),
(1015, 120, '_k_sl_image_4', 'field_58cfc60742288'),
(1016, 120, 'k_sl_link_4', ''),
(1017, 120, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1018, 116, 'field_58cfe33185d5b', 'a:14:{s:3:"key";s:19:"field_58cfe33185d5b";s:5:"label";s:9:"Section 2";s:4:"name";s:15:"k_hps_section_2";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:4:"page";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1022, 121, '_edit_last', '1'),
(1023, 121, '_edit_lock', '1490126448:1'),
(1024, 121, '_wp_page_template', 'default'),
(1025, 122, 'k_sl_image', 'facebook'),
(1026, 122, '_k_sl_image', 'field_58cf51331b791'),
(1027, 122, 'k_sl_link', ''),
(1028, 122, '_k_sl_link', 'field_58cf52fc1b792'),
(1029, 122, 'k_sl_image_2', 'facebook'),
(1030, 122, '_k_sl_image_2', 'field_58cf53a11b793'),
(1031, 122, 'k_sl_link_2', ''),
(1032, 122, '_k_sl_link_2', 'field_58cf54101b795'),
(1033, 122, 'k_sl_image_3', 'facebook'),
(1034, 122, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1035, 122, 'k_sl_link_3', ''),
(1036, 122, '_k_sl_link_3', 'field_58cf543c1b796'),
(1037, 122, 'k_sl_image_4', 'facebook'),
(1038, 122, '_k_sl_image_4', 'field_58cfc60742288'),
(1039, 122, 'k_sl_link_4', ''),
(1040, 122, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1041, 121, 'k_sl_image', 'facebook'),
(1042, 121, '_k_sl_image', 'field_58cf51331b791'),
(1043, 121, 'k_sl_link', ''),
(1044, 121, '_k_sl_link', 'field_58cf52fc1b792'),
(1045, 121, 'k_sl_image_2', 'facebook'),
(1046, 121, '_k_sl_image_2', 'field_58cf53a11b793'),
(1047, 121, 'k_sl_link_2', ''),
(1048, 121, '_k_sl_link_2', 'field_58cf54101b795'),
(1049, 121, 'k_sl_image_3', 'facebook'),
(1050, 121, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1051, 121, 'k_sl_link_3', ''),
(1052, 121, '_k_sl_link_3', 'field_58cf543c1b796'),
(1053, 121, 'k_sl_image_4', 'facebook'),
(1054, 121, '_k_sl_image_4', 'field_58cfc60742288'),
(1055, 121, 'k_sl_link_4', ''),
(1056, 121, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1057, 123, 'k_c_s_phone_number', '(912) 555-1234'),
(1058, 123, '_k_c_s_phone_number', 'field_58cf84309917b'),
(1059, 123, 'k_c_s_phone_number_2', '(912) 555-5678'),
(1060, 123, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(1061, 123, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(1062, 123, '_k_c_s_address', 'field_58cf8ed7befca'),
(1063, 123, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(1064, 123, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(1065, 123, 'k_c_s_email_address', 'hello@website.com'),
(1066, 123, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(1067, 123, 'k_c_s_email_address_2', 'office@website.com'),
(1068, 123, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(1069, 123, 'k_hps_section_1', 'a:1:{i:0;s:3:"117";}'),
(1070, 123, '_k_hps_section_1', 'field_58cfd071133fb'),
(1071, 123, 'k_hps_section_2', 'a:1:{i:0;s:3:"121";}'),
(1072, 123, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1073, 123, 'k_sl_image', 'facebook'),
(1074, 123, '_k_sl_image', 'field_58cf51331b791'),
(1075, 123, 'k_sl_link', '#'),
(1076, 123, '_k_sl_link', 'field_58cf52fc1b792'),
(1077, 123, 'k_sl_image_2', 'twitter'),
(1078, 123, '_k_sl_image_2', 'field_58cf53a11b793'),
(1079, 123, 'k_sl_link_2', '#'),
(1080, 123, '_k_sl_link_2', 'field_58cf54101b795'),
(1081, 123, 'k_sl_image_3', 'google'),
(1082, 123, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1083, 123, 'k_sl_link_3', '#'),
(1084, 123, '_k_sl_link_3', 'field_58cf543c1b796'),
(1085, 123, 'k_sl_image_4', 'linkedin2'),
(1086, 123, '_k_sl_image_4', 'field_58cfc60742288'),
(1087, 123, 'k_sl_link_4', '#'),
(1088, 123, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1089, 57, 'k_hps_section_2', 'a:1:{i:0;s:3:"121";}'),
(1090, 57, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1098, 31, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:51:"Invalid mailbox syntax is used in the %name% field.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(1099, 125, '_edit_last', '1'),
(1100, 125, '_edit_lock', '1490134273:1'),
(1101, 125, '_wp_page_template', 'default'),
(1102, 126, 'k_sl_image', 'facebook'),
(1103, 126, '_k_sl_image', 'field_58cf51331b791'),
(1104, 126, 'k_sl_link', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1105, 126, '_k_sl_link', 'field_58cf52fc1b792'),
(1106, 126, 'k_sl_image_2', 'facebook'),
(1107, 126, '_k_sl_image_2', 'field_58cf53a11b793'),
(1108, 126, 'k_sl_link_2', ''),
(1109, 126, '_k_sl_link_2', 'field_58cf54101b795'),
(1110, 126, 'k_sl_image_3', 'facebook'),
(1111, 126, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1112, 126, 'k_sl_link_3', ''),
(1113, 126, '_k_sl_link_3', 'field_58cf543c1b796'),
(1114, 126, 'k_sl_image_4', 'facebook'),
(1115, 126, '_k_sl_image_4', 'field_58cfc60742288'),
(1116, 126, 'k_sl_link_4', ''),
(1117, 126, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1118, 125, 'k_sl_image', 'facebook'),
(1119, 125, '_k_sl_image', 'field_58cf51331b791'),
(1120, 125, 'k_sl_link', ''),
(1121, 125, '_k_sl_link', 'field_58cf52fc1b792'),
(1122, 125, 'k_sl_image_2', 'facebook'),
(1123, 125, '_k_sl_image_2', 'field_58cf53a11b793'),
(1124, 125, 'k_sl_link_2', ''),
(1125, 125, '_k_sl_link_2', 'field_58cf54101b795'),
(1126, 125, 'k_sl_image_3', 'facebook'),
(1127, 125, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1128, 125, 'k_sl_link_3', ''),
(1129, 125, '_k_sl_link_3', 'field_58cf543c1b796'),
(1130, 125, 'k_sl_image_4', 'facebook'),
(1131, 125, '_k_sl_image_4', 'field_58cfc60742288'),
(1132, 125, 'k_sl_link_4', ''),
(1133, 125, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1134, 116, 'field_58d199d177f3a', 'a:14:{s:3:"key";s:19:"field_58d199d177f3a";s:5:"label";s:16:"Carousel slide 1";s:4:"name";s:15:"k_hps_section_3";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(1137, 129, 'k_c_s_phone_number', '(912) 555-1234'),
(1138, 129, '_k_c_s_phone_number', 'field_58cf84309917b'),
(1139, 129, 'k_c_s_phone_number_2', '(912) 555-5678'),
(1140, 129, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(1141, 129, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(1142, 129, '_k_c_s_address', 'field_58cf8ed7befca'),
(1143, 129, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(1144, 129, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(1145, 129, 'k_c_s_email_address', 'hello@website.com'),
(1146, 129, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(1147, 129, 'k_c_s_email_address_2', 'office@website.com'),
(1148, 129, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(1149, 129, 'k_hps_section_1', 'a:1:{i:0;s:3:"117";}'),
(1150, 129, '_k_hps_section_1', 'field_58cfd071133fb'),
(1151, 129, 'k_hps_section_2', 'a:1:{i:0;s:3:"125";}'),
(1152, 129, '_k_hps_section_2', 'field_58d199d177f3a'),
(1153, 129, '_', 'field_58d199eb77f3b'),
(1154, 129, 'k_sl_image', 'facebook'),
(1155, 129, '_k_sl_image', 'field_58cf51331b791'),
(1156, 129, 'k_sl_link', '#'),
(1157, 129, '_k_sl_link', 'field_58cf52fc1b792'),
(1158, 129, 'k_sl_image_2', 'twitter'),
(1159, 129, '_k_sl_image_2', 'field_58cf53a11b793'),
(1160, 129, 'k_sl_link_2', '#'),
(1161, 129, '_k_sl_link_2', 'field_58cf54101b795'),
(1162, 129, 'k_sl_image_3', 'google'),
(1163, 129, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1164, 129, 'k_sl_link_3', '#'),
(1165, 129, '_k_sl_link_3', 'field_58cf543c1b796'),
(1166, 129, 'k_sl_image_4', 'linkedin2'),
(1167, 129, '_k_sl_image_4', 'field_58cfc60742288'),
(1168, 129, 'k_sl_link_4', '#'),
(1169, 129, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1170, 130, 'k_sl_image', 'facebook'),
(1171, 130, '_k_sl_image', 'field_58cf51331b791'),
(1172, 130, 'k_sl_link', ''),
(1173, 130, '_k_sl_link', 'field_58cf52fc1b792'),
(1174, 130, 'k_sl_image_2', 'facebook'),
(1175, 130, '_k_sl_image_2', 'field_58cf53a11b793'),
(1176, 130, 'k_sl_link_2', ''),
(1177, 130, '_k_sl_link_2', 'field_58cf54101b795'),
(1178, 130, 'k_sl_image_3', 'facebook'),
(1179, 130, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1180, 130, 'k_sl_link_3', ''),
(1181, 130, '_k_sl_link_3', 'field_58cf543c1b796'),
(1182, 130, 'k_sl_image_4', 'facebook'),
(1183, 130, '_k_sl_image_4', 'field_58cfc60742288'),
(1184, 130, 'k_sl_link_4', ''),
(1185, 130, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1186, 132, 'k_sl_image', 'facebook'),
(1187, 132, '_k_sl_image', 'field_58cf51331b791'),
(1188, 132, 'k_sl_link', ''),
(1189, 132, '_k_sl_link', 'field_58cf52fc1b792'),
(1190, 132, 'k_sl_image_2', 'facebook'),
(1191, 132, '_k_sl_image_2', 'field_58cf53a11b793'),
(1192, 132, 'k_sl_link_2', ''),
(1193, 132, '_k_sl_link_2', 'field_58cf54101b795'),
(1194, 132, 'k_sl_image_3', 'facebook'),
(1195, 132, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1196, 132, 'k_sl_link_3', ''),
(1197, 132, '_k_sl_link_3', 'field_58cf543c1b796'),
(1198, 132, 'k_sl_image_4', 'facebook'),
(1199, 132, '_k_sl_image_4', 'field_58cfc60742288'),
(1200, 132, 'k_sl_link_4', ''),
(1201, 132, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1203, 133, '_edit_last', '1'),
(1204, 133, 'field_58d19c607ba1d', 'a:14:{s:3:"key";s:19:"field_58d19c607ba1d";s:5:"label";s:20:"Carousel Button Text";s:4:"name";s:22:"k_carousel_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1206, 133, 'position', 'normal'),
(1207, 133, 'layout', 'no_box'),
(1208, 133, 'hide_on_screen', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1209, 133, '_edit_lock', '1490134814:1'),
(1210, 133, 'field_58d19cae72553', 'a:14:{s:3:"key";s:19:"field_58d19cae72553";s:5:"label";s:20:"Carousel Button Link";s:4:"name";s:22:"k_carousel_button_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1214, 134, 'k_carousel_button_text', 'View more'),
(1215, 134, '_k_carousel_button_text', 'field_58d19c607ba1d'),
(1216, 134, 'k_carousel_button_link', '#'),
(1217, 134, '_k_carousel_button_link', 'field_58d19cae72553'),
(1218, 134, 'k_sl_image', 'facebook'),
(1219, 134, '_k_sl_image', 'field_58cf51331b791'),
(1220, 134, 'k_sl_link', ''),
(1221, 134, '_k_sl_link', 'field_58cf52fc1b792'),
(1222, 134, 'k_sl_image_2', 'facebook'),
(1223, 134, '_k_sl_image_2', 'field_58cf53a11b793'),
(1224, 134, 'k_sl_link_2', ''),
(1225, 134, '_k_sl_link_2', 'field_58cf54101b795'),
(1226, 134, 'k_sl_image_3', 'facebook'),
(1227, 134, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1228, 134, 'k_sl_link_3', ''),
(1229, 134, '_k_sl_link_3', 'field_58cf543c1b796'),
(1230, 134, 'k_sl_image_4', 'facebook'),
(1231, 134, '_k_sl_image_4', 'field_58cfc60742288'),
(1232, 134, 'k_sl_link_4', ''),
(1233, 134, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1234, 125, 'k_carousel_button_text', 'View more'),
(1235, 125, '_k_carousel_button_text', 'field_58d19c607ba1d'),
(1236, 125, 'k_carousel_button_link', '#'),
(1237, 125, '_k_carousel_button_link', 'field_58d19cae72553'),
(1238, 135, '_wp_attached_file', '2017/03/hands.png'),
(1239, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1160;s:6:"height";i:629;s:4:"file";s:17:"2017/03/hands.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"hands-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"hands-300x163.png";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:17:"hands-768x416.png";s:5:"width";i:768;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"hands-1024x555.png";s:5:"width";i:1024;s:6:"height";i:555;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1240, 135, '_wp_attachment_image_alt', 'tiny-hands'),
(1241, 125, '_thumbnail_id', '135'),
(1242, 136, 'k_c_s_phone_number', '(912) 555-1234'),
(1243, 136, '_k_c_s_phone_number', 'field_58cf84309917b'),
(1244, 136, 'k_c_s_phone_number_2', '(912) 555-5678'),
(1245, 136, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(1246, 136, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(1247, 136, '_k_c_s_address', 'field_58cf8ed7befca'),
(1248, 136, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(1249, 136, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(1250, 136, 'k_c_s_email_address', 'hello@website.com'),
(1251, 136, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(1252, 136, 'k_c_s_email_address_2', 'office@website.com'),
(1253, 136, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(1254, 136, 'k_hps_section_1', 'a:1:{i:0;s:3:"117";}'),
(1255, 136, '_k_hps_section_1', 'field_58cfd071133fb'),
(1256, 136, 'k_hps_section_2', 'a:1:{i:0;s:3:"121";}'),
(1257, 136, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1258, 136, 'k_hps_section_3', 'a:1:{i:0;s:3:"125";}'),
(1259, 136, '_k_hps_section_3', 'field_58d199d177f3a'),
(1260, 136, 'k_sl_image', 'facebook'),
(1261, 136, '_k_sl_image', 'field_58cf51331b791'),
(1262, 136, 'k_sl_link', '#'),
(1263, 136, '_k_sl_link', 'field_58cf52fc1b792'),
(1264, 136, 'k_sl_image_2', 'twitter'),
(1265, 136, '_k_sl_image_2', 'field_58cf53a11b793'),
(1266, 136, 'k_sl_link_2', '#'),
(1267, 136, '_k_sl_link_2', 'field_58cf54101b795'),
(1268, 136, 'k_sl_image_3', 'google'),
(1269, 136, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1270, 136, 'k_sl_link_3', '#'),
(1271, 136, '_k_sl_link_3', 'field_58cf543c1b796'),
(1272, 136, 'k_sl_image_4', 'linkedin2'),
(1273, 136, '_k_sl_image_4', 'field_58cfc60742288'),
(1274, 136, 'k_sl_link_4', '#'),
(1275, 136, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1276, 57, 'k_hps_section_3', 'a:1:{i:0;s:3:"125";}'),
(1277, 57, '_k_hps_section_3', 'field_58d199d177f3a'),
(1279, 116, 'field_58d1a4bf7e2ac', 'a:14:{s:3:"key";s:19:"field_58d1a4bf7e2ac";s:5:"label";s:16:"Carousel slide 2";s:4:"name";s:15:"k_hps_section_4";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(1287, 137, '_edit_last', '1'),
(1288, 137, '_edit_lock', '1490152574:1'),
(1289, 137, '_wp_page_template', 'default'),
(1290, 138, 'k_sl_image', 'facebook'),
(1291, 138, '_k_sl_image', 'field_58cf51331b791'),
(1292, 138, 'k_sl_link', ''),
(1293, 138, '_k_sl_link', 'field_58cf52fc1b792'),
(1294, 138, 'k_sl_image_2', 'facebook'),
(1295, 138, '_k_sl_image_2', 'field_58cf53a11b793'),
(1296, 138, 'k_sl_link_2', ''),
(1297, 138, '_k_sl_link_2', 'field_58cf54101b795'),
(1298, 138, 'k_sl_image_3', 'facebook'),
(1299, 138, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1300, 138, 'k_sl_link_3', ''),
(1301, 138, '_k_sl_link_3', 'field_58cf543c1b796'),
(1302, 138, 'k_sl_image_4', 'facebook'),
(1303, 138, '_k_sl_image_4', 'field_58cfc60742288'),
(1304, 138, 'k_sl_link_4', ''),
(1305, 138, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1306, 137, 'k_sl_image', 'facebook'),
(1307, 137, '_k_sl_image', 'field_58cf51331b791'),
(1308, 137, 'k_sl_link', ''),
(1309, 137, '_k_sl_link', 'field_58cf52fc1b792'),
(1310, 137, 'k_sl_image_2', 'facebook'),
(1311, 137, '_k_sl_image_2', 'field_58cf53a11b793'),
(1312, 137, 'k_sl_link_2', ''),
(1313, 137, '_k_sl_link_2', 'field_58cf54101b795'),
(1314, 137, 'k_sl_image_3', 'facebook'),
(1315, 137, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1316, 137, 'k_sl_link_3', ''),
(1317, 137, '_k_sl_link_3', 'field_58cf543c1b796'),
(1318, 137, 'k_sl_image_4', 'facebook'),
(1319, 137, '_k_sl_image_4', 'field_58cfc60742288') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1320, 137, 'k_sl_link_4', ''),
(1321, 137, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1322, 137, '_thumbnail_id', '135'),
(1327, 139, 'k_carousel_button_text', ''),
(1328, 139, '_k_carousel_button_text', 'field_58d19c607ba1d'),
(1329, 139, 'k_carousel_button_link', ''),
(1330, 139, '_k_carousel_button_link', 'field_58d19cae72553'),
(1331, 139, 'k_carousel_button_text_2', 'VIEW MORE'),
(1332, 139, '_k_carousel_button_text_2', 'field_58d1a54553f14'),
(1333, 139, 'k_carousel_button_link_2', '#'),
(1334, 139, '_k_carousel_button_link_2', 'field_58d1a561ccfd6'),
(1335, 139, 'k_sl_image', 'facebook'),
(1336, 139, '_k_sl_image', 'field_58cf51331b791'),
(1337, 139, 'k_sl_link', ''),
(1338, 139, '_k_sl_link', 'field_58cf52fc1b792'),
(1339, 139, 'k_sl_image_2', 'facebook'),
(1340, 139, '_k_sl_image_2', 'field_58cf53a11b793'),
(1341, 139, 'k_sl_link_2', ''),
(1342, 139, '_k_sl_link_2', 'field_58cf54101b795'),
(1343, 139, 'k_sl_image_3', 'facebook'),
(1344, 139, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1345, 139, 'k_sl_link_3', ''),
(1346, 139, '_k_sl_link_3', 'field_58cf543c1b796'),
(1347, 139, 'k_sl_image_4', 'facebook'),
(1348, 139, '_k_sl_image_4', 'field_58cfc60742288'),
(1349, 139, 'k_sl_link_4', ''),
(1350, 139, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1351, 137, 'k_carousel_button_text', 'view even more'),
(1352, 137, '_k_carousel_button_text', 'field_58d19c607ba1d'),
(1353, 137, 'k_carousel_button_link', '#'),
(1354, 137, '_k_carousel_button_link', 'field_58d19cae72553'),
(1355, 137, 'k_carousel_button_text_2', 'VIEW MORE'),
(1356, 137, '_k_carousel_button_text_2', 'field_58d1a54553f14'),
(1357, 137, 'k_carousel_button_link_2', '#'),
(1358, 137, '_k_carousel_button_link_2', 'field_58d1a561ccfd6'),
(1359, 140, 'k_carousel_button_text', 'yoyoyo'),
(1360, 140, '_k_carousel_button_text', 'field_58d19c607ba1d'),
(1361, 140, 'k_carousel_button_link', 'yoyoyo'),
(1362, 140, '_k_carousel_button_link', 'field_58d19cae72553'),
(1363, 140, 'k_carousel_button_text_2', 'VIEW MORE'),
(1364, 140, '_k_carousel_button_text_2', 'field_58d1a54553f14'),
(1365, 140, 'k_carousel_button_link_2', '#'),
(1366, 140, '_k_carousel_button_link_2', 'field_58d1a561ccfd6'),
(1367, 140, 'k_sl_image', 'facebook'),
(1368, 140, '_k_sl_image', 'field_58cf51331b791'),
(1369, 140, 'k_sl_link', ''),
(1370, 140, '_k_sl_link', 'field_58cf52fc1b792'),
(1371, 140, 'k_sl_image_2', 'facebook'),
(1372, 140, '_k_sl_image_2', 'field_58cf53a11b793'),
(1373, 140, 'k_sl_link_2', ''),
(1374, 140, '_k_sl_link_2', 'field_58cf54101b795'),
(1375, 140, 'k_sl_image_3', 'facebook'),
(1376, 140, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1377, 140, 'k_sl_link_3', ''),
(1378, 140, '_k_sl_link_3', 'field_58cf543c1b796'),
(1379, 140, 'k_sl_image_4', 'facebook'),
(1380, 140, '_k_sl_image_4', 'field_58cfc60742288'),
(1381, 140, 'k_sl_link_4', ''),
(1382, 140, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1383, 133, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"125";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1384, 133, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"137";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(1385, 141, 'k_carousel_button_text', 'view even more'),
(1386, 141, '_k_carousel_button_text', 'field_58d19c607ba1d'),
(1387, 141, 'k_carousel_button_link', '#'),
(1388, 141, '_k_carousel_button_link', 'field_58d19cae72553'),
(1389, 141, 'k_sl_image', 'facebook'),
(1390, 141, '_k_sl_image', 'field_58cf51331b791'),
(1391, 141, 'k_sl_link', ''),
(1392, 141, '_k_sl_link', 'field_58cf52fc1b792'),
(1393, 141, 'k_sl_image_2', 'facebook'),
(1394, 141, '_k_sl_image_2', 'field_58cf53a11b793'),
(1395, 141, 'k_sl_link_2', ''),
(1396, 141, '_k_sl_link_2', 'field_58cf54101b795'),
(1397, 141, 'k_sl_image_3', 'facebook'),
(1398, 141, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1399, 141, 'k_sl_link_3', ''),
(1400, 141, '_k_sl_link_3', 'field_58cf543c1b796'),
(1401, 141, 'k_sl_image_4', 'facebook'),
(1402, 141, '_k_sl_image_4', 'field_58cfc60742288'),
(1403, 141, 'k_sl_link_4', ''),
(1404, 141, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1405, 142, '_wp_attached_file', '2017/03/1200.jpg'),
(1406, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:675;s:4:"file";s:16:"2017/03/1200.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"1200-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"1200-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"1200-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"1200-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1407, 143, '_edit_last', '1'),
(1408, 143, '_edit_lock', '1490153792:1'),
(1409, 143, '_wp_page_template', 'default'),
(1410, 144, 'k_sl_image', 'facebook'),
(1411, 144, '_k_sl_image', 'field_58cf51331b791'),
(1412, 144, 'k_sl_link', ''),
(1413, 144, '_k_sl_link', 'field_58cf52fc1b792'),
(1414, 144, 'k_sl_image_2', 'facebook'),
(1415, 144, '_k_sl_image_2', 'field_58cf53a11b793'),
(1416, 144, 'k_sl_link_2', ''),
(1417, 144, '_k_sl_link_2', 'field_58cf54101b795'),
(1418, 144, 'k_sl_image_3', 'facebook'),
(1419, 144, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1420, 144, 'k_sl_link_3', ''),
(1421, 144, '_k_sl_link_3', 'field_58cf543c1b796'),
(1422, 144, 'k_sl_image_4', 'facebook'),
(1423, 144, '_k_sl_image_4', 'field_58cfc60742288') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1424, 144, 'k_sl_link_4', ''),
(1425, 144, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1426, 143, 'k_sl_image', 'facebook'),
(1427, 143, '_k_sl_image', 'field_58cf51331b791'),
(1428, 143, 'k_sl_link', ''),
(1429, 143, '_k_sl_link', 'field_58cf52fc1b792'),
(1430, 143, 'k_sl_image_2', 'facebook'),
(1431, 143, '_k_sl_image_2', 'field_58cf53a11b793'),
(1432, 143, 'k_sl_link_2', ''),
(1433, 143, '_k_sl_link_2', 'field_58cf54101b795'),
(1434, 143, 'k_sl_image_3', 'facebook'),
(1435, 143, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1436, 143, 'k_sl_link_3', ''),
(1437, 143, '_k_sl_link_3', 'field_58cf543c1b796'),
(1438, 143, 'k_sl_image_4', 'facebook'),
(1439, 143, '_k_sl_image_4', 'field_58cfc60742288'),
(1440, 143, 'k_sl_link_4', ''),
(1441, 143, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1442, 116, 'field_58d1ef4de2a85', 'a:14:{s:3:"key";s:19:"field_58d1ef4de2a85";s:5:"label";s:19:"Video Story Section";s:4:"name";s:15:"k_hps_section_5";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(1444, 146, 'k_hps_section_1', ''),
(1445, 146, '_k_hps_section_1', 'field_58cfd071133fb'),
(1446, 146, 'k_hps_section_2', ''),
(1447, 146, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1448, 146, 'k_hps_section_3', ''),
(1449, 146, '_k_hps_section_3', 'field_58d199d177f3a'),
(1450, 146, 'k_hps_section_4', ''),
(1451, 146, '_k_hps_section_4', 'field_58d1a4bf7e2ac'),
(1452, 146, 'k_hps_section_5', ''),
(1453, 146, '_k_hps_section_5', 'field_58d1ef4de2a85'),
(1454, 146, 'k_sl_image', 'facebook'),
(1455, 146, '_k_sl_image', 'field_58cf51331b791'),
(1456, 146, 'k_sl_link', ''),
(1457, 146, '_k_sl_link', 'field_58cf52fc1b792'),
(1458, 146, 'k_sl_image_2', 'facebook'),
(1459, 146, '_k_sl_image_2', 'field_58cf53a11b793'),
(1460, 146, 'k_sl_link_2', ''),
(1461, 146, '_k_sl_link_2', 'field_58cf54101b795'),
(1462, 146, 'k_sl_image_3', 'facebook'),
(1463, 146, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1464, 146, 'k_sl_link_3', ''),
(1465, 146, '_k_sl_link_3', 'field_58cf543c1b796'),
(1466, 146, 'k_sl_image_4', 'facebook'),
(1467, 146, '_k_sl_image_4', 'field_58cfc60742288'),
(1468, 146, 'k_sl_link_4', ''),
(1469, 146, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1470, 143, 'k_hps_section_1', ''),
(1471, 143, '_k_hps_section_1', 'field_58cfd071133fb'),
(1472, 143, 'k_hps_section_2', ''),
(1473, 143, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1474, 143, 'k_hps_section_3', ''),
(1475, 143, '_k_hps_section_3', 'field_58d199d177f3a'),
(1476, 143, 'k_hps_section_4', ''),
(1477, 143, '_k_hps_section_4', 'field_58d1a4bf7e2ac'),
(1478, 143, 'k_hps_section_5', ''),
(1479, 143, '_k_hps_section_5', 'field_58d1ef4de2a85'),
(1480, 147, 'k_hps_section_1', ''),
(1481, 147, '_k_hps_section_1', 'field_58cfd071133fb'),
(1482, 147, 'k_hps_section_2', ''),
(1483, 147, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1484, 147, 'k_hps_section_3', ''),
(1485, 147, '_k_hps_section_3', 'field_58d199d177f3a'),
(1486, 147, 'k_hps_section_4', ''),
(1487, 147, '_k_hps_section_4', 'field_58d1a4bf7e2ac'),
(1488, 147, 'k_hps_section_5', ''),
(1489, 147, '_k_hps_section_5', 'field_58d1ef4de2a85'),
(1490, 147, 'k_sl_image', 'facebook'),
(1491, 147, '_k_sl_image', 'field_58cf51331b791'),
(1492, 147, 'k_sl_link', ''),
(1493, 147, '_k_sl_link', 'field_58cf52fc1b792'),
(1494, 147, 'k_sl_image_2', 'facebook'),
(1495, 147, '_k_sl_image_2', 'field_58cf53a11b793'),
(1496, 147, 'k_sl_link_2', ''),
(1497, 147, '_k_sl_link_2', 'field_58cf54101b795'),
(1498, 147, 'k_sl_image_3', 'facebook'),
(1499, 147, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1500, 147, 'k_sl_link_3', ''),
(1501, 147, '_k_sl_link_3', 'field_58cf543c1b796'),
(1502, 147, 'k_sl_image_4', 'facebook'),
(1503, 147, '_k_sl_image_4', 'field_58cfc60742288'),
(1504, 147, 'k_sl_link_4', ''),
(1505, 147, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1506, 148, 'k_hps_section_1', ''),
(1507, 148, '_k_hps_section_1', 'field_58cfd071133fb'),
(1508, 148, 'k_hps_section_2', ''),
(1509, 148, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1510, 148, 'k_hps_section_3', ''),
(1511, 148, '_k_hps_section_3', 'field_58d199d177f3a'),
(1512, 148, 'k_hps_section_4', ''),
(1513, 148, '_k_hps_section_4', 'field_58d1a4bf7e2ac'),
(1514, 148, 'k_hps_section_5', ''),
(1515, 148, '_k_hps_section_5', 'field_58d1ef4de2a85'),
(1516, 148, 'k_sl_image', 'facebook'),
(1517, 148, '_k_sl_image', 'field_58cf51331b791'),
(1518, 148, 'k_sl_link', ''),
(1519, 148, '_k_sl_link', 'field_58cf52fc1b792'),
(1520, 148, 'k_sl_image_2', 'facebook'),
(1521, 148, '_k_sl_image_2', 'field_58cf53a11b793'),
(1522, 148, 'k_sl_link_2', ''),
(1523, 148, '_k_sl_link_2', 'field_58cf54101b795'),
(1524, 148, 'k_sl_image_3', 'facebook') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1525, 148, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1526, 148, 'k_sl_link_3', ''),
(1527, 148, '_k_sl_link_3', 'field_58cf543c1b796'),
(1528, 148, 'k_sl_image_4', 'facebook'),
(1529, 148, '_k_sl_image_4', 'field_58cfc60742288'),
(1530, 148, 'k_sl_link_4', ''),
(1531, 148, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1534, 149, 'k_c_s_phone_number', '(912) 555-1234'),
(1535, 149, '_k_c_s_phone_number', 'field_58cf84309917b'),
(1536, 149, 'k_c_s_phone_number_2', '(912) 555-5678'),
(1537, 149, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(1538, 149, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(1539, 149, '_k_c_s_address', 'field_58cf8ed7befca'),
(1540, 149, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(1541, 149, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(1542, 149, 'k_c_s_email_address', 'hello@website.com'),
(1543, 149, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(1544, 149, 'k_c_s_email_address_2', 'office@website.com'),
(1545, 149, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(1546, 149, 'k_hps_section_1', 'a:1:{i:0;s:3:"117";}'),
(1547, 149, '_k_hps_section_1', 'field_58cfd071133fb'),
(1548, 149, 'k_hps_section_2', 'a:1:{i:0;s:3:"121";}'),
(1549, 149, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1550, 149, 'k_hps_section_3', 'a:1:{i:0;s:3:"125";}'),
(1551, 149, '_k_hps_section_3', 'field_58d199d177f3a'),
(1552, 149, 'k_hps_section_4', ''),
(1553, 149, '_k_hps_section_4', 'field_58d1a4bf7e2ac'),
(1554, 149, 'k_hps_section_5', 'a:1:{i:0;s:3:"143";}'),
(1555, 149, '_k_hps_section_5', 'field_58d1ef4de2a85'),
(1556, 149, 'k_sl_image', 'facebook'),
(1557, 149, '_k_sl_image', 'field_58cf51331b791'),
(1558, 149, 'k_sl_link', '#'),
(1559, 149, '_k_sl_link', 'field_58cf52fc1b792'),
(1560, 149, 'k_sl_image_2', 'twitter'),
(1561, 149, '_k_sl_image_2', 'field_58cf53a11b793'),
(1562, 149, 'k_sl_link_2', '#'),
(1563, 149, '_k_sl_link_2', 'field_58cf54101b795'),
(1564, 149, 'k_sl_image_3', 'google'),
(1565, 149, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1566, 149, 'k_sl_link_3', '#'),
(1567, 149, '_k_sl_link_3', 'field_58cf543c1b796'),
(1568, 149, 'k_sl_image_4', 'linkedin2'),
(1569, 149, '_k_sl_image_4', 'field_58cfc60742288'),
(1570, 149, 'k_sl_link_4', '#'),
(1571, 149, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1572, 57, 'k_hps_section_4', 'a:1:{i:0;s:3:"137";}'),
(1573, 57, '_k_hps_section_4', 'field_58d1a4bf7e2ac'),
(1574, 57, 'k_hps_section_5', 'a:1:{i:0;s:3:"143";}'),
(1575, 57, '_k_hps_section_5', 'field_58d1ef4de2a85'),
(1576, 150, 'k_c_s_phone_number', '(912) 555-1234'),
(1577, 150, '_k_c_s_phone_number', 'field_58cf84309917b'),
(1578, 150, 'k_c_s_phone_number_2', '(912) 555-5678'),
(1579, 150, '_k_c_s_phone_number_2', 'field_58cf84c89917c'),
(1580, 150, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(1581, 150, '_k_c_s_address', 'field_58cf8ed7befca'),
(1582, 150, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(1583, 150, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(1584, 150, 'k_c_s_email_address', 'hello@website.com'),
(1585, 150, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(1586, 150, 'k_c_s_email_address_2', 'office@website.com'),
(1587, 150, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(1588, 150, 'k_hps_section_1', 'a:1:{i:0;s:3:"117";}'),
(1589, 150, '_k_hps_section_1', 'field_58cfd071133fb'),
(1590, 150, 'k_hps_section_2', 'a:1:{i:0;s:3:"121";}'),
(1591, 150, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1592, 150, 'k_hps_section_3', 'a:1:{i:0;s:3:"125";}'),
(1593, 150, '_k_hps_section_3', 'field_58d199d177f3a'),
(1594, 150, 'k_hps_section_4', 'a:1:{i:0;s:3:"137";}'),
(1595, 150, '_k_hps_section_4', 'field_58d1a4bf7e2ac'),
(1596, 150, 'k_hps_section_5', 'a:1:{i:0;s:3:"143";}'),
(1597, 150, '_k_hps_section_5', 'field_58d1ef4de2a85'),
(1598, 150, 'k_sl_image', 'facebook'),
(1599, 150, '_k_sl_image', 'field_58cf51331b791'),
(1600, 150, 'k_sl_link', '#'),
(1601, 150, '_k_sl_link', 'field_58cf52fc1b792'),
(1602, 150, 'k_sl_image_2', 'twitter'),
(1603, 150, '_k_sl_image_2', 'field_58cf53a11b793'),
(1604, 150, 'k_sl_link_2', '#'),
(1605, 150, '_k_sl_link_2', 'field_58cf54101b795'),
(1606, 150, 'k_sl_image_3', 'google'),
(1607, 150, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1608, 150, 'k_sl_link_3', '#'),
(1609, 150, '_k_sl_link_3', 'field_58cf543c1b796'),
(1610, 150, 'k_sl_image_4', 'linkedin2'),
(1611, 150, '_k_sl_image_4', 'field_58cfc60742288'),
(1612, 150, 'k_sl_link_4', '#'),
(1613, 150, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1614, 151, '_edit_last', '1'),
(1615, 151, 'field_58d1f31913d0f', 'a:14:{s:3:"key";s:19:"field_58d1f31913d0f";s:5:"label";s:4:"Link";s:4:"name";s:9:"k_vs_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1617, 151, 'position', 'side'),
(1618, 151, 'layout', 'default'),
(1619, 151, 'hide_on_screen', ''),
(1620, 151, '_edit_lock', '1490154187:1'),
(1621, 151, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"57";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1622, 152, 'k_vs_link', 'https://www.youtube.com/embed/VZ2HcRl4wSk'),
(1623, 152, '_k_vs_link', 'field_58d1f31913d0f'),
(1624, 152, 'k_c_s_phone_number', '(912) 555-1234'),
(1625, 152, '_k_c_s_phone_number', 'field_58cf84309917b'),
(1626, 152, 'k_c_s_phone_number_2', '(912) 555-5678'),
(1627, 152, '_k_c_s_phone_number_2', 'field_58cf84c89917c') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1628, 152, 'k_c_s_address', '1600 Pennsylvania <span>Ave NW, Washington</span>DC 20500, USA'),
(1629, 152, '_k_c_s_address', 'field_58cf8ed7befca'),
(1630, 152, 'k_c_s_address_maps', 'https://goo.gl/maps/c1DrQJbFxJ82'),
(1631, 152, '_k_c_s_address_maps', 'field_58cf8f11befcb'),
(1632, 152, 'k_c_s_email_address', 'hello@website.com'),
(1633, 152, '_k_c_s_email_address', 'field_58cf92fe2c5ab'),
(1634, 152, 'k_c_s_email_address_2', 'office@website.com'),
(1635, 152, '_k_c_s_email_address_2', 'field_58cf93292c5ac'),
(1636, 152, 'k_hps_section_1', 'a:1:{i:0;s:3:"117";}'),
(1637, 152, '_k_hps_section_1', 'field_58cfd071133fb'),
(1638, 152, 'k_hps_section_2', 'a:1:{i:0;s:3:"121";}'),
(1639, 152, '_k_hps_section_2', 'field_58cfe33185d5b'),
(1640, 152, 'k_hps_section_3', 'a:1:{i:0;s:3:"125";}'),
(1641, 152, '_k_hps_section_3', 'field_58d199d177f3a'),
(1642, 152, 'k_hps_section_4', 'a:1:{i:0;s:3:"137";}'),
(1643, 152, '_k_hps_section_4', 'field_58d1a4bf7e2ac'),
(1644, 152, 'k_hps_section_5', 'a:1:{i:0;s:3:"143";}'),
(1645, 152, '_k_hps_section_5', 'field_58d1ef4de2a85'),
(1646, 152, 'k_sl_image', 'facebook'),
(1647, 152, '_k_sl_image', 'field_58cf51331b791'),
(1648, 152, 'k_sl_link', '#'),
(1649, 152, '_k_sl_link', 'field_58cf52fc1b792'),
(1650, 152, 'k_sl_image_2', 'twitter'),
(1651, 152, '_k_sl_image_2', 'field_58cf53a11b793'),
(1652, 152, 'k_sl_link_2', '#'),
(1653, 152, '_k_sl_link_2', 'field_58cf54101b795'),
(1654, 152, 'k_sl_image_3', 'google'),
(1655, 152, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1656, 152, 'k_sl_link_3', '#'),
(1657, 152, '_k_sl_link_3', 'field_58cf543c1b796'),
(1658, 152, 'k_sl_image_4', 'linkedin2'),
(1659, 152, '_k_sl_image_4', 'field_58cfc60742288'),
(1660, 152, 'k_sl_link_4', '#'),
(1661, 152, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1662, 57, 'k_vs_link', 'https://www.youtube.com/embed/VZ2HcRl4wSk'),
(1663, 57, '_k_vs_link', 'field_58d1f31913d0f'),
(1664, 153, '_edit_last', '1'),
(1665, 153, '_edit_lock', '1490157418:1'),
(1666, 153, '_wp_page_template', 'default'),
(1667, 154, 'k_sl_image', 'facebook'),
(1668, 154, '_k_sl_image', 'field_58cf51331b791'),
(1669, 154, 'k_sl_link', ''),
(1670, 154, '_k_sl_link', 'field_58cf52fc1b792'),
(1671, 154, 'k_sl_image_2', 'facebook'),
(1672, 154, '_k_sl_image_2', 'field_58cf53a11b793'),
(1673, 154, 'k_sl_link_2', ''),
(1674, 154, '_k_sl_link_2', 'field_58cf54101b795'),
(1675, 154, 'k_sl_image_3', 'facebook'),
(1676, 154, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1677, 154, 'k_sl_link_3', ''),
(1678, 154, '_k_sl_link_3', 'field_58cf543c1b796'),
(1679, 154, 'k_sl_image_4', 'facebook'),
(1680, 154, '_k_sl_image_4', 'field_58cfc60742288'),
(1681, 154, 'k_sl_link_4', ''),
(1682, 154, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1683, 153, 'k_sl_image', 'facebook'),
(1684, 153, '_k_sl_image', 'field_58cf51331b791'),
(1685, 153, 'k_sl_link', ''),
(1686, 153, '_k_sl_link', 'field_58cf52fc1b792'),
(1687, 153, 'k_sl_image_2', 'facebook'),
(1688, 153, '_k_sl_image_2', 'field_58cf53a11b793'),
(1689, 153, 'k_sl_link_2', ''),
(1690, 153, '_k_sl_link_2', 'field_58cf54101b795'),
(1691, 153, 'k_sl_image_3', 'facebook'),
(1692, 153, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1693, 153, 'k_sl_link_3', ''),
(1694, 153, '_k_sl_link_3', 'field_58cf543c1b796'),
(1695, 153, 'k_sl_image_4', 'facebook'),
(1696, 153, '_k_sl_image_4', 'field_58cfc60742288'),
(1697, 153, 'k_sl_link_4', ''),
(1698, 153, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1699, 155, '_wp_attached_file', '2017/03/hcakerman.png'),
(1700, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:21:"2017/03/hcakerman.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"hcakerman-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"hcakerman-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1701, 116, 'field_58d1fc836bbfe', 'a:14:{s:3:"key";s:19:"field_58d1fc836bbfe";s:5:"label";s:17:"Instagram Section";s:4:"name";s:15:"k_hps_section_6";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:2:{i:0;s:10:"post_title";i:1;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(1702, 116, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"57";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1703, 153, '_thumbnail_id', '155'),
(1704, 157, '_edit_last', '1'),
(1705, 157, '_edit_lock', '1490158476:1'),
(1706, 157, '_wp_page_template', 'default'),
(1707, 158, 'k_sl_image', 'facebook'),
(1708, 158, '_k_sl_image', 'field_58cf51331b791'),
(1709, 158, 'k_sl_link', ''),
(1710, 158, '_k_sl_link', 'field_58cf52fc1b792'),
(1711, 158, 'k_sl_image_2', 'facebook'),
(1712, 158, '_k_sl_image_2', 'field_58cf53a11b793'),
(1713, 158, 'k_sl_link_2', ''),
(1714, 158, '_k_sl_link_2', 'field_58cf54101b795'),
(1715, 158, 'k_sl_image_3', 'facebook'),
(1716, 158, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1717, 158, 'k_sl_link_3', ''),
(1718, 158, '_k_sl_link_3', 'field_58cf543c1b796'),
(1719, 158, 'k_sl_image_4', 'facebook'),
(1720, 158, '_k_sl_image_4', 'field_58cfc60742288'),
(1721, 158, 'k_sl_link_4', ''),
(1722, 158, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1723, 157, 'k_sl_image', 'facebook'),
(1724, 157, '_k_sl_image', 'field_58cf51331b791'),
(1725, 157, 'k_sl_link', ''),
(1726, 157, '_k_sl_link', 'field_58cf52fc1b792'),
(1727, 157, 'k_sl_image_2', 'facebook') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1728, 157, '_k_sl_image_2', 'field_58cf53a11b793'),
(1729, 157, 'k_sl_link_2', ''),
(1730, 157, '_k_sl_link_2', 'field_58cf54101b795'),
(1731, 157, 'k_sl_image_3', 'facebook'),
(1732, 157, '_k_sl_image_3', 'field_58cf53cf1b794'),
(1733, 157, 'k_sl_link_3', ''),
(1734, 157, '_k_sl_link_3', 'field_58cf543c1b796'),
(1735, 157, 'k_sl_image_4', 'facebook'),
(1736, 157, '_k_sl_image_4', 'field_58cfc60742288'),
(1737, 157, 'k_sl_link_4', ''),
(1738, 157, '_k_sl_link_4', 'field_58cfc6c179a2b'),
(1739, 159, '_wp_attached_file', '2017/03/hackingtime.jpg'),
(1740, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:23:"2017/03/hackingtime.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"hackingtime-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"hackingtime-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"hackingtime-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"hackingtime-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1741, 157, '_thumbnail_id', '159') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-03-13 05:33:47', '2017-03-13 05:33:47', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-03-13 05:33:47', '2017-03-13 05:33:47', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=1', 0, 'post', '', 1),
(2, 1, '2017-03-13 05:33:47', '2017-03-13 05:33:47', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/vcs-2/julita-kriauciunaite/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-03-17 12:21:31', '2017-03-17 12:21:31', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=2', 0, 'page', '', 0),
(31, 1, '2017-03-13 14:05:12', '2017-03-13 14:05:12', '<label class="sr-only" for="inlineFormInput">Name</label>\r\n\r\n[email email-734 id:inlineFormInput class:form-control class:mb-2 class:mr-sm-2 class:mb-sm-0 placeholder "Enter email address"]\r\n\r\n[submit class:btn "SIGN UP"]\n1\nkvazimodas "[your-subject]"\n[your-name] <gwarla@gmail.com>\ngwarla@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on kvazimodas (http://localhost/vcs-2/julita-kriauciunaite)\nReply-To: [your-email]\n\n\n\n\nkvazimodas "[your-subject]"\nkvazimodas <gwarla@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on kvazimodas (http://localhost/vcs-2/julita-kriauciunaite)\nReply-To: gwarla@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Join the Newsletter', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-03-21 21:21:39', '2017-03-21 21:21:39', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=wpcf7_contact_form&#038;p=31', 0, 'wpcf7_contact_form', '', 0),
(33, 1, '2017-03-14 14:31:46', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-14 14:31:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2017-03-14 14:31:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-14 14:31:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2017-03-17 09:55:11', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-17 09:55:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2017-03-17 09:55:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-17 09:55:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=36', 1, 'nav_menu_item', '', 0),
(39, 1, '2017-03-17 09:59:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-17 09:59:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2017-03-17 10:13:47', '2017-03-17 10:13:47', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-03-20 05:44:24', '2017-03-20 05:44:24', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2017-03-17 10:13:47', '2017-03-17 10:13:47', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2017-03-20 05:44:24', '2017-03-20 05:44:24', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2017-03-17 10:13:47', '2017-03-17 10:13:47', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-03-20 05:44:24', '2017-03-20 05:44:24', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=42', 3, 'nav_menu_item', '', 0),
(43, 1, '2017-03-17 10:13:47', '2017-03-17 10:13:47', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-03-20 05:44:24', '2017-03-20 05:44:24', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=43', 4, 'nav_menu_item', '', 0),
(44, 1, '2017-03-17 10:13:47', '2017-03-17 10:13:47', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-03-20 05:44:24', '2017-03-20 05:44:24', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=44', 5, 'nav_menu_item', '', 0),
(46, 1, '2017-03-17 12:21:31', '2017-03-17 12:21:31', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/vcs-2/julita-kriauciunaite/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-17 12:21:31', '2017-03-17 12:21:31', '', 2, 'http://localhost/vcs-2/julita-kriauciunaite/2017/03/17/2-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-03-17 12:21:38', '2017-03-17 12:21:38', '', 'Home', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-03-19 18:42:09', '2017-03-19 18:42:09', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=47', 0, 'page', '', 0),
(49, 1, '2017-03-19 18:42:09', '2017-03-19 18:42:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2017-03-19 18:42:09', '2017-03-19 18:42:09', '', 47, 'http://localhost/vcs-2/julita-kriauciunaite/2017/03/19/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-03-19 18:42:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-19 18:42:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=50', 0, 'page', '', 0),
(51, 1, '2017-03-19 18:55:50', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-19 18:55:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2017-03-19 18:57:03', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-19 18:57:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2017-03-19 18:58:33', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-19 18:58:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2017-03-19 18:59:48', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-19 18:59:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2017-03-19 19:01:11', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-19 19:01:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=55', 1, 'nav_menu_item', '', 0),
(57, 1, '2017-03-19 19:09:51', '2017-03-19 19:09:51', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-03-22 03:47:33', '2017-03-22 03:47:33', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=57', 0, 'page', '', 0),
(58, 1, '2017-03-19 19:09:51', '2017-03-19 19:09:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-19 19:09:51', '2017-03-19 19:09:51', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/2017/03/19/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-03-20 03:46:10', '2017-03-20 03:46:10', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-03-20 03:46:21', '2017-03-20 03:46:21', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&#038;p=59', 0, 'acf', '', 0),
(60, 1, '2017-03-20 03:46:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 03:46:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=60', 0, 'acf', '', 0),
(61, 1, '2017-03-20 04:02:42', '2017-03-20 04:02:42', '', 'Social links', '', 'publish', 'closed', 'closed', '', 'acf_social-links', '', '', '2017-03-20 12:18:33', '2017-03-20 12:18:33', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&#038;p=61', 0, 'acf', '', 0),
(62, 1, '2017-03-20 04:13:53', '2017-03-20 04:13:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 04:13:53', '2017-03-20 04:13:53', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-03-20 04:43:13', '2017-03-20 04:43:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 04:43:13', '2017-03-20 04:43:13', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-03-20 04:46:51', '2017-03-20 04:46:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 04:46:51', '2017-03-20 04:46:51', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-03-20 04:47:15', '2017-03-20 04:47:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 04:47:15', '2017-03-20 04:47:15', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-03-20 05:48:17', '2017-03-20 05:48:17', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2017-03-20 10:54:10', '2017-03-20 10:54:10', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2017-03-20 05:50:28', '2017-03-20 05:50:28', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store-2', '', '', '2017-03-20 10:54:10', '2017-03-20 10:54:10', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=67', 2, 'nav_menu_item', '', 0),
(68, 1, '2017-03-20 05:51:16', '2017-03-20 05:51:16', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2017-03-20 10:54:10', '2017-03-20 10:54:10', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2017-03-20 05:52:08', '2017-03-20 05:52:08', '', 'Community', '', 'publish', 'closed', 'closed', '', 'community', '', '', '2017-03-20 10:54:10', '2017-03-20 10:54:10', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=69', 4, 'nav_menu_item', '', 0),
(70, 1, '2017-03-20 05:52:40', '2017-03-20 05:52:40', '', 'Contests', '', 'publish', 'closed', 'closed', '', 'contests', '', '', '2017-03-20 10:54:10', '2017-03-20 10:54:10', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2017-03-20 05:53:22', '2017-03-20 05:53:22', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-2', '', '', '2017-03-20 10:54:10', '2017-03-20 10:54:10', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=71', 6, 'nav_menu_item', '', 0),
(72, 1, '2017-03-20 05:54:30', '2017-03-20 05:54:30', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-2', '', '', '2017-03-20 10:54:10', '2017-03-20 10:54:10', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=72', 7, 'nav_menu_item', '', 0),
(73, 1, '2017-03-20 07:19:17', '2017-03-20 07:19:17', '', 'Contacts', '', 'trash', 'closed', 'closed', '', 'contacts__trashed', '', '', '2017-03-20 12:55:19', '2017-03-20 12:55:19', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=73', 0, 'page', '', 0),
(74, 1, '2017-03-20 07:19:17', '2017-03-20 07:19:17', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-03-20 07:19:17', '2017-03-20 07:19:17', '', 73, 'http://localhost/vcs-2/julita-kriauciunaite/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-03-20 07:19:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 07:19:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=75', 0, 'acf', '', 0),
(76, 1, '2017-03-20 07:21:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 07:21:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=76', 0, 'acf', '', 0),
(77, 1, '2017-03-20 07:22:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 07:22:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=77', 0, 'acf', '', 0),
(78, 1, '2017-03-20 07:22:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 07:22:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=78', 0, 'acf', '', 0),
(79, 1, '2017-03-20 07:29:41', '2017-03-20 07:29:41', '', 'Contact Section', '', 'publish', 'closed', 'closed', '', 'acf_contact-section', '', '', '2017-03-20 08:31:13', '2017-03-20 08:31:13', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&#038;p=79', 0, 'acf', '', 0),
(80, 1, '2017-03-20 07:47:18', '2017-03-20 07:47:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 07:47:18', '2017-03-20 07:47:18', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-03-20 07:48:49', '2017-03-20 07:48:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 07:48:49', '2017-03-20 07:48:49', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-03-20 07:50:23', '2017-03-20 07:50:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 07:50:23', '2017-03-20 07:50:23', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-03-20 08:17:31', '2017-03-20 08:17:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 08:17:31', '2017-03-20 08:17:31', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-03-20 08:22:04', '2017-03-20 08:22:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 08:22:04', '2017-03-20 08:22:04', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2017-03-20 08:33:40', '2017-03-20 08:33:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 08:33:40', '2017-03-20 08:33:40', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-03-20 08:35:04', '2017-03-20 08:35:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 08:35:04', '2017-03-20 08:35:04', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-03-20 08:46:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 08:46:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=87', 0, 'acf', '', 0),
(88, 1, '2017-03-20 08:49:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 08:49:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=88', 0, 'acf', '', 0),
(91, 1, '2017-03-20 09:24:20', '2017-03-20 09:24:20', '', 'Software & Apps', '', 'publish', 'closed', 'closed', '', 'software-apps', '', '', '2017-03-20 10:03:50', '2017-03-20 10:03:50', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2017-03-20 09:24:20', '2017-03-20 09:24:20', '', 'Gadgets', '', 'publish', 'closed', 'closed', '', 'gadgets', '', '', '2017-03-20 10:03:50', '2017-03-20 10:03:50', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=92', 2, 'nav_menu_item', '', 0),
(93, 1, '2017-03-20 09:24:20', '2017-03-20 09:24:20', '', 'Mobile', '', 'publish', 'closed', 'closed', '', 'mobile', '', '', '2017-03-20 10:03:50', '2017-03-20 10:03:50', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=93', 3, 'nav_menu_item', '', 0),
(95, 1, '2017-03-20 10:08:01', '2017-03-20 10:08:01', '', 'Film', '', 'publish', 'closed', 'closed', '', 'film', '', '', '2017-03-20 10:44:15', '2017-03-20 10:44:15', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=95', 1, 'nav_menu_item', '', 0),
(96, 1, '2017-03-20 10:08:01', '2017-03-20 10:08:01', '', 'Gaming', '', 'publish', 'closed', 'closed', '', 'gaming', '', '', '2017-03-20 10:44:15', '2017-03-20 10:44:15', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=96', 2, 'nav_menu_item', '', 0),
(97, 1, '2017-03-20 10:08:01', '2017-03-20 10:08:01', '', 'Music', '', 'publish', 'closed', 'closed', '', 'music', '', '', '2017-03-20 10:44:15', '2017-03-20 10:44:15', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=97', 3, 'nav_menu_item', '', 0),
(98, 1, '2017-03-20 10:08:01', '2017-03-20 10:08:01', '', 'Sport', '', 'publish', 'closed', 'closed', '', 'sport', '', '', '2017-03-20 10:44:15', '2017-03-20 10:44:15', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=98', 4, 'nav_menu_item', '', 0),
(99, 1, '2017-03-20 10:45:46', '2017-03-20 10:45:46', '', 'Jobs', '', 'publish', 'closed', 'closed', '', 'jobs', '', '', '2017-03-20 10:45:46', '2017-03-20 10:45:46', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=99', 1, 'nav_menu_item', '', 0),
(100, 1, '2017-03-20 10:45:46', '2017-03-20 10:45:46', '', 'Marketing', '', 'publish', 'closed', 'closed', '', 'marketing', '', '', '2017-03-20 10:45:46', '2017-03-20 10:45:46', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=100', 2, 'nav_menu_item', '', 0),
(101, 1, '2017-03-20 10:45:46', '2017-03-20 10:45:46', '', 'Media', '', 'publish', 'closed', 'closed', '', 'media', '', '', '2017-03-20 10:45:46', '2017-03-20 10:45:46', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=101', 3, 'nav_menu_item', '', 0),
(102, 1, '2017-03-20 10:50:13', '2017-03-20 10:50:13', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-3', '', '', '2017-03-20 10:50:13', '2017-03-20 10:50:13', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2017-03-20 10:50:13', '2017-03-20 10:50:13', '', 'Health & Fitness', '', 'publish', 'closed', 'closed', '', 'health-fitness', '', '', '2017-03-20 10:50:13', '2017-03-20 10:50:13', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=103', 2, 'nav_menu_item', '', 0),
(104, 1, '2017-03-20 10:50:13', '2017-03-20 10:50:13', '', 'Travel & Leisure', '', 'publish', 'closed', 'closed', '', 'travel-leisure', '', '', '2017-03-20 10:50:13', '2017-03-20 10:50:13', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=104', 3, 'nav_menu_item', '', 0),
(105, 1, '2017-03-20 11:12:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 11:12:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=105', 0, 'acf', '', 0),
(106, 1, '2017-03-20 11:14:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 11:14:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=106', 0, 'acf', '', 0),
(107, 1, '2017-03-20 11:20:58', '2017-03-20 11:20:58', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=107', 1, 'nav_menu_item', '', 0),
(108, 1, '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=108', 2, 'nav_menu_item', '', 0),
(109, 1, '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 'Google+', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=109', 3, 'nav_menu_item', '', 0),
(110, 1, '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 'Rss Feeds', '', 'publish', 'closed', 'closed', '', 'rss-feeds', '', '', '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=110', 4, 'nav_menu_item', '', 0),
(111, 1, '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 'Pinterest', '', 'publish', 'closed', 'closed', '', 'pinterest', '', '', '2017-03-20 11:23:19', '2017-03-20 11:23:19', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=111', 5, 'nav_menu_item', '', 0),
(112, 1, '2017-03-20 12:13:30', '2017-03-20 12:13:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 12:13:30', '2017-03-20 12:13:30', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2017-03-20 12:13:37', '2017-03-20 12:13:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 12:13:37', '2017-03-20 12:13:37', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-03-20 12:20:46', '2017-03-20 12:20:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 12:20:46', '2017-03-20 12:20:46', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2017-03-20 12:21:07', '2017-03-20 12:21:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 12:21:07', '2017-03-20 12:21:07', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2017-03-20 12:54:38', '2017-03-20 12:54:38', '', 'Home Page Sections', '', 'publish', 'closed', 'closed', '', 'acf_home-page-sections', '', '', '2017-03-22 04:25:12', '2017-03-22 04:25:12', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&#038;p=116', 0, 'acf', '', 0),
(117, 1, '2017-03-20 13:01:15', '2017-03-20 13:01:15', 'Sign up for our personalized daily newsletter', 'Sign In', '', 'publish', 'closed', 'closed', '', 'sign-in', '', '', '2017-03-20 13:51:41', '2017-03-20 13:51:41', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=117', 0, 'page', '', 0),
(118, 1, '2017-03-20 13:01:15', '2017-03-20 13:01:15', '<p>Sign up for our personalized daily newsletter</p>', 'Sign In', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2017-03-20 13:01:15', '2017-03-20 13:01:15', '', 117, 'http://localhost/vcs-2/julita-kriauciunaite/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2017-03-20 13:01:36', '2017-03-20 13:01:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 13:01:36', '2017-03-20 13:01:36', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2017-03-20 13:51:41', '2017-03-20 13:51:41', 'Sign up for our personalized daily newsletter', 'Sign In', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2017-03-20 13:51:41', '2017-03-20 13:51:41', '', 117, 'http://localhost/vcs-2/julita-kriauciunaite/117-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2017-03-20 14:34:17', '2017-03-20 14:34:17', 'Sign up for our personalized daily newsletter', 'Join the Newsletter', '', 'publish', 'closed', 'closed', '', 'join-the-newsletter', '', '', '2017-03-20 14:34:17', '2017-03-20 14:34:17', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=121', 0, 'page', '', 0),
(122, 1, '2017-03-20 14:34:17', '2017-03-20 14:34:17', 'Sign up for our personalized daily newsletter', 'Join the Newsletter', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2017-03-20 14:34:17', '2017-03-20 14:34:17', '', 121, 'http://localhost/vcs-2/julita-kriauciunaite/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2017-03-20 14:34:47', '2017-03-20 14:34:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-20 14:34:47', '2017-03-20 14:34:47', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2017-03-21 19:20:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-21 19:20:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?p=124', 0, 'post', '', 0),
(125, 1, '2017-03-21 21:22:50', '2017-03-21 21:22:50', 'Now that the holiday gift-giving time is over, we\'re\r\nsure many of our readers unwrapped some new consoles.\r\nDespite its long life on the market...', 'Featured Story', '', 'publish', 'closed', 'closed', '', 'carousel-stories', '', '', '2017-03-21 22:04:30', '2017-03-21 22:04:30', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=125', 0, 'page', '', 0),
(126, 1, '2017-03-21 21:22:50', '2017-03-21 21:22:50', '', 'Carousel Stories', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-03-21 21:22:50', '2017-03-21 21:22:50', '', 125, 'http://localhost/vcs-2/julita-kriauciunaite/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2017-03-21 21:22:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-21 21:22:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=127', 0, 'acf', '', 0),
(128, 1, '2017-03-21 21:24:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-21 21:24:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=128', 0, 'acf', '', 0),
(129, 1, '2017-03-21 21:25:41', '2017-03-21 21:25:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-21 21:25:41', '2017-03-21 21:25:41', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2017-03-21 21:26:06', '2017-03-21 21:26:06', '', 'Carousel Story 1', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-03-21 21:26:06', '2017-03-21 21:26:06', '', 125, 'http://localhost/vcs-2/julita-kriauciunaite/125-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2017-03-21 21:29:45', '2017-03-21 21:29:45', '', 'Featured Story', '', 'inherit', 'closed', 'closed', '', '125-autosave-v1', '', '', '2017-03-21 21:29:45', '2017-03-21 21:29:45', '', 125, 'http://localhost/vcs-2/julita-kriauciunaite/125-autosave-v1/', 0, 'revision', '', 0),
(132, 1, '2017-03-21 21:31:20', '2017-03-21 21:31:20', 'Now that the holiday gift-giving time is over, we\'re\r\nsure many of our readers unwrapped some new consoles.\r\nDespite its long life on the market...', 'Featured Story', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-03-21 21:31:20', '2017-03-21 21:31:20', '', 125, 'http://localhost/vcs-2/julita-kriauciunaite/125-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2017-03-21 21:35:40', '2017-03-21 21:35:40', '', 'Carousel-button', '', 'publish', 'closed', 'closed', '', 'acf_carousel-button', '', '', '2017-03-21 22:21:54', '2017-03-21 22:21:54', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&#038;p=133', 0, 'acf', '', 0),
(134, 1, '2017-03-21 21:40:22', '2017-03-21 21:40:22', 'Now that the holiday gift-giving time is over, we\'re\r\nsure many of our readers unwrapped some new consoles.\r\nDespite its long life on the market...', 'Featured Story', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-03-21 21:40:22', '2017-03-21 21:40:22', '', 125, 'http://localhost/vcs-2/julita-kriauciunaite/125-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2017-03-21 21:43:55', '2017-03-21 21:43:55', '', 'hands', '', 'inherit', 'open', 'closed', '', 'hands', '', '', '2017-03-21 21:44:11', '2017-03-21 21:44:11', '', 125, 'http://localhost/vcs-2/julita-kriauciunaite/wp-content/uploads/2017/03/hands.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2017-03-21 22:08:19', '2017-03-21 22:08:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-21 22:08:19', '2017-03-21 22:08:19', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2017-03-21 22:14:32', '2017-03-21 22:14:32', 'Ditto that the holiday gift-giving time is over, we\'re\r\nsure many of our readers unwrapped some new consoles.\r\nDespite its long life on the market...', 'Another Story', '', 'publish', 'closed', 'closed', '', 'another-story', '', '', '2017-03-22 03:17:52', '2017-03-22 03:17:52', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=137', 0, 'page', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(138, 1, '2017-03-21 22:14:32', '2017-03-21 22:14:32', 'Ditto that the holiday gift-giving time is over, we\'re\r\nsure many of our readers unwrapped some new consoles.\r\nDespite its long life on the market...', 'Another Story', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-03-21 22:14:32', '2017-03-21 22:14:32', '', 137, 'http://localhost/vcs-2/julita-kriauciunaite/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2017-03-21 22:20:12', '2017-03-21 22:20:12', 'Ditto that the holiday gift-giving time is over, we\'re\r\nsure many of our readers unwrapped some new consoles.\r\nDespite its long life on the market...', 'Another Story', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-03-21 22:20:12', '2017-03-21 22:20:12', '', 137, 'http://localhost/vcs-2/julita-kriauciunaite/137-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2017-03-21 22:21:22', '2017-03-21 22:21:22', 'Ditto that the holiday gift-giving time is over, we\'re\r\nsure many of our readers unwrapped some new consoles.\r\nDespite its long life on the market...', 'Another Story', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-03-21 22:21:22', '2017-03-21 22:21:22', '', 137, 'http://localhost/vcs-2/julita-kriauciunaite/137-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2017-03-21 22:22:58', '2017-03-21 22:22:58', 'Ditto that the holiday gift-giving time is over, we\'re\r\nsure many of our readers unwrapped some new consoles.\r\nDespite its long life on the market...', 'Another Story', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2017-03-21 22:22:58', '2017-03-21 22:22:58', '', 137, 'http://localhost/vcs-2/julita-kriauciunaite/137-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2017-03-21 22:26:34', '2017-03-21 22:26:34', '', '1200', '', 'inherit', 'open', 'closed', '', '1200', '', '', '2017-03-21 22:26:34', '2017-03-21 22:26:34', '', 137, 'http://localhost/vcs-2/julita-kriauciunaite/wp-content/uploads/2017/03/1200.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2017-03-22 03:20:44', '2017-03-22 03:20:44', 'Lorem ipsum Pariatur occaecat consequat in cillum ad aliquip amet mollit fugiat... <a href="#">Read more</a>', 'Best story you have ever heard', '', 'publish', 'closed', 'closed', '', 'best-story-you-have-ever-heard', '', '', '2017-03-22 03:37:50', '2017-03-22 03:37:50', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=143', 0, 'page', '', 0),
(144, 1, '2017-03-22 03:20:44', '2017-03-22 03:20:44', 'Lorem ipsum Pariatur occaecat consequat in cillum ad aliquip amet mollit fugiat...', 'Best story you have ever heard', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2017-03-22 03:20:44', '2017-03-22 03:20:44', '', 143, 'http://localhost/vcs-2/julita-kriauciunaite/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2017-03-22 03:30:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-22 03:30:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=145', 0, 'acf', '', 0),
(146, 1, '2017-03-22 03:35:41', '2017-03-22 03:35:41', 'Lorem ipsum Pariatur occaecat consequat in cillum ad aliquip amet mollit fugiat...<!--more-->', 'Best story you have ever heard', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2017-03-22 03:35:41', '2017-03-22 03:35:41', '', 143, 'http://localhost/vcs-2/julita-kriauciunaite/143-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2017-03-22 03:36:40', '2017-03-22 03:36:40', 'Lorem ipsum Pariatur occaecat consequat in cillum ad aliquip amet mollit fugiat...&lt;a href="#"&gt;Read more&lt;/a&gt;', 'Best story you have ever heard', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2017-03-22 03:36:40', '2017-03-22 03:36:40', '', 143, 'http://localhost/vcs-2/julita-kriauciunaite/143-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2017-03-22 03:37:50', '2017-03-22 03:37:50', 'Lorem ipsum Pariatur occaecat consequat in cillum ad aliquip amet mollit fugiat... <a href="#">Read more</a>', 'Best story you have ever heard', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2017-03-22 03:37:50', '2017-03-22 03:37:50', '', 143, 'http://localhost/vcs-2/julita-kriauciunaite/143-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2017-03-22 03:40:53', '2017-03-22 03:40:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-22 03:40:53', '2017-03-22 03:40:53', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2017-03-22 03:41:02', '2017-03-22 03:41:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-22 03:41:02', '2017-03-22 03:41:02', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2017-03-22 03:45:05', '2017-03-22 03:45:05', '', 'Video Source', '', 'publish', 'closed', 'closed', '', 'acf_video-source', '', '', '2017-03-22 03:45:28', '2017-03-22 03:45:28', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&#038;p=151', 0, 'acf', '', 0),
(152, 1, '2017-03-22 03:46:43', '2017-03-22 03:46:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-03-22 03:46:43', '2017-03-22 03:46:43', '', 57, 'http://localhost/vcs-2/julita-kriauciunaite/57-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2017-03-22 04:23:36', '2017-03-22 04:23:36', 'Lorem ipsum Ut labore esse qui quis cillum Excepteur qui non aliquip...<a href="#">Read more</a>', 'Here\'s what Instagram Ads Will Look Like', '', 'publish', 'closed', 'closed', '', 'heres-what-instagram-ads-will-look-like', '', '', '2017-03-22 04:28:28', '2017-03-22 04:28:28', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=153', 0, 'page', '', 0),
(154, 1, '2017-03-22 04:23:36', '2017-03-22 04:23:36', 'Lorem ipsum Ut labore esse qui quis cillum Excepteur qui non aliquip...<a href="#">Read more</a>', 'Here\'s what Instagram Ads Will Look Like', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2017-03-22 04:23:36', '2017-03-22 04:23:36', '', 153, 'http://localhost/vcs-2/julita-kriauciunaite/153-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2017-03-22 04:23:50', '2017-03-22 04:23:50', '', 'hcakerman', '', 'inherit', 'open', 'closed', '', 'hcakerman', '', '', '2017-03-22 04:23:50', '2017-03-22 04:23:50', '', 153, 'http://localhost/vcs-2/julita-kriauciunaite/wp-content/uploads/2017/03/hcakerman.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2017-03-22 04:39:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-22 04:39:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?post_type=acf&p=156', 0, 'acf', '', 0),
(157, 1, '2017-03-22 04:40:38', '2017-03-22 04:40:38', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting... <a href="#">Read more</a>', 'What is Lorem Ipsum?', '', 'publish', 'closed', 'closed', '', 'what-is-lorem-ipsum', '', '', '2017-03-22 04:56:59', '2017-03-22 04:56:59', '', 0, 'http://localhost/vcs-2/julita-kriauciunaite/?page_id=157', 0, 'page', '', 0),
(158, 1, '2017-03-22 04:40:38', '2017-03-22 04:40:38', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting... <a href="#">Read more</a>', 'What is Lorem Ipsum?', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2017-03-22 04:40:38', '2017-03-22 04:40:38', '', 157, 'http://localhost/vcs-2/julita-kriauciunaite/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2017-03-22 04:41:07', '2017-03-22 04:41:07', '', 'hackingtime', '', 'inherit', 'open', 'closed', '', 'hackingtime', '', '', '2017-03-22 04:41:07', '2017-03-22 04:41:07', '', 157, 'http://localhost/vcs-2/julita-kriauciunaite/wp-content/uploads/2017/03/hackingtime.jpg', 0, 'attachment', 'image/jpeg', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(66, 4, 0),
(67, 4, 0),
(68, 4, 0),
(69, 4, 0),
(70, 4, 0),
(71, 4, 0),
(72, 4, 0),
(91, 5, 0),
(92, 5, 0),
(93, 5, 0),
(95, 6, 0),
(96, 6, 0),
(97, 6, 0),
(98, 6, 0),
(99, 7, 0),
(100, 7, 0),
(101, 7, 0),
(102, 8, 0),
(103, 8, 0),
(104, 8, 0),
(107, 10, 0),
(108, 10, 0),
(109, 10, 0),
(110, 10, 0),
(111, 10, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 7),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'nav_menu', '', 0, 4),
(7, 7, 'nav_menu', '', 0, 3),
(8, 8, 'nav_menu', '', 0, 3),
(10, 10, 'nav_menu', '', 0, 5) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Main Navigation', 'main-navigation', 0, 0),
(4, 'Second Navigation', 'second-navigation', 0, 0),
(5, 'Tech', 'tech', 0, 0),
(6, 'Entertainment', 'entertainment', 0, 0),
(7, 'Business', 'business', 0, 0),
(8, 'Lifestyle', 'lifestyle', 0, 0),
(10, 'Media List', 'media-list', 0, 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_cal_1`
#

DROP TABLE IF EXISTS `wp_totalsoft_cal_1`;


#
# Table structure of table `wp_totalsoft_cal_1`
#

CREATE TABLE `wp_totalsoft_cal_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_BgCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_GrCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_GW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_BW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_BStyle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_BCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_BSCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_MW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_HBgCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_HCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_HFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_HFF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_WBgCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_WCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_WFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_WFF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_LAW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_LAWS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_LAWC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_DBgCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_DCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_DFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_TBgCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_TCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_TFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_TNBgCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_HovBgCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_HovCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_NumPos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_WDStart` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_RefIcCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_RefIcSize` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowLeft` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowRight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowCol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowSize` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_totalsoft_cal_1`
#
INSERT INTO `wp_totalsoft_cal_1` ( `id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal_BgCol`, `TotalSoftCal_GrCol`, `TotalSoftCal_GW`, `TotalSoftCal_BW`, `TotalSoftCal_BStyle`, `TotalSoftCal_BCol`, `TotalSoftCal_BSCol`, `TotalSoftCal_MW`, `TotalSoftCal_HBgCol`, `TotalSoftCal_HCol`, `TotalSoftCal_HFS`, `TotalSoftCal_HFF`, `TotalSoftCal_WBgCol`, `TotalSoftCal_WCol`, `TotalSoftCal_WFS`, `TotalSoftCal_WFF`, `TotalSoftCal_LAW`, `TotalSoftCal_LAWS`, `TotalSoftCal_LAWC`, `TotalSoftCal_DBgCol`, `TotalSoftCal_DCol`, `TotalSoftCal_DFS`, `TotalSoftCal_TBgCol`, `TotalSoftCal_TCol`, `TotalSoftCal_TFS`, `TotalSoftCal_TNBgCol`, `TotalSoftCal_HovBgCol`, `TotalSoftCal_HovCol`, `TotalSoftCal_NumPos`, `TotalSoftCal_WDStart`, `TotalSoftCal_RefIcCol`, `TotalSoftCal_RefIcSize`, `TotalSoftCal_ArrowType`, `TotalSoftCal_ArrowLeft`, `TotalSoftCal_ArrowRight`, `TotalSoftCal_ArrowCol`, `TotalSoftCal_ArrowSize`) VALUES
(1, '1', 'Total Soft Calendar', 'Event Calendar', '#efefef', '#009491', '1', '2', 'solid', '#009491', '#009491', '700', '#ffffff', '#009491', '14', 'Arial', '#009491', '#ffffff', '10', 'Arial', '0', 'none', '#ffffff', '#ffffff', '#009491', '14', '#009491', '#009491', '15', '#ffffff', '#009491', '#ffffff', 'left', 'Mon', '#009491', '20', '7', 'totalsoft totalsoft-caret-square-o-left', 'totalsoft totalsoft-caret-square-o-right', '#009491', '17'),
(2, '2', 'Total-Soft Calendar', 'Event Calendar', '#efefef', '#ffffff', '1', '2', 'solid', '#ffffff', '#ffffff', '700', '#009491', '#ffffff', '14', 'Arial', '#ffffff', '#009491', '10', 'Arial', '0', 'none', '#009491', '#009491', '#ffffff', '14', '#ffffff', '#ffffff', '15', '#009491', '#ffffff', '#009491', 'left', 'Mon', '#ffffff', '20', '7', 'totalsoft totalsoft-caret-square-o-left', 'totalsoft totalsoft-caret-square-o-right', '#ffffff', '17'),
(3, '3', 'TotalSoft Calendar', 'Event Calendar', '#efefef', '#ffffff', '1', '2', 'solid', '#ffffff', '#ffffff', '700', '#00c603', '#ffffff', '14', 'Arial', '#ffffff', '#00c603', '10', 'Arial', '0', 'none', '#00c603', '#00c603', '#ffffff', '14', '#ffffff', '#ffffff', '15', '#00c603', '#ffffff', '#00c603', 'left', 'Mon', '#ffffff', '20', '7', 'totalsoft totalsoft-caret-square-o-left', 'totalsoft totalsoft-caret-square-o-right', '#ffffff', '17'),
(4, '4', 'TotalSoftCalendar', 'Event Calendar', '#efefef', '#00c603', '1', '2', 'solid', '#00c603', '#00c603', '700', '#ffffff', '#00c603', '14', 'Arial', '#00c603', '#ffffff', '10', 'Arial', '0', 'none', '#ffffff', '#ffffff', '#00c603', '14', '#00c603', '#00c603', '15', '#ffffff', '#00c603', '#ffffff', 'left', 'Mon', '#00c603', '20', '7', 'totalsoft totalsoft-caret-square-o-left', 'totalsoft totalsoft-caret-square-o-right', '#00c603', '17') ;

#
# End of data contents of table `wp_totalsoft_cal_1`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_cal_2`
#

DROP TABLE IF EXISTS `wp_totalsoft_cal_2`;


#
# Table structure of table `wp_totalsoft_cal_2`
#

CREATE TABLE `wp_totalsoft_cal_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_WDStart` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_BW` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_BS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_BC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_W` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_H` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShShow` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_BxSh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_MBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_MC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_MFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_MFF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_WBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_WC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_WFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_WFF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_W` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_S` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_C` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_DBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_DC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_DFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_TdBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_TdC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_TdFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_EdBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_EdC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_EdFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_HBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_HC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_OmBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_OmC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_OmFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HFF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HText` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_BBgC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TFF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_DC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_DFF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_DFS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_totalsoft_cal_2`
#
INSERT INTO `wp_totalsoft_cal_2` ( `id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal2_WDStart`, `TotalSoftCal2_BW`, `TotalSoftCal2_BS`, `TotalSoftCal2_BC`, `TotalSoftCal2_W`, `TotalSoftCal2_H`, `TotalSoftCal2_BxShShow`, `TotalSoftCal2_BxShType`, `TotalSoftCal2_BxSh`, `TotalSoftCal2_BxShC`, `TotalSoftCal2_MBgC`, `TotalSoftCal2_MC`, `TotalSoftCal2_MFS`, `TotalSoftCal2_MFF`, `TotalSoftCal2_WBgC`, `TotalSoftCal2_WC`, `TotalSoftCal2_WFS`, `TotalSoftCal2_WFF`, `TotalSoftCal2_LAW_W`, `TotalSoftCal2_LAW_S`, `TotalSoftCal2_LAW_C`, `TotalSoftCal2_DBgC`, `TotalSoftCal2_DC`, `TotalSoftCal2_DFS`, `TotalSoftCal2_TdBgC`, `TotalSoftCal2_TdC`, `TotalSoftCal2_TdFS`, `TotalSoftCal2_EdBgC`, `TotalSoftCal2_EdC`, `TotalSoftCal2_EdFS`, `TotalSoftCal2_HBgC`, `TotalSoftCal2_HC`, `TotalSoftCal2_ArrType`, `TotalSoftCal2_ArrFS`, `TotalSoftCal2_ArrC`, `TotalSoftCal2_OmBgC`, `TotalSoftCal2_OmC`, `TotalSoftCal2_OmFS`, `TotalSoftCal2_Ev_HBgC`, `TotalSoftCal2_Ev_HC`, `TotalSoftCal2_Ev_HFS`, `TotalSoftCal2_Ev_HFF`, `TotalSoftCal2_Ev_HText`, `TotalSoftCal2_Ev_BBgC`, `TotalSoftCal2_Ev_TC`, `TotalSoftCal2_Ev_TFF`, `TotalSoftCal2_Ev_TFS`, `TotalSoftCal2_Ev_DC`, `TotalSoftCal2_Ev_DFF`, `TotalSoftCal2_Ev_DFS`) VALUES
(1, '5', 'Simple Calendar', 'Simple Calendar', '0', '5', 'solid', '#ffffff', '600', '600', 'Yes', '2', '25', '#009491', '#009491', '#ffffff', '27', 'Gabriola', '#ffffff', '#009491', '19', 'Gabriola', '1', 'solid', '#009491', '#ffffff', '#009491', '17', '#009491', '#ffffff', '18', '#e2e2e2', '#ffffff', '18', '#ffffff', '#009491', 'angle', '21', '#ffffff', '#ffffff', '#a0a0a0', '10', '#009491', '#ffffff', '27', 'Gabriola', 'Events', '#ffffff', '#009491', 'Gabriola', '23', '#7c7c7c', 'Gabriola', '20'),
(2, '6', 'Simple Calendar 2', 'Simple Calendar', '0', '5', 'solid', '#ffffff', '600', '600', 'Yes', '1', '25', '#000000', '#ffffff', '#009491', '25', 'Gabriola', '#009491', '#ffffff', '21', 'Gabriola', '1', 'solid', '#009491', '#ffffff', '#009491', '17', '#009491', '#ffffff', '18', '#e2e2e2', '#ffffff', '18', '#ffffff', '#009491', 'angle', '21', '#009491', '#ffffff', '#a0a0a0', '14', '#ffffff', '#009491', '25', 'Gabriola', 'Events', '#009491', '#ffffff', 'Gabriola', '23', '#d6d6d6', 'Gabriola', '20') ;

#
# End of data contents of table `wp_totalsoft_cal_2`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_cal_3`
#

DROP TABLE IF EXISTS `wp_totalsoft_cal_3`;


#
# Table structure of table `wp_totalsoft_cal_3`
#

CREATE TABLE `wp_totalsoft_cal_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_ID` varchar(255) NOT NULL,
  `TotalSoftCal_Name` varchar(255) NOT NULL,
  `TotalSoftCal_Type` varchar(255) NOT NULL,
  `TotalSoftCal3_MW` varchar(255) NOT NULL,
  `TotalSoftCal3_WDStart` varchar(255) NOT NULL,
  `TotalSoftCal3_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_GrC` varchar(255) NOT NULL,
  `TotalSoftCal3_BBC` varchar(255) NOT NULL,
  `TotalSoftCal3_BoxShShow` varchar(255) NOT NULL,
  `TotalSoftCal3_BoxShType` varchar(255) NOT NULL,
  `TotalSoftCal3_BoxSh` varchar(255) NOT NULL,
  `TotalSoftCal3_BoxShC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_BTW` varchar(255) NOT NULL,
  `TotalSoftCal3_H_BTC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_H_MFS` varchar(255) NOT NULL,
  `TotalSoftCal3_H_MC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_YFS` varchar(255) NOT NULL,
  `TotalSoftCal3_H_YC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_Format` varchar(255) NOT NULL,
  `TotalSoftCal3_Arr_Type` varchar(255) NOT NULL,
  `TotalSoftCal3_Arr_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Arr_S` varchar(255) NOT NULL,
  `TotalSoftCal3_Arr_HC` varchar(255) NOT NULL,
  `TotalSoftCal3_LAH_W` varchar(255) NOT NULL,
  `TotalSoftCal3_LAH_C` varchar(255) NOT NULL,
  `TotalSoftCal3_WD_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_WD_C` varchar(255) NOT NULL,
  `TotalSoftCal3_WD_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_WD_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_D_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_D_C` varchar(255) NOT NULL,
  `TotalSoftCal3_TD_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_TD_C` varchar(255) NOT NULL,
  `TotalSoftCal3_HD_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_HD_C` varchar(255) NOT NULL,
  `TotalSoftCal3_ED_C` varchar(255) NOT NULL,
  `TotalSoftCal3_ED_HC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_Format` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_BTW` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_BTC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C_Type` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C_HC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_LAH_W` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_LAH_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_B_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_B_BC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_TA` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_D_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_D_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_D_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_I_W` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_I_Pos` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_HC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_Pos` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_Text` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_LAE_W` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_LAE_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_BW` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_BC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_BR` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_totalsoft_cal_3`
#
INSERT INTO `wp_totalsoft_cal_3` ( `id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal3_MW`, `TotalSoftCal3_WDStart`, `TotalSoftCal3_BgC`, `TotalSoftCal3_GrC`, `TotalSoftCal3_BBC`, `TotalSoftCal3_BoxShShow`, `TotalSoftCal3_BoxShType`, `TotalSoftCal3_BoxSh`, `TotalSoftCal3_BoxShC`, `TotalSoftCal3_H_BgC`, `TotalSoftCal3_H_BTW`, `TotalSoftCal3_H_BTC`, `TotalSoftCal3_H_FF`, `TotalSoftCal3_H_MFS`, `TotalSoftCal3_H_MC`, `TotalSoftCal3_H_YFS`, `TotalSoftCal3_H_YC`, `TotalSoftCal3_H_Format`, `TotalSoftCal3_Arr_Type`, `TotalSoftCal3_Arr_C`, `TotalSoftCal3_Arr_S`, `TotalSoftCal3_Arr_HC`, `TotalSoftCal3_LAH_W`, `TotalSoftCal3_LAH_C`, `TotalSoftCal3_WD_BgC`, `TotalSoftCal3_WD_C`, `TotalSoftCal3_WD_FS`, `TotalSoftCal3_WD_FF`, `TotalSoftCal3_D_BgC`, `TotalSoftCal3_D_C`, `TotalSoftCal3_TD_BgC`, `TotalSoftCal3_TD_C`, `TotalSoftCal3_HD_BgC`, `TotalSoftCal3_HD_C`, `TotalSoftCal3_ED_C`, `TotalSoftCal3_ED_HC`, `TotalSoftCal3_Ev_Format`, `TotalSoftCal3_Ev_BTW`, `TotalSoftCal3_Ev_BTC`, `TotalSoftCal3_Ev_BgC`, `TotalSoftCal3_Ev_C`, `TotalSoftCal3_Ev_FS`, `TotalSoftCal3_Ev_FF`, `TotalSoftCal3_Ev_C_Type`, `TotalSoftCal3_Ev_C_C`, `TotalSoftCal3_Ev_C_HC`, `TotalSoftCal3_Ev_C_FS`, `TotalSoftCal3_Ev_LAH_W`, `TotalSoftCal3_Ev_LAH_C`, `TotalSoftCal3_Ev_B_BgC`, `TotalSoftCal3_Ev_B_BC`, `TotalSoftCal3_Ev_T_FS`, `TotalSoftCal3_Ev_T_FF`, `TotalSoftCal3_Ev_T_BgC`, `TotalSoftCal3_Ev_T_C`, `TotalSoftCal3_Ev_T_TA`, `TotalSoftCal3_Ev_D_FS`, `TotalSoftCal3_Ev_D_FF`, `TotalSoftCal3_Ev_D_C`, `TotalSoftCal3_Ev_I_W`, `TotalSoftCal3_Ev_I_Pos`, `TotalSoftCal3_Ev_L_C`, `TotalSoftCal3_Ev_L_HC`, `TotalSoftCal3_Ev_L_Pos`, `TotalSoftCal3_Ev_L_Text`, `TotalSoftCal3_Ev_LAE_W`, `TotalSoftCal3_Ev_LAE_C`, `TotalSoftCal3_Ev_L_FS`, `TotalSoftCal3_Ev_L_FF`, `TotalSoftCal3_Ev_L_BW`, `TotalSoftCal3_Ev_L_BC`, `TotalSoftCal3_Ev_L_BR`) VALUES
(1, '7', 'Flexible Calendar', 'Flexible Calendar', '700', '1', '#ffffff', '#000000', '#000000', 'No', '1', '22', '#000000', '#ffffff', '3', '#dd3333', 'Gabriola', '22', '#000000', '24', '#dd3333', '1', 'caret', '#000000', '20', '#606060', '2', '#dd3333', '#000000', '#ffffff', '17', 'Gabriola', '#ffffff', '#dd3333', '#dd3333', '#ffffff', '#ffffff', '#000000', '#dd3333', '#000000', '3', '3', '#dd3333', '#dd3333', '#ffffff', '26', 'Gabriola', 'times-circle', '#ffffff', '#d6d6d6', '21', '3', '#000000', '#ffffff', '#dd3333', '20', 'Gabriola', '#000000', '#ffffff', 'center', '20', 'Gabriola', '#000000', '48', '3', '#000000', '#4f4f4f', '4', 'View More', '2', '#000000', '17', 'Abadi MT Condensed Light', '1', '#000000', '25'),
(2, '8', 'Flexible Calendar 2', 'Flexible Calendar', '700', '1', '#ffffff', '#009491', '#009491', 'No', '1', '22', '#000000', '#009491', '3', '#ffffff', 'Gabriola', '22', '#d3d3d3', '24', '#ffffff', '2', 'caret', '#ffffff', '20', '#606060', '2', '#ffffff', '#009491', '#ffffff', '17', 'Gabriola', '#ffffff', '#000000', '#009491', '#ffffff', '#ffffff', '#000000', '#000000', '#aaaaaa', '3', '0', '#ffffff', '#009491', '#ffffff', '26', 'Gabriola', 'times', '#ffffff', '#d6d6d6', '21', '3', '#000000', '#ffffff', '#009491', '20', 'Gabriola', '#009491', '#ffffff', 'center', '19', 'Gabriola', '#515151', '80', '3', '#919191', '#4f4f4f', '5', 'View More', '2', '#878787', '17', 'Abadi MT Condensed Light', '1', '#919191', '25') ;

#
# End of data contents of table `wp_totalsoft_cal_3`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_cal_events`
#

DROP TABLE IF EXISTS `wp_totalsoft_cal_events`;


#
# Table structure of table `wp_totalsoft_cal_events`
#

CREATE TABLE `wp_totalsoft_cal_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_EvName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvCal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvStartDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvEndDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvURLNewTab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvStartTime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvEndTime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvColor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_totalsoft_cal_events`
#

#
# End of data contents of table `wp_totalsoft_cal_events`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_cal_events_p2`
#

DROP TABLE IF EXISTS `wp_totalsoft_cal_events_p2`;


#
# Table structure of table `wp_totalsoft_cal_events_p2`
#

CREATE TABLE `wp_totalsoft_cal_events_p2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_EvDesc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvImg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvVid_Src` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvVid_Iframe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_EvCal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_totalsoft_cal_events_p2`
#

#
# End of data contents of table `wp_totalsoft_cal_events_p2`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_cal_ids`
#

DROP TABLE IF EXISTS `wp_totalsoft_cal_ids`;


#
# Table structure of table `wp_totalsoft_cal_ids`
#

CREATE TABLE `wp_totalsoft_cal_ids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Cal_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_totalsoft_cal_ids`
#
INSERT INTO `wp_totalsoft_cal_ids` ( `id`, `Cal_ID`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8') ;

#
# End of data contents of table `wp_totalsoft_cal_ids`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_cal_part`
#

DROP TABLE IF EXISTS `wp_totalsoft_cal_part`;


#
# Table structure of table `wp_totalsoft_cal_part`
#

CREATE TABLE `wp_totalsoft_cal_part` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_01` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_02` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_03` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_04` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_05` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_06` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_07` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_08` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_09` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_10` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_11` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_12` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_13` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_14` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_15` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_16` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_17` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_18` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_19` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_20` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_21` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_22` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_23` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_24` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_25` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_26` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_27` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_28` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_29` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_30` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_totalsoft_cal_part`
#
INSERT INTO `wp_totalsoft_cal_part` ( `id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal_01`, `TotalSoftCal_02`, `TotalSoftCal_03`, `TotalSoftCal_04`, `TotalSoftCal_05`, `TotalSoftCal_06`, `TotalSoftCal_07`, `TotalSoftCal_08`, `TotalSoftCal_09`, `TotalSoftCal_10`, `TotalSoftCal_11`, `TotalSoftCal_12`, `TotalSoftCal_13`, `TotalSoftCal_14`, `TotalSoftCal_15`, `TotalSoftCal_16`, `TotalSoftCal_17`, `TotalSoftCal_18`, `TotalSoftCal_19`, `TotalSoftCal_20`, `TotalSoftCal_21`, `TotalSoftCal_22`, `TotalSoftCal_23`, `TotalSoftCal_24`, `TotalSoftCal_25`, `TotalSoftCal_26`, `TotalSoftCal_27`, `TotalSoftCal_28`, `TotalSoftCal_29`, `TotalSoftCal_30`) VALUES
(1, '1', 'Total Soft Calendar', 'Event Calendar', '14', 'Arial', '#ffffff', 'left', '24', '16', 'Arial', '#ffffff', '70', 'after', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '2', 'Total-Soft Calendar', 'Event Calendar', '14', 'Arial', '#ffffff', 'left', '24', '16', 'Arial', '#ffffff', '70', 'after', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '3', 'TotalSoft Calendar', 'Event Calendar', '14', 'Arial', '#ffffff', 'left', '24', '16', 'Arial', '#ffffff', '70', 'after', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '4', 'TotalSoftCalendar', 'Event Calendar', '14', 'Arial', '#ffffff', 'left', '24', '16', 'Arial', '#ffffff', '70', 'after', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '5', 'Simple Calendar', 'Simple Calendar', 'left', '70', 'after', '24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '6', 'Simple Calendar 2', 'Simple Calendar', 'left', '70', 'after', '24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '7', 'Flexible Calendar', 'Flexible Calendar', '24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '8', 'Flexible Calendar 2', 'Flexible Calendar', '24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '') ;

#
# End of data contents of table `wp_totalsoft_cal_part`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_cal_types`
#

DROP TABLE IF EXISTS `wp_totalsoft_cal_types`;


#
# Table structure of table `wp_totalsoft_cal_types`
#

CREATE TABLE `wp_totalsoft_cal_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_totalsoft_cal_types`
#
INSERT INTO `wp_totalsoft_cal_types` ( `id`, `TotalSoftCal_Name`, `TotalSoftCal_Type`) VALUES
(1, 'Total Soft Calendar', 'Event Calendar'),
(2, 'Total-Soft Calendar', 'Event Calendar'),
(3, 'TotalSoft Calendar', 'Event Calendar'),
(4, 'TotalSoftCalendar', 'Event Calendar'),
(5, 'Simple Calendar', 'Simple Calendar'),
(6, 'Simple Calendar 2', 'Simple Calendar'),
(7, 'Flexible Calendar', 'Flexible Calendar'),
(8, 'Flexible Calendar 2', 'Flexible Calendar') ;

#
# End of data contents of table `wp_totalsoft_cal_types`
# --------------------------------------------------------



#
# Delete any existing table `wp_totalsoft_fonts`
#

DROP TABLE IF EXISTS `wp_totalsoft_fonts`;


#
# Table structure of table `wp_totalsoft_fonts`
#

CREATE TABLE `wp_totalsoft_fonts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Font` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_totalsoft_fonts`
#
INSERT INTO `wp_totalsoft_fonts` ( `id`, `Font`) VALUES
(1, 'Abadi MT Condensed Light'),
(2, 'Aharoni'),
(3, 'Aldhabi'),
(4, 'Andalus'),
(5, 'Angsana New'),
(6, 'AngsanaUPC'),
(7, 'Aparajita'),
(8, 'Arabic Typesetting'),
(9, 'Arial'),
(10, 'Arial Black'),
(11, 'Batang'),
(12, 'BatangChe'),
(13, 'Browallia New'),
(14, 'BrowalliaUPC'),
(15, 'Calibri'),
(16, 'Calibri Light'),
(17, 'Calisto MT'),
(18, 'Cambria'),
(19, 'Candara'),
(20, 'Century Gothic'),
(21, 'Comic Sans MS'),
(22, 'Consolas'),
(23, 'Constantia'),
(24, 'Copperplate Gothic'),
(25, 'Copperplate Gothic Light'),
(26, 'Corbel'),
(27, 'Cordia New'),
(28, 'CordiaUPC'),
(29, 'Courier New'),
(30, 'DaunPenh'),
(31, 'David'),
(32, 'DFKai-SB'),
(33, 'DilleniaUPC'),
(34, 'DokChampa'),
(35, 'Dotum'),
(36, 'DotumChe'),
(37, 'Ebrima'),
(38, 'Estrangelo Edessa'),
(39, 'EucrosiaUPC'),
(40, 'Euphemia'),
(41, 'FangSong'),
(42, 'Franklin Gothic Medium'),
(43, 'FrankRuehl'),
(44, 'FreesiaUPC'),
(45, 'Gabriola'),
(46, 'Gadugi'),
(47, 'Gautami'),
(48, 'Georgia'),
(49, 'Gisha'),
(50, 'Gulim'),
(51, 'GulimChe'),
(52, 'Gungsuh'),
(53, 'GungsuhChe'),
(54, 'Impact'),
(55, 'IrisUPC'),
(56, 'Iskoola Pota'),
(57, 'JasmineUPC'),
(58, 'KaiTi'),
(59, 'Kalinga'),
(60, 'Kartika'),
(61, 'Khmer UI'),
(62, 'KodchiangUPC'),
(63, 'Kokila'),
(64, 'Lao UI'),
(65, 'Latha'),
(66, 'Leelawadee'),
(67, 'Levenim MT'),
(68, 'LilyUPC'),
(69, 'Lucida Console'),
(70, 'Lucida Handwriting Italic'),
(71, 'Lucida Sans Unicode'),
(72, 'Malgun Gothic'),
(73, 'Mangal'),
(74, 'Manny ITC'),
(75, 'Marlett'),
(76, 'Meiryo'),
(77, 'Meiryo UI'),
(78, 'Microsoft Himalaya'),
(79, 'Microsoft JhengHei'),
(80, 'Microsoft JhengHei UI'),
(81, 'Microsoft New Tai Lue'),
(82, 'Microsoft PhagsPa'),
(83, 'Microsoft Sans Serif'),
(84, 'Microsoft Tai Le'),
(85, 'Microsoft Uighur'),
(86, 'Microsoft YaHei'),
(87, 'Microsoft YaHei UI'),
(88, 'Microsoft Yi Baiti'),
(89, 'MingLiU_HKSCS'),
(90, 'MingLiU_HKSCS-ExtB'),
(91, 'Miriam'),
(92, 'Mongolian Baiti'),
(93, 'MoolBoran'),
(94, 'MS UI Gothic'),
(95, 'MV Boli'),
(96, 'Myanmar Text'),
(97, 'Narkisim'),
(98, 'Nirmala UI'),
(99, 'News Gothic MT'),
(100, 'NSimSun') ;
INSERT INTO `wp_totalsoft_fonts` ( `id`, `Font`) VALUES
(101, 'Nyala'),
(102, 'Palatino Linotype'),
(103, 'Plantagenet Cherokee'),
(104, 'Raavi'),
(105, 'Rod'),
(106, 'Sakkal Majalla'),
(107, 'Segoe Print'),
(108, 'Segoe Script'),
(109, 'Segoe UI Symbol'),
(110, 'Shonar Bangla'),
(111, 'Shruti'),
(112, 'SimHei'),
(113, 'SimKai'),
(114, 'Simplified Arabic'),
(115, 'SimSun'),
(116, 'SimSun-ExtB'),
(117, 'Sylfaen'),
(118, 'Tahoma'),
(119, 'Times New Roman'),
(120, 'Traditional Arabic'),
(121, 'Trebuchet MS'),
(122, 'Tunga'),
(123, 'Utsaah'),
(124, 'Vani'),
(125, 'Vijaya') ;

#
# End of data contents of table `wp_totalsoft_fonts`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Julita'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:2:{s:64:"53c95a9d2ddc1c6945566772d17ac39ea17aeace1b13e7d7a1c5e630957bf712";a:4:{s:10:"expiration";i:1490592828;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489383228;}s:64:"dca2edf4db2feef8b496045555cabb247d638bcfd61a67a7e58b66441c83f976";a:4:{s:10:"expiration";i:1490293593;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490120793;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '124'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(19, 1, 'nav_menu_recently_edited', '10'),
(20, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1490153866'),
(22, 1, 'closedpostboxes_page', 'a:3:{i:0;s:6:"acf_79";i:1;s:6:"acf_61";i:2;s:12:"revisionsdiv";}'),
(23, 1, 'metaboxhidden_page', 'a:6:{i:0;s:7:"acf_116";i:1;s:7:"acf_133";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Julita', '$P$BXUB9Ke9TDMBmrN7Hvq7prQBB1tZr4/', 'julita', 'gwarla@gmail.com', '', '2017-03-13 05:33:47', '', 0, 'Julita') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

