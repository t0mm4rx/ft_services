-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql-svc:3306
-- Généré le :  ven. 07 fév. 2020 à 13:03
-- Version du serveur :  10.4.12-MariaDB
-- Version de PHP :  7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1581080125');

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un super commentaire', 'user1@services.42', '', '', '2020-02-07 10:57:57', '2020-02-07 10:57:57', 'Voici un super commentaire', 0, 'trash', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://IP:5050', 'yes'),
(2, 'home', 'http://IP:5050', 'yes'),
(3, 'blogname', 'Ft_services', 'yes'),
(4, 'blogdescription', 'by rchallie', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'deadmapper@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '8', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1596625076', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1581073090;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581073091;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581073095;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581073097;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581079244;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', '*?.6s]K#(mN1@_Bcqm^;-g)#SYv|<;p&6m c;E;I^cM:sp=gi~~1nf0R&S4~Ucfe', 'no'),
(111, 'nonce_salt', '&&{w=bPdwWJddxy|Q;/Ge1`5,d8#HLB5k@./wEF<:IP>+8**HcIk_RNZ/*6eq}uK', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, '_transient_doing_cron', '1581080553.4645609855651855468750', 'yes'),
(116, 'auth_key', '_=Kyr>@+?NhevQI@$${+g3zl,4I;l6%m93Gd2fXF)cn1s>Mn![~^:D4kO4_gFjB#', 'no'),
(117, 'auth_salt', 'N0S$fQJ.SoY!})c=iYKORhO=~p2`=8Ye~oOI2n4H1ct-ZKf^j{af=:hlRC^66~sE', 'no'),
(118, 'logged_in_key', 'poH%B_Uk[4q@QGW^]_Dqj9VdnP6`U5sV>MTl(A=;lkx`Nr#6O@eq8r.Yr(ku;E69', 'no'),
(119, 'logged_in_salt', '[i+Mh>qR8M/Kvt:jN;`MH<OF=kBGP|#UA<R(%g&7X#y[hg`/o@a7/}tvq3,i.d|K', 'no'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1581073095;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581073095;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581073096;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_timeout_browser_398daecdf8bdde06b04de47a81f670e0', '1581677896', 'no'),
(126, '_site_transient_browser_398daecdf8bdde06b04de47a81f670e0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"79.0.3945.88\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_9ebfd0137bc00e03d9dbfb76ffb119e8', '1581677897', 'no'),
(128, '_site_transient_php_check_9ebfd0137bc00e03d9dbfb76ffb119e8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1581123765', 'no'),
(130, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:3:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Genève\";s:3:\"url\";s:33:\"https://2020.geneve.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-03-20 00:00:00\";s:8:\"end_date\";s:19:\"2020-03-21 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Genève, Suisse\";s:7:\"country\";s:2:\"CH\";s:8:\"latitude\";d:46.2204608;s:9:\"longitude\";d:6.0986829;}}i:1;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:25:\"WordCamp Antwerp, Belgium\";s:3:\"url\";s:34:\"https://2020.antwerp.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-03-27 00:00:00\";s:8:\"end_date\";s:19:\"2020-03-29 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Antwerp, Belgium\";s:7:\"country\";s:2:\"BE\";s:8:\"latitude\";d:51.2234817;s:9:\"longitude\";d:4.4101775;}}i:2;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:19:\"WordCamp Paris 2020\";s:3:\"url\";s:31:\"https://2020.paris.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-04-17 00:00:00\";s:8:\"end_date\";s:19:\"2020-04-17 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:5:\"Paris\";s:7:\"country\";s:2:\"FR\";s:8:\"latitude\";d:48.883588;s:9:\"longitude\";d:2.3095841;}}}}', 'no'),
(131, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1581116299', 'no'),
(132, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div><div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div>', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(134, 'theme_mods_twentytwenty', 'a:19:{s:18:\"custom_css_post_id\";i:-1;s:11:\"retina_logo\";b:0;s:16:\"background_color\";s:6:\"2e2530\";s:30:\"header_footer_background_color\";s:7:\"#04001e\";s:17:\"accent_hue_active\";s:6:\"custom\";s:10:\"accent_hue\";i:191;s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:5:{s:4:\"text\";s:7:\"#ffffff\";s:6:\"accent\";s:7:\"#049bbc\";s:10:\"background\";s:7:\"#2e2530\";s:7:\"borders\";s:7:\"#49394b\";s:9:\"secondary\";s:7:\"#a397a4\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#ffffff\";s:6:\"accent\";s:7:\"#05819d\";s:10:\"background\";s:7:\"#04001e\";s:7:\"borders\";s:7:\"#02008e\";s:9:\"secondary\";s:7:\"#9190da\";}}s:20:\"enable_header_search\";b:1;s:15:\"show_author_bio\";b:1;s:12:\"blog_content\";s:4:\"full\";s:39:\"cover_template_overlay_background_color\";s:7:\"#addd00\";s:30:\"cover_template_overlay_opacity\";i:0;s:16:\"background_image\";s:0:\"\";s:17:\"background_preset\";s:6:\"custom\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:3:\"top\";s:15:\"background_size\";s:7:\"contain\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_attachment\";s:6:\"scroll\";}', 'yes'),
(137, '_site_transient_timeout_theme_roots', '1581081301', 'no'),
(138, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(139, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_edit_lock', '1581079022:1'),
(4, 2, '_edit_lock', '1581079072:1'),
(5, 1, '_edit_lock', '1581080335:1'),
(6, 1, '_encloseme', '1'),
(7, 6, '_edit_lock', '1581079394:1'),
(8, 7, '_wp_attached_file', '2020/02/images.jpeg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:19:\"2020/02/images.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 8, '_wp_attached_file', '2020/02/cropped-images.jpeg'),
(11, 8, '_wp_attachment_context', 'site-icon'),
(12, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2020/02/cropped-images.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-images-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-images-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-images-270x270.jpeg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-images-192x192.jpeg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-images-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-images-32x32.jpeg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 6, '_wp_trash_meta_status', 'publish'),
(14, 6, '_wp_trash_meta_time', '1581079444'),
(15, 9, '_edit_lock', '1581079330:1'),
(16, 10, '_edit_lock', '1581079547:1'),
(17, 10, '_customize_restore_dismissed', '1'),
(18, 11, '_wp_trash_meta_status', 'publish'),
(19, 11, '_wp_trash_meta_time', '1581079623'),
(20, 12, '_edit_lock', '1581079860:1'),
(21, 13, '_wp_attached_file', '2020/02/wall-scaled.jpg'),
(22, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1193;s:4:\"file\";s:23:\"2020/02/wall-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"wall-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"wall-1024x477.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"wall-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"wall-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"wall-1536x716.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:716;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"wall-2048x954.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:954;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"wall-1200x559.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"twentytwenty-fullscreen\";a:4:{s:4:\"file\";s:17:\"wall-1980x923.jpg\";s:5:\"width\";i:1980;s:6:\"height\";i:923;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"wall.jpg\";}'),
(23, 13, '_wp_attachment_is_custom_background', 'twentytwenty'),
(24, 14, '_wp_attached_file', '2020/02/bat.jpg'),
(25, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:744;s:6:\"height\";i:448;s:4:\"file\";s:15:\"2020/02/bat.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bat-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 14, '_wp_attachment_is_custom_background', 'twentytwenty'),
(27, 12, '_wp_trash_meta_status', 'publish'),
(28, 12, '_wp_trash_meta_time', '1581079908');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 2, '2020-02-07 10:57:57', '2020-02-07 10:57:57', '<!-- wp:paragraph -->\n<p>Bienvenue sur mon ft_services !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On vas rajouter un lorem ipsum histoire de...<br>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->', 'ft_services', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-02-07 13:01:18', '2020-02-07 13:01:18', '', 0, 'http://IP:5050/?p=1', 0, 'post', '', 0),
(2, 1, '2020-02-07 10:57:57', '2020-02-07 10:57:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://IP:5050/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-02-07 10:57:57', '2020-02-07 10:57:57', '', 0, 'http://IP:5050/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-02-07 10:57:57', '2020-02-07 10:57:57', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://IP:5050.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-02-07 10:57:57', '2020-02-07 10:57:57', '', 0, 'http://IP:5050/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-02-07 10:58:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-07 10:58:17', '0000-00-00 00:00:00', '', 0, 'http://IP:5050/?p=4', 0, 'post', '', 0),
(5, 1, '2020-02-07 12:40:44', '2020-02-07 12:40:44', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'ft_services', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-02-07 12:40:44', '2020-02-07 12:40:44', '', 1, 'http://IP:5050/?p=5', 0, 'revision', '', 0),
(6, 1, '2020-02-07 12:44:04', '2020-02-07 12:44:04', '{\n    \"blogname\": {\n        \"value\": \"Ft_services\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:42:09\"\n    },\n    \"blogdescription\": {\n        \"value\": \"by rchallie\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:42:09\"\n    },\n    \"twentytwenty::retina_logo\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:42:09\"\n    },\n    \"site_icon\": {\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:44:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e39d61b4-014b-43c0-bebd-f80ec6425a4c', '', '', '2020-02-07 12:44:04', '2020-02-07 12:44:04', '', 0, 'http://IP:5050/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2020-02-07 12:43:39', '2020-02-07 12:43:39', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2020-02-07 12:43:39', '2020-02-07 12:43:39', '', 0, 'http://IP:5050/wp-content/uploads/2020/02/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2020-02-07 12:43:51', '2020-02-07 12:43:51', 'http://IP:5050/wp-content/uploads/2020/02/cropped-images.jpeg', 'cropped-images.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-images-jpeg', '', '', '2020-02-07 12:43:51', '2020-02-07 12:43:51', '', 0, 'http://IP:5050/wp-content/uploads/2020/02/cropped-images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2020-02-07 12:44:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-07 12:44:33', '0000-00-00 00:00:00', '', 0, 'http://IP:5050/?p=9', 0, 'post', '', 0),
(10, 1, '2020-02-07 12:45:36', '0000-00-00 00:00:00', '{\n    \"twentytwenty::background_color\": {\n        \"value\": \"#c7d6db\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:45:36\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#b70a38\",\n                \"background\": \"#c7d6db\",\n                \"borders\": \"#a4b9c5\",\n                \"secondary\": \"#4a565d\"\n            },\n            \"header-footer\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#cd2653\",\n                \"secondary\": \"#6d6d6d\",\n                \"borders\": \"#dcd7ca\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:45:36\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '5a180326-62fd-4dc5-a6ee-2d37311e03c0', '', '', '2020-02-07 12:45:36', '0000-00-00 00:00:00', '', 0, 'http://IP:5050/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2020-02-07 12:47:03', '2020-02-07 12:47:03', '{\n    \"twentytwenty::background_color\": {\n        \"value\": \"#2e2530\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:03\"\n    },\n    \"twentytwenty::header_footer_background_color\": {\n        \"value\": \"#04001e\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:03\"\n    },\n    \"twentytwenty::accent_hue_active\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:03\"\n    },\n    \"twentytwenty::accent_hue\": {\n        \"value\": 191,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:03\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#ffffff\",\n                \"accent\": \"#049bbc\",\n                \"background\": \"#2e2530\",\n                \"borders\": \"#49394b\",\n                \"secondary\": \"#a397a4\"\n            },\n            \"header-footer\": {\n                \"text\": \"#ffffff\",\n                \"accent\": \"#05819d\",\n                \"background\": \"#04001e\",\n                \"borders\": \"#02008e\",\n                \"secondary\": \"#9190da\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '43772967-663d-4081-9f86-9c75d2cb2461', '', '', '2020-02-07 12:47:03', '2020-02-07 12:47:03', '', 0, 'http://IP:5050/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2020-02-07 12:51:48', '2020-02-07 12:51:48', '{\n    \"twentytwenty::enable_header_search\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:54\"\n    },\n    \"twentytwenty::show_author_bio\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:54\"\n    },\n    \"twentytwenty::blog_content\": {\n        \"value\": \"full\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:54\"\n    },\n    \"twentytwenty::cover_template_overlay_background_color\": {\n        \"value\": \"#addd00\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:54\"\n    },\n    \"twentytwenty::cover_template_overlay_opacity\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:47:54\"\n    },\n    \"twentytwenty::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:51:48\"\n    },\n    \"twentytwenty::background_preset\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:48:54\"\n    },\n    \"twentytwenty::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:49:31\"\n    },\n    \"twentytwenty::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:48:54\"\n    },\n    \"twentytwenty::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:50:31\"\n    },\n    \"twentytwenty::background_repeat\": {\n        \"value\": \"repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:48:54\"\n    },\n    \"twentytwenty::background_attachment\": {\n        \"value\": \"scroll\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 12:48:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e4331bd-eb5c-4680-883d-6f5a3bfd008c', '', '', '2020-02-07 12:51:48', '2020-02-07 12:51:48', '', 0, 'http://IP:5050/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2020-02-07 12:48:21', '2020-02-07 12:48:21', '', 'wall', '', 'inherit', 'open', 'closed', '', 'wall', '', '', '2020-02-07 12:48:21', '2020-02-07 12:48:21', '', 0, 'http://IP:5050/wp-content/uploads/2020/02/wall.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-02-07 12:50:24', '2020-02-07 12:50:24', '', 'bat', '', 'inherit', 'open', 'closed', '', 'bat', '', '', '2020-02-07 12:50:24', '2020-02-07 12:50:24', '', 0, 'http://IP:5050/wp-content/uploads/2020/02/bat.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-02-07 12:53:37', '2020-02-07 12:53:37', '<!-- wp:paragraph -->\n<p>Bienvenue sur mon ft_services !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On vas rajouter un lorem ipsum histoire de...<br>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->', 'ft_services', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-02-07 12:53:37', '2020-02-07 12:53:37', '', 1, 'http://IP:5050/?p=15', 0, 'revision', '', 0),
(16, 1, '2020-02-07 13:00:33', '2020-02-07 13:00:33', '<!-- wp:paragraph -->\n<p>Bienvenue sur mon ft_services !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On vas rajouter un lorem ipsum histoire de...<br>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->', 'ft_services', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2020-02-07 13:00:33', '2020-02-07 13:00:33', '', 1, 'http://IP:5050/?p=16', 0, 'revision', '', 0),
(17, 2, '2020-02-07 13:02:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-07 13:02:44', '0000-00-00 00:00:00', '', 0, 'http://IP:5050/?p=17', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Welcome', 'welcome', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'test'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 2, 'nickname', 'admin1'),
(20, 2, 'first_name', 'Admin'),
(21, 2, 'last_name', 'Services'),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(31, 2, 'wp_user_level', '10'),
(32, 2, 'dismissed_wp_pointers', ''),
(33, 3, 'nickname', 'user1'),
(34, 3, 'first_name', 'User1'),
(35, 3, 'last_name', 'Services'),
(36, 3, 'description', ''),
(37, 3, 'rich_editing', 'true'),
(38, 3, 'syntax_highlighting', 'true'),
(39, 3, 'comment_shortcuts', 'false'),
(40, 3, 'admin_color', 'fresh'),
(41, 3, 'use_ssl', '0'),
(42, 3, 'show_admin_bar_front', 'true'),
(43, 3, 'locale', ''),
(44, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(45, 3, 'wp_user_level', '0'),
(46, 3, 'dismissed_wp_pointers', ''),
(47, 4, 'nickname', 'user2'),
(48, 4, 'first_name', 'User2'),
(49, 4, 'last_name', 'Services'),
(50, 4, 'description', ''),
(51, 4, 'rich_editing', 'true'),
(52, 4, 'syntax_highlighting', 'true'),
(53, 4, 'comment_shortcuts', 'false'),
(54, 4, 'admin_color', 'fresh'),
(55, 4, 'use_ssl', '0'),
(56, 4, 'show_admin_bar_front', 'true'),
(57, 4, 'locale', ''),
(58, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(59, 4, 'wp_user_level', '0'),
(60, 4, 'dismissed_wp_pointers', ''),
(61, 5, 'nickname', 'user3'),
(62, 5, 'first_name', 'User3'),
(63, 5, 'last_name', 'Services'),
(64, 5, 'description', ''),
(65, 5, 'rich_editing', 'true'),
(66, 5, 'syntax_highlighting', 'true'),
(67, 5, 'comment_shortcuts', 'false'),
(68, 5, 'admin_color', 'fresh'),
(69, 5, 'use_ssl', '0'),
(70, 5, 'show_admin_bar_front', 'true'),
(71, 5, 'locale', ''),
(72, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(73, 5, 'wp_user_level', '0'),
(74, 5, 'dismissed_wp_pointers', ''),
(75, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(76, 1, 'wp_user-settings-time', '1581079468'),
(77, 2, 'session_tokens', 'a:1:{s:64:\"49401427701017bca6c6368e3e6990f40eb8c55a25e6e05bb9c94c227662adf2\";a:4:{s:10:\"expiration\";i:1581253364;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1581080564;}}'),
(78, 2, 'wp_dashboard_quick_press_last_post_id', '17'),
(79, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(2, 'admin', '$P$Bhns7.Od1LRaQlAS4sEt.JW5KyHWhH1', 'admin', 'admin@services.42', '', '2020-02-07 11:00:17', '', 0, 'Admin Services'),
(3, 'user1', '$P$B8L/nCUHjPz8/BmbGv.UYT8XDiu5LG/', 'user1', 'user1@services.42', '', '2020-02-07 11:21:56', '', 0, 'User1 Services'),
(4, 'user2', '$P$BW07BtB0B6DV1jMh7sG/FGB40yaPsF.', 'user2', 'user2@services.42', '', '2020-02-07 11:24:31', '', 0, 'User2 Services'),
(5, 'user3', '$P$BYk30Cp/ILESTe3HVr58JMsAAkXe0w.', 'user3', 'user3@services.42', '', '2020-02-07 11:25:25', '', 0, 'User3 Services');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
