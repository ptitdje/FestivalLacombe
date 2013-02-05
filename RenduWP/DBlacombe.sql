-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Mar 05 Février 2013 à 10:39
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `DBlacombe`
--

-- --------------------------------------------------------

--
-- Structure de la table `festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `festival_comments`
--

CREATE TABLE IF NOT EXISTS `festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `festival_comments`
--

INSERT INTO `festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-30 08:55:14', '2013-01-30 08:55:14', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `festival_links`
--

CREATE TABLE IF NOT EXISTS `festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `festival_options`
--

CREATE TABLE IF NOT EXISTS `festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Contenu de la table `festival_options`
--

INSERT INTO `festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~jlacombe/RenduWP/wordpress', 'yes'),
(2, 'blogname', 'Projet LGBT', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'ptitdje@hotmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~jlacombe/RenduWP/wordpress', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '53', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1360097719;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1360141005;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360141007;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1360056207;}', 'yes'),
(102, '_transient_random_seed', '6aa4b6fe97e4a66e2ac2f19cb7bcc17f', 'yes'),
(103, 'auth_key', '.nlo1LhN_%hZcu1<q4;byY-W.Us-kY&NeKr.6YcF2s&}-UrM3?%& Q)XDWQrk9z;', 'yes'),
(104, 'auth_salt', 'a,JyMJ:=BvFc?69Yg&sj_y~7I3`?3ArQo!Nx@!nl/*&&!)@77WEem,W/v3/`*x{9', 'yes'),
(105, 'logged_in_key', 'uS*?R_kP N-/_E*nqGVUbKpUQ?&xeMfo<IRVUy089WVg=(,;1#_DC80]}(FB7VkF', 'yes'),
(106, 'logged_in_salt', 'vvj|a9MEw_uouDc_O)]XAPoU9(Wz#>-QNPDe1u?=}(|I:x^E9i4<[Zm`J2D!1zmT', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360056237;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360056268;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:44:"http://localhost/~jlacombe/RenduWP/wordpress";s:4:"link";s:120:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~jlacombe/RenduWP/wordpress/";s:3:"url";s:153:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~jlacombe/RenduWP/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', 'I)n-NlG{s4DZ%6H}Q)(AJ`UQ?1focm0r~O`LaiH^[[>eS%5-(<D@/<(7Z5198;dx', 'yes'),
(113, 'nonce_salt', 'jrkB)e6y?~:ETa:?pOAy1]4=!dyk<4OW]OgA*,%?3vQ]]V2r$&US*tj[(}.pKl/s', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(127, 'category_children', 'a:0:{}', 'yes'),
(151, '_site_transient_timeout_wporg_theme_feature_list', '1359548959', 'yes'),
(152, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(153, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1359538075;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(157, 'current_theme', 'Festival', 'yes'),
(158, 'theme_mods_festival', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:12:"header_image";s:92:"http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/02/cropped-banniere.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:88;s:3:"url";s:92:"http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/02/cropped-banniere.png";s:13:"thumbnail_url";s:92:"http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/02/cropped-banniere.png";s:6:"height";i:250;s:5:"width";i:960;}s:16:"header_textcolor";s:3:"444";}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(177, '_site_transient_timeout_theme_roots', '1360058068', 'yes'),
(178, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(179, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1360099567', 'no'),
(180, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(181, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1360099568', 'no'),
(182, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(183, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1360099568', 'no'),
(184, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(185, '_transient_timeout_plugin_slugs', '1360142779', 'no'),
(186, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(187, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1360099579', 'no'),
(188, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

--
-- Contenu de la table `festival_postmeta`
--

INSERT INTO `festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1359537578:1'),
(4, 4, 'Année', '2009'),
(5, 4, 'Réalisateur', 'Pascal-Alex Vincent'),
(6, 4, 'Pays', 'France'),
(7, 4, 'Durée', '8 minutes'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1359537554:1'),
(12, 8, 'Année', '2009'),
(13, 8, 'Durée', '7 minutes'),
(14, 8, 'Réalisateur', 'Céline Sciamma'),
(15, 8, 'Pays', 'France'),
(17, 10, '_edit_last', '1'),
(18, 10, '_edit_lock', '1359537524:1'),
(19, 10, 'Réalisateur', 'Sébastien Gabriel'),
(20, 10, 'Pays', 'France'),
(21, 10, 'Année', '2009'),
(22, 10, 'Durée', '9 minutes'),
(24, 12, '_edit_last', '1'),
(25, 12, '_edit_lock', '1359537489:1'),
(26, 12, 'Réalisateur', 'Bénédicte Delgéhier'),
(27, 12, 'Pays', 'France'),
(28, 12, 'Année', '2006'),
(29, 12, 'Durée', '10 minutes'),
(31, 14, '_edit_last', '1'),
(32, 14, '_edit_lock', '1359537445:1'),
(33, 14, 'Réalisateur', 'René Guerra Luiz'),
(34, 14, 'Pays', 'Brésil'),
(35, 14, 'Année', '2008'),
(36, 14, 'Durée', '17 minutes'),
(38, 16, '_edit_last', '1'),
(39, 16, '_edit_lock', '1359537419:1'),
(40, 16, 'Réalisateur', 'Jean Baptiste Erreca'),
(41, 16, 'Pays', 'France'),
(42, 16, 'Année', '2006'),
(43, 16, 'Durée', '26 minutes'),
(45, 18, '_edit_last', '1'),
(46, 18, '_edit_lock', '1359537396:1'),
(47, 18, 'Durée', '4 minutes'),
(48, 18, 'Réalisateur', 'Patricia & Colette'),
(49, 18, 'Pays', 'France'),
(50, 18, 'Année', '2008'),
(52, 20, '_edit_last', '1'),
(53, 20, '_edit_lock', '1359537365:1'),
(54, 20, 'Pays', 'Etats-Unis'),
(55, 20, 'Année', '1996'),
(56, 20, 'Durée', '1h20'),
(57, 20, 'Réalisateur', 'Debra Chasnoff'),
(59, 22, '_edit_last', '1'),
(60, 22, '_edit_lock', '1359537339:1'),
(61, 22, 'Réalisateur', 'Roberto Castón'),
(62, 22, 'Année', '2009'),
(63, 22, 'Pays', 'Espagne'),
(64, 22, 'Durée', '02h08'),
(66, 24, '_edit_last', '1'),
(67, 24, '_edit_lock', '1359537317:1'),
(68, 24, 'Réalisateur', 'Lucía Puenzo'),
(69, 24, 'Pays', 'Argentine'),
(70, 24, 'Année', '2008'),
(71, 24, 'Durée', '1h28'),
(73, 26, '_edit_last', '1'),
(74, 26, '_edit_lock', '1359537187:1'),
(75, 26, 'Pays', 'Grande Bretagne'),
(76, 26, 'Année', '2007'),
(77, 26, 'Durée', '1h20'),
(78, 26, 'Réalisateur', 'Shamim Sarif'),
(80, 29, '_wp_attached_file', '2013/01/I_cant_think_straight_2.jpg'),
(81, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:35:"2013/01/I_cant_think_straight_2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"I_cant_think_straight_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"I_cant_think_straight_2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"I_cant_think_straight_2-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(82, 26, '_thumbnail_id', '29'),
(84, 32, '_wp_attached_file', '2013/01/EL_NINO_PEZ_1.jpg'),
(85, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:700;s:4:"file";s:25:"2013/01/EL_NINO_PEZ_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL_NINO_PEZ_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL_NINO_PEZ_1-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL_NINO_PEZ_1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(86, 24, '_thumbnail_id', '32'),
(88, 34, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(89, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:576;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(90, 22, '_thumbnail_id', '34'),
(92, 36, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(93, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:768;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"ItsElementaryGBan-300x256.jpg";s:5:"width";i:300;s:6:"height";i:256;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-624x532.jpg";s:5:"width";i:624;s:6:"height";i:532;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(94, 20, '_thumbnail_id', '36'),
(96, 38, '_wp_attached_file', '2013/01/COWBOY_FOREVER.jpg'),
(97, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:26:"2013/01/COWBOY_FOREVER.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY_FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY_FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY_FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(98, 16, '_thumbnail_id', '38'),
(100, 40, '_wp_attached_file', '2013/01/Os_sapatos_de_Aristeu.jpg'),
(101, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:33:"2013/01/Os_sapatos_de_Aristeu.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Os_sapatos_de_Aristeu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Os_sapatos_de_Aristeu-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"Os_sapatos_de_Aristeu-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(102, 14, '_thumbnail_id', '40'),
(104, 42, '_wp_attached_file', '2013/01/Odile_.jpg'),
(105, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:693;s:4:"file";s:18:"2013/01/Odile_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile_-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile_-624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(106, 12, '_thumbnail_id', '42'),
(108, 44, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(109, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(110, 10, '_thumbnail_id', '44'),
(112, 46, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(113, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(114, 8, '_thumbnail_id', '46'),
(116, 48, '_wp_attached_file', '2013/01/EN_COLO.jpg'),
(117, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:670;s:4:"file";s:19:"2013/01/EN_COLO.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"EN_COLO-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"EN_COLO-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"EN_COLO-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(118, 4, '_thumbnail_id', '48'),
(120, 1, '_wp_trash_meta_status', 'publish'),
(121, 1, '_wp_trash_meta_time', '1359537701'),
(122, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(123, 51, '_menu_item_type', 'taxonomy'),
(124, 51, '_menu_item_menu_item_parent', '0'),
(125, 51, '_menu_item_object_id', '3'),
(126, 51, '_menu_item_object', 'category'),
(127, 51, '_menu_item_target', ''),
(128, 51, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(129, 51, '_menu_item_xfn', ''),
(130, 51, '_menu_item_url', ''),
(132, 52, '_menu_item_type', 'taxonomy'),
(133, 52, '_menu_item_menu_item_parent', '0'),
(134, 52, '_menu_item_object_id', '2'),
(135, 52, '_menu_item_object', 'category'),
(136, 52, '_menu_item_target', ''),
(137, 52, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-jaune";}'),
(138, 52, '_menu_item_xfn', ''),
(139, 52, '_menu_item_url', ''),
(141, 53, '_edit_last', '1'),
(142, 53, '_edit_lock', '1359537716:1'),
(143, 53, '_wp_page_template', 'default'),
(144, 55, '_edit_last', '1'),
(145, 55, '_edit_lock', '1359537771:1'),
(146, 55, '_wp_page_template', 'default'),
(147, 57, '_edit_last', '1'),
(148, 57, '_edit_lock', '1359537783:1'),
(149, 57, '_wp_page_template', 'default'),
(150, 59, '_menu_item_type', 'post_type'),
(151, 59, '_menu_item_menu_item_parent', '0'),
(152, 59, '_menu_item_object_id', '57'),
(153, 59, '_menu_item_object', 'page'),
(154, 59, '_menu_item_target', ''),
(155, 59, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-bleu";}'),
(156, 59, '_menu_item_xfn', ''),
(157, 59, '_menu_item_url', ''),
(159, 60, '_menu_item_type', 'post_type'),
(160, 60, '_menu_item_menu_item_parent', '0'),
(161, 60, '_menu_item_object_id', '55'),
(162, 60, '_menu_item_object', 'page'),
(163, 60, '_menu_item_target', ''),
(164, 60, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-vert";}'),
(165, 60, '_menu_item_xfn', ''),
(166, 60, '_menu_item_url', ''),
(168, 61, '_menu_item_type', 'post_type'),
(169, 61, '_menu_item_menu_item_parent', '0'),
(170, 61, '_menu_item_object_id', '53'),
(171, 61, '_menu_item_object', 'page'),
(172, 61, '_menu_item_target', ''),
(173, 61, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(174, 61, '_menu_item_xfn', ''),
(175, 61, '_menu_item_url', ''),
(188, 77, '_edit_last', '1'),
(189, 77, '_wp_page_template', 'default'),
(190, 77, '_edit_lock', '1359539905:1'),
(191, 79, '_menu_item_type', 'post_type'),
(192, 79, '_menu_item_menu_item_parent', '0'),
(193, 79, '_menu_item_object_id', '77'),
(194, 79, '_menu_item_object', 'page'),
(195, 79, '_menu_item_target', ''),
(196, 79, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-violet";}'),
(197, 79, '_menu_item_xfn', ''),
(198, 79, '_menu_item_url', ''),
(217, 88, '_wp_attached_file', '2013/02/cropped-banniere.png'),
(218, 88, '_wp_attachment_context', 'custom-header'),
(219, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:250;s:4:"file";s:28:"2013/02/cropped-banniere.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-banniere-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"cropped-banniere-300x78.png";s:5:"width";i:300;s:6:"height";i:78;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"cropped-banniere-624x162.png";s:5:"width";i:624;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(220, 88, '_wp_attachment_is_custom_header', 'festival');

-- --------------------------------------------------------

--
-- Structure de la table `festival_posts`
--

CREATE TABLE IF NOT EXISTS `festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Contenu de la table `festival_posts`
--

INSERT INTO `festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-30 08:55:14', '2013-01-30 08:55:14', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-30 10:21:41', '2013-01-30 09:21:41', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-30 08:55:14', '2013-01-30 08:55:14', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~jlacombe/RenduWP/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2013-01-30 10:50:21', '2013-01-30 09:50:21', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2013-01-30 09:55:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-30 09:55:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2013-01-30 09:59:39', '2013-01-30 08:59:39', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'publish', 'closed', 'open', '', 'en-colo', '', '', '2013-01-30 10:50:39', '2013-01-30 09:50:39', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2013-01-30 09:57:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-30 09:57:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2013-01-30 09:59:00', '2013-01-30 08:59:00', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2013-01-30 09:59:00', '2013-01-30 08:59:00', '', 4, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2013-01-30 09:59:39', '2013-01-30 08:59:39', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2013-01-30 09:59:39', '2013-01-30 08:59:39', '', 4, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2013-01-30 10:01:20', '2013-01-30 09:01:20', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline ', '', 'publish', 'closed', 'open', '', 'pauline', '', '', '2013-01-30 10:50:38', '2013-01-30 09:50:38', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2013-01-30 10:00:55', '2013-01-30 09:00:55', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline ', '', 'inherit', 'open', 'open', '', '8-revision', '', '', '2013-01-30 10:00:55', '2013-01-30 09:00:55', '', 8, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=9', 0, 'revision', '', 0),
(10, 1, '2013-01-30 10:02:29', '2013-01-30 09:02:29', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'publish', 'closed', 'open', '', 'omar', '', '', '2013-01-30 10:50:38', '2013-01-30 09:50:38', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=10', 0, 'post', '', 0),
(11, 1, '2013-01-30 10:01:35', '2013-01-30 09:01:35', '', 'Omar', '', 'inherit', 'open', 'open', '', '10-revision', '', '', '2013-01-30 10:01:35', '2013-01-30 09:01:35', '', 10, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-30 10:03:28', '2013-01-30 09:03:28', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'publish', 'closed', 'open', '', 'odile', '', '', '2013-01-30 10:50:38', '2013-01-30 09:50:38', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2013-01-30 10:02:41', '2013-01-30 09:02:41', '', 'Odile', '', 'inherit', 'open', 'open', '', '12-revision', '', '', '2013-01-30 10:02:41', '2013-01-30 09:02:41', '', 12, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2013-01-30 10:04:33', '2013-01-30 09:04:33', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'publish', 'closed', 'open', '', 'os-sapatos-de-aristeu', '', '', '2013-01-30 10:50:37', '2013-01-30 09:50:37', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=14', 0, 'post', '', 0),
(15, 1, '2013-01-30 10:03:44', '2013-01-30 09:03:44', '', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '14-revision', '', '', '2013-01-30 10:03:44', '2013-01-30 09:03:44', '', 14, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2013-01-30 10:05:41', '2013-01-30 09:05:41', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'publish', 'closed', 'open', '', 'cowboy-forever', '', '', '2013-01-30 10:50:37', '2013-01-30 09:50:37', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=16', 0, 'post', '', 0),
(17, 1, '2013-01-30 10:04:50', '2013-01-30 09:04:50', '', 'Cowboy Forever', '', 'inherit', 'open', 'open', '', '16-revision', '', '', '2013-01-30 10:04:50', '2013-01-30 09:04:50', '', 16, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2013-01-30 10:06:39', '2013-01-30 09:06:39', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'publish', 'closed', 'open', '', 'american-boy', '', '', '2013-01-30 10:50:37', '2013-01-30 09:50:37', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=18', 0, 'post', '', 0),
(19, 1, '2013-01-30 10:05:53', '2013-01-30 09:05:53', '', 'American Boy', '', 'inherit', 'open', 'open', '', '18-revision', '', '', '2013-01-30 10:05:53', '2013-01-30 09:05:53', '', 18, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=19', 0, 'revision', '', 0),
(20, 1, '2013-01-30 10:08:06', '2013-01-30 09:08:06', 'It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'closed', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-01-30 10:50:36', '2013-01-30 09:50:36', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=20', 0, 'post', '', 0),
(21, 1, '2013-01-30 10:07:03', '2013-01-30 09:07:03', '', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '20-revision', '', '', '2013-01-30 10:07:03', '2013-01-30 09:07:03', '', 20, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=21', 0, 'revision', '', 0),
(22, 1, '2013-01-30 10:09:16', '2013-01-30 09:09:16', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'Ander', '', 'publish', 'closed', 'open', '', 'ander', '', '', '2013-01-30 10:50:36', '2013-01-30 09:50:36', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2013-01-30 10:08:23', '2013-01-30 09:08:23', '', 'Ander', '', 'inherit', 'open', 'open', '', '22-revision', '', '', '2013-01-30 10:08:23', '2013-01-30 09:08:23', '', 22, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2013-01-30 10:10:21', '2013-01-30 09:10:21', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'publish', 'closed', 'open', '', 'el-nino-pez', '', '', '2013-01-30 10:50:36', '2013-01-30 09:50:36', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2013-01-30 10:09:27', '2013-01-30 09:09:27', '', 'EL NIÑO PEZ', '', 'inherit', 'open', 'open', '', '24-revision', '', '', '2013-01-30 10:09:27', '2013-01-30 09:09:27', '', 24, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2013-01-30 10:11:37', '2013-01-30 09:11:37', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'Can''t think straight ', '', 'publish', 'closed', 'open', '', 'cant-think-straight', '', '', '2013-01-30 10:50:35', '2013-01-30 09:50:35', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2013-01-30 10:10:44', '2013-01-30 09:10:44', '', 'Can''t think straight ', '', 'inherit', 'open', 'open', '', '26-revision', '', '', '2013-01-30 10:10:44', '2013-01-30 09:10:44', '', 26, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2013-01-30 10:13:36', '2013-01-30 09:13:36', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'Can''t think straight ', '', 'inherit', 'open', 'open', '', '26-autosave', '', '', '2013-01-30 10:13:36', '2013-01-30 09:13:36', '', 26, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2013-01-30 10:14:31', '2013-01-30 09:14:31', '', 'I_can''t_think_straight_2', '', 'inherit', 'open', 'open', '', 'i_cant_think_straight_2', '', '', '2013-01-30 10:14:31', '2013-01-30 09:14:31', '', 26, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/I_cant_think_straight_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2013-01-30 10:11:37', '2013-01-30 09:11:37', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'Can''t think straight ', '', 'inherit', 'open', 'open', '', '26-revision-2', '', '', '2013-01-30 10:11:37', '2013-01-30 09:11:37', '', 26, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=30', 0, 'revision', '', 0),
(31, 1, '2013-01-30 10:16:06', '2013-01-30 09:16:06', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'open', 'open', '', '24-autosave', '', '', '2013-01-30 10:16:06', '2013-01-30 09:16:06', '', 24, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-30 10:17:00', '2013-01-30 09:17:00', '', 'EL_NINO_PEZ_1', '', 'inherit', 'open', 'open', '', 'el_nino_pez_1', '', '', '2013-01-30 10:17:00', '2013-01-30 09:17:00', '', 24, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/EL_NINO_PEZ_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2013-01-30 10:10:21', '2013-01-30 09:10:21', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'open', 'open', '', '24-revision-2', '', '', '2013-01-30 10:10:21', '2013-01-30 09:10:21', '', 24, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2013-01-30 10:17:24', '2013-01-30 09:17:24', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1', '', '', '2013-01-30 10:17:24', '2013-01-30 09:17:24', '', 22, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2013-01-30 10:09:16', '2013-01-30 09:09:16', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'Ander', '', 'inherit', 'open', 'open', '', '22-revision-2', '', '', '2013-01-30 10:09:16', '2013-01-30 09:09:16', '', 22, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2013-01-30 10:17:47', '2013-01-30 09:17:47', '', 'ItsElementaryGBan', '', 'inherit', 'open', 'open', '', 'itselementarygban', '', '', '2013-01-30 10:17:47', '2013-01-30 09:17:47', '', 20, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2013-01-30 10:08:06', '2013-01-30 09:08:06', 'It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '20-revision-2', '', '', '2013-01-30 10:08:06', '2013-01-30 09:08:06', '', 20, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2013-01-30 10:18:45', '2013-01-30 09:18:45', '', 'COWBOY_FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy_forever', '', '', '2013-01-30 10:18:45', '2013-01-30 09:18:45', '', 16, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/COWBOY_FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2013-01-30 10:05:41', '2013-01-30 09:05:41', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'inherit', 'open', 'open', '', '16-revision-2', '', '', '2013-01-30 10:05:41', '2013-01-30 09:05:41', '', 16, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2013-01-30 10:19:10', '2013-01-30 09:19:10', '', 'Os_sapatos_de_Aristeu', '', 'inherit', 'open', 'open', '', 'os_sapatos_de_aristeu', '', '', '2013-01-30 10:19:10', '2013-01-30 09:19:10', '', 14, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/Os_sapatos_de_Aristeu.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2013-01-30 10:04:33', '2013-01-30 09:04:33', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '14-revision-2', '', '', '2013-01-30 10:04:33', '2013-01-30 09:04:33', '', 14, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-01-30 10:19:30', '2013-01-30 09:19:30', '', 'Odile_', '', 'inherit', 'open', 'open', '', 'odile_', '', '', '2013-01-30 10:19:30', '2013-01-30 09:19:30', '', 12, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/Odile_.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2013-01-30 10:03:28', '2013-01-30 09:03:28', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'open', 'open', '', '12-revision-2', '', '', '2013-01-30 10:03:28', '2013-01-30 09:03:28', '', 12, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=43', 0, 'revision', '', 0),
(44, 1, '2013-01-30 10:20:15', '2013-01-30 09:20:15', '', 'OMAR_', '', 'inherit', 'open', 'open', '', 'omar_', '', '', '2013-01-30 10:20:15', '2013-01-30 09:20:15', '', 10, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2013-01-30 10:02:29', '2013-01-30 09:02:29', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '10-revision-2', '', '', '2013-01-30 10:02:29', '2013-01-30 09:02:29', '', 10, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=45', 0, 'revision', '', 0),
(46, 1, '2013-01-30 10:20:50', '2013-01-30 09:20:50', '', 'PAULINE_1', '', 'inherit', 'open', 'open', '', 'pauline_1', '', '', '2013-01-30 10:20:50', '2013-01-30 09:20:50', '', 8, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2013-01-30 10:01:20', '2013-01-30 09:01:20', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline ', '', 'inherit', 'open', 'open', '', '8-revision-2', '', '', '2013-01-30 10:01:20', '2013-01-30 09:01:20', '', 8, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2013-01-30 10:21:22', '2013-01-30 09:21:22', '', 'EN_COLO', '', 'inherit', 'open', 'open', '', 'en_colo', '', '', '2013-01-30 10:21:22', '2013-01-30 09:21:22', '', 4, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/01/EN_COLO.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2013-01-30 09:59:50', '2013-01-30 08:59:50', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-3', '', '', '2013-01-30 09:59:50', '2013-01-30 08:59:50', '', 4, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-30 08:55:14', '2013-01-30 08:55:14', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2013-01-30 08:55:14', '2013-01-30 08:55:14', '', 1, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-01-30 10:22:48', '2013-01-30 09:22:48', ' ', '', '', 'publish', 'open', 'open', '', '51', '', '', '2013-01-30 10:54:11', '2013-01-30 09:54:11', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2013-01-30 10:22:48', '2013-01-30 09:22:48', ' ', '', '', 'publish', 'open', 'open', '', '52', '', '', '2013-01-30 10:54:12', '2013-01-30 09:54:12', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=52', 3, 'nav_menu_item', '', 0),
(53, 1, '2013-01-30 10:23:46', '2013-01-30 09:23:46', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à 23 l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'closed', 'open', '', 'edito', '', '', '2013-01-30 10:50:21', '2013-01-30 09:50:21', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?page_id=53', 0, 'page', '', 0),
(54, 1, '2013-01-30 10:23:04', '2013-01-30 09:23:04', '', 'Edito', '', 'inherit', 'open', 'open', '', '53-revision', '', '', '2013-01-30 10:23:04', '2013-01-30 09:23:04', '', 53, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2013-01-30 10:24:33', '2013-01-30 09:24:33', '- La Région Centre\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'publish', 'closed', 'open', '', 'remerciements', '', '', '2013-01-30 10:50:21', '2013-01-30 09:50:21', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?page_id=55', 0, 'page', '', 0),
(56, 1, '2013-01-30 10:24:00', '2013-01-30 09:24:00', '', 'Agenda', '', 'inherit', 'open', 'open', '', '55-revision', '', '', '2013-01-30 10:24:00', '2013-01-30 09:24:00', '', 55, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-01-30 10:24:53', '2013-01-30 09:24:53', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'publish', 'closed', 'open', '', 'partenaires', '', '', '2013-01-30 10:50:21', '2013-01-30 09:50:21', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?page_id=57', 0, 'page', '', 0),
(58, 1, '2013-01-30 10:24:51', '2013-01-30 09:24:51', '- Région Centre\n- Orléans\n- Cinéma des Carmes\n- GAGL\n- Têtu\n- La dixième MUSE\n- CiteGay\n- Yagg.com\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '57-revision', '', '', '2013-01-30 10:24:51', '2013-01-30 09:24:51', '', 57, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-30 10:27:32', '2013-01-30 09:27:32', ' ', '', '', 'publish', 'open', 'open', '', '59', '', '', '2013-01-30 10:54:12', '2013-01-30 09:54:12', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=59', 5, 'nav_menu_item', '', 0),
(60, 1, '2013-01-30 10:27:32', '2013-01-30 09:27:32', ' ', '', '', 'publish', 'open', 'open', '', '60', '', '', '2013-01-30 10:54:12', '2013-01-30 09:54:12', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=60', 4, 'nav_menu_item', '', 0),
(61, 1, '2013-01-30 10:27:32', '2013-01-30 09:27:32', ' ', '', '', 'publish', 'open', 'open', '', '61', '', '', '2013-01-30 10:54:11', '2013-01-30 09:54:11', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2013-01-30 10:23:46', '2013-01-30 09:23:46', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à 23 l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '53-revision-2', '', '', '2013-01-30 10:23:46', '2013-01-30 09:23:46', '', 53, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=62', 0, 'revision', '', 0),
(63, 1, '2013-01-30 08:55:14', '2013-01-30 08:55:14', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~jlacombe/RenduWP/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-30 08:55:14', '2013-01-30 08:55:14', '', 2, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=63', 0, 'revision', '', 0),
(64, 1, '2013-01-30 10:24:53', '2013-01-30 09:24:53', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '57-revision-2', '', '', '2013-01-30 10:24:53', '2013-01-30 09:24:53', '', 57, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=64', 0, 'revision', '', 0),
(65, 1, '2013-01-30 10:24:33', '2013-01-30 09:24:33', '- La Région Centre\r\n- La Mairie d''Orléans\r\n- Le cinéma des Carmes\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n- Citégay\r\n- La dixième Muse\r\n- Têtu\r\n- Yagg.com\r\n- France Bleu Orléans\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n- Cineffable\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '55-revision-2', '', '', '2013-01-30 10:24:33', '2013-01-30 09:24:33', '', 55, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2013-01-30 10:14:58', '2013-01-30 09:14:58', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'Can''t think straight ', '', 'inherit', 'open', 'open', '', '26-revision-3', '', '', '2013-01-30 10:14:58', '2013-01-30 09:14:58', '', 26, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2013-01-30 10:17:09', '2013-01-30 09:17:09', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'open', 'open', '', '24-revision-3', '', '', '2013-01-30 10:17:09', '2013-01-30 09:17:09', '', 24, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=67', 0, 'revision', '', 0),
(68, 1, '2013-01-30 10:17:31', '2013-01-30 09:17:31', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'Ander', '', 'inherit', 'open', 'open', '', '22-revision-3', '', '', '2013-01-30 10:17:31', '2013-01-30 09:17:31', '', 22, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=68', 0, 'revision', '', 0),
(69, 1, '2013-01-30 10:17:54', '2013-01-30 09:17:54', 'It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '20-revision-3', '', '', '2013-01-30 10:17:54', '2013-01-30 09:17:54', '', 20, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=69', 0, 'revision', '', 0),
(70, 1, '2013-01-30 10:06:39', '2013-01-30 09:06:39', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'open', 'open', '', '18-revision-2', '', '', '2013-01-30 10:06:39', '2013-01-30 09:06:39', '', 18, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=70', 0, 'revision', '', 0),
(71, 1, '2013-01-30 10:18:51', '2013-01-30 09:18:51', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever', '', 'inherit', 'open', 'open', '', '16-revision-3', '', '', '2013-01-30 10:18:51', '2013-01-30 09:18:51', '', 16, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=71', 0, 'revision', '', 0),
(72, 1, '2013-01-30 10:19:15', '2013-01-30 09:19:15', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '14-revision-3', '', '', '2013-01-30 10:19:15', '2013-01-30 09:19:15', '', 14, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=72', 0, 'revision', '', 0),
(73, 1, '2013-01-30 10:19:58', '2013-01-30 09:19:58', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'open', 'open', '', '12-revision-3', '', '', '2013-01-30 10:19:58', '2013-01-30 09:19:58', '', 12, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=73', 0, 'revision', '', 0),
(74, 1, '2013-01-30 10:20:30', '2013-01-30 09:20:30', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '10-revision-3', '', '', '2013-01-30 10:20:30', '2013-01-30 09:20:30', '', 10, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=74', 0, 'revision', '', 0),
(75, 1, '2013-01-30 10:20:58', '2013-01-30 09:20:58', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline ', '', 'inherit', 'open', 'open', '', '8-revision-3', '', '', '2013-01-30 10:20:58', '2013-01-30 09:20:58', '', 8, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=75', 0, 'revision', '', 0),
(76, 1, '2013-01-30 10:21:29', '2013-01-30 09:21:29', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-4', '', '', '2013-01-30 10:21:29', '2013-01-30 09:21:29', '', 4, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=76', 0, 'revision', '', 0),
(77, 1, '2013-01-30 10:53:01', '2013-01-30 09:53:01', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans...\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n<span style="text-decoration: underline;">Equipe</span> :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc\r\n\r\nImpression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com\r\n\r\nwww.festivaldunbordalautre.com', 'Infos', '', 'publish', 'closed', 'open', '', 'infos', '', '', '2013-01-30 10:59:29', '2013-01-30 09:59:29', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?page_id=77', 0, 'page', '', 0),
(78, 1, '2013-01-30 10:53:01', '2013-01-30 09:53:01', '', 'Infos', '', 'inherit', 'open', 'open', '', '77-revision', '', '', '2013-01-30 10:53:01', '2013-01-30 09:53:01', '', 77, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=78', 0, 'revision', '', 0),
(79, 1, '2013-01-30 10:54:12', '2013-01-30 09:54:12', ' ', '', '', 'publish', 'open', 'open', '', '79', '', '', '2013-01-30 10:54:12', '2013-01-30 09:54:12', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=79', 6, 'nav_menu_item', '', 0),
(80, 1, '2013-01-30 10:53:25', '2013-01-30 09:53:25', '', 'Infos', '', 'inherit', 'open', 'open', '', '77-revision-2', '', '', '2013-01-30 10:53:25', '2013-01-30 09:53:25', '', 77, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=80', 0, 'revision', '', 0);
INSERT INTO `festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(81, 1, '2013-01-30 10:57:59', '2013-01-30 09:57:59', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\nTarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\n\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans... Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos', '', 'inherit', 'open', 'open', '', '77-autosave', '', '', '2013-01-30 10:57:59', '2013-01-30 09:57:59', '', 77, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2013-01-30 10:56:58', '2013-01-30 09:56:58', 'ieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans... Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos', '', 'inherit', 'open', 'open', '', '77-revision-3', '', '', '2013-01-30 10:56:58', '2013-01-30 09:56:58', '', 77, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=82', 0, 'revision', '', 0),
(83, 1, '2013-01-30 10:58:49', '2013-01-30 09:58:49', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\nTarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\n\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans... Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos', '', 'inherit', 'open', 'open', '', '77-revision-4', '', '', '2013-01-30 10:58:49', '2013-01-30 09:58:49', '', 77, 'http://localhost/~jlacombe/RenduWP/wordpress/?p=83', 0, 'revision', '', 0),
(88, 1, '2013-02-05 10:26:15', '2013-02-05 09:26:15', 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/02/cropped-banniere.png', 'cropped-banniere.png', '', 'inherit', 'closed', 'open', '', 'cropped-banniere-png', '', '', '2013-02-05 10:26:15', '2013-02-05 09:26:15', '', 0, 'http://localhost/~jlacombe/RenduWP/wordpress/wp-content/uploads/2013/02/cropped-banniere.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Structure de la table `festival_terms`
--

CREATE TABLE IF NOT EXISTS `festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `festival_terms`
--

INSERT INTO `festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts-métrages', 'courts-metrages', 0),
(4, 'monMenu', 'monmenu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `festival_term_relationships`
--

INSERT INTO `festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 3, 0),
(8, 3, 0),
(10, 3, 0),
(12, 3, 0),
(14, 3, 0),
(16, 3, 0),
(18, 3, 0),
(20, 2, 0),
(22, 2, 0),
(24, 2, 0),
(26, 2, 0),
(51, 4, 0),
(52, 4, 0),
(59, 4, 0),
(60, 4, 0),
(61, 4, 0),
(79, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `festival_term_taxonomy`
--

INSERT INTO `festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `festival_usermeta`
--

INSERT INTO `festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'lacombe'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'festival_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'closedpostboxes_post', 'a:0:{}'),
(16, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(17, 1, 'festival_user-settings', 'hidetb=1&libraryContent=browse&align=none&imgsize=medium&urlbutton=post'),
(18, 1, 'festival_user-settings-time', '1359537527'),
(19, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(21, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Structure de la table `festival_users`
--

CREATE TABLE IF NOT EXISTS `festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `festival_users`
--

INSERT INTO `festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lacombe', '$P$BXUyEwOR0mktbHpF/ZjZ.673oO3ILY.', 'lacombe', 'ptitdje@hotmail.com', '', '2013-01-30 08:55:13', '', 0, 'lacombe');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
