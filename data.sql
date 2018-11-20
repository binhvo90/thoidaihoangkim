-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 21, 2018 at 12:41 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `thoidaihoangkim`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-27 06:27:38', '2018-10-27 06:27:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_masterslider_options`
--

CREATE TABLE `wp_masterslider_options` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `option_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_masterslider_options`
--

INSERT INTO `wp_masterslider_options` (`ID`, `option_name`, `option_value`) VALUES
(1, 'masterslider_custom_css_ver', '2.4'),
(2, 'master-slider-notice-installtion-time', '1541685505');

-- --------------------------------------------------------

--
-- Table structure for table `wp_masterslider_sliders`
--

CREATE TABLE `wp_masterslider_sliders` (
  `ID` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slides_num` smallint(5) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_styles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fonts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_masterslider_sliders`
--

INSERT INTO `wp_masterslider_sliders` (`ID`, `title`, `type`, `slides_num`, `date_created`, `date_modified`, `params`, `custom_styles`, `custom_fonts`, `status`) VALUES
(1, 'Simple Autoplay Slider', 'custom', 10, '2018-11-08 13:59:22', '2018-11-08 14:14:56', 'eyJtZXRhIjp7IlNldHRpbmdzIWlkcyI6IjEiLCJTZXR0aW5ncyFuZXh0SWQiOjIsIlNsaWRlIWlkcyI6IjEsMiwzLDQsNSw2LDcsOSwxMiwxNCIsIlNsaWRlIW5leHRJZCI6MTUsIkNvbnRyb2whaWRzIjoiMSw0LDUsNiw3IiwiQ29udHJvbCFuZXh0SWQiOjh9LCJNU1BhbmVsLlNldHRpbmdzIjp7IjEiOiJ7XCJpZFwiOlwiMVwiLFwic25hcHBpbmdcIjp0cnVlLFwiZGlzYWJsZUNvbnRyb2xzXCI6ZmFsc2UsXCJuYW1lXCI6XCJTaW1wbGUgQXV0b3BsYXkgU2xpZGVyXCIsXCJ3aWR0aFwiOjEyMDAsXCJoZWlnaHRcIjo3MjAsXCJ3cmFwcGVyV2lkdGhcIjo4MDAsXCJ3cmFwcGVyV2lkdGhVbml0XCI6XCJweFwiLFwiYXV0b0Nyb3BcIjpmYWxzZSxcInR5cGVcIjpcImN1c3RvbVwiLFwic2xpZGVySWRcIjpcIjFcIixcImVuYWJsZU92ZXJsYXlMYXllcnNcIjp0cnVlLFwibGF5b3V0XCI6XCJmdWxsd2lkdGhcIixcImF1dG9IZWlnaHRcIjp0cnVlLFwidHJWaWV3XCI6XCJiYXNpY1wiLFwic3BlZWRcIjoyMCxcInNwYWNlXCI6MCxcInN0YXJ0XCI6MSxcImdyYWJDdXJzb3JcIjp0cnVlLFwic3dpcGVcIjp0cnVlLFwibW91c2VcIjp0cnVlLFwid2hlZWxcIjpmYWxzZSxcImF1dG9wbGF5XCI6dHJ1ZSxcImxvb3BcIjp0cnVlLFwic2h1ZmZsZVwiOmZhbHNlLFwicHJlbG9hZFwiOlwiLTFcIixcIm92ZXJQYXVzZVwiOnRydWUsXCJlbmRQYXVzZVwiOmZhbHNlLFwiaGlkZUxheWVyc1wiOmZhbHNlLFwiZGlyXCI6XCJoXCIsXCJwYXJhbGxheE1vZGVcIjpcInN3aXBlXCIsXCJ1c2VEZWVwTGlua1wiOmZhbHNlLFwiZGVlcExpbmtUeXBlXCI6XCJwYXRoXCIsXCJzY3JvbGxQYXJhbGxheE1vdmVcIjozMCxcInNjcm9sbFBhcmFsbGF4QkdNb3ZlXCI6NTAsXCJzY3JvbGxQYXJhbGxheEZhZGVcIjp0cnVlLFwiY2VudGVyQ29udHJvbHNcIjp0cnVlLFwiaW5zdGFudFNob3dMYXllcnNcIjpmYWxzZSxcImNsYXNzTmFtZVwiOlwiXCIsXCJiZ0NvbG9yXCI6XCIjMDAwMDAwXCIsXCJza2luXCI6XCJtcy1za2luLWxpZ2h0LTNcIixcIm1zVGVtcGxhdGVcIjpcImN1c3RvbVwiLFwibXNUZW1wbGF0ZUNsYXNzXCI6XCJcIixcInVzZWRGb250c1wiOlwiXCJ9In0sIk1TUGFuZWwuU2xpZGUiOnsiMSI6IntcImlkXCI6XCIxXCIsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTIvMTAvMTIxLTE1MHgxNTAuanBnXCIsXCJvcmRlclwiOjQsXCJiZ1wiOlwiLzIwMTIvMTAvMTIxLmpwZ1wiLFwiZHVyYXRpb25cIjozLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjp0cnVlLFwiYmd2X211dGVcIjp0cnVlLFwiYmd2X2F1dG9wYXVzZVwiOmZhbHNlLFwibGF5ZXJfaWRzXCI6W119IiwiMiI6IntcImlkXCI6MixcInRpbWVsaW5lX2hcIjoyMDAsXCJiZ1RodW1iXCI6XCIvMjAxMi8xMC8yLTE1MHgxNTAuanBnXCIsXCJvcmRlclwiOjIsXCJiZ1wiOlwiLzIwMTIvMTAvMi5qcGdcIixcImR1cmF0aW9uXCI6MyxcImZpbGxNb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfZmlsbG1vZGVcIjpcImZpbGxcIixcImJndl9sb29wXCI6dHJ1ZSxcImJndl9tdXRlXCI6dHJ1ZSxcImJndl9hdXRvcGF1c2VcIjpmYWxzZSxcImxheWVyX2lkc1wiOltdfSIsIjMiOiJ7XCJpZFwiOjMsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTIvMTAvMTEtMTUweDE1MC5qcGdcIixcIm9yZGVyXCI6MyxcImJnXCI6XCIvMjAxMi8xMC8xMS5qcGdcIixcImR1cmF0aW9uXCI6MyxcImZpbGxNb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfZmlsbG1vZGVcIjpcImZpbGxcIixcImJndl9sb29wXCI6dHJ1ZSxcImJndl9tdXRlXCI6dHJ1ZSxcImJndl9hdXRvcGF1c2VcIjpmYWxzZSxcImxheWVyX2lkc1wiOltdfSIsIjQiOiJ7XCJpZFwiOjQsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTIvMTAvMy0xNTB4MTUwLmpwZ1wiLFwib3JkZXJcIjo1LFwiYmdcIjpcIi8yMDEyLzEwLzMuanBnXCIsXCJkdXJhdGlvblwiOjMsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOnRydWUsXCJiZ3ZfbXV0ZVwiOnRydWUsXCJiZ3ZfYXV0b3BhdXNlXCI6ZmFsc2UsXCJsYXllcl9pZHNcIjpbXX0iLCI1Ijoie1wiaWRcIjo1LFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDEyLzEwLzktMTUweDE1MC5qcGdcIixcIm9yZGVyXCI6NixcImJnXCI6XCIvMjAxMi8xMC85LmpwZ1wiLFwiZHVyYXRpb25cIjozLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjp0cnVlLFwiYmd2X211dGVcIjp0cnVlLFwiYmd2X2F1dG9wYXVzZVwiOmZhbHNlLFwibGF5ZXJfaWRzXCI6W119IiwiNiI6IntcImlkXCI6NixcInRpbWVsaW5lX2hcIjoyMDAsXCJiZ1RodW1iXCI6XCIvMjAxMi8xMC84LTE1MHgxNTAuanBnXCIsXCJvcmRlclwiOjEsXCJiZ1wiOlwiLzIwMTIvMTAvOC5qcGdcIixcImR1cmF0aW9uXCI6MyxcImZpbGxNb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfZmlsbG1vZGVcIjpcImZpbGxcIixcImJndl9sb29wXCI6dHJ1ZSxcImJndl9tdXRlXCI6dHJ1ZSxcImJndl9hdXRvcGF1c2VcIjpmYWxzZSxcImxheWVyX2lkc1wiOltdfSIsIjciOiJ7XCJpZFwiOjcsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTIvMTAvNC0xNTB4MTUwLmpwZ1wiLFwib3JkZXJcIjo3LFwiYmdcIjpcIi8yMDEyLzEwLzQuanBnXCIsXCJkdXJhdGlvblwiOjMsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOnRydWUsXCJiZ3ZfbXV0ZVwiOnRydWUsXCJiZ3ZfYXV0b3BhdXNlXCI6ZmFsc2UsXCJsYXllcl9pZHNcIjpbXX0iLCI5Ijoie1wiaWRcIjo5LFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDEyLzEwLzEzLTE1MHgxNTAuanBnXCIsXCJpc092ZXJsYXlMYXllcnNcIjpmYWxzZSxcIm9yZGVyXCI6MCxcImJnXCI6XCIvMjAxMi8xMC8xMy5qcGdcIixcImR1cmF0aW9uXCI6MyxcImZpbGxNb2RlXCI6XCJmaWxsXCIsXCJpbmZvXCI6XCJbbWFzdGVyc2xpZGVyIGlkPVxcXCIxXFxcIl1cIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjp0cnVlLFwiYmd2X211dGVcIjp0cnVlLFwiYmd2X2F1dG9wYXVzZVwiOmZhbHNlLFwibGF5ZXJfaWRzXCI6W119IiwiMTIiOiJ7XCJpZFwiOjEyLFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDEyLzEwLzE2LTE1MHgxNTAuanBnXCIsXCJvcmRlclwiOjgsXCJiZ1wiOlwiLzIwMTIvMTAvMTYuanBnXCIsXCJkdXJhdGlvblwiOjMsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOnRydWUsXCJiZ3ZfbXV0ZVwiOnRydWUsXCJiZ3ZfYXV0b3BhdXNlXCI6ZmFsc2UsXCJsYXllcl9pZHNcIjpbXX0iLCIxNCI6IntcImlkXCI6MTQsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTIvMTAvMTUxLTE1MHgxNTAuanBnXCIsXCJvcmRlclwiOjksXCJiZ1wiOlwiLzIwMTIvMTAvMTUxLmpwZ1wiLFwiZHVyYXRpb25cIjozLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjp0cnVlLFwiYmd2X211dGVcIjp0cnVlLFwiYmd2X2F1dG9wYXVzZVwiOmZhbHNlLFwibGF5ZXJfaWRzXCI6W119In0sIk1TUGFuZWwuQ29udHJvbCI6eyIxIjoie1wiaWRcIjpcIjFcIixcImxhYmVsXCI6XCJBcnJvd3NcIixcIm5hbWVcIjpcImFycm93c1wiLFwiYXV0b0hpZGVcIjpmYWxzZSxcIm92ZXJWaWRlb1wiOnRydWUsXCJpbnNldFwiOnRydWV9IiwiNCI6IntcImlkXCI6NCxcImxhYmVsXCI6XCJDaXJjbGUgVGltZXJcIixcIm5hbWVcIjpcImNpcmNsZXRpbWVyXCIsXCJhdXRvSGlkZVwiOmZhbHNlLFwib3ZlclZpZGVvXCI6dHJ1ZSxcImNvbG9yXCI6XCIjNDM0MzQzXCIsXCJyYWRpdXNcIjoxMCxcInN0cm9rZVwiOjMsXCJpbnNldFwiOnRydWV9IiwiNSI6IntcImlkXCI6NSxcImxhYmVsXCI6XCJMaW5lIFRpbWVyXCIsXCJuYW1lXCI6XCJ0aW1lYmFyXCIsXCJhdXRvSGlkZVwiOmZhbHNlLFwib3ZlclZpZGVvXCI6dHJ1ZSxcImNvbG9yXCI6XCIjRkZGRkZGXCIsXCJ3aWR0aFwiOjQsXCJhbGlnblwiOlwiYm90dG9tXCIsXCJpbnNldFwiOnRydWV9IiwiNiI6IntcImlkXCI6NixcImxhYmVsXCI6XCJCdWxsZXRzXCIsXCJuYW1lXCI6XCJidWxsZXRzXCIsXCJhdXRvSGlkZVwiOnRydWUsXCJvdmVyVmlkZW9cIjp0cnVlLFwibWFyZ2luXCI6MTAsXCJkaXJcIjpcImhcIixcImFsaWduXCI6XCJib3R0b21cIixcImluc2V0XCI6dHJ1ZX0iLCI3Ijoie1wiaWRcIjo3LFwibGFiZWxcIjpcIlNsaWRlIEluZm9cIixcIm5hbWVcIjpcInNsaWRlaW5mb1wiLFwiYXV0b0hpZGVcIjpmYWxzZSxcIm92ZXJWaWRlb1wiOmZhbHNlLFwibWFyZ2luXCI6MTAsXCJhbGlnblwiOlwiYm90dG9tXCIsXCJpbnNldFwiOnRydWV9In19', '', '', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://thoidaihoangkim.com', 'yes'),
(2, 'home', 'http://thoidaihoangkim.com', 'yes'),
(3, 'blogname', 'Thời Đại Hoàng Kim', 'yes'),
(4, 'blogdescription', 'Khám Phá Ngôi Nhà Của Bạn', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'voquocbinh90@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:48:\"advanced-custom-fields-repeater/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:44:\"data-tables-generator-by-supsystic/index.php\";i:5;s:23:\"mobile-menu/mobmenu.php\";i:6;s:19:\"wp-smtp/wp-smtp.php\";i:7;s:33:\"wpcf7-redirect/wpcf7-redirect.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'thoidaihoangkim', 'yes'),
(41, 'stylesheet', 'thoidaihoangkim', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:8:\"Dự Án\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '112', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:79:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"access_masterslider\";b:1;s:20:\"publish_masterslider\";b:1;s:19:\"delete_masterslider\";b:1;s:19:\"create_masterslider\";b:1;s:19:\"export_masterslider\";b:1;s:22:\"duplicate_masterslider\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:29:\"tablepress_import_tables_wptr\";b:1;s:23:\"tablepress_edit_options\";b:1;s:43:\"vc_access_rules_post_types/enhancedcategory\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:50:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:19:\"access_masterslider\";b:1;s:20:\"publish_masterslider\";b:1;s:19:\"delete_masterslider\";b:1;s:19:\"create_masterslider\";b:1;s:19:\"export_masterslider\";b:1;s:22:\"duplicate_masterslider\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:43:\"vc_access_rules_post_types/enhancedcategory\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:20:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:43:\"vc_access_rules_post_types/enhancedcategory\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:9:\"Căn Hộ\";s:6:\"number\";i:10;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:12:\"categories-2\";}s:11:\"mobmlefttop\";a:0:{}s:14:\"mobmleftbottom\";a:0:{}s:12:\"mobmrighttop\";a:0:{}s:15:\"mobmrightbottom\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:4:{i:1542738459;a:4:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542781672;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542814324;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1540623911;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(141, 'WPLANG', '', 'yes'),
(142, 'new_admin_email', 'voquocbinh90@gmail.com', 'yes'),
(147, 'recently_activated', 'a:4:{s:31:\"search-filter/search-filter.php\";i:1542217659;s:46:\"add-category-to-pages/add-category-to-page.php\";i:1542213904;s:51:\"enhanced-category-pages/enhanced-category-pages.php\";i:1542205277;s:25:\"tablepress/tablepress.php\";i:1541694806;}', 'yes'),
(150, 'current_theme', 'thoidaihoangkim', 'yes'),
(151, 'theme_mods_thoidaihoangkim', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(178, 'acf_version', '5.7.7', 'yes'),
(181, 'cptui_new_install', 'false', 'yes'),
(203, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1540993535;s:7:\"version\";s:5:\"5.0.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(292, 'responsive_menu_version', '3.1.17', 'yes'),
(294, 'responsive_menu_current_page', 'container', 'yes'),
(295, 'hide_pro_options', 'no', 'yes'),
(300, '_eds_Options', 'a:47:{s:19:\"eds_menu_breakpoint\";s:3:\"720\";s:10:\"menu_width\";s:2:\"70\";s:9:\"max_width\";s:3:\"320\";s:9:\"min_width\";s:3:\"270\";s:19:\"active_font_awesome\";b:0;s:15:\"animation_speed\";s:3:\"200\";s:12:\"toggle_width\";s:2:\"40\";s:13:\"toggle_height\";s:2:\"42\";s:17:\"toggle_margin_top\";s:2:\"20\";s:24:\"toggle_margin_left_right\";s:2:\"16\";s:9:\"symbol_bg\";s:7:\"#000000\";s:12:\"symbol_color\";s:7:\"#ffffff\";s:18:\"symbol_line_height\";s:1:\"3\";s:11:\"menu_wrp_bg\";a:1:{s:5:\"color\";s:7:\"#333333\";}s:11:\"transparent\";b:1;s:7:\"opacity\";s:3:\"0.7\";s:9:\"font_size\";s:2:\"14\";s:11:\"line_height\";s:2:\"20\";s:9:\"seperator\";s:10:\"12,0,12,20\";s:13:\"menu_bg_color\";s:7:\"#1b1b1b\";s:19:\"menu_bg_color_hover\";s:7:\"#282828\";s:15:\"menu_text_color\";s:7:\"#828282\";s:21:\"menu_text_color_hover\";s:7:\"#ca3028\";s:10:\"boder_size\";s:1:\"1\";s:17:\"menu_boder_bottom\";s:7:\"#2f2f2f\";s:12:\"somoot_hover\";b:1;s:12:\"arrows_color\";s:4:\"#FFF\";s:13:\"sub_font_size\";s:2:\"14\";s:15:\"sub_line_height\";s:2:\"25\";s:13:\"sub_seperator\";s:9:\"7,20,7,30\";s:19:\"sub_menu_text_color\";s:7:\"#eeeeee\";s:25:\"sub_menu_text_color_hover\";s:7:\"#9dabab\";s:17:\"sub_menu_bg_color\";s:7:\"#2E2E2E\";s:23:\"sub_menu_bg_color_hover\";s:7:\"#1a1a20\";s:19:\"sub_menu_boder_size\";s:1:\"1\";s:21:\"sub_menu_boder_bottom\";s:7:\"#29292d\";s:15:\"search_box_mode\";b:1;s:18:\"eds_social_profile\";b:0;s:21:\"eds_social_profile_bg\";s:4:\"#fff\";s:24:\"eds_social_profile_color\";s:4:\"#000\";s:6:\"eds_fb\";s:0:\"\";s:6:\"eds_tw\";s:0:\"\";s:10:\"eds_g_plus\";s:0:\"\";s:7:\"eds_lin\";s:0:\"\";s:7:\"eds_ins\";s:0:\"\";s:7:\"eds_pin\";s:0:\"\";s:17:\"eds_elements_hide\";s:0:\"\";}', 'yes'),
(303, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:20:\"mobile-menu/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.1.3\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1542731313;s:11:\"plugin_path\";s:23:\"mobile-menu/mobmenu.php\";}}s:7:\"abspath\";s:39:\"/Users/hoangan/project/thoidaihoangkim/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:23:\"mobile-menu/mobmenu.php\";s:8:\"sdk_path\";s:20:\"mobile-menu/freemius\";s:7:\"version\";s:5:\"2.1.3\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1542731313;}}', 'yes'),
(304, 'fs_debug_mode', '', 'yes'),
(305, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:235;a:3:{s:4:\"slug\";s:11:\"mobile-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}}s:11:\"plugin_data\";a:1:{s:11:\"mobile-menu\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}s:17:\"install_timestamp\";i:1542731313;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.1.3\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:3:\"2.7\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:19:\"thoidaihoangkim.com\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1542731315;s:7:\"version\";s:3:\"2.7\";}s:15:\"prev_is_premium\";b:0;s:18:\"sticky_optin_added\";b:1;}}s:13:\"file_slug_map\";a:1:{s:23:\"mobile-menu/mobmenu.php\";s:11:\"mobile-menu\";}s:7:\"plugins\";a:1:{s:11:\"mobile-menu\";O:9:\"FS_Plugin\":18:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"Mobile Menu\";s:4:\"slug\";s:11:\"mobile-menu\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:23:\"mobile-menu/mobmenu.php\";s:7:\"version\";s:3:\"2.7\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_1ec93edfb66875251b62505b96489\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"235\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"b9df647aceda298e9beccd895b1fc72e\";s:13:\"admin_notices\";a:1:{s:11:\"mobile-menu\";a:1:{s:15:\"connect_account\";a:8:{s:7:\"message\";s:164:\"We made a few tweaks to the plugin, <b><a href=\"http://thoidaihoangkim.com/wp-admin/admin.php?page=mobile-menu-options\">Opt in to make \"Mobile Menu\" Better!</a></b>\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:10:\"update-nag\";s:6:\"sticky\";b:1;s:2:\"id\";s:15:\"connect_account\";s:10:\"manager_id\";s:11:\"mobile-menu\";s:6:\"plugin\";s:11:\"Mobile Menu\";s:10:\"wp_user_id\";N;}}}}', 'yes'),
(306, 'fs_api_cache', 'a:0:{}', 'yes'),
(307, 'fs_gdpr', 'a:2:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}s:2:\"u0\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(311, 'mobmenu_options', 's:4728:\"a:80:{s:13:\"width_trigger\";s:4:\"5000\";s:16:\"edc117863e7ad302\";s:0:\"\";s:16:\"enable_left_menu\";s:1:\"0\";s:17:\"enable_right_menu\";s:1:\"1\";s:17:\"menu_display_type\";s:13:\"slideout-over\";s:16:\"55186b6139cdcba2\";s:0:\"\";s:16:\"bc0780a0a16b8d38\";s:0:\"\";s:13:\"hide_elements\";s:0:\"\";s:22:\"default_hided_elements\";s:102:\"a:8:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";}\";s:16:\"967bcf13a38e2bab\";s:0:\"\";s:15:\"sticky_elements\";s:0:\"\";s:10:\"custom_css\";s:49:\".mob-icon-down-open:hover {\r\n    color: white;\r\n}\";s:9:\"custom_js\";s:0:\"\";s:10:\"right_menu\";s:6:\"Menu 1\";s:30:\"right_menu_parent_link_submenu\";s:1:\"1\";s:40:\"right_menu_parent_link_submenu_2nd_level\";s:1:\"1\";s:16:\"c3775d4e353209e9\";s:0:\"\";s:15:\"right_menu_text\";s:0:\"\";s:27:\"text_before_right_icon_font\";s:544:\"a:17:{s:11:\"font-family\";s:9:\"Noto Sans\";s:9:\"font-type\";s:6:\"google\";s:5:\"color\";s:7:\"#333333\";s:9:\"font-size\";s:7:\"inherit\";s:11:\"font-weight\";s:7:\"inherit\";s:10:\"font-style\";s:6:\"normal\";s:11:\"line-height\";s:5:\"1.5em\";s:14:\"letter-spacing\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:12:\"font-variant\";s:6:\"normal\";s:20:\"text-shadow-location\";s:4:\"none\";s:20:\"text-shadow-distance\";s:3:\"0px\";s:16:\"text-shadow-blur\";s:3:\"0px\";s:17:\"text-shadow-color\";s:7:\"#333333\";s:19:\"text-shadow-opacity\";s:1:\"1\";s:4:\"dark\";s:0:\"\";s:4:\"text\";s:0:\"\";}\";s:22:\"right_menu_icon_action\";s:1:\"1\";s:14:\"right_icon_url\";s:0:\"\";s:21:\"right_icon_url_target\";s:1:\"1\";s:19:\"right_menu_icon_opt\";s:1:\"0\";s:20:\"right_menu_icon_font\";s:6:\"menu-1\";s:20:\"right_icon_font_size\";s:2:\"40\";s:15:\"right_menu_icon\";s:0:\"\";s:21:\"right_icon_top_margin\";s:1:\"5\";s:23:\"right_icon_right_margin\";s:1:\"5\";s:16:\"266c98bedb84f403\";s:0:\"\";s:19:\"right_menu_bg_image\";s:0:\"\";s:21:\"right_menu_bg_opacity\";s:3:\"100\";s:24:\"right_menu_bg_image_size\";s:4:\"auto\";s:22:\"right_menu_bg_gradient\";s:0:\"\";s:22:\"right_menu_width_units\";s:1:\"1\";s:16:\"right_menu_width\";s:3:\"270\";s:27:\"right_menu_width_percentage\";s:2:\"70\";s:26:\"right_menu_content_padding\";s:1:\"0\";s:15:\"right_menu_font\";s:544:\"a:17:{s:11:\"font-family\";s:9:\"Noto Sans\";s:9:\"font-type\";s:6:\"google\";s:5:\"color\";s:7:\"#333333\";s:9:\"font-size\";s:7:\"inherit\";s:11:\"font-weight\";s:7:\"inherit\";s:10:\"font-style\";s:6:\"normal\";s:11:\"line-height\";s:5:\"1.5em\";s:14:\"letter-spacing\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:12:\"font-variant\";s:6:\"normal\";s:20:\"text-shadow-location\";s:4:\"none\";s:20:\"text-shadow-distance\";s:3:\"0px\";s:16:\"text-shadow-blur\";s:3:\"0px\";s:17:\"text-shadow-color\";s:7:\"#333333\";s:19:\"text-shadow-opacity\";s:1:\"1\";s:4:\"dark\";s:0:\"\";s:4:\"text\";s:0:\"\";}\";s:16:\"overlay_bg_color\";s:19:\"rgba(0, 0, 0, 0.83)\";s:15:\"header_bg_color\";s:7:\"#fbfbfb\";s:17:\"header_text_color\";s:4:\"#222\";s:16:\"13d84546d7fc09f7\";s:0:\"\";s:20:\"left_menu_icon_color\";s:4:\"#222\";s:22:\"header_text_after_icon\";s:4:\"#222\";s:19:\"left_panel_bg_color\";s:7:\"#f9f9f9\";s:21:\"left_panel_text_color\";s:4:\"#222\";s:24:\"left_panel_hover_bgcolor\";s:7:\"#a3d3e8\";s:27:\"left_panel_hover_text_color\";s:4:\"#fff\";s:26:\"left_panel_submenu_bgcolor\";s:7:\"#eff1f1\";s:29:\"left_panel_submenu_text_color\";s:4:\"#222\";s:29:\"left_panel_close_button_color\";s:4:\"#000\";s:16:\"f18e64632fbf249a\";s:0:\"\";s:21:\"right_menu_icon_color\";s:7:\"#fb6a19\";s:23:\"header_text_before_icon\";s:4:\"#222\";s:20:\"right_panel_bg_color\";s:7:\"#f9f9f9\";s:22:\"right_panel_text_color\";s:4:\"#222\";s:25:\"right_panel_hover_bgcolor\";s:7:\"#fb6a19\";s:28:\"right_panel_hover_text_color\";s:4:\"#fff\";s:27:\"right_panel_submenu_bgcolor\";s:7:\"#eff1f1\";s:30:\"right_panel_submenu_text_color\";s:4:\"#222\";s:30:\"right_panel_close_button_color\";s:4:\"#000\";s:16:\"7f9431a9357ff1b7\";s:0:\"\";s:20:\"enabled_naked_header\";s:1:\"1\";s:18:\"disabled_logo_text\";s:1:\"1\";s:16:\"115d6d1eb7b7009c\";s:0:\"\";s:12:\"enabled_logo\";s:1:\"0\";s:15:\"header_branding\";s:4:\"text\";s:8:\"logo_img\";s:0:\"\";s:11:\"logo_height\";s:1:\"0\";s:17:\"disabled_logo_url\";s:1:\"0\";s:8:\"logo_url\";s:0:\"\";s:15:\"logo_top_margin\";s:1:\"0\";s:16:\"76363b6e9af60ad5\";s:0:\"\";s:13:\"header_height\";s:2:\"40\";s:11:\"header_text\";s:0:\"\";s:16:\"header_font_size\";s:2:\"20\";s:17:\"header_text_align\";s:6:\"center\";s:23:\"header_text_left_margin\";s:2:\"20\";s:24:\"header_text_right_margin\";s:2:\"20\";s:16:\"header_menu_font\";s:541:\"a:17:{s:11:\"font-family\";s:9:\"Open Sans\";s:9:\"font-type\";s:6:\"google\";s:5:\"color\";s:7:\"#333333\";s:9:\"font-size\";s:4:\"20px\";s:11:\"font-weight\";s:7:\"inherit\";s:10:\"font-style\";s:6:\"normal\";s:11:\"line-height\";s:5:\"1.5em\";s:14:\"letter-spacing\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:12:\"font-variant\";s:6:\"normal\";s:20:\"text-shadow-location\";s:4:\"none\";s:20:\"text-shadow-distance\";s:3:\"0px\";s:16:\"text-shadow-blur\";s:3:\"0px\";s:17:\"text-shadow-color\";s:7:\"#333333\";s:19:\"text-shadow-opacity\";s:1:\"1\";s:4:\"dark\";s:0:\"\";s:4:\"text\";s:0:\"\";}\";}\";', 'yes'),
(312, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(368, 'masterslider_db_version', '1.03', 'yes'),
(369, 'masterslider_capabilities_added', '1', 'yes'),
(370, 'master-slider_ab_pro_feature_panel_content_type', '1', 'yes'),
(371, 'master-slider_ab_pro_feature_setting_content_type', '1', 'yes'),
(372, 'widget_master-slider-main-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(373, 'msp_general_setting', '', 'yes'),
(374, 'msp_advanced', '', 'yes'),
(375, 'upgrade_to_pro', '', 'yes'),
(376, 'masterslider_lite_plugin_version', '3.5.3', 'yes'),
(396, 'tablepress_plugin_options', '{\"plugin_options_db_version\":37,\"table_scheme_db_version\":3,\"prev_tablepress_version\":\"0\",\"tablepress_version\":\"1.9.1\",\"first_activation\":1541693901,\"message_plugin_update\":false,\"message_donation_nag\":true,\"use_custom_css\":true,\"use_custom_css_file\":true,\"custom_css\":\"\",\"custom_css_minified\":\"\",\"custom_css_version\":0}', 'yes'),
(397, 'tablepress_tables', '{\"last_id\":1,\"table_post\":{\"1\":53}}', 'yes'),
(401, 'supsystic_tbl_plugin_version', '1.9.4', 'yes'),
(402, '_supsystic_tables_rev', '61', 'yes'),
(403, 'widget_tables_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(404, 'supsystic_tbl_reviewNotice', 'a:2:{s:4:\"time\";i:1542299709;s:5:\"shown\";b:0;}', 'yes'),
(405, 'supsystic_tbl_welcome_page_was_showed', '1', 'yes'),
(514, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1542731953;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-06 02:26:39\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(517, '_site_transient_timeout_browser_88948936c8355fa92108d4448c2520d0', '1542809399', 'no'),
(518, '_site_transient_browser_88948936c8355fa92108d4448c2520d0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(595, 'searchandfilter_version', '1.2.10', 'yes'),
(597, 'nonce_key', 'E&5~ucH<%(&y[{:7Eu#rB/PLM^wg)H0f5-ZIs/24>ax+29vcM]GUFZ`}l)3wBDI:', 'no'),
(598, 'nonce_salt', 'Gb*tUsoZm_7SD^/>cuQ1QTv9[ Ea=cq^ )~:e7QU(;9AntRYj0?t3H<:9?RH@oN@', 'no'),
(599, 'site_manager_cache_installed', '4', 'yes'),
(600, 'auth_key', 'mPv$#T7M3}7}mW8FY8SCA,k/TdFea!`i+JsG$=gtScwQ|so5fp=4d3~7#ZT%2guy', 'no'),
(601, 'auth_salt', 'KV9mE?rCN9y~,<t5j{_-l MnSsGhtA7}62hJG(fY[%UZz?Z^+t`2S6lZ-#rA-@kC', 'no'),
(602, 'logged_in_key', '|J%<b7q(k?KRy!s/rw@.=dS#CRdpGLum>2/ttF7J4j}m8Kkd;XD xIIh1Az>h<4l', 'no'),
(603, 'logged_in_salt', 'O_8l9B)FVR#,YFd,F.lZ-b*]RT+ONQg}J:Uw;yYdYTB 7@nMbOz*@RnEr|<5WZDe', 'no'),
(678, 'wp_smtp_options', 'a:9:{s:4:\"from\";s:24:\"admin@thoidaihoangkim.com\";s:8:\"fromname\";s:20:\"adminthoidaihoangkim\";s:4:\"host\";s:30:\"cpanel01mh-han1.cloudnetvn.com\";s:10:\"smtpsecure\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:8:\"smtpauth\";s:3:\"yes\";s:8:\"username\";s:24:\"admin@thoidaihoangkim.com\";s:8:\"password\";s:24:\"adminthoidaihoangkim@123\";s:10:\"deactivate\";s:0:\"\";}', 'yes'),
(805, 'wp_mobile_menu_banner_dismissed', 'yes', 'yes'),
(806, 'titan-framework-mobmenu-css', '.mob-icon-down-open:hover{color:white;}.mobmenu .headertext{font-family:\"Open Sans\";font-size:20px;font-weight:inherit;font-style:normal;line-height:1.5em;letter-spacing:normal;text-transform:none;}.mobmenul-container .left-menu-icon-text{font-family:\"Dosis\";font-size:inherit;font-weight:inherit;font-style:normal;line-height:1.5em;letter-spacing:normal;text-transform:none;}#mobmenuleft .mob-expand-submenu,#mobmenuleft > .widgettitle,#mobmenuleft li a,#mobmenuleft li a:visited,#mobmenuleft .mobmenu_content h2,#mobmenuleft .mobmenu_content h3{font-family:\"Dosis\";font-size:inherit;font-weight:inherit;font-style:normal;line-height:1.5em;letter-spacing:normal;text-transform:none;}.mobmenur-container .right-menu-icon-text{font-family:\"Noto Sans\";font-size:inherit;font-weight:inherit;font-style:normal;line-height:1.5em;letter-spacing:normal;text-transform:none;}#mobmenuright li a,#mobmenuright li a:visited,#mobmenuright .mobmenu_content h2,#mobmenuright .mobmenu_content h3{font-family:\"Noto Sans\";font-size:inherit;font-weight:inherit;font-style:normal;line-height:1.5em;letter-spacing:normal;text-transform:none;}', 'yes'),
(843, 'category_children', 'a:4:{i:4;a:2:{i:0;i:1;i:1;i:19;}i:6;a:1:{i:0;i:3;}i:10;a:2:{i:0;i:15;i:1;i:16;}i:9;a:2:{i:0;i:17;i:1;i:18;}}', 'yes'),
(1018, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542699762;s:7:\"checked\";a:4:{s:15:\"thoidaihoangkim\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1019, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542699762;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"mobile-menu/mobmenu.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/mobile-menu\";s:4:\"slug\";s:11:\"mobile-menu\";s:6:\"plugin\";s:23:\"mobile-menu/mobmenu.php\";s:11:\"new_version\";s:3:\"2.7\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/mobile-menu/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/mobile-menu.2.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/mobile-menu/assets/icon-128x128.png?rev=1890426\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/mobile-menu/assets/banner-772x250.jpg?rev=1976792\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wpcf7-redirect/wpcf7-redirect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wpcf7-redirect\";s:4:\"slug\";s:14:\"wpcf7-redirect\";s:6:\"plugin\";s:33:\"wpcf7-redirect/wpcf7-redirect.php\";s:11:\"new_version\";s:5:\"1.2.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wpcf7-redirect/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wpcf7-redirect.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wpcf7-redirect/assets/icon-256x256.png?rev=1732522\";s:2:\"1x\";s:67:\"https://ps.w.org/wpcf7-redirect/assets/icon-128x128.png?rev=1732522\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wpcf7-redirect/assets/banner-1544x500.png?rev=1734873\";s:2:\"1x\";s:69:\"https://ps.w.org/wpcf7-redirect/assets/banner-772x250.png?rev=1734873\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:44:\"data-tables-generator-by-supsystic/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/data-tables-generator-by-supsystic\";s:4:\"slug\";s:34:\"data-tables-generator-by-supsystic\";s:6:\"plugin\";s:44:\"data-tables-generator-by-supsystic/index.php\";s:11:\"new_version\";s:5:\"1.9.4\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/data-tables-generator-by-supsystic/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/data-tables-generator-by-supsystic.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/data-tables-generator-by-supsystic/assets/icon-256x256.png?rev=1158691\";s:2:\"1x\";s:87:\"https://ps.w.org/data-tables-generator-by-supsystic/assets/icon-128x128.png?rev=1158690\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/data-tables-generator-by-supsystic/assets/banner-772x250.png?rev=1158688\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"wp-smtp/wp-smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/wp-smtp\";s:4:\"slug\";s:7:\"wp-smtp\";s:6:\"plugin\";s:19:\"wp-smtp/wp-smtp.php\";s:11:\"new_version\";s:6:\"1.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-smtp/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-smtp.1.1.10.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:51:\"https://s.w.org/plugins/geopattern-icon/wp-smtp.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1039, '_site_transient_timeout_theme_roots', '1542731317', 'no'),
(1040, '_site_transient_theme_roots', 'a:4:{s:15:\"thoidaihoangkim\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1542734257:1'),
(5, 7, '_wp_attached_file', '2018/10/img01.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:470;s:6:\"height\";i:207;s:4:\"file\";s:17:\"2018/10/img01.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img01-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 14, '_form', '<fieldset>[text* your-name class:form-style placeholder \"Họ và tên\"]</fieldset>\n<fieldset>[text* your-email class:form-style placeholder \"Email\"]</fieldset>\n<fieldset>[text* your-phone class:form-style placeholder \"Số điện thoại\"]</fieldset>\n<fieldset>[text* your-address class:form-style placeholder \"Địa chỉ\"]</fieldset>\n<fieldset>[text* your-title class:form-style placeholder \"tiêu đề\"]</fieldset>\n[textarea* your-comment class:form-style placeholder \"Nội dung liên hệ\"]\n[submit class:btn \"Gửi\"]'),
(10, 14, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"Thời Đại Hoàng Kim\";s:6:\"sender\";s:38:\"[your-name] <admin@thoidaihoangkim.com>\";s:9:\"recipient\";s:24:\"admin@thoidaihoangkim.com\";s:4:\"body\";s:281:\"From: [your-name] <[your-email]>\nSubject: [your-name]\n\nMessage Body:\nSố Điện Thoại: [your-phone]\nEmail: [your-email]\nNội dung: [your-comment]\nĐịa chỉ: [your-address]\n\n-- \nThis e-mail was sent from a contact form on Thời Đại Hoàng Kim (http://thoidaihoangkim.com)\";s:18:\"additional_headers\";s:34:\"Reply-To: admin@thoidaihoangkim.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(11, 14, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:0:\"\";s:6:\"sender\";s:0:\"\";s:9:\"recipient\";s:0:\"\";s:4:\"body\";s:0:\"\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(12, 14, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(13, 14, '_additional_settings', ''),
(14, 14, '_locale', 'en_US'),
(25, 15, '_form', '<fieldset>[text* your-name class:form-style placeholder \"Họ và tên\"]</fieldset>\n<fieldset>[text* your-email class:form-style placeholder \"Email\"]</fieldset>\n<fieldset>[text* your-phone class:form-style placeholder \"Số điện thoại\"]</fieldset>\n<fieldset>[text* your-address class:form-style placeholder \"Địa chỉ\"]</fieldset>\n[submit class:btn \"Gửi\"]'),
(26, 15, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"Thời Đại Hoàng Kim\";s:6:\"sender\";s:38:\"[your-name] <admin@thoidaihoangkim.com>\";s:9:\"recipient\";s:24:\"admin@thoidaihoangkim.com\";s:4:\"body\";s:254:\"From: [your-name] <[your-email]>\nSubject: [your-name]\n\nMessage Body:\nSố Điện Thoại: [your-phone]\nEmail: [your-email]\nĐịa chỉ: [your-address]\n\n-- \nThis e-mail was sent from a contact form on Thời Đại Hoàng Kim (http://thoidaihoangkim.com)\";s:18:\"additional_headers\";s:34:\"Reply-To: admin@thoidaihoangkim.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(27, 15, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:0:\"\";s:6:\"sender\";s:0:\"\";s:9:\"recipient\";s:0:\"\";s:4:\"body\";s:0:\"\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(28, 15, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:65:\"Cảm ơn tin nhắn của bạn đã được gửi thành công\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(29, 15, '_additional_settings', ''),
(30, 15, '_locale', 'en_US'),
(31, 1, '_edit_lock', '1541093442:1'),
(32, 1, '_edit_last', '1'),
(35, 1, '_thumbnail_id', '7'),
(40, 19, '_edit_last', '1'),
(41, 19, '_edit_lock', '1541691518:1'),
(88, 27, '_menu_item_type', 'custom'),
(89, 27, '_menu_item_menu_item_parent', '0'),
(90, 27, '_menu_item_object_id', '27'),
(91, 27, '_menu_item_object', 'custom'),
(92, 27, '_menu_item_target', ''),
(93, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 27, '_menu_item_xfn', ''),
(95, 27, '_menu_item_url', 'http://thoidaihoangkim.com/'),
(97, 28, '_menu_item_type', 'post_type'),
(98, 28, '_menu_item_menu_item_parent', '0'),
(99, 28, '_menu_item_object_id', '2'),
(100, 28, '_menu_item_object', 'page'),
(101, 28, '_menu_item_target', ''),
(102, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 28, '_menu_item_xfn', ''),
(104, 28, '_menu_item_url', ''),
(105, 28, '_menu_item_orphaned', '1541345409'),
(114, 30, '_edit_last', '1'),
(115, 30, '_edit_lock', '1542208670:1'),
(124, 33, '_wp_attached_file', '2012/10/13.jpg'),
(125, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:14:\"2012/10/13.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"13-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"13-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 34, '_wp_attached_file', '2012/10/8.jpg'),
(127, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/8.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"8-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 35, '_wp_attached_file', '2012/10/2.jpg'),
(129, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"2-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 36, '_wp_attached_file', '2012/10/11.jpg'),
(131, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:14:\"2012/10/11.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"11-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"11-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 37, '_wp_attached_file', '2012/10/121.jpg'),
(133, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:15:\"2012/10/121.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"121-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"121-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"121-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"121-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 38, '_wp_attached_file', '2012/10/3.jpg'),
(135, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 39, '_wp_attached_file', '2012/10/9.jpg'),
(137, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"9-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 40, '_wp_attached_file', '2012/10/4.jpg'),
(139, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"4-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 41, '_wp_attached_file', '2012/10/16.jpg'),
(141, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:14:\"2012/10/16.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"16-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"16-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"16-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 42, '_wp_attached_file', '2012/10/151.jpg'),
(143, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:15:\"2012/10/151.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"151-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"151-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"151-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"151-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 53, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":true,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(145, 53, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],\"columns\":[1,1]}'),
(146, 19, '_wp_trash_meta_status', 'publish'),
(147, 19, '_wp_trash_meta_time', '1541695557'),
(148, 19, '_wp_desired_post_slug', 'hi'),
(149, 1, '_wp_trash_meta_status', 'publish'),
(150, 1, '_wp_trash_meta_time', '1541695560'),
(151, 1, '_wp_desired_post_slug', 'hello-world'),
(152, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(153, 60, '_edit_last', '1'),
(154, 60, '_edit_lock', '1541695903:1'),
(155, 61, '_edit_last', '1'),
(156, 61, '_edit_lock', '1541696833:1'),
(157, 62, '_wp_attached_file', '2018/11/72-96.png'),
(158, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:567;s:6:\"height\";i:504;s:4:\"file\";s:17:\"2018/11/72-96.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"72-96-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"72-96-300x267.png\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 61, '_thumbnail_id', '62'),
(162, 64, '_edit_last', '1'),
(163, 64, '_edit_lock', '1541696833:1'),
(164, 65, '_wp_attached_file', '2018/11/49.41.png'),
(165, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:507;s:6:\"height\";i:568;s:4:\"file\";s:17:\"2018/11/49.41.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"49.41-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"49.41-268x300.png\";s:5:\"width\";i:268;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 64, '_thumbnail_id', '65'),
(169, 67, '_edit_last', '1'),
(170, 67, '_edit_lock', '1541696833:1'),
(171, 68, '_wp_attached_file', '2018/11/50.19.png'),
(172, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:492;s:6:\"height\";i:547;s:4:\"file\";s:17:\"2018/11/50.19.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"50.19-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"50.19-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 67, '_thumbnail_id', '68'),
(178, 70, '_edit_last', '1'),
(179, 70, '_edit_lock', '1541696833:1'),
(180, 71, '_wp_attached_file', '2018/11/72.96.png'),
(181, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:576;s:6:\"height\";i:464;s:4:\"file\";s:17:\"2018/11/72.96.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"72.96-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"72.96-300x242.png\";s:5:\"width\";i:300;s:6:\"height\";i:242;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 70, '_thumbnail_id', '71'),
(185, 73, '_edit_last', '1'),
(186, 73, '_edit_lock', '1541695793:1'),
(187, 74, '_wp_attached_file', '2018/11/66.52.png'),
(188, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:480;s:4:\"file\";s:17:\"2018/11/66.52.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"66.52-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"66.52-300x257.png\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 73, '_thumbnail_id', '74'),
(192, 76, '_edit_last', '1'),
(193, 76, '_edit_lock', '1542734891:1'),
(194, 77, '_wp_attached_file', '2018/11/64.64.png'),
(195, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:568;s:6:\"height\";i:472;s:4:\"file\";s:17:\"2018/11/64.64.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"64.64-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"64.64-300x249.png\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 76, '_thumbnail_id', '77'),
(199, 79, '_edit_last', '1'),
(200, 79, '_edit_lock', '1542734705:1'),
(201, 80, '_wp_attached_file', '2018/11/66.96.png'),
(202, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:592;s:6:\"height\";i:480;s:4:\"file\";s:17:\"2018/11/66.96.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"66.96-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"66.96-300x243.png\";s:5:\"width\";i:300;s:6:\"height\";i:243;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 79, '_thumbnail_id', '80'),
(204, 83, '_edit_last', '1'),
(205, 83, '_edit_lock', '1541940234:1'),
(208, 85, '_edit_last', '1'),
(209, 85, '_edit_lock', '1541940234:1'),
(212, 87, '_edit_last', '1'),
(213, 87, '_edit_lock', '1541940233:1'),
(216, 89, '_edit_last', '1'),
(217, 89, '_edit_lock', '1541940224:1'),
(220, 91, '_edit_last', '1'),
(221, 91, '_edit_lock', '1541940233:1'),
(222, 97, '_edit_last', '1'),
(223, 97, '_edit_lock', '1541954792:1'),
(226, 99, '_wp_attached_file', '2018/11/Boss.png'),
(227, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:140;s:4:\"file\";s:16:\"2018/11/Boss.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 97, '_thumbnail_id', '99'),
(233, 101, '_edit_last', '1'),
(234, 101, '_edit_lock', '1541954506:1'),
(235, 102, '_wp_attached_file', '2018/11/pBoss.png'),
(236, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:140;s:4:\"file\";s:17:\"2018/11/pBoss.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(237, 101, '_thumbnail_id', '102'),
(244, 106, '_wp_trash_meta_status', 'publish'),
(245, 106, '_wp_trash_meta_time', '1541958294'),
(246, 107, '_wp_attached_file', '2018/11/logo-02.png'),
(247, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:111;s:6:\"height\";i:90;s:4:\"file\";s:19:\"2018/11/logo-02.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 108, '_wp_attached_file', '2018/11/cropped-logo-02.png'),
(249, 108, '_wp_attachment_context', 'site-icon'),
(250, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2018/11/cropped-logo-02.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-logo-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-logo-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-logo-02-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-logo-02-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-logo-02-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-logo-02-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 112, '_wp_attached_file', '2018/11/cropped-logo-02-1.png'),
(255, 112, '_wp_attachment_context', 'site-icon'),
(256, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2018/11/cropped-logo-02-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-logo-02-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-logo-02-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-logo-02-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-logo-02-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-logo-02-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-logo-02-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 113, '_wp_trash_meta_status', 'publish'),
(259, 113, '_wp_trash_meta_time', '1542039176'),
(260, 114, '_edit_last', '1'),
(261, 114, '_edit_lock', '1542212753:1'),
(262, 115, '_wp_attached_file', '2018/11/Picture1.jpg'),
(263, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:964;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/11/Picture1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture1-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Picture1-768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 116, '_wp_attached_file', '2018/11/Picture2.jpg'),
(265, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:964;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/11/Picture2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture2-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Picture2-768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 117, '_wp_attached_file', '2018/11/Picture3.jpg'),
(267, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:721;s:6:\"height\";i:643;s:4:\"file\";s:20:\"2018/11/Picture3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture3-300x268.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 118, '_wp_attached_file', '2018/11/Picture4.jpg'),
(269, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:727;s:6:\"height\";i:643;s:4:\"file\";s:20:\"2018/11/Picture4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture4-300x265.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:265;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 119, '_wp_attached_file', '2018/11/Picture5.jpg'),
(271, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:964;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/11/Picture5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture5-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Picture5-768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 123, '_edit_last', '1'),
(281, 123, '_edit_lock', '1542042913:1'),
(282, 123, '_thumbnail_id', '118'),
(285, 123, '_wp_trash_meta_status', 'publish'),
(286, 123, '_wp_trash_meta_time', '1542043060'),
(287, 123, '_wp_desired_post_slug', 'loai-a-3'),
(288, 126, '_edit_last', '1'),
(289, 126, '_thumbnail_id', '117'),
(292, 126, '_edit_lock', '1542602342:1'),
(295, 128, '_wp_attached_file', '2018/11/Picture1.png'),
(296, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:470;s:6:\"height\";i:207;s:4:\"file\";s:20:\"2018/11/Picture1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture1-300x132.png\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 129, '_edit_last', '1'),
(298, 129, '_edit_lock', '1542212753:1'),
(299, 130, '_wp_attached_file', '2018/11/Picture6.jpg'),
(300, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:797;s:6:\"height\";i:444;s:4:\"file\";s:20:\"2018/11/Picture6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture6-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Picture6-768x428.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:428;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(301, 131, '_wp_attached_file', '2018/11/Picture8.jpg'),
(302, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:749;s:6:\"height\";i:454;s:4:\"file\";s:20:\"2018/11/Picture8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture8-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 132, '_wp_attached_file', '2018/11/Picture9.jpg'),
(304, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:733;s:6:\"height\";i:454;s:4:\"file\";s:20:\"2018/11/Picture9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture9-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 133, '_wp_attached_file', '2018/11/Picture10.jpg'),
(306, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:749;s:6:\"height\";i:453;s:4:\"file\";s:21:\"2018/11/Picture10.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Picture10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Picture10-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 134, '_wp_attached_file', '2018/11/Picture11.jpg'),
(308, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:718;s:6:\"height\";i:479;s:4:\"file\";s:21:\"2018/11/Picture11.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Picture11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Picture11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 135, '_wp_attached_file', '2018/11/Picture12.jpg'),
(310, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:689;s:6:\"height\";i:440;s:4:\"file\";s:21:\"2018/11/Picture12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Picture12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Picture12-300x192.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 136, '_wp_attached_file', '2018/11/Picture13.jpg'),
(312, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:734;s:6:\"height\";i:445;s:4:\"file\";s:21:\"2018/11/Picture13.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Picture13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Picture13-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 137, '_wp_attached_file', '2018/11/Picture14.jpg'),
(314, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:692;s:6:\"height\";i:476;s:4:\"file\";s:21:\"2018/11/Picture14.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Picture14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Picture14-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 138, '_wp_attached_file', '2018/11/Picture15.jpg'),
(316, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:734;s:6:\"height\";i:444;s:4:\"file\";s:21:\"2018/11/Picture15.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Picture15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Picture15-300x181.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(325, 141, '_wp_attached_file', '2018/11/Picture7.png'),
(326, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:470;s:6:\"height\";i:207;s:4:\"file\";s:20:\"2018/11/Picture7.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture7-300x132.png\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 142, '_edit_last', '1'),
(328, 142, '_edit_lock', '1542602341:1'),
(329, 142, '_thumbnail_id', '138'),
(332, 144, '_edit_last', '1'),
(333, 144, '_edit_lock', '1542602340:1'),
(334, 144, '_thumbnail_id', '119'),
(335, 146, '_edit_lock', '1542204725:1'),
(336, 153, '_edit_lock', '1542205191:1'),
(337, 160, '_menu_item_type', 'taxonomy'),
(338, 160, '_menu_item_menu_item_parent', '0'),
(339, 160, '_menu_item_object_id', '10'),
(340, 160, '_menu_item_object', 'category'),
(341, 160, '_menu_item_target', ''),
(342, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(343, 160, '_menu_item_xfn', ''),
(344, 160, '_menu_item_url', ''),
(346, 161, '_menu_item_type', 'taxonomy'),
(347, 161, '_menu_item_menu_item_parent', '0'),
(348, 161, '_menu_item_object_id', '4'),
(349, 161, '_menu_item_object', 'category'),
(350, 161, '_menu_item_target', ''),
(351, 161, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(352, 161, '_menu_item_xfn', ''),
(353, 161, '_menu_item_url', ''),
(355, 162, '_menu_item_type', 'taxonomy'),
(356, 162, '_menu_item_menu_item_parent', '161'),
(357, 162, '_menu_item_object_id', '1'),
(358, 162, '_menu_item_object', 'category'),
(359, 162, '_menu_item_target', ''),
(360, 162, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(361, 162, '_menu_item_xfn', ''),
(362, 162, '_menu_item_url', ''),
(382, 165, '_menu_item_type', 'taxonomy'),
(383, 165, '_menu_item_menu_item_parent', '0'),
(384, 165, '_menu_item_object_id', '11'),
(385, 165, '_menu_item_object', 'category'),
(386, 165, '_menu_item_target', ''),
(387, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(388, 165, '_menu_item_xfn', ''),
(389, 165, '_menu_item_url', ''),
(391, 166, '_menu_item_type', 'taxonomy'),
(392, 166, '_menu_item_menu_item_parent', '0'),
(393, 166, '_menu_item_object_id', '9'),
(394, 166, '_menu_item_object', 'category'),
(395, 166, '_menu_item_target', ''),
(396, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(397, 166, '_menu_item_xfn', ''),
(398, 166, '_menu_item_url', ''),
(400, 167, '_edit_last', '1'),
(401, 167, '_edit_lock', '1542207100:1'),
(402, 168, '_wp_attached_file', '2018/11/1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(403, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:13:\"2018/11/1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 169, '_wp_attached_file', '2018/11/2.jpg'),
(405, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:13:\"2018/11/2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(406, 170, '_wp_attached_file', '2018/11/3.jpg'),
(407, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:320;s:6:\"height\";i:568;s:4:\"file\";s:13:\"2018/11/3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(408, 171, '_wp_attached_file', '2018/11/2-1.jpg'),
(409, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:15:\"2018/11/2-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"2-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"2-1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(410, 172, '_wp_attached_file', '2018/11/4.jpg'),
(411, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:13:\"2018/11/4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"4-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(412, 173, '_wp_attached_file', '2018/11/5.jpg'),
(413, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:13:\"2018/11/5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"5-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(441, 177, '_wp_attached_file', '2018/11/1-1.jpg'),
(442, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:15:\"2018/11/1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"1-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(443, 178, '_wp_attached_file', '2018/11/2-2.jpg'),
(444, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/2-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-2-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"2-2-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(445, 179, '_wp_attached_file', '2018/11/3-1.jpg'),
(446, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/3-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"3-1-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(447, 180, '_wp_attached_file', '2018/11/4-1.jpg'),
(448, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/4-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-1-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"4-1-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(449, 181, '_wp_attached_file', '2018/11/5-1.jpg'),
(450, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/5-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"5-1-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"5-1-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(451, 182, '_wp_attached_file', '2018/11/6.jpg'),
(452, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:13:\"2018/11/6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"6-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(453, 183, '_wp_attached_file', '2018/11/7.jpg'),
(454, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:13:\"2018/11/7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"7-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 184, '_wp_attached_file', '2018/11/8.jpg'),
(456, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:13:\"2018/11/8.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"8-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(457, 185, '_wp_attached_file', '2018/11/9.jpg'),
(458, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:13:\"2018/11/9.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"9-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(459, 186, '_wp_attached_file', '2018/11/10.jpg'),
(460, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:14:\"2018/11/10.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"10-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"10-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(461, 187, '_wp_attached_file', '2018/11/11.jpg'),
(462, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2018/11/11.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"11-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(465, 189, '_menu_item_type', 'taxonomy'),
(466, 189, '_menu_item_menu_item_parent', '160'),
(467, 189, '_menu_item_object_id', '15'),
(468, 189, '_menu_item_object', 'category'),
(469, 189, '_menu_item_target', ''),
(470, 189, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(471, 189, '_menu_item_xfn', ''),
(472, 189, '_menu_item_url', ''),
(474, 190, '_menu_item_type', 'taxonomy'),
(475, 190, '_menu_item_menu_item_parent', '160'),
(476, 190, '_menu_item_object_id', '16'),
(477, 190, '_menu_item_object', 'category'),
(478, 190, '_menu_item_target', ''),
(479, 190, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(480, 190, '_menu_item_xfn', ''),
(481, 190, '_menu_item_url', ''),
(483, 3, '_wp_trash_meta_status', 'draft'),
(484, 3, '_wp_trash_meta_time', '1542212836'),
(485, 3, '_wp_desired_post_slug', 'privacy-policy'),
(486, 167, '_wp_trash_meta_status', 'draft'),
(487, 167, '_wp_trash_meta_time', '1542212842'),
(488, 167, '_wp_desired_post_slug', ''),
(489, 30, '_wp_trash_meta_status', 'publish'),
(490, 30, '_wp_trash_meta_time', '1542213625'),
(491, 30, '_wp_desired_post_slug', 'conic-riverside'),
(492, 114, '_wp_trash_meta_status', 'publish'),
(493, 114, '_wp_trash_meta_time', '1542213629'),
(494, 114, '_wp_desired_post_slug', 'eo'),
(495, 129, '_wp_trash_meta_status', 'publish'),
(496, 129, '_wp_trash_meta_time', '1542213631'),
(497, 129, '_wp_desired_post_slug', 'the-mews-kuala-lumpur-city-center'),
(500, 60, '_wp_trash_meta_status', 'draft'),
(501, 60, '_wp_trash_meta_time', '1542215294'),
(502, 60, '_wp_desired_post_slug', ''),
(503, 200, '_edit_last', '1'),
(504, 200, '_edit_lock', '1542470583:1'),
(509, 202, '_edit_last', '1'),
(510, 202, '_edit_lock', '1542470568:1'),
(519, 204, '_wp_attached_file', '2018/11/1-2.jpg'),
(520, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:763;s:4:\"file\";s:15:\"2018/11/1-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-2-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1-2-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"1-2-1024x685.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(521, 205, '_wp_attached_file', '2018/11/1.png'),
(522, 205, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:466;s:4:\"file\";s:13:\"2018/11/1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x298.png\";s:5:\"width\";i:768;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x398.png\";s:5:\"width\";i:1024;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(523, 206, '_wp_attached_file', '2018/11/2-3.jpg'),
(524, 206, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:874;s:6:\"height\";i:592;s:4:\"file\";s:15:\"2018/11/2-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-3-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"2-3-768x520.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(525, 207, '_wp_attached_file', '2018/11/2.png'),
(526, 207, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:696;s:6:\"height\";i:680;s:4:\"file\";s:13:\"2018/11/2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x293.png\";s:5:\"width\";i:300;s:6:\"height\";i:293;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(527, 208, '_wp_attached_file', '2018/11/3.gif'),
(528, 208, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:810;s:4:\"file\";s:13:\"2018/11/3.gif\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x213.gif\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x546.gif\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"3-1024x728.gif\";s:5:\"width\";i:1024;s:6:\"height\";i:728;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(529, 209, '_wp_attached_file', '2018/11/3.png'),
(530, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:565;s:4:\"file\";s:13:\"2018/11/3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x362.png\";s:5:\"width\";i:768;s:6:\"height\";i:362;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"3-1024x482.png\";s:5:\"width\";i:1024;s:6:\"height\";i:482;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(531, 210, '_wp_attached_file', '2018/11/4-2.jpg'),
(532, 210, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1048;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2018/11/4-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-2-300x229.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"4-2-768x586.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:586;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"4-2-1024x782.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:782;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(533, 211, '_wp_attached_file', '2018/11/4.png'),
(534, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:541;s:4:\"file\";s:13:\"2018/11/4.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x346.png\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"4-1024x462.png\";s:5:\"width\";i:1024;s:6:\"height\";i:462;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(535, 212, '_wp_attached_file', '2018/11/5.png'),
(536, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:696;s:6:\"height\";i:680;s:4:\"file\";s:13:\"2018/11/5.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x293.png\";s:5:\"width\";i:300;s:6:\"height\";i:293;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(537, 213, '_wp_attached_file', '2018/11/6.png'),
(538, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:565;s:4:\"file\";s:13:\"2018/11/6.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x362.png\";s:5:\"width\";i:768;s:6:\"height\";i:362;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"6-1024x482.png\";s:5:\"width\";i:1024;s:6:\"height\";i:482;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(539, 214, '_wp_attached_file', '2018/11/7.png'),
(540, 214, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:541;s:4:\"file\";s:13:\"2018/11/7.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x346.png\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"7-1024x462.png\";s:5:\"width\";i:1024;s:6:\"height\";i:462;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(541, 215, '_wp_attached_file', '2018/11/8.png'),
(542, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1422;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2018/11/8.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x270.png\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"8-1024x360.png\";s:5:\"width\";i:1024;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(543, 216, '_wp_attached_file', '2018/11/9.png'),
(544, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1524;s:4:\"file\";s:13:\"2018/11/9.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x229.png\";s:5:\"width\";i:300;s:6:\"height\";i:229;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"9-768x585.png\";s:5:\"width\";i:768;s:6:\"height\";i:585;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"9-1024x780.png\";s:5:\"width\";i:1024;s:6:\"height\";i:780;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(545, 217, '_wp_attached_file', '2018/11/10-1.jpg'),
(546, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1048;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2018/11/10-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"10-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"10-1-300x229.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"10-1-768x586.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:586;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"10-1-1024x782.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:782;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(547, 218, '_wp_attached_file', '2018/11/11-1.jpg'),
(548, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1138;s:6:\"height\";i:600;s:4:\"file\";s:16:\"2018/11/11-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"11-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"11-1-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"11-1-768x405.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"11-1-1024x540.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(549, 219, '_wp_attached_file', '2018/11/11.png'),
(550, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:849;s:4:\"file\";s:14:\"2018/11/11.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x212.png\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"11-768x543.png\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"11-1024x724.png\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(551, 220, '_wp_attached_file', '2018/11/12.png'),
(552, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:733;s:4:\"file\";s:14:\"2018/11/12.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"12-768x469.png\";s:5:\"width\";i:768;s:6:\"height\";i:469;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"12-1024x625.png\";s:5:\"width\";i:1024;s:6:\"height\";i:625;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(553, 221, '_wp_attached_file', '2018/11/13.gif'),
(554, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:810;s:4:\"file\";s:14:\"2018/11/13.gif\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-300x213.gif\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"13-768x546.gif\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"13-1024x728.gif\";s:5:\"width\";i:1024;s:6:\"height\";i:728;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(555, 222, '_wp_attached_file', '2018/11/14.png'),
(556, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:684;s:4:\"file\";s:14:\"2018/11/14.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"14-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"14-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"14-768x438.png\";s:5:\"width\";i:768;s:6:\"height\";i:438;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"14-1024x584.png\";s:5:\"width\";i:1024;s:6:\"height\";i:584;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(557, 223, '_wp_attached_file', '2018/11/15.png'),
(558, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:14:\"2018/11/15.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"15-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"15-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"15-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"15-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(559, 224, '_wp_attached_file', '2018/11/16.png'),
(560, 224, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:14:\"2018/11/16.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"16-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"16-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"16-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"16-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(561, 225, '_wp_attached_file', '2018/11/17.png'),
(562, 225, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:595;s:4:\"file\";s:14:\"2018/11/17.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"17-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"17-300x149.png\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"17-768x381.png\";s:5:\"width\";i:768;s:6:\"height\";i:381;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"17-1024x508.png\";s:5:\"width\";i:1024;s:6:\"height\";i:508;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(563, 226, '_wp_attached_file', '2018/11/18.png'),
(564, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:849;s:4:\"file\";s:14:\"2018/11/18.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"18-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"18-300x212.png\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"18-768x543.png\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"18-1024x724.png\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(570, 227, '_edit_last', '1'),
(571, 227, '_edit_lock', '1542216622:1'),
(576, 229, '_wp_attached_file', '2018/11/1-3.jpg'),
(577, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/1-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-3-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"1-3-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(578, 230, '_wp_attached_file', '2018/11/2-4.jpg'),
(579, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:719;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/2-4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-4-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"2-4-575x1024.jpg\";s:5:\"width\";i:575;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(580, 231, '_wp_attached_file', '2018/11/3-2.jpg'),
(581, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:719;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/3-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-2-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"3-2-575x1024.jpg\";s:5:\"width\";i:575;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(582, 232, '_wp_attached_file', '2018/11/6-1.jpg'),
(583, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:697;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/6-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"6-1-163x300.jpg\";s:5:\"width\";i:163;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"6-1-558x1024.jpg\";s:5:\"width\";i:558;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(584, 233, '_wp_attached_file', '2018/11/7-1.jpg'),
(585, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:688;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/7-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"7-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"7-1-161x300.jpg\";s:5:\"width\";i:161;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"7-1-550x1024.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(586, 234, '_wp_attached_file', '2018/11/8-1.jpg'),
(587, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:699;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/8-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"8-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"8-1-164x300.jpg\";s:5:\"width\";i:164;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"8-1-559x1024.jpg\";s:5:\"width\";i:559;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 235, '_wp_attached_file', '2018/11/9-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(589, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:714;s:6:\"height\";i:1280;s:4:\"file\";s:15:\"2018/11/9-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"9-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"9-1-167x300.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"9-1-571x1024.jpg\";s:5:\"width\";i:571;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(590, 236, '_wp_attached_file', '2018/11/10-2.jpg'),
(591, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:714;s:6:\"height\";i:1280;s:4:\"file\";s:16:\"2018/11/10-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"10-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"10-2-167x300.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"10-2-571x1024.jpg\";s:5:\"width\";i:571;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(592, 237, '_wp_attached_file', '2018/11/11-2.jpg'),
(593, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:728;s:4:\"file\";s:16:\"2018/11/11-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"11-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"11-2-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"11-2-768x437.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:437;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"11-2-1024x582.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(594, 238, '_wp_attached_file', '2018/11/12.jpg'),
(595, 238, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:759;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2018/11/12.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-178x300.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"12-607x1024.jpg\";s:5:\"width\";i:607;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(596, 239, '_wp_attached_file', '2018/11/13.jpg'),
(597, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:707;s:4:\"file\";s:14:\"2018/11/13.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"13-768x424.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"13-1024x566.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:566;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(598, 240, '_edit_last', '1'),
(599, 240, '_edit_lock', '1542602340:1'),
(602, 242, '_edit_last', '1'),
(603, 242, '_edit_lock', '1542602340:1'),
(606, 244, '_edit_last', '1'),
(607, 244, '_edit_lock', '1542470753:1'),
(610, 246, '_edit_last', '1'),
(611, 246, '_edit_lock', '1542218915:1'),
(612, 246, '_wp_page_template', 'template-parts/contact.php'),
(613, 248, '_menu_item_type', 'post_type'),
(614, 248, '_menu_item_menu_item_parent', '0'),
(615, 248, '_menu_item_object_id', '246'),
(616, 248, '_menu_item_object', 'page'),
(617, 248, '_menu_item_target', ''),
(618, 248, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(619, 248, '_menu_item_xfn', ''),
(620, 248, '_menu_item_url', ''),
(622, 249, '_wp_attached_file', '2018/11/Picture5-1.jpg'),
(623, 249, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:964;s:6:\"height\";i:720;s:4:\"file\";s:22:\"2018/11/Picture5-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Picture5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Picture5-1-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Picture5-1-768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(625, 251, '_wp_attached_file', '2018/11/EO_1.jpg'),
(626, 251, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:964;s:6:\"height\";i:720;s:4:\"file\";s:16:\"2018/11/EO_1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_1-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"EO_1-768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(627, 252, '_wp_attached_file', '2018/11/EO_2.jpg'),
(628, 252, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:717;s:6:\"height\";i:513;s:4:\"file\";s:16:\"2018/11/EO_2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_2-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(629, 253, '_wp_attached_file', '2018/11/EO_3.jpg'),
(630, 253, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:759;s:6:\"height\";i:561;s:4:\"file\";s:16:\"2018/11/EO_3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_3-300x222.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(631, 254, '_wp_attached_file', '2018/11/EO_4.jpg'),
(632, 254, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:721;s:4:\"file\";s:16:\"2018/11/EO_4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_4-275x300.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(633, 255, '_wp_attached_file', '2018/11/EO_5.jpg'),
(634, 255, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:727;s:6:\"height\";i:721;s:4:\"file\";s:16:\"2018/11/EO_5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_5-300x298.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(635, 256, '_wp_attached_file', '2018/11/EO_6.jpg'),
(636, 256, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:719;s:4:\"file\";s:16:\"2018/11/EO_6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_6-300x288.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(637, 257, '_wp_attached_file', '2018/11/EO_7.jpg'),
(638, 257, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:721;s:6:\"height\";i:884;s:4:\"file\";s:16:\"2018/11/EO_7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_7-245x300.jpg\";s:5:\"width\";i:245;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(639, 258, '_wp_attached_file', '2018/11/EO_8.jpg'),
(640, 258, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:416;s:4:\"file\";s:16:\"2018/11/EO_8.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_8-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"EO_8-768x416.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(641, 259, '_wp_attached_file', '2018/11/EO_9.jpg'),
(642, 259, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:708;s:6:\"height\";i:416;s:4:\"file\";s:16:\"2018/11/EO_9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"EO_9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"EO_9-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(643, 260, '_wp_attached_file', '2018/11/EO_10.jpg'),
(644, 260, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:469;s:4:\"file\";s:17:\"2018/11/EO_10.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"EO_10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"EO_10-300x183.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"EO_10-768x469.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:469;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(645, 261, '_wp_attached_file', '2018/11/EO_11.jpg'),
(646, 261, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:708;s:6:\"height\";i:477;s:4:\"file\";s:17:\"2018/11/EO_11.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"EO_11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"EO_11-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(647, 262, '_wp_attached_file', '2018/11/EO_11-1.jpg'),
(648, 262, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:708;s:6:\"height\";i:477;s:4:\"file\";s:19:\"2018/11/EO_11-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"EO_11-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"EO_11-1-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(649, 263, '_wp_attached_file', '2018/11/EO_12.jpg'),
(650, 263, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:704;s:6:\"height\";i:476;s:4:\"file\";s:17:\"2018/11/EO_12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"EO_12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"EO_12-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(651, 264, '_wp_attached_file', '2018/11/EO_13.jpg'),
(652, 264, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:721;s:6:\"height\";i:475;s:4:\"file\";s:17:\"2018/11/EO_13.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"EO_13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"EO_13-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(653, 265, '_wp_attached_file', '2018/11/EO_14.jpg'),
(654, 265, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:704;s:6:\"height\";i:476;s:4:\"file\";s:17:\"2018/11/EO_14.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"EO_14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"EO_14-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(661, 266, '_edit_last', '1'),
(662, 266, '_edit_lock', '1542294054:1'),
(663, 266, '_wp_page_template', 'template-parts/thankyou.php'),
(664, 15, '_wpcf7_redirect_page_id', '266'),
(665, 15, '_wpcf7_redirect_external_url', ''),
(666, 15, '_wpcf7_redirect_use_external_url', ''),
(667, 15, '_wpcf7_redirect_open_in_new_tab', ''),
(668, 15, '_wpcf7_redirect_http_build_query', ''),
(669, 15, '_wpcf7_redirect_http_build_query_selectively', ''),
(670, 15, '_wpcf7_redirect_http_build_query_selectively_fields', ''),
(671, 15, '_wpcf7_redirect_after_sent_script', ''),
(675, 14, '_wpcf7_redirect_page_id', '266'),
(676, 14, '_wpcf7_redirect_external_url', ''),
(677, 14, '_wpcf7_redirect_use_external_url', ''),
(678, 14, '_wpcf7_redirect_open_in_new_tab', ''),
(679, 14, '_wpcf7_redirect_http_build_query', ''),
(680, 14, '_wpcf7_redirect_http_build_query_selectively', ''),
(681, 14, '_wpcf7_redirect_http_build_query_selectively_fields', ''),
(682, 14, '_wpcf7_redirect_after_sent_script', ''),
(683, 268, '_menu_item_type', 'taxonomy'),
(684, 268, '_menu_item_menu_item_parent', '166'),
(685, 268, '_menu_item_object_id', '17'),
(686, 268, '_menu_item_object', 'category'),
(687, 268, '_menu_item_target', ''),
(688, 268, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(689, 268, '_menu_item_xfn', ''),
(690, 268, '_menu_item_url', ''),
(692, 269, '_menu_item_type', 'taxonomy'),
(693, 269, '_menu_item_menu_item_parent', '166'),
(694, 269, '_menu_item_object_id', '18'),
(695, 269, '_menu_item_object', 'category'),
(696, 269, '_menu_item_target', ''),
(697, 269, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(698, 269, '_menu_item_xfn', ''),
(699, 269, '_menu_item_url', ''),
(701, 270, '_menu_item_type', 'taxonomy'),
(702, 270, '_menu_item_menu_item_parent', '0'),
(703, 270, '_menu_item_object_id', '19'),
(704, 270, '_menu_item_object', 'category'),
(705, 270, '_menu_item_target', ''),
(706, 270, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(707, 270, '_menu_item_xfn', ''),
(708, 270, '_menu_item_url', ''),
(722, 242, '_wp_trash_meta_status', 'publish'),
(723, 242, '_wp_trash_meta_time', '1542602456'),
(724, 242, '_wp_desired_post_slug', 'nha-dat-hoc-mon'),
(725, 240, '_wp_trash_meta_status', 'publish'),
(726, 240, '_wp_trash_meta_time', '1542602459'),
(727, 240, '_wp_desired_post_slug', 'can-ho-binh-chanh'),
(728, 144, '_wp_trash_meta_status', 'publish'),
(729, 144, '_wp_trash_meta_time', '1542602461'),
(730, 144, '_wp_desired_post_slug', 'loai-b-3'),
(731, 142, '_wp_trash_meta_status', 'publish'),
(732, 142, '_wp_trash_meta_time', '1542602464'),
(733, 142, '_wp_desired_post_slug', 'penthouse'),
(734, 126, '_wp_trash_meta_status', 'publish'),
(735, 126, '_wp_trash_meta_time', '1542602468'),
(736, 126, '_wp_desired_post_slug', 'loai-a-3'),
(737, 272, '_edit_last', '1'),
(738, 272, '_edit_lock', '1542734626:1'),
(741, 79, 'bedrooms', '3'),
(742, 79, '_bedrooms', 'field_5bf442587e2ba'),
(743, 79, 'baths', '2'),
(744, 79, '_baths', 'field_5bf442757e2bb'),
(745, 79, 'parking', '1'),
(746, 79, '_parking', 'field_5bf4428a7e2bc'),
(747, 79, 'sq_ft', '100'),
(748, 79, '_sq_ft', 'field_5bf442ad7e2bd'),
(749, 79, 'money', '2 tỷ'),
(750, 79, '_money', 'field_5bf442c27e2be'),
(751, 278, 'bedrooms', '3'),
(752, 278, '_bedrooms', 'field_5bf442587e2ba'),
(753, 278, 'baths', '2'),
(754, 278, '_baths', 'field_5bf442757e2bb'),
(755, 278, 'parking', '1'),
(756, 278, '_parking', 'field_5bf4428a7e2bc'),
(757, 278, 'sq_ft', '100'),
(758, 278, '_sq_ft', 'field_5bf442ad7e2bd'),
(759, 278, 'money', '2 tỷ'),
(760, 278, '_money', 'field_5bf442c27e2be'),
(763, 76, 'bedrooms', '3'),
(764, 76, '_bedrooms', 'field_5bf442587e2ba'),
(765, 76, 'baths', '2'),
(766, 76, '_baths', 'field_5bf442757e2bb'),
(767, 76, 'parking', '1'),
(768, 76, '_parking', 'field_5bf4428a7e2bc'),
(769, 76, 'sq_ft', '64'),
(770, 76, '_sq_ft', 'field_5bf442ad7e2bd'),
(771, 76, 'money', '1 tỷ8'),
(772, 76, '_money', 'field_5bf442c27e2be'),
(773, 279, 'bedrooms', '3'),
(774, 279, '_bedrooms', 'field_5bf442587e2ba'),
(775, 279, 'baths', '2'),
(776, 279, '_baths', 'field_5bf442757e2bb'),
(777, 279, 'parking', '1'),
(778, 279, '_parking', 'field_5bf4428a7e2bc'),
(779, 279, 'sq_ft', '64'),
(780, 279, '_sq_ft', 'field_5bf442ad7e2bd'),
(781, 279, 'money', '1 tỷ8'),
(782, 279, '_money', 'field_5bf442c27e2be');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-27 06:27:38', '2018-10-27 06:27:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-11-08 16:46:01', '2018-11-08 16:46:01', '', 0, 'http://thoidaihoangkim.com/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-27 06:27:38', '2018-10-27 06:27:38', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://thoidaihoangkim.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-10-27 06:27:38', '2018-10-27 06:27:38', '', 0, 'http://thoidaihoangkim.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-27 06:27:38', '2018-10-27 06:27:38', '<h2>Who we are</h2><p>Our website address is: http://thoidaihoangkim.com.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-11-14 16:27:16', '2018-11-14 16:27:16', '', 0, 'http://thoidaihoangkim.com/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-10-30 15:38:56', '2018-10-30 15:38:56', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Category Image', 'category-image', 'publish', 'closed', 'closed', '', 'group_5bd87975afd90', '', '', '2018-11-14 15:39:19', '2018-11-14 15:39:19', '', 0, 'http://thoidaihoangkim.com/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2018-10-30 15:38:56', '2018-10-30 15:38:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image 470x207px', 'image', 'publish', 'closed', 'closed', '', 'field_5bd8798f8f226', '', '', '2018-11-14 15:39:18', '2018-11-14 15:39:18', '', 5, 'http://thoidaihoangkim.com/?post_type=acf-field&#038;p=6', 5, 'acf-field', '', 0),
(7, 1, '2018-10-30 15:40:24', '2018-10-30 15:40:24', '', 'img01', '', 'inherit', 'open', 'closed', '', 'img01', '', '', '2018-10-30 15:40:24', '2018-10-30 15:40:24', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/10/img01.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-10-31 13:45:35', '2018-10-31 13:45:35', '<fieldset>[text* your-name class:form-style placeholder \"Họ và tên\"]</fieldset>\r\n<fieldset>[text* your-email class:form-style placeholder \"Email\"]</fieldset>\r\n<fieldset>[text* your-phone class:form-style placeholder \"Số điện thoại\"]</fieldset>\r\n<fieldset>[text* your-address class:form-style placeholder \"Địa chỉ\"]</fieldset>\r\n<fieldset>[text* your-title class:form-style placeholder \"tiêu đề\"]</fieldset>\r\n[textarea* your-comment class:form-style placeholder \"Nội dung liên hệ\"]\r\n[submit class:btn \"Gửi\"]\n1\nThời Đại Hoàng Kim\n[your-name] <admin@thoidaihoangkim.com>\nadmin@thoidaihoangkim.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-name]\r\n\r\nMessage Body:\r\nSố Điện Thoại: [your-phone]\r\nEmail: [your-email]\r\nNội dung: [your-comment]\r\nĐịa chỉ: [your-address]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Thời Đại Hoàng Kim (http://thoidaihoangkim.com)\nReply-To: admin@thoidaihoangkim.com\n\n\n\n\n\n\n\n\n\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact footer', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-11-15 15:43:25', '2018-11-15 15:43:25', '', 0, 'http://thoidaihoangkim.com/?post_type=wpcf7_contact_form&#038;p=14', 0, 'wpcf7_contact_form', '', 0),
(15, 1, '2018-10-31 14:28:20', '2018-10-31 14:28:20', '<fieldset>[text* your-name class:form-style placeholder \"Họ và tên\"]</fieldset>\r\n<fieldset>[text* your-email class:form-style placeholder \"Email\"]</fieldset>\r\n<fieldset>[text* your-phone class:form-style placeholder \"Số điện thoại\"]</fieldset>\r\n<fieldset>[text* your-address class:form-style placeholder \"Địa chỉ\"]</fieldset>\r\n[submit class:btn \"Gửi\"]\n1\nThời Đại Hoàng Kim\n[your-name] <admin@thoidaihoangkim.com>\nadmin@thoidaihoangkim.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-name]\r\n\r\nMessage Body:\r\nSố Điện Thoại: [your-phone]\r\nEmail: [your-email]\r\nĐịa chỉ: [your-address]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Thời Đại Hoàng Kim (http://thoidaihoangkim.com)\nReply-To: admin@thoidaihoangkim.com\n\n1\n\n\n\n\n\n\n\n\n\n\nCảm ơn tin nhắn của bạn đã được gửi thành công\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact head', '', 'publish', 'closed', 'closed', '', 'contact-footer_copy', '', '', '2018-11-15 15:25:16', '2018-11-15 15:25:16', '', 0, 'http://thoidaihoangkim.com/?post_type=wpcf7_contact_form&#038;p=15', 0, 'wpcf7_contact_form', '', 0),
(16, 1, '2018-11-01 17:10:16', '2018-11-01 17:10:16', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-01 17:10:16', '2018-11-01 17:10:16', '', 1, 'http://thoidaihoangkim.com/2018/11/01/1-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-11-01 17:32:36', '2018-11-01 17:32:36', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-01 17:32:36', '2018-11-01 17:32:36', '', 1, 'http://thoidaihoangkim.com/2018/11/01/1-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-11-01 17:33:18', '2018-11-01 17:33:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hi', '', 'trash', 'open', 'open', '', 'hi__trashed', '', '', '2018-11-08 16:45:57', '2018-11-08 16:45:57', '', 0, 'http://thoidaihoangkim.com/?p=19', 0, 'post', '', 0),
(20, 1, '2018-11-01 17:33:18', '2018-11-01 17:33:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hi', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-11-01 17:33:18', '2018-11-01 17:33:18', '', 19, 'http://thoidaihoangkim.com/2018/11/01/19-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-11-04 15:30:22', '2018-11-04 15:30:22', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-17 15:58:13', '2018-11-17 15:58:13', '', 0, 'http://thoidaihoangkim.com/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2018-11-04 15:30:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-04 15:30:08', '0000-00-00 00:00:00', '', 0, 'http://thoidaihoangkim.com/?p=28', 1, 'nav_menu_item', '', 0),
(30, 1, '2018-11-06 16:39:56', '2018-11-06 16:39:56', '[supsystic-tables id=1]\r\n<br>\r\n\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Riverside', '', 'trash', 'closed', 'closed', '', 'conic-riverside__trashed', '', '', '2018-11-14 16:40:25', '2018-11-14 16:40:25', '', 0, 'http://thoidaihoangkim.com/?page_id=30', 0, 'page', '', 0),
(32, 1, '2018-11-06 16:39:56', '2018-11-06 16:39:56', '<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n&nbsp;\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\nConic Riverside là dự án được phát triển dựa trên ý tưởng về một căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-06 16:39:56', '2018-11-06 16:39:56', '', 30, 'http://thoidaihoangkim.com/2018/11/06/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-11-08 13:59:24', '2018-11-08 13:59:24', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2018-11-08 13:59:24', '2018-11-08 13:59:24', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/13.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-11-08 13:59:27', '2018-11-08 13:59:27', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2018-11-08 13:59:27', '2018-11-08 13:59:27', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-11-08 13:59:31', '2018-11-08 13:59:31', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-11-08 13:59:31', '2018-11-08 13:59:31', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-11-08 13:59:34', '2018-11-08 13:59:34', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2018-11-08 13:59:34', '2018-11-08 13:59:34', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-11-08 13:59:36', '2018-11-08 13:59:36', '', '121', '', 'inherit', 'open', 'closed', '', '121', '', '', '2018-11-08 13:59:36', '2018-11-08 13:59:36', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/121.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-11-08 13:59:39', '2018-11-08 13:59:39', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-11-08 13:59:39', '2018-11-08 13:59:39', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-11-08 13:59:42', '2018-11-08 13:59:42', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2018-11-08 13:59:42', '2018-11-08 13:59:42', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-11-08 13:59:44', '2018-11-08 13:59:44', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-11-08 13:59:44', '2018-11-08 13:59:44', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-11-08 13:59:47', '2018-11-08 13:59:47', '', '16', '', 'inherit', 'open', 'closed', '', '16', '', '', '2018-11-08 13:59:47', '2018-11-08 13:59:47', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/16.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-11-08 13:59:50', '2018-11-08 13:59:50', '', '151', '', 'inherit', 'open', 'closed', '', '151', '', '', '2018-11-08 13:59:50', '2018-11-08 13:59:50', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2012/10/151.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-11-08 14:38:20', '2018-11-08 14:38:20', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:3:\"100\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5be44a1d35767', '', '', '2018-11-14 15:39:18', '2018-11-14 15:39:18', '', 5, 'http://thoidaihoangkim.com/?post_type=acf-field&#038;p=43', 6, 'acf-field', '', 0),
(45, 1, '2018-11-08 16:09:34', '2018-11-08 16:09:34', '<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n<br><br>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<br><br>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n&nbsp;\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\nConic Riverside là dự án được phát triển dựa trên ý tưởng về một căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:09:34', '2018-11-08 16:09:34', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-11-08 16:10:15', '2018-11-08 16:10:15', '<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n<br><br>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<br><br>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<br><br>\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n<br><br>\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n<br><br>\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n<br><br>\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\nConic Riverside là dự án được phát triển dựa trên ý tưởng về một căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n<br><br>\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:10:15', '2018-11-08 16:10:15', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(47, 1, '2018-11-08 16:10:35', '2018-11-08 16:10:35', '<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n<br><br>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<br><br>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<br><br>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<br><br>\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n<br><br>\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n<br><br>\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n<br><br>\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n<br><br>\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\nConic Riverside là dự án được phát triển dựa trên ý tưởng về một căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n<br><br>\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:10:35', '2018-11-08 16:10:35', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-11-08 16:11:08', '2018-11-08 16:11:08', '<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n<br><br>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<br><br>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<br><br>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<br><br>\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n<br><br>\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n<br><br>\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n<br><br>\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n<br><br>\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n<br><br>\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n<br><br>\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n<br><br>\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n<br><br>\r\n một căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n<br><br>\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:11:08', '2018-11-08 16:11:08', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-11-08 16:11:34', '2018-11-08 16:11:34', '<table cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td>Tên dự án</td><td>Vinhomes Sky Lake – Phạm Hùng</td></tr><tr><td>Vị trí</td><td>Lô E1, 3 Cầu giấy, Đường Phạm Hùng, Từ Liêm, Hà Nội</td></tr><tr><td>Chủ đầu tư</td><td>Tập Đoàn Vingroup</td></tr><tr><td>Đơn vị thi công</td><td>Landmark, Cottecon &amp; Fountech</td></tr><tr><td>Đơn vị giám sát</td><td>Architype</td></tr><tr><td>Đơn vị phân phối</td><td>Minh Hưng Land</td></tr><tr><td>Tổng diện tích</td><td>2,3 ha</td></tr><tr><td>Mật độ</td><td>26,49%</td></tr><tr><td>Loại hình phát triển</td><td>Căn hộ chung cư cao cấp, SkyVillas, Penthouse &amp; Shopoffice</td></tr><tr><td>Loại căn hộ</td><td>Chung cư, Penhouse, Sky Villas</td></tr><tr><td>Ngày khởi công</td><td>15/11/2016</td></tr><tr><td>Ngày bàn giao</td><td>Tháng 4/2019</td></tr><tr><td>Giá trung bình (m2)</td><td>Đang cập nhật</td></tr><tr><td>Giá trung bình (căn)</td><td>Đang cập nhật</td></tr><tr><td>Tình trạng mở bán</td><td>Sắp mở bán</td></tr></tbody></table>\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n<br><br>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<br><br>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<br><br>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<br><br>\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n<br><br>\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n<br><br>\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n<br><br>\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n<br><br>\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n<br><br>\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n<br><br>\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n<br><br>\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n<br><br>\r\n một căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n<br><br>\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:11:34', '2018-11-08 16:11:34', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-11-08 16:13:12', '2018-11-08 16:13:12', '<div class=\"v2_project_detailcontent\"><h3 class=\"v2_pd_ct_bg_title\">Thông tin chung</h3><div id=\"tongquan_description\" class=\"v2_pd_dc_More_table \"><table cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td>Tên dự án</td><td>Vinhomes Sky Lake – Phạm Hùng</td></tr><tr><td>Vị trí</td><td>Lô E1, 3 Cầu giấy, Đường Phạm Hùng, Từ Liêm, Hà Nội</td></tr><tr><td>Chủ đầu tư</td><td>Tập Đoàn Vingroup</td></tr><tr><td>Đơn vị thi công</td><td>Landmark, Cottecon &amp; Fountech</td></tr><tr><td>Đơn vị giám sát</td><td>Architype</td></tr><tr><td>Đơn vị phân phối</td><td>Minh Hưng Land</td></tr><tr><td>Tổng diện tích</td><td>2,3 ha</td></tr><tr><td>Mật độ</td><td>26,49%</td></tr><tr><td>Loại hình phát triển</td><td>Căn hộ chung cư cao cấp, SkyVillas, Penthouse &amp; Shopoffice</td></tr><tr><td>Loại căn hộ</td><td>Chung cư, Penhouse, Sky Villas</td></tr><tr><td>Ngày khởi công</td><td>15/11/2016</td></tr><tr><td>Ngày bàn giao</td><td>Tháng 4/2019</td></tr><tr><td>Giá trung bình (m2)</td><td>Đang cập nhật</td></tr><tr><td>Giá trung bình (căn)</td><td>Đang cập nhật</td></tr><tr><td>Tình trạng mở bán</td><td>Sắp mở bán</td></tr></tbody></table><h3 class=\"v2_pd_ct_bg_title\">Hỗ trợ vay vốn đặc biệt từ Chủ Đầu Tư, tại Ngân hàng do Chủ đầu tư chỉ định</h3><div id=\"tongquan_description \" class=\"hotrovayvon-cnd v2_pd_dc_More_table\"><p>Chúng tôi đang nỗ lực làm việc với ngân hàng để đem tới chính sách vay vốn tốt nhất tới khách hàng khi mua dự án Vinhomes Skylake. Cảm ơn quý khách hàng luôn đồng hành cùng chúng tôi.</p></div><h3 class=\"v2_pd_ct_bg_title\">Tổng quan dự án</h3><div id=\"tongquan_description\" class=\"v2_pd_dc_More_table hotrovayvon-cnd\"><p><img src=\"http://dulieuvinhomes.vn/app/webroot/img/images/3.%20Vinhomes%20SkyLake/vinhomes-skylake4.gif\" alt=\"\"></p><p><strong>Gắn liền với cảm giác an nhiên, thuần khiết và trong lành, nước luôn là một yếu tố quan trọng hàng đầu trong quan niệm về phong thủy. Một bể cá trong nhà, dòng thác nhỏ trên bức tường hay không gian khoáng đạt của một hồ nước…, sẽ mang lại sinh khí cho cả ngôi nhà hay quy mô lớn hơn là một khu đô thị, một khu dân cư.</strong><br>Đó chính là lý do sông hồ luôn được coi là những chiếc máy điều hòa tự nhiên, và những khu dân cư bên hồ luôn đứng đầu trong quyết định lựa chọn nơi sinh sống của những người am hiểu sành sỏi nhất.</p><p><strong>Gần nước – gần hạnh phúc</strong></p><p>&nbsp; Dựa trên những nghiên cứu khoa học đã được chứng thực, nhà sinh vật biển Wallace J. Nichols trong cuốn sách nổi tiếng Blue Minds đã đưa ra những nhận định đáng kinh ngạc về sức mạnh của nước đối với tinh thần của con người. Ông cho rằng màu xanh, đặc biệt là màu xanh dương của mặt nước luôn mang lại những cảm giác tốt đẹp, đó là sự tin tưởng, yên bình và an toàn. Wallace J. Nichols cũng chỉ ra những bằng chứng cho thấy bằng cách ở gần, trên, trong và dưới nước đều có thể làm con người hạnh phúc, khỏe khoắn, yêu đời hơn. “Nước gắn với con người từ khi chưa được sinh ra. Việc tiếp xúc với môi trường tự nhiên như nước có thể có thể làm giảm đáng kể các tâm trạng tiêu cực và những tác động tiêu cực của stress” – Wallace J. Nichols nhấn mạnh trong tác phẩm của mình</p><p>&nbsp; Thực tế cho thấy, những thành phố được mệnh danh là lãng mạn hay hạnh phúc nhất đều gắn liền với màu xanh của mặt nước. Venice (Ý) có lẽ là thành phố nổi tiếng nhất. Thành phố trên sông này hoàn toàn không có tiếng xe cộ ồn ào, khí thải và bụi bặm, chỉ có sự yên bình của nước và những con thuyền bồng bềnh trên sóng, len lỏi giữa những ngôi nhà. Sự lãng mạn của những con sông đã khiến Venice xinh đẹp được gọi là “thành phố của tình yêu”, nơi con người có thể tìm thấy sự thư thái, êm dịu và vui vẻ trong tâm hồn.</p><p><img src=\"http://dulieuvinhomes.vn/app/webroot/img/images/3.%20Vinhomes%20SkyLake/vinhomes-skylake1.gif\" alt=\"\"></p><p>&nbsp; Copenhagen (Đan Mạch) – thành phố được mệnh danh là “thành phố xanh và hạnh phúc” nhất thế giới cũng là nơi mà cư dân được đắm chìm trong màu xanh của nước. Đó là Amager Strandpark, một trong những bãi biển đẹp nhất Đan Mạch với những đụn cát trắng mịn, nước biển trong xanh mát rượi, vịnh Oresund với câu chuyện về tình yêu của nàng tiên cá bất diệt hay những hồ nước, dòng kênh… lãng mạn chảy vòng quanh thành phố. Màu xanh dương hiền hòa, êm ái của nước đã khiến cho Copenhagen có được sự yên bình và cuốn hút khó cưỡng.</p><p><strong>Hồ điều hòa, sông tự nhiên… làm nên hồn cốt của Hà Nội</strong></p><p>&nbsp; Xếp thứ 4 trong số các thành phố hạnh phúc khu vực châu Á – Thái Bình Dương theo một khảo sát của MasterCard Worldwide đầu năm 2016, Hà Nội cũng là thành phố tràn ngập màu xanh của nước – từ sông Hồng hiền hòa thơ mộng đến hồ Tây mênh mông lãng mạn cùng hệ thống hồ trải rộng trên khắp thành phố.</p><p><img src=\"http://dulieuvinhomes.vn/app/webroot/img/images/3.%20Vinhomes%20SkyLake/Rumor1.jpg\" alt=\"\"></p><p>&nbsp; Nắm vững được nguyên lý hạnh phúc của nước, không ít “ông lớn” trong ngành bất động sản đã coi nước là một yếu tố cực kỳ quan trọng khi xây dựng các dự án đô thị của mình. Mới đây nhất, khi thông tin khởi công dự án Công viên, hồ điều hòa Cầu Giấy lớn bậc nhất Hà Nội, nằm tại khu vực giao cắt giữa đường Dương Đình Nghệ và đường Phạm Hùng được công bố, người dân Hà Nội lại thêm phần háo hức bởi thành phố sắp có thêm một lá phổi xanh rộng và đẹp.</p><p>&nbsp; Trong công viên rộng tới 32ha này, 19ha là diện tích mặt nước, phần còn lại là cây xanh cùng hàng loạt tiện ích chức năng công cộng độc đáo. Đặc biệt,thị trường bất động sản đã bắt đầu xôn xao về dự án căn hộ đẳng cấp nằm cạnh hồ điều hòa lớn bậc nhất Thủ đô này, do một “đại gia” hàng đầu trong lĩnh vực bất động sản phát triển. Các thông tin tuy chưa được chính thức tiết lộ nhưng được giới kinh doanh bất động sản “rỉ tai” nhau các được sắp đặt vô cùng khéo léo mang đến một không gian cực kỳ trong lành. Đặc biệt, tầm nhìn trải rộng tại dự án này là điểm nhấn cực kỳ đắt giá.</p><p>&nbsp; Khu vực Công viên, hồ điều hòa Cầu Giấy được thị trường đánh giá sẽ kiến tạo nên một vùng không gian tuyệt đẹp với nước – suối nguồn tươi trẻ – sẽ mang đến cho cư dân sự khỏe mạnh cả về thể chất và tâm hồn. Cư dân sống quanh đây sẽ được đắm mình trong cuộc sống tiện nghi, đẳng cấp và thuận tiện tuyệt đối nhưng cũng nhẹ nhõm vô cùng với màu xanh của cỏ cây, trời nước.</p><p>&nbsp; Sống trong một môi trường hoàn hảo với cây xanh và hồ nước là tiêu chuẩn lý tưởng – đặc biệt là ở các thành phố lớn. Ở gần nước để được hạnh phúc hơn, đó là triết lý sống hiện đại đang được lan tỏa tại các đô thị trên toàn thế giới.</p><p><img src=\"http://dulieuvinhomes.vn/app/webroot/img/images/3.%20Vinhomes%20SkyLake/vinhomes-skylake5.gif\" alt=\"\"></p><p><strong>&nbsp; Ngày 24/10, UBND TP Hà Nội ban hành Quyết định số 5890/QĐ-UBND điều chỉnh một số nội dung ghi tại Quyết định số 5612/QĐ-UBND ngày 7/10/2016 về việc giao 23.134,3m2 tại Khu đô thị mới Cầu Giấy cho Công ty TNHH Phát triển công viên trung tâm.</strong><br>Được biết, khu đất rộng 23.134,3m2 nằm tại ô đất ký hiệu E1.3 thuộc Khu đô thị mới Cầu Giấy, phường Mỹ Đình 1, quận Nam Từ Liêm. Toàn bộ khu vực này đã hoàn thành công tác giải phóng mặt bằng và giao cho Công ty TNHH Phát triển công viên trung tâm để thực hiện dự án Tổ hợp căn hộ, thương mại, văn phòng.</p><p>&nbsp; Theo quyết định, UBND thành phố điều chỉnh tên, ký hiệu bản vẽ để xác định vị trí, ranh giới, diện tích khu đất thực hiện dự án; điều chỉnh cơ cấu sử dụng đất của dự án, trong đó, 11.584,8m2 đất (tháp HH1, HH2, HH3) để xây dựng Tổ hợp căn hộ dịch vụ thương mại, văn phòng, nhà trẻ và sinh hoạt cộng đồng cao 36 tầng và 41 tầng (không bao gồm tầng kỹ thuật và 3 tầng hầm), 11.549,5m2 đất để làm sân, vườn hoa, đường nội bộ và các công trình hạ tầng kỹ thuật phục vụ cho dự án (phần dưới xây dựng tầng hầm).</p><p>&nbsp; UBND thành phố cũng giao công ty TNHH Phát triển công viên trung tâm có trách nhiệm tiếp tục thực hiện các nội dung ghi tại Điều 2 Quyết định số 5612/QĐ-UBND ngày 7/10/2016 của UBND thành phố.</p><p>&nbsp; Đồng thời, liên hệ với Sở Tài nguyên và Môi trường để xác định đơn giá thu tiền sử dụng đất, tiền thuê đất và ký hợp đồng thuê đất; lập hồ sơ mốc giới giao đất và hướng dẫn thủ tục cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu tài sản gắn liền với đất. Liên hệ với Cục Thuế Hà Nội để nộp tiền sử dụng đất, tiền thuê đất theo quy định…</p><p>Một số hình ảnh dự án Vinhomes Skylake</p></div></div></div>\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n&nbsp;\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:13:12', '2018-11-08 16:13:12', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-11-08 16:39:12', '2018-11-08 16:39:12', '\n\n\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\n\n\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\n<ul>\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\n 	<li>Đơn vị giám sát: ICP Project</li>\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\n 	<li>Tổng diện tích: 13.650,8 m2</li>\n 	<li>Mật độ xây dựng: 34%</li>\n 	<li>Tầng cao: 22 tầng</li>\n 	<li>Quy mô: 664 căn hộ</li>\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\n</ul>\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\n\n\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\n\n\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\n\n\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\n\n\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\n\n&nbsp;\n\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\n\n\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\n\n\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\n\n\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\n\n\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\n\n\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\n\n\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\n\n\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\n\n\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\n\n\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\n\n\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\n\n\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\n\n\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2018-11-08 16:39:12', '2018-11-08 16:39:12', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-autosave-v1/', 0, 'revision', '', 0),
(52, 1, '2018-11-08 16:16:32', '2018-11-08 16:16:32', '\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n&nbsp;\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:16:32', '2018-11-08 16:16:32', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-11-08 16:23:56', '2018-11-08 16:23:56', '[[\"T\\u00ean d\\u1ef1 \\u00e1n\",\"\"],[\"V\\u1ecb tr\\u00ed\",\"\"],[\"Ch\\u1ee7 \\u0111\\u1ea7u t\\u01b0\",\"\"],[\"\\u0110\\u01a1n v\\u1ecb thi c\\u00f4ng\",\"\"],[\"\\u0110\\u01a1n v\\u1ecb gi\\u00e1m s\\u00e1t\",\"\"],[\"\\u0110\\u01a1n v\\u1ecb ph\\u00e2n ph\\u1ed1i\",\"\"],[\"T\\u1ed5ng di\\u1ec7n t\\u00edch\",\"\"],[\"M\\u1eadt \\u0111\\u1ed9\",\"\"],[\"Lo\\u1ea1i h\\u00ecnh ph\\u00e1t tri\\u1ec3n\",\"\"],[\"Lo\\u1ea1i c\\u0103n h\\u1ed9\",\"\"],[\"Ng\\u00e0y kh\\u1edfi c\\u00f4ng\",\"\"],[\"Ng\\u00e0y b\\u00e0n giao\",\"\"],[\"Gi\\u00e1 trung b\\u00ecnh (m2)\",\"\"],[\"Gi\\u00e1 trung b\\u00ecnh (c\\u0103n)\",\"\"],[\"T\\u00ecnh tr\\u1ea1ng m\\u1edf b\\u00e1n\",\"\"]]', 'Conic Residever', '', 'publish', 'closed', 'closed', '', 'conic-residever', '', '', '2018-11-08 16:26:32', '2018-11-08 16:26:32', '', 0, 'http://thoidaihoangkim.com/?post_type=tablepress_table&#038;p=53', 0, 'tablepress_table', 'application/json', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(54, 1, '2018-11-08 16:26:32', '2018-11-08 16:26:32', '[[\"T\\u00ean d\\u1ef1 \\u00e1n\",\"\"],[\"V\\u1ecb tr\\u00ed\",\"\"],[\"Ch\\u1ee7 \\u0111\\u1ea7u t\\u01b0\",\"\"],[\"\\u0110\\u01a1n v\\u1ecb thi c\\u00f4ng\",\"\"],[\"\\u0110\\u01a1n v\\u1ecb gi\\u00e1m s\\u00e1t\",\"\"],[\"\\u0110\\u01a1n v\\u1ecb ph\\u00e2n ph\\u1ed1i\",\"\"],[\"T\\u1ed5ng di\\u1ec7n t\\u00edch\",\"\"],[\"M\\u1eadt \\u0111\\u1ed9\",\"\"],[\"Lo\\u1ea1i h\\u00ecnh ph\\u00e1t tri\\u1ec3n\",\"\"],[\"Lo\\u1ea1i c\\u0103n h\\u1ed9\",\"\"],[\"Ng\\u00e0y kh\\u1edfi c\\u00f4ng\",\"\"],[\"Ng\\u00e0y b\\u00e0n giao\",\"\"],[\"Gi\\u00e1 trung b\\u00ecnh (m2)\",\"\"],[\"Gi\\u00e1 trung b\\u00ecnh (c\\u0103n)\",\"\"],[\"T\\u00ecnh tr\\u1ea1ng m\\u1edf b\\u00e1n\",\"\"]]', 'Conic Residever', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-11-08 16:26:32', '2018-11-08 16:26:32', '', 53, 'http://thoidaihoangkim.com/2018/11/08/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-11-08 16:28:06', '2018-11-08 16:28:06', '[table id=1 /]\r\n<br><br>\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n<br><br>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<br><br>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<br><br>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n<br><br>\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\n<br><br>\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n<br><br>\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n<br><br>\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n<br><br>\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n<br><br>\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n<br><br>\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n<br><br>\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n<br><br>\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\n<br><br>\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<br><br>\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\n<br><br>\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n<br><br>\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n<br><br>\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n<br><br>\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n<br><br>\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\n<br><br>\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:28:06', '2018-11-08 16:28:06', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-11-08 16:28:24', '2018-11-08 16:28:24', '[table id=1 /]\r\n\r\n\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n\r\n\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:28:24', '2018-11-08 16:28:24', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-11-08 16:38:10', '2018-11-08 16:38:10', '[supsystic-tables id=1]\r\n\r\n\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n\r\n\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:38:10', '2018-11-08 16:38:10', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-11-08 16:41:00', '2018-11-08 16:41:00', '[supsystic-tables id=1]\r\n\r\n<br><br>\r\n\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:41:00', '2018-11-08 16:41:00', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-11-08 16:41:53', '2018-11-08 16:41:53', '[supsystic-tables id=1]\r\n<br>\r\n\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Reverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-08 16:41:53', '2018-11-08 16:41:53', '', 30, 'http://thoidaihoangkim.com/2018/11/08/30-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-11-14 17:08:14', '2018-11-14 17:08:14', '', 'Căn hộ 72.96 m2', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-11-14 17:08:14', '2018-11-14 17:08:14', '', 0, 'http://thoidaihoangkim.com/?p=60', 0, 'post', '', 0),
(61, 1, '2018-11-08 16:49:19', '2018-11-08 16:49:19', '', 'Căn hộ 72.96 m2', '', 'publish', 'open', 'open', '', 'can-ho-72-96-m2', '', '', '2018-11-08 16:49:19', '2018-11-08 16:49:19', '', 0, 'http://thoidaihoangkim.com/?p=61', 0, 'post', '', 0),
(62, 1, '2018-11-08 16:48:42', '2018-11-08 16:48:42', '', '72-96', '', 'inherit', 'open', 'closed', '', '72-96', '', '', '2018-11-08 16:48:42', '2018-11-08 16:48:42', '', 61, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/72-96.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2018-11-08 16:49:19', '2018-11-08 16:49:19', '', 'Căn hộ 72.96 m2', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-11-08 16:49:19', '2018-11-08 16:49:19', '', 61, 'http://thoidaihoangkim.com/2018/11/08/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-11-08 16:49:56', '2018-11-08 16:49:56', '', 'Căn hộ 49.41 m2', '', 'publish', 'open', 'open', '', 'can-ho-49-41-m2', '', '', '2018-11-08 16:49:56', '2018-11-08 16:49:56', '', 0, 'http://thoidaihoangkim.com/?p=64', 0, 'post', '', 0),
(65, 1, '2018-11-08 16:49:48', '2018-11-08 16:49:48', '', '49.41', '', 'inherit', 'open', 'closed', '', '49-41', '', '', '2018-11-08 16:49:48', '2018-11-08 16:49:48', '', 64, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/49.41.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2018-11-08 16:49:56', '2018-11-08 16:49:56', '', 'Căn hộ 49.41 m2', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-11-08 16:49:56', '2018-11-08 16:49:56', '', 64, 'http://thoidaihoangkim.com/2018/11/08/64-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-11-08 16:50:48', '2018-11-08 16:50:48', '', 'Căn hộ 50.19 m2', '', 'publish', 'open', 'open', '', 'can-ho-50-19-m2', '', '', '2018-11-08 16:50:52', '2018-11-08 16:50:52', '', 0, 'http://thoidaihoangkim.com/?p=67', 0, 'post', '', 0),
(68, 1, '2018-11-08 16:50:41', '2018-11-08 16:50:41', '', '50.19', '', 'inherit', 'open', 'closed', '', '50-19', '', '', '2018-11-08 16:50:41', '2018-11-08 16:50:41', '', 67, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/50.19.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2018-11-08 16:50:48', '2018-11-08 16:50:48', '', 'Căn hộ 50.19 m2', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-11-08 16:50:48', '2018-11-08 16:50:48', '', 67, 'http://thoidaihoangkim.com/2018/11/08/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-11-08 16:51:23', '2018-11-08 16:51:23', '', 'Căn hộ 72.96 m2', '', 'publish', 'open', 'open', '', 'can-ho-72-96-m2-2', '', '', '2018-11-08 16:51:23', '2018-11-08 16:51:23', '', 0, 'http://thoidaihoangkim.com/?p=70', 0, 'post', '', 0),
(71, 1, '2018-11-08 16:51:18', '2018-11-08 16:51:18', '', '72.96', '', 'inherit', 'open', 'closed', '', '72-96-2', '', '', '2018-11-08 16:51:18', '2018-11-08 16:51:18', '', 70, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/72.96.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2018-11-08 16:51:23', '2018-11-08 16:51:23', '', 'Căn hộ 72.96 m2', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-11-08 16:51:23', '2018-11-08 16:51:23', '', 70, 'http://thoidaihoangkim.com/2018/11/08/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-11-08 16:51:57', '2018-11-08 16:51:57', '', 'Căn hộ 66.52 m2', '', 'publish', 'open', 'open', '', 'can-ho-66-52-m2', '', '', '2018-11-08 16:51:57', '2018-11-08 16:51:57', '', 0, 'http://thoidaihoangkim.com/?p=73', 0, 'post', '', 0),
(74, 1, '2018-11-08 16:51:52', '2018-11-08 16:51:52', '', '66.52', '', 'inherit', 'open', 'closed', '', '66-52', '', '', '2018-11-08 16:51:52', '2018-11-08 16:51:52', '', 73, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/66.52.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2018-11-08 16:51:57', '2018-11-08 16:51:57', '', 'Căn hộ 66.52 m2', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-11-08 16:51:57', '2018-11-08 16:51:57', '', 73, 'http://thoidaihoangkim.com/2018/11/08/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-11-08 16:52:33', '2018-11-08 16:52:33', '', 'Căn hộ 64.64 m2', '', 'publish', 'open', 'open', '', 'can-ho-64-64-m2', '', '', '2018-11-20 17:28:09', '2018-11-20 17:28:09', '', 0, 'http://thoidaihoangkim.com/?p=76', 0, 'post', '', 0),
(77, 1, '2018-11-08 16:52:28', '2018-11-08 16:52:28', '', '64.64', '', 'inherit', 'open', 'closed', '', '64-64', '', '', '2018-11-08 16:52:28', '2018-11-08 16:52:28', '', 76, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/64.64.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-11-08 16:52:33', '2018-11-08 16:52:33', '', 'Căn hộ 64.64 m2', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-11-08 16:52:33', '2018-11-08 16:52:33', '', 76, 'http://thoidaihoangkim.com/2018/11/08/76-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-11-08 16:53:00', '2018-11-08 16:53:00', '', 'Căn hộ 66.96 m2', '', 'publish', 'open', 'open', '', 'can-ho-66-96-m2', '', '', '2018-11-20 17:26:49', '2018-11-20 17:26:49', '', 0, 'http://thoidaihoangkim.com/?p=79', 0, 'post', '', 0),
(80, 1, '2018-11-08 16:52:55', '2018-11-08 16:52:55', '', '66.96', '', 'inherit', 'open', 'closed', '', '66-96', '', '', '2018-11-08 16:52:55', '2018-11-08 16:52:55', '', 79, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/66.96.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2018-11-08 16:53:00', '2018-11-08 16:53:00', '', 'Căn hộ 66.96 m2', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-11-08 16:53:00', '2018-11-08 16:53:00', '', 79, 'http://thoidaihoangkim.com/2018/11/08/79-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-11-11 12:34:05', '2018-11-11 12:34:05', '<h2>Đang chờ Dữ liệu</h2>', 'Thành phố xanh tươi', '', 'publish', 'open', 'open', '', 'thanh-pho-xanh-tuoi', '', '', '2018-11-11 12:34:05', '2018-11-11 12:34:05', '', 0, 'http://thoidaihoangkim.com/?p=83', 0, 'post', '', 0),
(84, 1, '2018-11-11 12:34:05', '2018-11-11 12:34:05', '<h2>Đang chờ Dữ liệu</h2>', 'Thành phố xanh tươi', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-11-11 12:34:05', '2018-11-11 12:34:05', '', 83, 'http://thoidaihoangkim.com/2018/11/11/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-11-11 12:35:13', '2018-11-11 12:35:13', '<h2>Đang chờ Dữ liệu</h2>', 'Phương Tiện', '', 'publish', 'open', 'open', '', 'phuong-tien', '', '', '2018-11-11 12:45:55', '2018-11-11 12:45:55', '', 0, 'http://thoidaihoangkim.com/?p=85', 0, 'post', '', 0),
(86, 1, '2018-11-11 12:35:13', '2018-11-11 12:35:13', '', 'Phương Tiện', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-11-11 12:35:13', '2018-11-11 12:35:13', '', 85, 'http://thoidaihoangkim.com/2018/11/11/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-11-11 12:35:34', '2018-11-11 12:35:34', '<h2>Đang chờ Dữ liệu</h2>', 'Cộng đồng', '', 'publish', 'open', 'open', '', 'cong-dong', '', '', '2018-11-11 12:45:59', '2018-11-11 12:45:59', '', 0, 'http://thoidaihoangkim.com/?p=87', 0, 'post', '', 0),
(88, 1, '2018-11-11 12:35:34', '2018-11-11 12:35:34', '', 'Cộng đồng', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-11-11 12:35:34', '2018-11-11 12:35:34', '', 87, 'http://thoidaihoangkim.com/2018/11/11/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-11-11 12:35:53', '2018-11-11 12:35:53', '<h2>Đang chờ Dữ liệu</h2>', 'Cuộc sống', '', 'publish', 'open', 'open', '', 'cuoc-song', '', '', '2018-11-11 12:46:05', '2018-11-11 12:46:05', '', 0, 'http://thoidaihoangkim.com/?p=89', 0, 'post', '', 0),
(90, 1, '2018-11-11 12:35:53', '2018-11-11 12:35:53', '', 'Cuộc sống', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-11-11 12:35:53', '2018-11-11 12:35:53', '', 89, 'http://thoidaihoangkim.com/2018/11/11/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-11-11 12:36:09', '2018-11-11 12:36:09', '<h2>Đang chờ Dữ liệu</h2>', 'Gia đình', '', 'publish', 'open', 'open', '', 'gia-dinh', '', '', '2018-11-11 12:46:14', '2018-11-11 12:46:14', '', 0, 'http://thoidaihoangkim.com/?p=91', 0, 'post', '', 0),
(92, 1, '2018-11-11 12:36:09', '2018-11-11 12:36:09', '', 'Gia đình', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-11-11 12:36:09', '2018-11-11 12:36:09', '', 91, 'http://thoidaihoangkim.com/2018/11/11/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-11-11 12:45:55', '2018-11-11 12:45:55', '<h2>Đang chờ Dữ liệu</h2>', 'Phương Tiện', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-11-11 12:45:55', '2018-11-11 12:45:55', '', 85, 'http://thoidaihoangkim.com/2018/11/11/85-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-11-11 12:45:59', '2018-11-11 12:45:59', '<h2>Đang chờ Dữ liệu</h2>', 'Cộng đồng', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-11-11 12:45:59', '2018-11-11 12:45:59', '', 87, 'http://thoidaihoangkim.com/2018/11/11/87-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-11-11 12:46:05', '2018-11-11 12:46:05', '<h2>Đang chờ Dữ liệu</h2>', 'Cuộc sống', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-11-11 12:46:05', '2018-11-11 12:46:05', '', 89, 'http://thoidaihoangkim.com/2018/11/11/89-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-11-11 12:46:14', '2018-11-11 12:46:14', '<h2>Đang chờ Dữ liệu</h2>', 'Gia đình', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-11-11 12:46:14', '2018-11-11 12:46:14', '', 91, 'http://thoidaihoangkim.com/2018/11/11/91-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-11-11 16:34:00', '2018-11-11 16:34:00', '“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut lacus sed lacus porttitor tincidunt. Donec congue metus vitae euismod luctus. Donec vel dolor eu ex accumsan tempor ”', 'Chủ Tịch', '', 'publish', 'open', 'open', '', 'chu-tich', '', '', '2018-11-11 16:44:18', '2018-11-11 16:44:18', '', 0, 'http://thoidaihoangkim.com/?p=97', 0, 'post', '', 0),
(99, 1, '2018-11-11 16:33:54', '2018-11-11 16:33:54', '', 'Boss', '', 'inherit', 'open', 'closed', '', 'boss', '', '', '2018-11-11 16:33:54', '2018-11-11 16:33:54', '', 97, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Boss.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2018-11-11 16:34:00', '2018-11-11 16:34:00', '', 'Chủ Tịch', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-11-11 16:34:00', '2018-11-11 16:34:00', '', 97, 'http://thoidaihoangkim.com/2018/11/11/97-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-11-11 16:39:41', '2018-11-11 16:39:41', '“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut lacus sed lacus porttitor tincidunt. Donec congue metus vitae euismod luctus. Donec vel dolor eu ex accumsan tempor ”', 'Phó Chủ Tịch', '', 'publish', 'open', 'open', '', 'pho-chu-tich', '', '', '2018-11-11 16:43:56', '2018-11-11 16:43:56', '', 0, 'http://thoidaihoangkim.com/?p=101', 0, 'post', '', 0),
(102, 1, '2018-11-11 16:39:34', '2018-11-11 16:39:34', '', 'pBoss', '', 'inherit', 'open', 'closed', '', 'pboss', '', '', '2018-11-11 16:39:34', '2018-11-11 16:39:34', '', 101, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/pBoss.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2018-11-11 16:39:41', '2018-11-11 16:39:41', '', 'Phó Chủ Tịch', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-11-11 16:39:41', '2018-11-11 16:39:41', '', 101, 'http://thoidaihoangkim.com/2018/11/11/101-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-11-11 16:43:56', '2018-11-11 16:43:56', '“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut lacus sed lacus porttitor tincidunt. Donec congue metus vitae euismod luctus. Donec vel dolor eu ex accumsan tempor ”', 'Phó Chủ Tịch', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-11-11 16:43:56', '2018-11-11 16:43:56', '', 101, 'http://thoidaihoangkim.com/2018/11/11/101-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-11-11 16:44:18', '2018-11-11 16:44:18', '“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut lacus sed lacus porttitor tincidunt. Donec congue metus vitae euismod luctus. Donec vel dolor eu ex accumsan tempor ”', 'Chủ Tịch', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-11-11 16:44:18', '2018-11-11 16:44:18', '', 97, 'http://thoidaihoangkim.com/2018/11/11/97-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-11-11 17:44:54', '2018-11-11 17:44:54', '{\n    \"blogdescription\": {\n        \"value\": \"Kh\\u00e1m Ph\\u00e1 Ng\\u00f4i Nh\\u00e0 C\\u1ee7a B\\u1ea1n\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-11 17:44:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4025b73e-ee16-4623-8d53-4e741c53d9f8', '', '', '2018-11-11 17:44:54', '2018-11-11 17:44:54', '', 0, 'http://thoidaihoangkim.com/2018/11/11/4025b73e-ee16-4623-8d53-4e741c53d9f8/', 0, 'customize_changeset', '', 0),
(107, 1, '2018-11-11 17:46:18', '2018-11-11 17:46:18', '', 'logo-02', '', 'inherit', 'open', 'closed', '', 'logo-02', '', '', '2018-11-11 17:46:18', '2018-11-11 17:46:18', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/logo-02.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2018-11-11 17:46:29', '2018-11-11 17:46:29', 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/cropped-logo-02.png', 'cropped-logo-02.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-02-png', '', '', '2018-11-11 17:46:29', '2018-11-11 17:46:29', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/cropped-logo-02.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(110, 1, '2018-11-12 14:56:51', '2018-11-12 14:56:51', '[supsystic-tables id=1]\r\n<br>\r\n\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.', 'Conic Riverside', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-11-12 14:56:51', '2018-11-12 14:56:51', '', 30, 'http://thoidaihoangkim.com/2018/11/12/30-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-11-12 16:12:52', '2018-11-12 16:12:52', 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/cropped-logo-02-1.png', 'cropped-logo-02-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-02-1-png', '', '', '2018-11-12 16:12:52', '2018-11-12 16:12:52', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/cropped-logo-02-1.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2018-11-12 16:12:55', '2018-11-12 16:12:55', '{\n    \"site_icon\": {\n        \"value\": 112,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-12 16:12:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c4960c3-2abb-4017-8d63-3b375be1faf7', '', '', '2018-11-12 16:12:55', '2018-11-12 16:12:55', '', 0, 'http://thoidaihoangkim.com/2018/11/12/1c4960c3-2abb-4017-8d63-3b375be1faf7/', 0, 'customize_changeset', '', 0),
(114, 1, '2018-11-12 17:09:33', '2018-11-12 17:09:33', 'MÔ HÌNH CĂN HỘ CAO CẤP\r\nTỔNG 1.104, GỒM 2 TÒA NHÀ, MỖI TÒA GỒM 552 CĂN HỘ\r\nDIỆN TÍCH CĂN HỘ :\r\nLOẠI A-3 PHÒNG NGỦ &amp; 2 PHÒNG TẮM : 128m2\r\nLOẠI B- 3 PHÒNG NGỦ &amp; PHÒNG TẮM : 115m2\r\nLOẠI C- 3 PHÒNG NGỦ &amp; PHÒNG TẮM : 97m2\r\n\r\nMÔ HÌNH DỰ ÁN CÔNG TY E&amp;O\r\n\r\n<img class=\"wp-image-115 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture1.jpg\" alt=\"\" width=\"964\" height=\"720\" />\r\n\r\n<img class=\"wp-image-116 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture2.jpg\" alt=\"\" width=\"964\" height=\"720\" />\r\n\r\n<b>MÔ HÌNH DỰ ÁN NHÀ TRỆT </b>\r\n\r\n<img class=\"wp-image-117 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture3.jpg\" alt=\"\" width=\"721\" height=\"643\" />\r\n\r\n<img class=\"wp-image-118 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture4.jpg\" alt=\"\" width=\"727\" height=\"643\" />\r\n\r\n&nbsp;', 'E&O', '', 'trash', 'closed', 'closed', '', 'eo__trashed', '', '', '2018-11-14 16:40:29', '2018-11-14 16:40:29', '', 0, 'http://thoidaihoangkim.com/?page_id=114', 0, 'page', '', 0),
(115, 1, '2018-11-12 17:07:36', '2018-11-12 17:07:36', '', 'Picture1', '', 'inherit', 'open', 'closed', '', 'picture1', '', '', '2018-11-12 17:07:36', '2018-11-12 17:07:36', '', 114, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture1.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2018-11-12 17:07:37', '2018-11-12 17:07:37', '', 'Picture2', '', 'inherit', 'open', 'closed', '', 'picture2', '', '', '2018-11-12 17:07:37', '2018-11-12 17:07:37', '', 114, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture2.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2018-11-12 17:07:38', '2018-11-12 17:07:38', '', 'Picture3', '', 'inherit', 'open', 'closed', '', 'picture3', '', '', '2018-11-12 17:07:38', '2018-11-12 17:07:38', '', 114, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture3.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2018-11-12 17:07:39', '2018-11-12 17:07:39', '', 'Picture4', '', 'inherit', 'open', 'closed', '', 'picture4', '', '', '2018-11-12 17:07:39', '2018-11-12 17:07:39', '', 114, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture4.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2018-11-12 17:07:40', '2018-11-12 17:07:40', '', 'Picture5', '', 'inherit', 'open', 'closed', '', 'picture5', '', '', '2018-11-12 17:07:40', '2018-11-12 17:07:40', '', 114, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture5.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2018-11-12 17:09:33', '2018-11-12 17:09:33', 'MÔ HÌNH CĂN HỘ CAO CẤP\r\nTỔNG 1.104, GỒM 2 TÒA NHÀ, MỖI TÒA GỒM 552 CĂN HỘ\r\nDIỆN TÍCH CĂN HỘ :\r\nLOẠI A-3 PHÒNG NGỦ &amp; 2 PHÒNG TẮM : 128m2\r\nLOẠI B- 3 PHÒNG NGỦ &amp; PHÒNG TẮM : 115m2\r\nLOẠI C- 3 PHÒNG NGỦ &amp; PHÒNG TẮM : 97m2\r\n\r\nMÔ HÌNH DỰ ÁN CÔNG TY E&amp;O\r\n\r\n<img class=\"wp-image-115 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture1.jpg\" alt=\"\" width=\"964\" height=\"720\" />\r\n\r\n<img class=\"wp-image-116 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture2.jpg\" alt=\"\" width=\"964\" height=\"720\" />\r\n\r\n<b>MÔ HÌNH DỰ ÁN NHÀ TRỆT </b>\r\n\r\n<img class=\"wp-image-117 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture3.jpg\" alt=\"\" width=\"721\" height=\"643\" />\r\n\r\n<img class=\"wp-image-118 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture4.jpg\" alt=\"\" width=\"727\" height=\"643\" />\r\n\r\n&nbsp;', 'E&O', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-11-12 17:09:33', '2018-11-12 17:09:33', '', 114, 'http://thoidaihoangkim.com/conic-riverside/114-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-11-12 17:12:33', '2018-11-12 17:12:33', '', 'Loại A-3', '', 'trash', 'open', 'open', '', 'loai-a-3__trashed', '', '', '2018-11-12 17:17:40', '2018-11-12 17:17:40', '', 0, 'http://thoidaihoangkim.com/?p=123', 0, 'post', '', 0),
(124, 1, '2018-11-12 17:12:33', '2018-11-12 17:12:33', '', 'Loại A-3', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-11-12 17:12:33', '2018-11-12 17:12:33', '', 123, 'http://thoidaihoangkim.com/conic-riverside/123-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-11-12 17:17:54', '2018-11-12 17:17:54', '', 'Loại A-3', '', 'trash', 'open', 'open', '', 'loai-a-3__trashed-2', '', '', '2018-11-19 04:41:08', '2018-11-19 04:41:08', '', 0, 'http://thoidaihoangkim.com/?p=126', 0, 'post', '', 0),
(127, 1, '2018-11-12 17:17:54', '2018-11-12 17:17:54', '', 'Loại A-3', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-11-12 17:17:54', '2018-11-12 17:17:54', '', 126, 'http://thoidaihoangkim.com/conic-riverside/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-11-12 17:21:03', '2018-11-12 17:21:03', '', 'Picture1', '', 'inherit', 'open', 'closed', '', 'picture1-2', '', '', '2018-11-12 17:21:03', '2018-11-12 17:21:03', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture1.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2018-11-12 17:28:14', '2018-11-12 17:28:14', '<b>CHỦ ĐẦU TƯ : Eastern &amp; Oriental </b><b>Berhad</b><b> &amp; Mitsui Fudosan Residential</b>\r\n\r\n<b>LOẠI HÌNH : </b><b>Căn</b> <b>hộ</b> <b>cao</b> <b>cấp</b>\r\n\r\n<b>TÒA/ TẦNG: 2 </b><b>Tòa</b><b> , 38 </b><b>tầng</b>\r\n\r\n<b>TỔNG SỐ CĂN HỘ : 256 </b><b>căn</b>\r\n\r\n<b>LOẠI THIẾT KẾ : </b>\r\n\r\n<b>1 </b><b>phòng</b> <b>ngủ</b>\r\n\r\n<b>3 </b><b>phòng</b> <b>ngủ</b>\r\n\r\n<b>Penthouse</b>\r\n\r\nCăn hộ nằm ở vị trí giữa các tòa nhà cao tầng của chốn phồn hoa bậc nhất tại trung tâm thành phố Kuala Lumpua, The Mews mang tới luồng không khí trong lành, tràng ngập sắc màu thiên nhiên và môi trường xanh bền vững. Dự án căn hộ dịch vụ cao cấp đánh dấu một sự hợp tác uy tín giữa E&amp;O và nhà phát triển lớn nhất Nhật Bản, Mitsui Fudosan Residential.\r\n\r\n<img class=\"size-full wp-image-130 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture6.jpg\" alt=\"\" width=\"797\" height=\"444\" />\r\n\r\n&nbsp;\r\n\r\n<b>KHÔNG GIAN BÊN TRONG CĂN HỘ </b>\r\n\r\n<b>THE MEWS  KUALA LUMPUR  </b>\r\n\r\n<img class=\"size-full wp-image-131 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture8.jpg\" alt=\"\" width=\"749\" height=\"454\" /> <img class=\"size-full wp-image-132 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture9.jpg\" alt=\"\" width=\"733\" height=\"454\" /> <img class=\"size-full wp-image-133 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture10.jpg\" alt=\"\" width=\"749\" height=\"453\" /> <img class=\"size-full wp-image-134 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture11.jpg\" alt=\"\" width=\"718\" height=\"479\" />\r\n\r\n<img class=\"size-full wp-image-135 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture12.jpg\" alt=\"\" width=\"689\" height=\"440\" /> <img class=\"size-full wp-image-136 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture13.jpg\" alt=\"\" width=\"734\" height=\"445\" /> <img class=\"size-full wp-image-137 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture14.jpg\" alt=\"\" width=\"692\" height=\"476\" /> <img class=\"alignnone size-full wp-image-138\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture15.jpg\" alt=\"\" width=\"734\" height=\"444\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'THE MEWS KUALA LUMPUR CITY CENTER', '', 'trash', 'closed', 'closed', '', 'the-mews-kuala-lumpur-city-center__trashed', '', '', '2018-11-14 16:40:31', '2018-11-14 16:40:31', '', 0, 'http://thoidaihoangkim.com/?page_id=129', 0, 'page', '', 0),
(130, 1, '2018-11-12 17:24:32', '2018-11-12 17:24:32', '', 'Picture6', '', 'inherit', 'open', 'closed', '', 'picture6', '', '', '2018-11-12 17:24:32', '2018-11-12 17:24:32', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture6.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2018-11-12 17:26:40', '2018-11-12 17:26:40', '', 'Picture8', '', 'inherit', 'open', 'closed', '', 'picture8', '', '', '2018-11-12 17:26:40', '2018-11-12 17:26:40', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture8.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2018-11-12 17:26:41', '2018-11-12 17:26:41', '', 'Picture9', '', 'inherit', 'open', 'closed', '', 'picture9', '', '', '2018-11-12 17:26:41', '2018-11-12 17:26:41', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture9.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2018-11-12 17:26:42', '2018-11-12 17:26:42', '', 'Picture10', '', 'inherit', 'open', 'closed', '', 'picture10', '', '', '2018-11-12 17:26:42', '2018-11-12 17:26:42', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture10.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2018-11-12 17:26:42', '2018-11-12 17:26:42', '', 'Picture11', '', 'inherit', 'open', 'closed', '', 'picture11', '', '', '2018-11-12 17:26:42', '2018-11-12 17:26:42', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture11.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2018-11-12 17:27:57', '2018-11-12 17:27:57', '', 'Picture12', '', 'inherit', 'open', 'closed', '', 'picture12', '', '', '2018-11-12 17:27:57', '2018-11-12 17:27:57', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture12.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-11-12 17:27:58', '2018-11-12 17:27:58', '', 'Picture13', '', 'inherit', 'open', 'closed', '', 'picture13', '', '', '2018-11-12 17:27:58', '2018-11-12 17:27:58', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture13.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2018-11-12 17:27:58', '2018-11-12 17:27:58', '', 'Picture14', '', 'inherit', 'open', 'closed', '', 'picture14', '', '', '2018-11-12 17:27:58', '2018-11-12 17:27:58', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture14.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2018-11-12 17:27:59', '2018-11-12 17:27:59', '', 'Picture15', '', 'inherit', 'open', 'closed', '', 'picture15', '', '', '2018-11-12 17:27:59', '2018-11-12 17:27:59', '', 129, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture15.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-11-12 17:28:14', '2018-11-12 17:28:14', '<b>CHỦ ĐẦU TƯ : Eastern &amp; Oriental </b><b>Berhad</b><b> &amp; Mitsui Fudosan Residential</b>\r\n\r\n<b>LOẠI HÌNH : </b><b>Căn</b> <b>hộ</b> <b>cao</b> <b>cấp</b>\r\n\r\n<b>TÒA/ TẦNG: 2 </b><b>Tòa</b><b> , 38 </b><b>tầng</b>\r\n\r\n<b>TỔNG SỐ CĂN HỘ : 256 </b><b>căn</b>\r\n\r\n<b>LOẠI THIẾT KẾ : </b>\r\n\r\n<b>1 </b><b>phòng</b> <b>ngủ</b>\r\n\r\n<b>3 </b><b>phòng</b> <b>ngủ</b>\r\n\r\n<b>Penthouse</b>\r\n\r\nCăn hộ nằm ở vị trí giữa các tòa nhà cao tầng của chốn phồn hoa bậc nhất tại trung tâm thành phố Kuala Lumpua, The Mews mang tới luồng không khí trong lành, tràng ngập sắc màu thiên nhiên và môi trường xanh bền vững. Dự án căn hộ dịch vụ cao cấp đánh dấu một sự hợp tác uy tín giữa E&amp;O và nhà phát triển lớn nhất Nhật Bản, Mitsui Fudosan Residential.\r\n\r\n<img class=\"size-full wp-image-130 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture6.jpg\" alt=\"\" width=\"797\" height=\"444\" />\r\n\r\n&nbsp;\r\n\r\n<b>KHÔNG GIAN BÊN TRONG CĂN HỘ </b>\r\n\r\n<b>THE MEWS  KUALA LUMPUR  </b>\r\n\r\n<img class=\"size-full wp-image-131 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture8.jpg\" alt=\"\" width=\"749\" height=\"454\" /> <img class=\"size-full wp-image-132 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture9.jpg\" alt=\"\" width=\"733\" height=\"454\" /> <img class=\"size-full wp-image-133 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture10.jpg\" alt=\"\" width=\"749\" height=\"453\" /> <img class=\"size-full wp-image-134 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture11.jpg\" alt=\"\" width=\"718\" height=\"479\" />\r\n\r\n<img class=\"size-full wp-image-135 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture12.jpg\" alt=\"\" width=\"689\" height=\"440\" /> <img class=\"size-full wp-image-136 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture13.jpg\" alt=\"\" width=\"734\" height=\"445\" /> <img class=\"size-full wp-image-137 aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture14.jpg\" alt=\"\" width=\"692\" height=\"476\" /> <img class=\"alignnone size-full wp-image-138\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture15.jpg\" alt=\"\" width=\"734\" height=\"444\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'THE MEWS KUALA LUMPUR CITY CENTER', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-11-12 17:28:14', '2018-11-12 17:28:14', '', 129, 'http://thoidaihoangkim.com/conic-riverside/129-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-11-12 17:29:50', '2018-11-12 17:29:50', '', 'Picture7', '', 'inherit', 'open', 'closed', '', 'picture7', '', '', '2018-11-12 17:29:50', '2018-11-12 17:29:50', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture7.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2018-11-12 17:32:08', '2018-11-12 17:32:08', '', 'Penthouse', '', 'trash', 'open', 'open', '', 'penthouse__trashed', '', '', '2018-11-19 04:41:04', '2018-11-19 04:41:04', '', 0, 'http://thoidaihoangkim.com/?p=142', 0, 'post', '', 0),
(143, 1, '2018-11-12 17:32:08', '2018-11-12 17:32:08', '', 'Penthouse', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2018-11-12 17:32:08', '2018-11-12 17:32:08', '', 142, 'http://thoidaihoangkim.com/conic-riverside/142-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-11-12 17:33:27', '2018-11-12 17:33:27', '', 'Lọai B- 3', '', 'trash', 'open', 'open', '', 'loai-b-3__trashed', '', '', '2018-11-19 04:41:01', '2018-11-19 04:41:01', '', 0, 'http://thoidaihoangkim.com/?p=144', 0, 'post', '', 0),
(145, 1, '2018-11-12 17:33:27', '2018-11-12 17:33:27', '', 'Lọai B- 3', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2018-11-12 17:33:27', '2018-11-12 17:33:27', '', 144, 'http://thoidaihoangkim.com/conic-riverside/144-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2018-11-14 14:31:02', '2018-11-14 14:31:02', ' ', '', '', 'publish', 'closed', 'closed', '', '160', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 0, 'http://thoidaihoangkim.com/?p=160', 8, 'nav_menu_item', '', 0),
(161, 1, '2018-11-14 14:31:01', '2018-11-14 14:31:01', ' ', '', '', 'publish', 'closed', 'closed', '', '161', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 0, 'http://thoidaihoangkim.com/?p=161', 2, 'nav_menu_item', '', 0),
(162, 1, '2018-11-14 14:31:01', '2018-11-14 14:31:01', 'khơi nguồn sống xanh, ươm mầm hạnh phúc', '', '', 'publish', 'closed', 'closed', '', '162', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 4, 'http://thoidaihoangkim.com/?p=162', 3, 'nav_menu_item', '', 0),
(165, 1, '2018-11-14 14:31:03', '2018-11-14 14:31:03', ' ', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 0, 'http://thoidaihoangkim.com/?p=165', 11, 'nav_menu_item', '', 0),
(166, 1, '2018-11-14 14:31:02', '2018-11-14 14:31:02', ' ', '', '', 'publish', 'closed', 'closed', '', '166', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 0, 'http://thoidaihoangkim.com/?p=166', 5, 'nav_menu_item', '', 0),
(167, 1, '2018-11-14 16:27:22', '2018-11-14 16:27:22', '', 'Nhà Đất', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-11-14 16:27:22', '2018-11-14 16:27:22', '', 0, 'http://thoidaihoangkim.com/?page_id=167', 0, 'page', '', 0),
(168, 1, '2018-11-14 14:53:50', '2018-11-14 14:53:50', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-11-14 14:53:50', '2018-11-14 14:53:50', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2018-11-14 14:53:51', '2018-11-14 14:53:51', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2018-11-14 14:53:51', '2018-11-14 14:53:51', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2018-11-14 14:53:52', '2018-11-14 14:53:52', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2018-11-14 14:53:52', '2018-11-14 14:53:52', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2018-11-14 14:55:17', '2018-11-14 14:55:17', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2018-11-14 14:55:17', '2018-11-14 14:55:17', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2018-11-14 14:55:18', '2018-11-14 14:55:18', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2018-11-14 14:55:18', '2018-11-14 14:55:18', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2018-11-14 14:55:31', '2018-11-14 14:55:31', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-11-14 14:55:31', '2018-11-14 14:55:31', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2018-11-14 15:00:58', '2018-11-14 15:00:58', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2018-11-14 15:00:58', '2018-11-14 15:00:58', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2018-11-14 15:01:00', '2018-11-14 15:01:00', '', '2', '', 'inherit', 'open', 'closed', '', '2-4', '', '', '2018-11-14 15:01:00', '2018-11-14 15:01:00', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(179, 1, '2018-11-14 15:01:01', '2018-11-14 15:01:01', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2018-11-14 15:01:01', '2018-11-14 15:01:01', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2018-11-14 15:01:01', '2018-11-14 15:01:01', '', '4', '', 'inherit', 'open', 'closed', '', '4-3', '', '', '2018-11-14 15:01:01', '2018-11-14 15:01:01', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2018-11-14 15:01:02', '2018-11-14 15:01:02', '', '5', '', 'inherit', 'open', 'closed', '', '5-2', '', '', '2018-11-14 15:01:02', '2018-11-14 15:01:02', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2018-11-14 15:01:03', '2018-11-14 15:01:03', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-11-14 15:01:03', '2018-11-14 15:01:03', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2018-11-14 15:01:04', '2018-11-14 15:01:04', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-11-14 15:01:04', '2018-11-14 15:01:04', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2018-11-14 15:01:05', '2018-11-14 15:01:05', '', '8', '', 'inherit', 'open', 'closed', '', '8-2', '', '', '2018-11-14 15:01:05', '2018-11-14 15:01:05', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2018-11-14 15:01:06', '2018-11-14 15:01:06', '', '9', '', 'inherit', 'open', 'closed', '', '9-2', '', '', '2018-11-14 15:01:06', '2018-11-14 15:01:06', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2018-11-14 15:01:07', '2018-11-14 15:01:07', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2018-11-14 15:01:07', '2018-11-14 15:01:07', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2018-11-14 15:01:08', '2018-11-14 15:01:08', '', '11', '', 'inherit', 'open', 'closed', '', '11-2', '', '', '2018-11-14 15:01:08', '2018-11-14 15:01:08', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2018-11-14 15:03:24', '2018-11-14 15:03:24', ' ', '', '', 'publish', 'closed', 'closed', '', '189', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 10, 'http://thoidaihoangkim.com/?p=189', 9, 'nav_menu_item', '', 0),
(190, 1, '2018-11-14 15:03:24', '2018-11-14 15:03:24', ' ', '', '', 'publish', 'closed', 'closed', '', '190', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 10, 'http://thoidaihoangkim.com/?p=190', 10, 'nav_menu_item', '', 0),
(191, 1, '2018-11-14 15:39:18', '2018-11-14 15:39:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Gia', 'gia', 'publish', 'closed', 'closed', '', 'field_5bec40d8651cd', '', '', '2018-11-14 15:39:18', '2018-11-14 15:39:18', '', 5, 'http://thoidaihoangkim.com/?post_type=acf-field&p=191', 0, 'acf-field', '', 0),
(192, 1, '2018-11-14 15:39:18', '2018-11-14 15:39:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Vi Tri', 'vi_tri', 'publish', 'closed', 'closed', '', 'field_5bec4102651ce', '', '', '2018-11-14 15:39:18', '2018-11-14 15:39:18', '', 5, 'http://thoidaihoangkim.com/?post_type=acf-field&p=192', 1, 'acf-field', '', 0),
(193, 1, '2018-11-14 15:39:18', '2018-11-14 15:39:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dien Tich', 'dien_tich', 'publish', 'closed', 'closed', '', 'field_5bec4130651cf', '', '', '2018-11-14 15:39:18', '2018-11-14 15:39:18', '', 5, 'http://thoidaihoangkim.com/?post_type=acf-field&p=193', 2, 'acf-field', '', 0),
(194, 1, '2018-11-14 15:39:18', '2018-11-14 15:39:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hoi Mua', 'hoi_mua', 'publish', 'closed', 'closed', '', 'field_5bec4159651d1', '', '', '2018-11-14 15:39:18', '2018-11-14 15:39:18', '', 5, 'http://thoidaihoangkim.com/?post_type=acf-field&p=194', 3, 'acf-field', '', 0),
(195, 1, '2018-11-14 15:39:18', '2018-11-14 15:39:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Thoi Gian Ban Giao', 'thoi_gian_ban_giao', 'publish', 'closed', 'closed', '', 'field_5bec4143651d0', '', '', '2018-11-14 15:39:18', '2018-11-14 15:39:18', '', 5, 'http://thoidaihoangkim.com/?post_type=acf-field&p=195', 4, 'acf-field', '', 0),
(196, 1, '2018-11-14 16:27:16', '2018-11-14 16:27:16', '<h2>Who we are</h2><p>Our website address is: http://thoidaihoangkim.com.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-11-14 16:27:16', '2018-11-14 16:27:16', '', 3, 'http://thoidaihoangkim.com/conic-riverside/3-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2018-11-14 16:27:22', '2018-11-14 16:27:22', '', 'Nhà Đất', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2018-11-14 16:27:22', '2018-11-14 16:27:22', '', 167, 'http://thoidaihoangkim.com/conic-riverside/167-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2018-11-14 16:43:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-14 16:43:01', '0000-00-00 00:00:00', '', 0, 'http://thoidaihoangkim.com/?page_id=198', 0, 'page', '', 0),
(199, 1, '2018-11-14 17:08:14', '2018-11-14 17:08:14', '', 'Căn hộ 72.96 m2', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-11-14 17:08:14', '2018-11-14 17:08:14', '', 60, 'http://thoidaihoangkim.com/conic-riverside/60-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-11-14 17:08:27', '2018-11-14 17:08:27', '', 'abc', '', 'publish', 'open', 'open', '', 'abc', '', '', '2018-11-14 17:08:27', '2018-11-14 17:08:27', '', 0, 'http://thoidaihoangkim.com/?p=200', 0, 'post', '', 0),
(201, 1, '2018-11-14 17:08:27', '2018-11-14 17:08:27', '', 'abc', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2018-11-14 17:08:27', '2018-11-14 17:08:27', '', 200, 'http://thoidaihoangkim.com/conic-riverside/200-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2018-11-14 17:09:29', '2018-11-14 17:09:29', '', 'abc 1', '', 'publish', 'open', 'open', '', 'abc-1', '', '', '2018-11-14 17:33:02', '2018-11-14 17:33:02', '', 0, 'http://thoidaihoangkim.com/?p=202', 0, 'post', '', 0),
(203, 1, '2018-11-14 17:09:29', '2018-11-14 17:09:29', '', 'abc 1', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2018-11-14 17:09:29', '2018-11-14 17:09:29', '', 202, 'http://thoidaihoangkim.com/conic-riverside/202-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-11-14 17:20:20', '2018-11-14 17:20:20', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2018-11-14 17:20:20', '2018-11-14 17:20:20', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2018-11-14 17:20:21', '2018-11-14 17:20:21', '', '1', '', 'inherit', 'open', 'closed', '', '1-4', '', '', '2018-11-14 17:20:21', '2018-11-14 17:20:21', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/1.png', 0, 'attachment', 'image/png', 0),
(206, 1, '2018-11-14 17:20:23', '2018-11-14 17:20:23', '', '2', '', 'inherit', 'open', 'closed', '', '2-5', '', '', '2018-11-14 17:20:23', '2018-11-14 17:20:23', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/2-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2018-11-14 17:20:24', '2018-11-14 17:20:24', '', '2', '', 'inherit', 'open', 'closed', '', '2-6', '', '', '2018-11-14 17:20:24', '2018-11-14 17:20:24', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.png', 0, 'attachment', 'image/png', 0),
(208, 1, '2018-11-14 17:20:24', '2018-11-14 17:20:24', '', '3', '', 'inherit', 'open', 'closed', '', '3-4', '', '', '2018-11-14 17:20:24', '2018-11-14 17:20:24', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/3.gif', 0, 'attachment', 'image/gif', 0),
(209, 1, '2018-11-14 17:20:25', '2018-11-14 17:20:25', '', '3', '', 'inherit', 'open', 'closed', '', '3-5', '', '', '2018-11-14 17:20:25', '2018-11-14 17:20:25', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/3.png', 0, 'attachment', 'image/png', 0),
(210, 1, '2018-11-14 17:20:27', '2018-11-14 17:20:27', '', '4', '', 'inherit', 'open', 'closed', '', '4-4', '', '', '2018-11-14 17:20:27', '2018-11-14 17:20:27', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/4-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2018-11-14 17:20:28', '2018-11-14 17:20:28', '', '4', '', 'inherit', 'open', 'closed', '', '4-5', '', '', '2018-11-14 17:20:28', '2018-11-14 17:20:28', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.png', 0, 'attachment', 'image/png', 0),
(212, 1, '2018-11-14 17:20:29', '2018-11-14 17:20:29', '', '5', '', 'inherit', 'open', 'closed', '', '5-3', '', '', '2018-11-14 17:20:29', '2018-11-14 17:20:29', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.png', 0, 'attachment', 'image/png', 0),
(213, 1, '2018-11-14 17:20:30', '2018-11-14 17:20:30', '', '6', '', 'inherit', 'open', 'closed', '', '6-2', '', '', '2018-11-14 17:20:30', '2018-11-14 17:20:30', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.png', 0, 'attachment', 'image/png', 0),
(214, 1, '2018-11-14 17:20:31', '2018-11-14 17:20:31', '', '7', '', 'inherit', 'open', 'closed', '', '7-2', '', '', '2018-11-14 17:20:31', '2018-11-14 17:20:31', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/7.png', 0, 'attachment', 'image/png', 0),
(215, 1, '2018-11-14 17:20:33', '2018-11-14 17:20:33', '', '8', '', 'inherit', 'open', 'closed', '', '8-3', '', '', '2018-11-14 17:20:33', '2018-11-14 17:20:33', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/8.png', 0, 'attachment', 'image/png', 0),
(216, 1, '2018-11-14 17:20:34', '2018-11-14 17:20:34', '', '9', '', 'inherit', 'open', 'closed', '', '9-3', '', '', '2018-11-14 17:20:34', '2018-11-14 17:20:34', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/9.png', 0, 'attachment', 'image/png', 0),
(217, 1, '2018-11-14 17:20:36', '2018-11-14 17:20:36', '', '10', '', 'inherit', 'open', 'closed', '', '10-2', '', '', '2018-11-14 17:20:36', '2018-11-14 17:20:36', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/10-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2018-11-14 17:20:37', '2018-11-14 17:20:37', '', '11', '', 'inherit', 'open', 'closed', '', '11-3', '', '', '2018-11-14 17:20:37', '2018-11-14 17:20:37', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/11-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2018-11-14 17:20:38', '2018-11-14 17:20:38', '', '11', '', 'inherit', 'open', 'closed', '', '11-4', '', '', '2018-11-14 17:20:38', '2018-11-14 17:20:38', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/11.png', 0, 'attachment', 'image/png', 0),
(220, 1, '2018-11-14 17:20:39', '2018-11-14 17:20:39', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2018-11-14 17:20:39', '2018-11-14 17:20:39', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/12.png', 0, 'attachment', 'image/png', 0),
(221, 1, '2018-11-14 17:20:41', '2018-11-14 17:20:41', '', '13', '', 'inherit', 'open', 'closed', '', '13-2', '', '', '2018-11-14 17:20:41', '2018-11-14 17:20:41', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/13.gif', 0, 'attachment', 'image/gif', 0),
(222, 1, '2018-11-14 17:20:42', '2018-11-14 17:20:42', '', '14', '', 'inherit', 'open', 'closed', '', '14', '', '', '2018-11-14 17:20:42', '2018-11-14 17:20:42', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/14.png', 0, 'attachment', 'image/png', 0),
(223, 1, '2018-11-14 17:20:43', '2018-11-14 17:20:43', '', '15', '', 'inherit', 'open', 'closed', '', '15', '', '', '2018-11-14 17:20:43', '2018-11-14 17:20:43', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/15.png', 0, 'attachment', 'image/png', 0),
(224, 1, '2018-11-14 17:20:46', '2018-11-14 17:20:46', '', '16', '', 'inherit', 'open', 'closed', '', '16-2', '', '', '2018-11-14 17:20:46', '2018-11-14 17:20:46', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/16.png', 0, 'attachment', 'image/png', 0),
(225, 1, '2018-11-14 17:20:48', '2018-11-14 17:20:48', '', '17', '', 'inherit', 'open', 'closed', '', '17', '', '', '2018-11-14 17:20:48', '2018-11-14 17:20:48', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/17.png', 0, 'attachment', 'image/png', 0),
(226, 1, '2018-11-14 17:20:49', '2018-11-14 17:20:49', '', '18', '', 'inherit', 'open', 'closed', '', '18', '', '', '2018-11-14 17:20:49', '2018-11-14 17:20:49', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/18.png', 0, 'attachment', 'image/png', 0),
(227, 1, '2018-11-14 17:32:12', '2018-11-14 17:32:12', '', 'Căn Hộ Gym Riverside Quận 2', '', 'publish', 'open', 'open', '', 'can-ho-gym-riverside-quan-2', '', '', '2018-11-14 17:32:12', '2018-11-14 17:32:12', '', 0, 'http://thoidaihoangkim.com/?p=227', 0, 'post', '', 0),
(228, 1, '2018-11-14 17:32:12', '2018-11-14 17:32:12', '', 'Căn Hộ Gym Riverside Quận 2', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2018-11-14 17:32:12', '2018-11-14 17:32:12', '', 227, 'http://thoidaihoangkim.com/conic-riverside/227-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-11-14 17:33:48', '2018-11-14 17:33:48', '', '1', '', 'inherit', 'open', 'closed', '', '1-5', '', '', '2018-11-14 17:33:48', '2018-11-14 17:33:48', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2018-11-14 17:33:50', '2018-11-14 17:33:50', '', '2', '', 'inherit', 'open', 'closed', '', '2-7', '', '', '2018-11-14 17:33:50', '2018-11-14 17:33:50', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/2-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2018-11-14 17:33:51', '2018-11-14 17:33:51', '', '3', '', 'inherit', 'open', 'closed', '', '3-6', '', '', '2018-11-14 17:33:51', '2018-11-14 17:33:51', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2018-11-14 17:33:52', '2018-11-14 17:33:52', '', '6', '', 'inherit', 'open', 'closed', '', '6-3', '', '', '2018-11-14 17:33:52', '2018-11-14 17:33:52', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2018-11-14 17:33:53', '2018-11-14 17:33:53', '', '7', '', 'inherit', 'open', 'closed', '', '7-3', '', '', '2018-11-14 17:33:53', '2018-11-14 17:33:53', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/7-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2018-11-14 17:33:53', '2018-11-14 17:33:53', '', '8', '', 'inherit', 'open', 'closed', '', '8-4', '', '', '2018-11-14 17:33:53', '2018-11-14 17:33:53', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/8-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(235, 1, '2018-11-14 17:33:54', '2018-11-14 17:33:54', '', '9', '', 'inherit', 'open', 'closed', '', '9-4', '', '', '2018-11-14 17:33:54', '2018-11-14 17:33:54', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/9-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2018-11-14 17:33:55', '2018-11-14 17:33:55', '', '10', '', 'inherit', 'open', 'closed', '', '10-3', '', '', '2018-11-14 17:33:55', '2018-11-14 17:33:55', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/10-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2018-11-14 17:33:56', '2018-11-14 17:33:56', '', '11', '', 'inherit', 'open', 'closed', '', '11-5', '', '', '2018-11-14 17:33:56', '2018-11-14 17:33:56', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/11-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2018-11-14 17:33:57', '2018-11-14 17:33:57', '', '12', '', 'inherit', 'open', 'closed', '', '12-2', '', '', '2018-11-14 17:33:57', '2018-11-14 17:33:57', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/12.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2018-11-14 17:33:58', '2018-11-14 17:33:58', '', '13', '', 'inherit', 'open', 'closed', '', '13-3', '', '', '2018-11-14 17:33:58', '2018-11-14 17:33:58', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/13.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2018-11-14 17:34:29', '2018-11-14 17:34:29', '', 'Căn Hộ Bình Chánh', '', 'trash', 'open', 'open', '', 'can-ho-binh-chanh__trashed', '', '', '2018-11-19 04:40:59', '2018-11-19 04:40:59', '', 0, 'http://thoidaihoangkim.com/?p=240', 0, 'post', '', 0),
(241, 1, '2018-11-14 17:34:29', '2018-11-14 17:34:29', '', 'Căn Hộ Bình Chánh', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2018-11-14 17:34:29', '2018-11-14 17:34:29', '', 240, 'http://thoidaihoangkim.com/conic-riverside/240-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2018-11-14 17:36:01', '2018-11-14 17:36:01', '', 'Nhà Đất Hoc Môn', '', 'trash', 'open', 'open', '', 'nha-dat-hoc-mon__trashed', '', '', '2018-11-19 04:40:56', '2018-11-19 04:40:56', '', 0, 'http://thoidaihoangkim.com/?p=242', 0, 'post', '', 0),
(243, 1, '2018-11-14 17:36:01', '2018-11-14 17:36:01', '', 'Nhà Đất Hoc Môn', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2018-11-14 17:36:01', '2018-11-14 17:36:01', '', 242, 'http://thoidaihoangkim.com/conic-riverside/242-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2018-11-14 17:38:11', '2018-11-14 17:38:11', '', 'Nhà đất Quận 9', '', 'publish', 'open', 'open', '', 'nha-dat-quan-9', '', '', '2018-11-17 16:05:41', '2018-11-17 16:05:41', '', 0, 'http://thoidaihoangkim.com/?p=244', 0, 'post', '', 0),
(245, 1, '2018-11-14 17:38:11', '2018-11-14 17:38:11', '', 'Nhà đất Quận 9', '', 'inherit', 'closed', 'closed', '', '244-revision-v1', '', '', '2018-11-14 17:38:11', '2018-11-14 17:38:11', '', 244, 'http://thoidaihoangkim.com/conic-riverside/244-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(246, 1, '2018-11-14 18:02:17', '2018-11-14 18:02:17', ' <section class=\"section-contact banner contact-bg\">\r\n        <div class=\"container\">\r\n            <div class=\"row contact-row\">\r\n                <div class=\"col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12\">\r\n                    <div class=\"contact-wrp\">\r\n                        <div class=\"section-heading\">\r\n                            <h2>Liên Hệ</h2>\r\n                        </div>\r\n                        <div class=\"form-wrapper\">\r\n                            <?php echo do_shortcode( \'[contact-form-7 id=\"14\" title=\"Contact form 1\"]\' );?>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>', 'Liên Hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2018-11-14 18:10:57', '2018-11-14 18:10:57', '', 0, 'http://thoidaihoangkim.com/?page_id=246', 0, 'page', '', 0),
(247, 1, '2018-11-14 18:02:17', '2018-11-14 18:02:17', ' <section class=\"section-contact banner contact-bg\">\r\n        <div class=\"container\">\r\n            <div class=\"row contact-row\">\r\n                <div class=\"col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12\">\r\n                    <div class=\"contact-wrp\">\r\n                        <div class=\"section-heading\">\r\n                            <h2>Liên Hệ</h2>\r\n                        </div>\r\n                        <div class=\"form-wrapper\">\r\n                            <?php echo do_shortcode( \'[contact-form-7 id=\"14\" title=\"Contact form 1\"]\' );?>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>', 'Liên Hệ', '', 'inherit', 'closed', 'closed', '', '246-revision-v1', '', '', '2018-11-14 18:02:17', '2018-11-14 18:02:17', '', 246, 'http://thoidaihoangkim.com/conic-riverside/246-revision-v1/', 0, 'revision', '', 0),
(248, 1, '2018-11-14 18:11:16', '2018-11-14 18:11:16', ' ', '', '', 'publish', 'closed', 'closed', '', '248', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 0, 'http://thoidaihoangkim.com/?p=248', 12, 'nav_menu_item', '', 0),
(249, 1, '2018-11-15 07:57:50', '2018-11-15 07:57:50', '', 'Picture5', '', 'inherit', 'open', 'closed', '', 'picture5-2', '', '', '2018-11-15 07:57:50', '2018-11-15 07:57:50', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2018-11-15 08:02:13', '2018-11-15 08:02:13', '', 'E&O_1', '', 'inherit', 'open', 'closed', '', 'eo_1', '', '', '2018-11-15 08:02:13', '2018-11-15 08:02:13', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2018-11-15 08:02:14', '2018-11-15 08:02:14', '', 'E&O_2', '', 'inherit', 'open', 'closed', '', 'eo_2', '', '', '2018-11-15 08:02:14', '2018-11-15 08:02:14', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(253, 1, '2018-11-15 08:02:14', '2018-11-15 08:02:14', '', 'E&O_3', '', 'inherit', 'open', 'closed', '', 'eo_3', '', '', '2018-11-15 08:02:14', '2018-11-15 08:02:14', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2018-11-15 08:02:15', '2018-11-15 08:02:15', '', 'E&O_4', '', 'inherit', 'open', 'closed', '', 'eo_4', '', '', '2018-11-15 08:02:15', '2018-11-15 08:02:15', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2018-11-15 08:02:15', '2018-11-15 08:02:15', '', 'E&O_5', '', 'inherit', 'open', 'closed', '', 'eo_5', '', '', '2018-11-15 08:02:15', '2018-11-15 08:02:15', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(256, 1, '2018-11-15 08:05:50', '2018-11-15 08:05:50', '', 'E&O_6', '', 'inherit', 'open', 'closed', '', 'eo_6', '', '', '2018-11-15 08:05:50', '2018-11-15 08:05:50', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(257, 1, '2018-11-15 08:05:50', '2018-11-15 08:05:50', '', 'E&O_7', '', 'inherit', 'open', 'closed', '', 'eo_7', '', '', '2018-11-15 08:05:50', '2018-11-15 08:05:50', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_7.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2018-11-15 08:16:59', '2018-11-15 08:16:59', '', 'E&O_8', '', 'inherit', 'open', 'closed', '', 'eo_8', '', '', '2018-11-15 08:16:59', '2018-11-15 08:16:59', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_8.jpg', 0, 'attachment', 'image/jpeg', 0),
(259, 1, '2018-11-15 08:17:00', '2018-11-15 08:17:00', '', 'E&O_9', '', 'inherit', 'open', 'closed', '', 'eo_9', '', '', '2018-11-15 08:17:00', '2018-11-15 08:17:00', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_9.jpg', 0, 'attachment', 'image/jpeg', 0),
(260, 1, '2018-11-15 08:17:00', '2018-11-15 08:17:00', '', 'E&O_10', '', 'inherit', 'open', 'closed', '', 'eo_10', '', '', '2018-11-15 08:17:00', '2018-11-15 08:17:00', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_10.jpg', 0, 'attachment', 'image/jpeg', 0),
(261, 1, '2018-11-15 08:17:01', '2018-11-15 08:17:01', '', 'E&O_11', '', 'inherit', 'open', 'closed', '', 'eo_11', '', '', '2018-11-15 08:17:01', '2018-11-15 08:17:01', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_11.jpg', 0, 'attachment', 'image/jpeg', 0),
(262, 1, '2018-11-15 08:19:53', '2018-11-15 08:19:53', '', 'E&O_11', '', 'inherit', 'open', 'closed', '', 'eo_11-2', '', '', '2018-11-15 08:19:53', '2018-11-15 08:19:53', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_11-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(263, 1, '2018-11-15 08:19:53', '2018-11-15 08:19:53', '', 'E&O_12', '', 'inherit', 'open', 'closed', '', 'eo_12', '', '', '2018-11-15 08:19:53', '2018-11-15 08:19:53', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_12.jpg', 0, 'attachment', 'image/jpeg', 0),
(264, 1, '2018-11-15 08:19:54', '2018-11-15 08:19:54', '', 'E&O_13', '', 'inherit', 'open', 'closed', '', 'eo_13', '', '', '2018-11-15 08:19:54', '2018-11-15 08:19:54', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_13.jpg', 0, 'attachment', 'image/jpeg', 0),
(265, 1, '2018-11-15 08:19:54', '2018-11-15 08:19:54', '', 'E&O_14', '', 'inherit', 'open', 'closed', '', 'eo_14', '', '', '2018-11-15 08:19:54', '2018-11-15 08:19:54', '', 0, 'http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_14.jpg', 0, 'attachment', 'image/jpeg', 0),
(266, 1, '2018-11-15 15:02:33', '2018-11-15 15:02:33', '', 'ThankYou', '', 'publish', 'closed', 'closed', '', 'thankyou', '', '', '2018-11-15 15:02:33', '2018-11-15 15:02:33', '', 0, 'http://thoidaihoangkim.com/?page_id=266', 0, 'page', '', 0),
(267, 1, '2018-11-15 15:02:33', '2018-11-15 15:02:33', '', 'ThankYou', '', 'inherit', 'closed', 'closed', '', '266-revision-v1', '', '', '2018-11-15 15:02:33', '2018-11-15 15:02:33', '', 266, 'http://thoidaihoangkim.com/conic-riverside/266-revision-v1/', 0, 'revision', '', 0),
(268, 1, '2018-11-17 15:55:11', '2018-11-17 15:55:11', ' ', '', '', 'publish', 'closed', 'closed', '', '268', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 9, 'http://thoidaihoangkim.com/?p=268', 6, 'nav_menu_item', '', 0),
(269, 1, '2018-11-17 15:55:11', '2018-11-17 15:55:11', ' ', '', '', 'publish', 'closed', 'closed', '', '269', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 9, 'http://thoidaihoangkim.com/?p=269', 7, 'nav_menu_item', '', 0),
(270, 1, '2018-11-17 15:58:14', '2018-11-17 15:58:14', ' ', '', '', 'publish', 'closed', 'closed', '', '270', '', '', '2018-11-17 15:58:14', '2018-11-17 15:58:14', '', 0, 'http://thoidaihoangkim.com/?p=270', 4, 'nav_menu_item', '', 0),
(271, 1, '2018-11-19 04:38:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-19 04:38:47', '0000-00-00 00:00:00', '', 0, 'http://thoidaihoangkim.com/?p=271', 0, 'post', '', 0),
(272, 1, '2018-11-20 17:22:51', '2018-11-20 17:22:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Thông tin', 'thong-tin', 'publish', 'closed', 'closed', '', 'group_5bf44247f324a', '', '', '2018-11-20 17:26:07', '2018-11-20 17:26:07', '', 0, 'http://thoidaihoangkim.com/?post_type=acf-field-group&#038;p=272', 0, 'acf-field-group', '', 0),
(273, 1, '2018-11-20 17:22:51', '2018-11-20 17:22:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Số phòng ngủ', 'bedrooms', 'publish', 'closed', 'closed', '', 'field_5bf442587e2ba', '', '', '2018-11-20 17:26:07', '2018-11-20 17:26:07', '', 272, 'http://thoidaihoangkim.com/?post_type=acf-field&#038;p=273', 0, 'acf-field', '', 0),
(274, 1, '2018-11-20 17:22:51', '2018-11-20 17:22:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Số phòng Tắm', 'baths', 'publish', 'closed', 'closed', '', 'field_5bf442757e2bb', '', '', '2018-11-20 17:26:07', '2018-11-20 17:26:07', '', 272, 'http://thoidaihoangkim.com/?post_type=acf-field&#038;p=274', 1, 'acf-field', '', 0),
(275, 1, '2018-11-20 17:22:51', '2018-11-20 17:22:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Số bãi đậu xe', 'parking', 'publish', 'closed', 'closed', '', 'field_5bf4428a7e2bc', '', '', '2018-11-20 17:26:07', '2018-11-20 17:26:07', '', 272, 'http://thoidaihoangkim.com/?post_type=acf-field&#038;p=275', 2, 'acf-field', '', 0),
(276, 1, '2018-11-20 17:22:51', '2018-11-20 17:22:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'sq_ft', 'sq_ft', 'publish', 'closed', 'closed', '', 'field_5bf442ad7e2bd', '', '', '2018-11-20 17:22:51', '2018-11-20 17:22:51', '', 272, 'http://thoidaihoangkim.com/?post_type=acf-field&p=276', 3, 'acf-field', '', 0),
(277, 1, '2018-11-20 17:22:52', '2018-11-20 17:22:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Giá tiền', 'money', 'publish', 'closed', 'closed', '', 'field_5bf442c27e2be', '', '', '2018-11-20 17:26:07', '2018-11-20 17:26:07', '', 272, 'http://thoidaihoangkim.com/?post_type=acf-field&#038;p=277', 4, 'acf-field', '', 0),
(278, 1, '2018-11-20 17:26:49', '2018-11-20 17:26:49', '', 'Căn hộ 66.96 m2', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-11-20 17:26:49', '2018-11-20 17:26:49', '', 79, 'http://thoidaihoangkim.com/conic-riverside/79-revision-v1/', 0, 'revision', '', 0),
(279, 1, '2018-11-20 17:28:09', '2018-11-20 17:28:09', '', 'Căn hộ 64.64 m2', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-11-20 17:28:09', '2018-11-20 17:28:09', '', 76, 'http://thoidaihoangkim.com/conic-riverside/76-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_responsive_menu`
--

CREATE TABLE `wp_responsive_menu` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_responsive_menu`
--

INSERT INTO `wp_responsive_menu` (`name`, `value`) VALUES
('accordion_animation', 'off'),
('active_arrow_font_icon', ''),
('active_arrow_font_icon_type', 'font-awesome'),
('active_arrow_image', ''),
('active_arrow_image_alt', ''),
('active_arrow_shape', '▲'),
('admin_theme', 'dark'),
('animation_speed', '0.5'),
('animation_type', 'push'),
('arrow_position', 'right'),
('auto_expand_all_submenus', 'off'),
('auto_expand_current_submenus', 'off'),
('breakpoint', '80000'),
('button_background_colour', '#000000'),
('button_background_colour_active', '#000000'),
('button_background_colour_hover', '#000000'),
('button_click_animation', 'boring'),
('button_click_trigger', '#responsive-menu-button'),
('button_distance_from_side', '5'),
('button_distance_from_side_unit', '%'),
('button_font', ''),
('button_font_icon', ''),
('button_font_icon_type', 'font-awesome'),
('button_font_icon_when_clicked', ''),
('button_font_icon_when_clicked_type', 'font-awesome'),
('button_font_size', '14'),
('button_font_size_unit', 'px'),
('button_height', '55'),
('button_height_unit', 'px'),
('button_image', ''),
('button_image_alt', ''),
('button_image_alt_when_clicked', ''),
('button_image_when_clicked', ''),
('button_left_or_right', 'right'),
('button_line_colour', '#ffffff'),
('button_line_colour_active', '#ffffff'),
('button_line_colour_hover', '#ffffff'),
('button_line_height', '3'),
('button_line_height_unit', 'px'),
('button_line_margin', '5'),
('button_line_margin_unit', 'px'),
('button_line_width', '25'),
('button_line_width_unit', 'px'),
('button_position_type', 'fixed'),
('button_push_with_animation', 'off'),
('button_text_colour', '#ffffff'),
('button_title', ''),
('button_title_line_height', '13'),
('button_title_line_height_unit', 'px'),
('button_title_open', ''),
('button_title_position', 'left'),
('button_top', '15'),
('button_top_unit', 'px'),
('button_transparent_background', 'off'),
('button_trigger_type', 'click'),
('button_width', '55'),
('button_width_unit', 'px'),
('custom_css', ''),
('custom_walker', ''),
('desktop_menu_options', '{}'),
('desktop_menu_positioning', 'fixed'),
('desktop_menu_side', ''),
('desktop_menu_width', ''),
('desktop_menu_width_unit', '%'),
('enable_touch_gestures', ''),
('external_files', 'off'),
('fade_submenus', 'off'),
('fade_submenus_delay', '100'),
('fade_submenus_side', 'left'),
('fade_submenus_speed', '500'),
('header_bar_adjust_page', NULL),
('header_bar_background_color', '#ffffff'),
('header_bar_breakpoint', '800'),
('header_bar_font', ''),
('header_bar_font_size', '14'),
('header_bar_font_size_unit', 'px'),
('header_bar_height', '80'),
('header_bar_height_unit', 'px'),
('header_bar_html_content', ''),
('header_bar_items_order', '{\"logo\":\"on\",\"title\":\"on\",\"search\":\"on\",\"html content\":\"on\"}'),
('header_bar_logo', ''),
('header_bar_logo_alt', ''),
('header_bar_logo_height', ''),
('header_bar_logo_height_unit', 'px'),
('header_bar_logo_link', ''),
('header_bar_logo_width', ''),
('header_bar_logo_width_unit', '%'),
('header_bar_position_type', 'fixed'),
('header_bar_text_color', '#ffffff'),
('header_bar_title', ''),
('hide_on_desktop', 'off'),
('hide_on_mobile', 'off'),
('inactive_arrow_font_icon', ''),
('inactive_arrow_font_icon_type', 'font-awesome'),
('inactive_arrow_image', ''),
('inactive_arrow_image_alt', ''),
('inactive_arrow_shape', '▼'),
('items_order', '{\"title\":\"on\",\"menu\":\"on\",\"search\":\"on\",\"additional content\":\"on\"}'),
('keyboard_shortcut_close_menu', '27,37'),
('keyboard_shortcut_open_menu', '32,39'),
('menu_additional_content', ''),
('menu_additional_content_colour', '#ffffff'),
('menu_adjust_for_wp_admin_bar', 'off'),
('menu_appear_from', 'top'),
('menu_auto_height', 'off'),
('menu_background_colour', '#212121'),
('menu_background_image', ''),
('menu_border_width', '1'),
('menu_border_width_unit', 'px'),
('menu_close_on_body_click', 'off'),
('menu_close_on_link_click', 'off'),
('menu_close_on_scroll', 'off'),
('menu_container_background_colour', '#212121'),
('menu_current_item_background_colour', '#212121'),
('menu_current_item_background_hover_colour', '#3f3f3f'),
('menu_current_item_border_colour', '#212121'),
('menu_current_item_border_hover_colour', '#3f3f3f'),
('menu_current_link_colour', '#ffffff'),
('menu_current_link_hover_colour', '#ffffff'),
('menu_depth', '5'),
('menu_depth_0', '5'),
('menu_depth_0_unit', '%'),
('menu_depth_1', '10'),
('menu_depth_1_unit', '%'),
('menu_depth_2', '15'),
('menu_depth_2_unit', '%'),
('menu_depth_3', '20'),
('menu_depth_3_unit', '%'),
('menu_depth_4', '25'),
('menu_depth_4_unit', '%'),
('menu_depth_5', '30'),
('menu_depth_5_unit', '%'),
('menu_depth_side', 'left'),
('menu_disable_scrolling', 'off'),
('menu_font', ''),
('menu_font_icons', '{\"id\":[\"\"],\"icon\":[\"\"],\"type\":[\"\"]}'),
('menu_font_size', '13'),
('menu_font_size_unit', 'px'),
('menu_item_background_colour', '#212121'),
('menu_item_background_hover_colour', '#3f3f3f'),
('menu_item_border_colour', '#212121'),
('menu_item_border_colour_hover', '#212121'),
('menu_item_click_to_trigger_submenu', 'off'),
('menu_link_colour', '#ffffff'),
('menu_link_hover_colour', '#ffffff'),
('menu_links_height', '40'),
('menu_links_height_unit', 'px'),
('menu_links_line_height', '40'),
('menu_links_line_height_unit', 'px'),
('menu_maximum_width', ''),
('menu_maximum_width_unit', 'px'),
('menu_minimum_width', ''),
('menu_minimum_width_unit', 'px'),
('menu_overlay', 'off'),
('menu_overlay_colour', 'rgba(0, 0, 0, 0.7)'),
('menu_search_box_background_colour', '#ffffff'),
('menu_search_box_border_colour', '#dadada'),
('menu_search_box_placeholder_colour', '#c7c7cd'),
('menu_search_box_text', 'Search'),
('menu_search_box_text_colour', '#333333'),
('menu_sub_arrow_background_colour', '#212121'),
('menu_sub_arrow_background_colour_active', '#212121'),
('menu_sub_arrow_background_hover_colour', '#3f3f3f'),
('menu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_border_colour', '#212121'),
('menu_sub_arrow_border_colour_active', '#212121'),
('menu_sub_arrow_border_hover_colour', '#3f3f3f'),
('menu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_shape_colour', '#ffffff'),
('menu_sub_arrow_shape_colour_active', '#ffffff'),
('menu_sub_arrow_shape_hover_colour', '#ffffff'),
('menu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('menu_text_alignment', 'left'),
('menu_theme', NULL),
('menu_title', ''),
('menu_title_alignment', 'left'),
('menu_title_background_colour', '#212121'),
('menu_title_background_hover_colour', '#212121'),
('menu_title_colour', '#ffffff'),
('menu_title_font_icon', ''),
('menu_title_font_icon_type', 'font-awesome'),
('menu_title_font_size', '13'),
('menu_title_font_size_unit', 'px'),
('menu_title_hover_colour', '#ffffff'),
('menu_title_image', ''),
('menu_title_image_alt', ''),
('menu_title_image_height', ''),
('menu_title_image_height_unit', 'px'),
('menu_title_image_width', ''),
('menu_title_image_width_unit', '%'),
('menu_title_link', ''),
('menu_title_link_location', '_self'),
('menu_to_hide', ''),
('menu_to_use', ''),
('menu_width', '25'),
('menu_width_unit', '%'),
('menu_word_wrap', 'off'),
('minify_scripts', 'off'),
('mobile_only', 'off'),
('page_wrapper', ''),
('remove_bootstrap', ''),
('remove_fontawesome', ''),
('scripts_in_footer', 'off'),
('shortcode', 'off'),
('show_menu_on_page_load', ''),
('single_menu_font', ''),
('single_menu_font_size', '14'),
('single_menu_font_size_unit', 'px'),
('single_menu_height', '80'),
('single_menu_height_unit', 'px'),
('single_menu_item_background_colour', '#ffffff'),
('single_menu_item_background_colour_hover', '#ffffff'),
('single_menu_item_link_colour', '#000000'),
('single_menu_item_link_colour_hover', '#000000'),
('single_menu_item_submenu_background_colour', '#ffffff'),
('single_menu_item_submenu_background_colour_hover', '#ffffff'),
('single_menu_item_submenu_link_colour', '#000000'),
('single_menu_item_submenu_link_colour_hover', '#000000'),
('single_menu_line_height', '80'),
('single_menu_line_height_unit', 'px'),
('single_menu_submenu_font', ''),
('single_menu_submenu_font_size', '12'),
('single_menu_submenu_font_size_unit', 'px'),
('single_menu_submenu_height', ''),
('single_menu_submenu_height_unit', 'auto'),
('single_menu_submenu_line_height', '40'),
('single_menu_submenu_line_height_unit', 'px'),
('slide_effect_back_to_text', 'Back'),
('smooth_scroll_on', 'off'),
('smooth_scroll_speed', '500'),
('sub_menu_speed', '0.2'),
('submenu_arrow_height', '39'),
('submenu_arrow_height_unit', 'px'),
('submenu_arrow_position', 'right'),
('submenu_arrow_width', '40'),
('submenu_arrow_width_unit', 'px'),
('submenu_border_width', '1'),
('submenu_border_width_unit', 'px'),
('submenu_current_item_background_colour', '#212121'),
('submenu_current_item_background_hover_colour', '#3f3f3f'),
('submenu_current_item_border_colour', '#212121'),
('submenu_current_item_border_hover_colour', '#3f3f3f'),
('submenu_current_link_colour', '#ffffff'),
('submenu_current_link_hover_colour', '#ffffff'),
('submenu_descriptions_on', ''),
('submenu_font', ''),
('submenu_font_size', '13'),
('submenu_font_size_unit', 'px'),
('submenu_item_background_colour', '#212121'),
('submenu_item_background_hover_colour', '#3f3f3f'),
('submenu_item_border_colour', '#212121'),
('submenu_item_border_colour_hover', '#212121'),
('submenu_link_colour', '#ffffff'),
('submenu_link_hover_colour', '#ffffff'),
('submenu_links_height', '40'),
('submenu_links_height_unit', 'px'),
('submenu_links_line_height', '40'),
('submenu_links_line_height_unit', 'px'),
('submenu_sub_arrow_background_colour', '#212121'),
('submenu_sub_arrow_background_colour_active', '#212121'),
('submenu_sub_arrow_background_hover_colour', '#3f3f3f'),
('submenu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_border_colour', '#212121'),
('submenu_sub_arrow_border_colour_active', '#212121'),
('submenu_sub_arrow_border_hover_colour', '#3f3f3f'),
('submenu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_shape_colour', '#ffffff'),
('submenu_sub_arrow_shape_colour_active', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('submenu_submenu_arrow_height', '39'),
('submenu_submenu_arrow_height_unit', 'px'),
('submenu_submenu_arrow_width', '40'),
('submenu_submenu_arrow_width_unit', 'px'),
('submenu_text_alignment', 'left'),
('theme_location_menu', ''),
('transition_speed', '0.5'),
('use_desktop_menu', ''),
('use_header_bar', 'off'),
('use_slide_effect', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_site_cache`
--

CREATE TABLE `wp_site_cache` (
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `server` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updating` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `expire_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_columns`
--

CREATE TABLE `wp_supsystic_tbl_columns` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `index` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_diagrams`
--

CREATE TABLE `wp_supsystic_tbl_diagrams` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `start_row` int(10) UNSIGNED DEFAULT NULL,
  `start_col` int(10) UNSIGNED DEFAULT NULL,
  `end_row` int(10) UNSIGNED DEFAULT NULL,
  `end_col` int(10) UNSIGNED DEFAULT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_rows`
--

CREATE TABLE `wp_supsystic_tbl_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_supsystic_tbl_rows`
--

INSERT INTO `wp_supsystic_tbl_rows` (`id`, `table_id`, `data`) VALUES
(13, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:13:\"Tên dự án\";s:2:\"cv\";N;s:2:\"fv\";s:13:\"Tên dự án\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:1;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(14, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:9:\"Vị trí\";s:2:\"cv\";N;s:2:\"fv\";s:9:\"Vị trí\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:2;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(15, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:16:\"Chủ đầu tư\";s:2:\"cv\";N;s:2:\"fv\";s:16:\"Chủ đầu tư\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:3;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(16, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:20:\"Đơn vị thi công\";s:2:\"cv\";N;s:2:\"fv\";s:20:\"Đơn vị thi công\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:4;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(17, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:21:\"Đơn vị giám sát\";s:2:\"cv\";N;s:2:\"fv\";s:21:\"Đơn vị giám sát\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:5;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(18, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:23:\"Đơn vị phân phối\";s:2:\"cv\";N;s:2:\"fv\";s:23:\"Đơn vị phân phối\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:6;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(19, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:7;s:1:\"d\";s:19:\"Tổng diện tích\";s:2:\"cv\";N;s:2:\"fv\";s:19:\"Tổng diện tích\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:7;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(20, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:8;s:1:\"d\";s:11:\"Mật độ\";s:2:\"cv\";N;s:2:\"fv\";s:11:\"Mật độ\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:8;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(21, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:9;s:1:\"d\";s:26:\"Loại hình phát triển\";s:2:\"cv\";N;s:2:\"fv\";s:26:\"Loại hình phát triển\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:9;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(22, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:10;s:1:\"d\";s:16:\"Loại căn hộ\";s:2:\"cv\";N;s:2:\"fv\";s:16:\"Loại căn hộ\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:10;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(23, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:11;s:1:\"d\";s:15:\"Ngày bàn giao\";s:2:\"cv\";N;s:2:\"fv\";s:15:\"Ngày bàn giao\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:11;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(24, 1, 'a:1:{s:5:\"cells\";a:2:{i:0;a:11:{s:1:\"y\";i:12;s:1:\"d\";s:21:\"Giá trung bình (m2)\";s:2:\"cv\";N;s:2:\"fv\";s:21:\"Giá trung bình (m2)\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:11:{s:1:\"y\";i:12;s:1:\"d\";s:0:\"\";s:2:\"cv\";N;s:2:\"fv\";s:0:\"\";s:1:\"h\";b:0;s:2:\"hc\";s:0:\"\";s:2:\"ic\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"bt\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_tables`
--

CREATE TABLE `wp_supsystic_tbl_tables` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `meta` text,
  `settings` text NOT NULL,
  `woo_settings` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_supsystic_tbl_tables`
--

INSERT INTO `wp_supsystic_tbl_tables` (`id`, `title`, `created_at`, `meta`, `settings`, `woo_settings`) VALUES
(1, 'Conic Residever', '2018-11-08 16:35:42', 'a:6:{s:11:&quot;mergedCells&quot;;a:0:{}s:12:&quot;columnsWidth&quot;;a:2:{i:0;i:75;i:1;i:62;}s:17:&quot;columnsFixedWidth&quot;;a:0:{}s:16:&quot;columnsSortOrder&quot;;a:0:{}s:21:&quot;columnsDisableSorting&quot;;a:0:{}s:3:&quot;css&quot;;s:340:&quot;/* Here you can add custom CSS for the current table */\n/* Lean more about CSS: https://en.wikipedia.org/wiki/Cascading_Style_Sheets */\n/*\nTo prevent the use of styles to other tables use &quot;#supsystic-table-1&quot; as a base selector\nfor example:\n#supsystic-table-1 { ... }\n#supsystic-table-1 tbody { ... }\n#supsystic-table-1 tbody tr { ... }\n*/\n&quot;;}', 'a:26:{s:8:&quot;elements&quot;;a:2:{s:15:&quot;descriptionText&quot;;s:0:&quot;&quot;;s:13:&quot;signatureText&quot;;s:0:&quot;&quot;;}s:15:&quot;headerRowsCount&quot;;s:1:&quot;1&quot;;s:15:&quot;footerRowsCount&quot;;s:1:&quot;1&quot;;s:11:&quot;fixedHeight&quot;;s:3:&quot;400&quot;;s:21:&quot;fixedLeftColumnsCount&quot;;s:1:&quot;1&quot;;s:22:&quot;fixedRightColumnsCount&quot;;s:1:&quot;0&quot;;s:9:&quot;autoIndex&quot;;s:3:&quot;off&quot;;s:12:&quot;numberFormat&quot;;s:8:&quot;1,000.00&quot;;s:14:&quot;currencyFormat&quot;;s:9:&quot;$1,000.00&quot;;s:13:&quot;percentFormat&quot;;s:6:&quot;10.00%&quot;;s:10:&quot;dateFormat&quot;;s:10:&quot;DD.MM.YYYY&quot;;s:18:&quot;timeDurationFormat&quot;;s:5:&quot;HH:mm&quot;;s:14:&quot;responsiveMode&quot;;s:1:&quot;0&quot;;s:12:&quot;sortingOrder&quot;;s:3:&quot;asc&quot;;s:18:&quot;sortingOrderColumn&quot;;s:1:&quot;1&quot;;s:20:&quot;paginationMenuLength&quot;;s:10:&quot;50,100,All&quot;;s:14:&quot;paginationSize&quot;;s:16:&quot;pagination-large&quot;;s:9:&quot;searching&quot;;a:2:{s:20:&quot;columnSearchPosition&quot;;s:6:&quot;bottom&quot;;s:8:&quot;minChars&quot;;s:1:&quot;0&quot;;}s:8:&quot;features&quot;;a:1:{s:25:&quot;after_table_loaded_script&quot;;s:0:&quot;&quot;;}s:10:&quot;tableWidth&quot;;s:3:&quot;100&quot;;s:14:&quot;tableWidthType&quot;;s:1:&quot;%&quot;;s:16:&quot;tableWidthMobile&quot;;s:3:&quot;100&quot;;s:20:&quot;tableWidthMobileType&quot;;s:1:&quot;%&quot;;s:7:&quot;styling&quot;;a:1:{s:6:&quot;border&quot;;s:11:&quot;cell-border&quot;;}s:11:&quot;tableLoader&quot;;a:3:{s:8:&quot;iconName&quot;;s:7:&quot;default&quot;;s:9:&quot;iconItems&quot;;s:1:&quot;0&quot;;s:5:&quot;color&quot;;s:7:&quot;#000000&quot;;}s:8:&quot;language&quot;;a:9:{s:10:&quot;emptyTable&quot;;s:0:&quot;&quot;;s:4:&quot;info&quot;;s:0:&quot;&quot;;s:9:&quot;infoEmpty&quot;;s:0:&quot;&quot;;s:12:&quot;infoFiltered&quot;;s:0:&quot;&quot;;s:10:&quot;lengthMenu&quot;;s:0:&quot;&quot;;s:6:&quot;search&quot;;s:0:&quot;&quot;;s:11:&quot;zeroRecords&quot;;s:0:&quot;&quot;;s:11:&quot;exportLabel&quot;;s:0:&quot;&quot;;s:4:&quot;file&quot;;s:7:&quot;default&quot;;}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_woo_columns`
--

CREATE TABLE `wp_supsystic_tbl_woo_columns` (
  `id` int(11) NOT NULL,
  `columns_name` varchar(128) DEFAULT NULL,
  `columns_nice_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_supsystic_tbl_woo_columns`
--

INSERT INTO `wp_supsystic_tbl_woo_columns` (`id`, `columns_name`, `columns_nice_name`) VALUES
(1, 'id', 'ID'),
(2, 'product_title', 'Name'),
(3, 'sku', 'SKU'),
(4, 'thumbnail', 'Thumbnail'),
(5, 'categories', 'Categories'),
(6, 'price', 'Price'),
(7, 'attribute', 'Attribute'),
(8, 'description', 'Summary'),
(9, 'add_to_cart', 'Buy'),
(10, 'reviews', 'Reviews'),
(11, 'date', 'Date');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'image', '7'),
(2, 1, '_image', 'field_5bd8798f8f226'),
(3, 1, 'bedrooms', '30'),
(4, 1, '_bedrooms', 'field_5bd8862cafde5'),
(5, 1, 'baths', '30'),
(6, 1, '_baths', 'field_5bd8865bafde6'),
(7, 1, 'parking', '10'),
(8, 1, '_parking', 'field_5bd8869bafde7'),
(9, 1, 'sq_ft', '2500'),
(10, 1, '_sq_ft', 'field_5bd886bdafde8'),
(11, 1, 'money', 'Liên Hệ'),
(12, 1, '_money', 'field_5bd887fa156a1'),
(13, 3, 'image', '7'),
(14, 3, '_image', 'field_5bd8798f8f226'),
(15, 3, 'bedrooms', '0'),
(16, 3, '_bedrooms', 'field_5bd8862cafde5'),
(17, 3, 'baths', '0'),
(18, 3, '_baths', 'field_5bd8865bafde6'),
(19, 3, 'parking', '0'),
(20, 3, '_parking', 'field_5bd8869bafde7'),
(21, 3, 'sq_ft', '0'),
(22, 3, '_sq_ft', 'field_5bd886bdafde8'),
(23, 3, 'money', 'Liên Hệ'),
(24, 3, '_money', 'field_5bd887fa156a1'),
(25, 3, 'content', ''),
(26, 3, '_content', 'field_5be44a1d35767'),
(27, 4, 'image', '8'),
(28, 4, '_image', 'field_5bd8798f8f226'),
(29, 4, 'bedrooms', '0'),
(30, 4, '_bedrooms', 'field_5bd8862cafde5'),
(31, 4, 'baths', '0'),
(32, 4, '_baths', 'field_5bd8865bafde6'),
(33, 4, 'parking', '0'),
(34, 4, '_parking', 'field_5bd8869bafde7'),
(35, 4, 'sq_ft', '0'),
(36, 4, '_sq_ft', 'field_5bd886bdafde8'),
(37, 4, 'money', 'Liên Hệ'),
(38, 4, '_money', 'field_5bd887fa156a1'),
(39, 4, 'content', ''),
(40, 4, '_content', 'field_5be44a1d35767'),
(41, 1, 'content', '[supsystic-tables id=1]\r\n\r\n<strong>CONIC RIVERSIDE - KHƠI NGUỒN SỐNG XANH, ƯƠM MẦM HẠNH PHÚC</strong>\r\n\r\n<strong>1.    THÔNG TIN QUY HOẠCH TỔNG QUAN:</strong>\r\n<ul>\r\n 	<li>Chủ đầu tư: Công ty CP ĐT XD và PT Lĩnh Phong - CONIC</li>\r\n 	<li>Phát triển dự án: Đất Xanh Miền Nam</li>\r\n 	<li>Ngân hàng đồng hành: VietA Bank</li>\r\n 	<li>Đơn vị giám sát: ICP Project</li>\r\n 	<li>Đơn vị tư vấn thiết kế: Công ty TNHH Tư vấn TKXD Mai-Archi</li>\r\n 	<li>Tổng diện tích: 13.650,8 m2</li>\r\n 	<li>Mật độ xây dựng: 34%</li>\r\n 	<li>Tầng cao: 22 tầng</li>\r\n 	<li>Quy mô: 664 căn hộ</li>\r\n 	<li>Diện tích căn hộ: Bình quân từ 49,41m2 – 72,96 m2</li>\r\n 	<li>Diện tích Spenthouse: 114,06 m2 - 126,63 m2</li>\r\n</ul>\r\n<img class=\"wp-image-65 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1024x694.jpg\" alt=\"\" width=\"640\" height=\"434\" />\r\n\r\n<strong>2.    VỊ TRÍ ĐỘC TÔN 02 MẶT TIỀN ĐƯỜNG QUẬN 08</strong>\r\n\r\nConic Riverside có vị trí đắc địa 02 mặt tiền đường huyết mạch trong khu vực là Vành đai trong (30m) và Tạ Quang Bửu (nối dài), nằm giữa 02 trục đại lộ huyết mạch của TP.HCM là Nguyễn Văn Linh và Võ Văn Kiệt. Từ dự án, cư dân có thể di chuyển nhanh đến trung tâm Quận 5, Quận 1 và cả Phú Mỹ Hưng nhanh chóng\r\n\r\n<img class=\"wp-image-66 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/2.jpg\" alt=\"\" width=\"647\" height=\"374\" />\r\n\r\nNgoài sự hoàn thiện của hệ thống hạ tầng tại Quận 8 và khu vực Tây Nam thành phố như:  ĐL Võ Văn Kiệt, Nguyễn văn Linh, Nguyễn Tri Phương, Tạ Quang Bửu, Tùng Thiện Vương – QL 50…  nơi đây còn thể hiện tiềm năng to lớn với cụm quy hoạch làng đại học Nam Sài Gòn hơn 107,8 ha, đường Vành đai 02 kết nối Hồ Học Lãm qua đường Trịnh Quạng Nghị tạo nên sự liên kết giữa 2 tuyến đại lộ lớn Nguyễn Văn Linh và đại lộ Đông Tây, Chợ Bình Điền, cảng Phú Định với vai trò kết nối thông thương giữa TP.HCM với các tỉnh … tất cả đã tạo nên khu vực kinh tế phát triển sôi động thúc đẩy tốc độ phát triển dân cư và gia tăng triển vọng đầu tư đối với Conic Riverside.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-67 size-large aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1024x472.jpg\" alt=\"\" width=\"640\" height=\"295\" />\r\n\r\n<strong>3.    SỐNG XANH GIỮA LÒNG ĐÔ THỊ, TIẾP GIÁP 03 MẶT SÔNG</strong>\r\n\r\nConic Riverside hội đủ 03 yếu tố của một nơi an cư lý tưởng khi có đủ ba yếu tố “vàng” đó là “Nhất cận thị, nhị cận giang, tam cận lộ” khi sở hữu địa thế “vượng tài” ba mặt sông, mặt tiền vành đại trong, Tạ Quang Bửu và tiếp giáp Nguyễn Văn Linh…\r\nKhu căn hộ Conic Riverside thuộc khu dân cư Conic quy mô 29,9ha với dân cư và tiện ích hiện hữu, thuộc tổng thể quy hoạch cụm đô thị sinh thái 180ha tại Nam Sài Gòn và cạnh làng đại học 107,8 ha… hình thành nên cụm đô thị xanh, hiện đại và tri thức trong tương lai\r\n\r\n<img class=\"wp-image-69 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"650\" height=\"366\" />\r\n\r\n<strong>4.    TÂM ĐIỂM TIỆN ÍCH KHU VỰC:</strong>\r\n\r\nNgoài việc kết nối đa chiều và môi trường sống trong lành, Khu căn hộ Conic Riverside còn nằm trong tổng thể Khu dân cư Conic 29,9ha hiện hữu, sầm uất, được quy hoạch hoàn chỉnh với tiện ích có sẵn như: Trường mầm non, Hồ bơi, Siêu thị, trường học các cấp, khu thể thao, công viên bờ sông… mọi tiện ích chỉ trong vài bước chân\r\nĐặc biệt, dự án còn nằm cạnh khu Làng Đại học Nam Sài Gòn 107,8 ha, ngoài hệ thống trường học quốc tế như RMIT, Trường quốc tế Singapore… đang hoạt động, thì trường Đại học Kinh tế, Đại học Văn Hiến, ĐH Mật mã… cũng đang trong quá trình xây dựng, góp phần tạo nên cụm đô thị hiện đại tại nơi đây\r\n\r\n<img class=\"wp-image-70 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5.jpg\" alt=\"\" width=\"720\" height=\"427\" />\r\n\r\nNgoài ra, với vị trí mặt tiền Tạ Quang Bửu, tiếp giáp Nguyễn Văn Linh, kết nối nhanh đến các khu đô thị Phú Mỹ Hưng và Trung tâm Chợ Lớn, cư dân có thể tận hưởng đa dạng tiện ích cao cấp của khu vực như: Trường Đại học RMIT, Trường Đại học Kinh tế, Đại học Văn Hiến, Bệnh viện FV, Vivo City, Crescent Mall, BigC, Lotte Mart, Coop Mart, Chợ Bình Tây, Central Mall… Với đa dạng tiện ích sẵn có từ môi trường sống xanh, giáo dục, giải trí, mua sắm… cư dân Conic Riverside có thể tận hượng cuộc sống tiện nghi chỉ trong vài bước chân.\r\n\r\n<strong>5.    TIỆN ÍCH PHONG CÁCH RESORT BÊN SÔNG</strong>\r\n\r\nmột căn hộ resort, đưa cư dân đến gần với những tiện ích mang phong cách sống tự nhiên, môi trường trong lành và tạo lập một nơi an cư – nghỉ dưỡng lý tưởng cạnh sông.\r\nVới lợi thế 3 mặt giáp sông, dự án thừa hưởng thiên nhiên vùng cạnh sông trong lành, mát mẻ, dự án được thiết kế theo hướng không gian mở với các tiện ích như: Sky garden, hồ bơi tràn, vườn vui chơi dành cho thiếu nhi, đường đi bộ ven sông, công viên, thác nhân tạo, bãi đỗ xe trên cao, shophouse, spa, vườn BBQ… mang đến cuộc sống với đầy tiện nghi hoàn hảo cho tất cả thành viên trong gia đình.\r\n\r\n<img class=\"wp-image-71 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.jpg\" alt=\"\" width=\"724\" height=\"326\" />\r\n\r\n<strong>6.    THIẾT KẾ MỞ, XANH VÀ HIỆN ĐẠI</strong>\r\n\r\nMong muốn tạo lập một cuộc sống hoàn hảo, không gian mở và hòa hợp với thiên nhiên, dự án được thiết kế đa dạng từ 2 đến 3 phòng ngủ với diện tích phù hợp từ 49,41m2 – 72,96 m2, cùng các Sky Villa Park (Spenthouse) được thiết kế đặc biệt từ 114,06 m2 - 126,63 m2… Với mật độ xây dựng chỉ 34%, tất cả các căn hộ đều có hướng nhìn rộng mở, đón ánh sáng và gió một cách tự nhiên, mang đến cho bạn một không gian sống trong lành nhưng vẫn không kém phần tiện nghi và tinh tế\r\nKhông chỉ sở hữu hữu lợi thế vàng “Nhất cận thị, nhị cận giang, tam cận lộ”, Conic Riverside còn mang đến cho cư dân một môi trường sống tiện nghi và trong lành, với những giá trị sống hoàn hảo nhất cho gia đình. Conic Riverside, nơi không chỉ là nhà, mà còn khu vườn ươm của tổ ấm, để bạn cùng gia đình vun đắp hạt mầm yêu thương và dựng xây hạnh phúc, cả trong hiện tại và cả tương lai.'),
(42, 1, '_content', 'field_5be44a1d35767'),
(43, 5, 'image', '8'),
(44, 5, '_image', 'field_5bd8798f8f226'),
(45, 5, 'bedrooms', '0'),
(46, 5, '_bedrooms', 'field_5bd8862cafde5'),
(47, 5, 'baths', '0'),
(48, 5, '_baths', 'field_5bd8865bafde6'),
(49, 5, 'parking', '0'),
(50, 5, '_parking', 'field_5bd8869bafde7'),
(51, 5, 'sq_ft', '0'),
(52, 5, '_sq_ft', 'field_5bd886bdafde8'),
(53, 5, 'money', 'Liên Hệ'),
(54, 5, '_money', 'field_5bd887fa156a1'),
(55, 5, 'content', ''),
(56, 5, '_content', 'field_5be44a1d35767'),
(57, 6, 'image', '8'),
(58, 6, '_image', 'field_5bd8798f8f226'),
(59, 6, 'bedrooms', '0'),
(60, 6, '_bedrooms', 'field_5bd8862cafde5'),
(61, 6, 'baths', '0'),
(62, 6, '_baths', 'field_5bd8865bafde6'),
(63, 6, 'parking', '0'),
(64, 6, '_parking', 'field_5bd8869bafde7'),
(65, 6, 'sq_ft', '0'),
(66, 6, '_sq_ft', 'field_5bd886bdafde8'),
(67, 6, 'money', 'Liên Hệ'),
(68, 6, '_money', 'field_5bd887fa156a1'),
(69, 6, 'content', ''),
(70, 6, '_content', 'field_5be44a1d35767'),
(99, 9, 'image', '7'),
(100, 9, '_image', 'field_5bd8798f8f226'),
(101, 9, 'bedrooms', '0'),
(102, 9, '_bedrooms', 'field_5bd8862cafde5'),
(103, 9, 'baths', '0'),
(104, 9, '_baths', 'field_5bd8865bafde6'),
(105, 9, 'parking', '0'),
(106, 9, '_parking', 'field_5bd8869bafde7'),
(107, 9, 'sq_ft', '0'),
(108, 9, '_sq_ft', 'field_5bd886bdafde8'),
(109, 9, 'money', 'Liên Hệ'),
(110, 9, '_money', 'field_5bd887fa156a1'),
(111, 9, 'content', ''),
(112, 9, '_content', 'field_5be44a1d35767'),
(113, 10, 'image', '135'),
(114, 10, '_image', 'field_5bd8798f8f226'),
(115, 10, 'bedrooms', '0'),
(116, 10, '_bedrooms', 'field_5bd8862cafde5'),
(117, 10, 'baths', '0'),
(118, 10, '_baths', 'field_5bd8865bafde6'),
(119, 10, 'parking', '0'),
(120, 10, '_parking', 'field_5bd8869bafde7'),
(121, 10, 'sq_ft', '0'),
(122, 10, '_sq_ft', 'field_5bd886bdafde8'),
(123, 10, 'money', 'Liên Hệ'),
(124, 10, '_money', 'field_5bd887fa156a1'),
(125, 10, 'content', ''),
(126, 10, '_content', 'field_5be44a1d35767'),
(127, 11, 'image', '130'),
(128, 11, '_image', 'field_5bd8798f8f226'),
(129, 11, 'bedrooms', '0'),
(130, 11, '_bedrooms', 'field_5bd8862cafde5'),
(131, 11, 'baths', '0'),
(132, 11, '_baths', 'field_5bd8865bafde6'),
(133, 11, 'parking', '0'),
(134, 11, '_parking', 'field_5bd8869bafde7'),
(135, 11, 'sq_ft', '0'),
(136, 11, '_sq_ft', 'field_5bd886bdafde8'),
(137, 11, 'money', 'Liên Hệ'),
(138, 11, '_money', 'field_5bd887fa156a1'),
(139, 11, 'content', ''),
(140, 11, '_content', 'field_5be44a1d35767'),
(183, 15, 'image', '183'),
(184, 15, '_image', 'field_5bd8798f8f226'),
(185, 15, 'bedrooms', '0'),
(186, 15, '_bedrooms', 'field_5bd8862cafde5'),
(187, 15, 'baths', '0'),
(188, 15, '_baths', 'field_5bd8865bafde6'),
(189, 15, 'parking', '0'),
(190, 15, '_parking', 'field_5bd8869bafde7'),
(191, 15, 'sq_ft', '0'),
(192, 15, '_sq_ft', 'field_5bd886bdafde8'),
(193, 15, 'money', 'Liên Hệ'),
(194, 15, '_money', 'field_5bd887fa156a1'),
(195, 15, 'content', '<img class=\"alignnone size-full wp-image-187\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/11.jpg\" alt=\"\" width=\"720\" height=\"1280\" />\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-186\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/10.jpg\" alt=\"\" width=\"1280\" height=\"720\" />\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-184\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/8.jpg\" alt=\"\" width=\"1280\" height=\"720\" />\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-181\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/5-1.jpg\" alt=\"\" width=\"720\" height=\"1280\" />\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-180\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4-1.jpg\" alt=\"\" width=\"720\" height=\"1280\" />\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-179\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3-1.jpg\" alt=\"\" width=\"720\" height=\"1280\" />\r\n\r\n<img class=\"alignnone size-full wp-image-177\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-1.jpg\" alt=\"\" width=\"1280\" height=\"720\" />\r\n\r\n&nbsp;'),
(196, 15, '_content', 'field_5be44a1d35767'),
(197, 16, 'image', '182'),
(198, 16, '_image', 'field_5bd8798f8f226'),
(199, 16, 'bedrooms', '0'),
(200, 16, '_bedrooms', 'field_5bd8862cafde5'),
(201, 16, 'baths', '0'),
(202, 16, '_baths', 'field_5bd8865bafde6'),
(203, 16, 'parking', '0'),
(204, 16, '_parking', 'field_5bd8869bafde7'),
(205, 16, 'sq_ft', '0'),
(206, 16, '_sq_ft', 'field_5bd886bdafde8'),
(207, 16, 'money', 'Liên Hệ'),
(208, 16, '_money', 'field_5bd887fa156a1'),
(209, 16, 'content', '<img class=\"alignnone size-full wp-image-204\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1-2.jpg\" alt=\"\" width=\"1140\" height=\"763\" />\r\n\r\n<img class=\"alignnone size-full wp-image-205\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/1.png\" alt=\"\" width=\"1200\" height=\"466\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-208\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3.gif\" alt=\"\" width=\"1140\" height=\"810\" />\r\n\r\n<img class=\"alignnone size-full wp-image-209\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/3.png\" alt=\"\" width=\"1200\" height=\"565\" />\r\n\r\n<img class=\"alignnone size-full wp-image-210\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4-2.jpg\" alt=\"\" width=\"1048\" height=\"800\" />\r\n\r\n<img class=\"alignnone size-full wp-image-211\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/4.png\" alt=\"\" width=\"1200\" height=\"541\" />\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-213\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/6.png\" alt=\"\" width=\"1200\" height=\"565\" />\r\n\r\n<img class=\"alignnone size-full wp-image-214\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/7.png\" alt=\"\" width=\"1200\" height=\"541\" />\r\n\r\n<img class=\"alignnone size-full wp-image-215\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/8.png\" alt=\"\" width=\"1422\" height=\"500\" />\r\n\r\n<img class=\"alignnone size-full wp-image-216\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/9.png\" alt=\"\" width=\"2000\" height=\"1524\" />\r\n\r\n<img class=\"alignnone size-full wp-image-217\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/10-1.jpg\" alt=\"\" width=\"1048\" height=\"800\" />\r\n\r\n<img class=\"alignnone size-full wp-image-218\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/11-1.jpg\" alt=\"\" width=\"1138\" height=\"600\" />\r\n\r\n<img class=\"alignnone size-full wp-image-219\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/11.png\" alt=\"\" width=\"1200\" height=\"849\" />\r\n\r\n<img class=\"alignnone size-full wp-image-220\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/12.png\" alt=\"\" width=\"1200\" height=\"733\" />\r\n\r\n<img class=\"alignnone size-full wp-image-221\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/13.gif\" alt=\"\" width=\"1140\" height=\"810\" />\r\n\r\n<img class=\"alignnone size-full wp-image-222\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/14.png\" alt=\"\" width=\"1200\" height=\"684\" />\r\n\r\n<img class=\"alignnone size-full wp-image-223\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/15.png\" alt=\"\" width=\"1200\" height=\"1200\" />\r\n\r\n<img class=\"alignnone size-full wp-image-225\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/17.png\" alt=\"\" width=\"1200\" height=\"595\" />\r\n\r\n<img class=\"alignnone size-full wp-image-226\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/18.png\" alt=\"\" width=\"1200\" height=\"849\" />\r\n\r\n&nbsp;'),
(210, 16, '_content', 'field_5be44a1d35767'),
(211, 1, 'gia', 'Liên Hệ'),
(212, 1, '_gia', 'field_5bec40d8651cd'),
(213, 1, 'vi_tri', 'Lô 13B - KDC Conic, Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Tp.HCM'),
(214, 1, '_vi_tri', 'field_5bec4102651ce'),
(215, 1, 'dien_tich', '49m2 - 500m2'),
(216, 1, '_dien_tich', 'field_5bec4130651cf'),
(217, 1, 'hoi_mua', '0911711944'),
(218, 1, '_hoi_mua', 'field_5bec4159651d1'),
(219, 1, 'thoi_gian_ban_giao', 'Tháng 4/2019'),
(220, 1, '_thoi_gian_ban_giao', 'field_5bec4143651d0'),
(241, 9, 'gia', 'Đang cập nhật'),
(242, 9, '_gia', 'field_5bec40d8651cd'),
(243, 9, 'vi_tri', 'Lô 13B - KDC Conic, Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Tp.HCM'),
(244, 9, '_vi_tri', 'field_5bec4102651ce'),
(245, 9, 'dien_tich', '49m2 - 500m2'),
(246, 9, '_dien_tich', 'field_5bec4130651cf'),
(247, 9, 'hoi_mua', '0911711944'),
(248, 9, '_hoi_mua', 'field_5bec4159651d1'),
(249, 9, 'thoi_gian_ban_giao', 'Tháng 4/2019'),
(250, 9, '_thoi_gian_ban_giao', 'field_5bec4143651d0'),
(261, 15, 'gia', 'Đang cập nhật'),
(262, 15, '_gia', 'field_5bec40d8651cd'),
(263, 15, 'vi_tri', 'Lô 13B - KDC Conic, Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Tp.HCM'),
(264, 15, '_vi_tri', 'field_5bec4102651ce'),
(265, 15, 'dien_tich', '49m2 - 500m2'),
(266, 15, '_dien_tich', 'field_5bec4130651cf'),
(267, 15, 'hoi_mua', '0911711944'),
(268, 15, '_hoi_mua', 'field_5bec4159651d1'),
(269, 15, 'thoi_gian_ban_giao', 'Tháng 6/2019'),
(270, 15, '_thoi_gian_ban_giao', 'field_5bec4143651d0'),
(271, 16, 'gia', 'Đang cập nhật'),
(272, 16, '_gia', 'field_5bec40d8651cd'),
(273, 16, 'vi_tri', 'Lô 13B - KDC Conic, Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Tp.HCM'),
(274, 16, '_vi_tri', 'field_5bec4102651ce'),
(275, 16, 'dien_tich', '49m2 - 500m2'),
(276, 16, '_dien_tich', 'field_5bec4130651cf'),
(277, 16, 'hoi_mua', '0911711944'),
(278, 16, '_hoi_mua', 'field_5bec4159651d1'),
(279, 16, 'thoi_gian_ban_giao', 'Tháng 4/2019'),
(280, 16, '_thoi_gian_ban_giao', 'field_5bec4143651d0'),
(301, 17, 'gia', ''),
(302, 17, '_gia', 'field_5bec40d8651cd'),
(303, 17, 'vi_tri', ''),
(304, 17, '_vi_tri', 'field_5bec4102651ce'),
(305, 17, 'dien_tich', ''),
(306, 17, '_dien_tich', 'field_5bec4130651cf'),
(307, 17, 'hoi_mua', ''),
(308, 17, '_hoi_mua', 'field_5bec4159651d1'),
(309, 17, 'thoi_gian_ban_giao', ''),
(310, 17, '_thoi_gian_ban_giao', 'field_5bec4143651d0'),
(311, 17, 'image', '169'),
(312, 17, '_image', 'field_5bd8798f8f226'),
(313, 17, 'content', ''),
(314, 17, '_content', 'field_5be44a1d35767'),
(315, 18, 'gia', ''),
(316, 18, '_gia', 'field_5bec40d8651cd'),
(317, 18, 'vi_tri', ''),
(318, 18, '_vi_tri', 'field_5bec4102651ce'),
(319, 18, 'dien_tich', ''),
(320, 18, '_dien_tich', 'field_5bec4130651cf'),
(321, 18, 'hoi_mua', ''),
(322, 18, '_hoi_mua', 'field_5bec4159651d1'),
(323, 18, 'thoi_gian_ban_giao', ''),
(324, 18, '_thoi_gian_ban_giao', 'field_5bec4143651d0'),
(325, 18, 'image', '138'),
(326, 18, '_image', 'field_5bd8798f8f226'),
(327, 18, 'content', ''),
(328, 18, '_content', 'field_5be44a1d35767'),
(329, 19, 'gia', 'Liên Hệ'),
(330, 19, '_gia', 'field_5bec40d8651cd'),
(331, 19, 'vi_tri', 'Lô 13B - KDC Conic, Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Tp.HCM'),
(332, 19, '_vi_tri', 'field_5bec4102651ce'),
(333, 19, 'dien_tich', ' 49m2 - 500m2'),
(334, 19, '_dien_tich', 'field_5bec4130651cf'),
(335, 19, 'hoi_mua', '0911711944'),
(336, 19, '_hoi_mua', 'field_5bec4159651d1'),
(337, 19, 'thoi_gian_ban_giao', 'Tháng 4/2019'),
(338, 19, '_thoi_gian_ban_giao', 'field_5bec4143651d0'),
(339, 19, 'image', '128'),
(340, 19, '_image', 'field_5bd8798f8f226'),
(341, 19, 'content', 'MÔ HÌNH CĂN HỘ CAO CẤP\r\nTỔNG 1.104, GỒM 2 TÒA NHÀ, MỖI TÒA GỒM 552 CĂN HỘ\r\nDIỆN TÍCH CĂN HỘ :\r\nLOẠI A-3 PHÒNG NGỦ &amp; 2 PHÒNG TẮM : 128m2\r\nLOẠI B- 3 PHÒNG NGỦ &amp; PHÒNG TẮM : 115m2\r\nLOẠI C- 3 PHÒNG NGỦ &amp; PHÒNG TẮM : 97m2\r\n\r\nMÔ HÌNH DỰ ÁN CÔNG TY E&amp;O\r\n\r\n<img class=\"wp-image-115 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture1.jpg\" alt=\"\" width=\"964\" height=\"720\" />\r\n\r\n<img class=\"wp-image-116 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture2.jpg\" alt=\"\" width=\"964\" height=\"720\" />\r\n\r\n<b>MÔ HÌNH DỰ ÁN NHÀ TRỆT </b>\r\n\r\n<img class=\"wp-image-117 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture3.jpg\" alt=\"\" width=\"721\" height=\"643\" />\r\n\r\n<img class=\"wp-image-118 size-full aligncenter\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/Picture4.jpg\" alt=\"\" width=\"727\" height=\"643\" />\r\n\r\n<img class=\"alignnone size-full wp-image-251\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_1.jpg\" alt=\"\" width=\"964\" height=\"720\" />\r\n\r\n<img class=\"alignnone size-full wp-image-252\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_2.jpg\" alt=\"\" width=\"717\" height=\"513\" />\r\n\r\n<img class=\"alignnone size-full wp-image-253\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_3.jpg\" alt=\"\" width=\"759\" height=\"561\" />\r\n\r\n<img class=\"alignnone size-full wp-image-254\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_4.jpg\" alt=\"\" width=\"660\" height=\"721\" />\r\n\r\n<img class=\"alignnone size-full wp-image-255\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_5.jpg\" alt=\"\" width=\"727\" height=\"721\" />\r\n\r\n<b>PHÒNG MASSAGE CĂN HỘ </b><b>CAO CẤP E&amp;O</b>\r\n\r\n<img class=\"alignnone size-full wp-image-256\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_6.jpg\" alt=\"\" width=\"750\" height=\"719\" />\r\n\r\n<img class=\"alignnone size-full wp-image-257\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_7.jpg\" alt=\"\" width=\"721\" height=\"884\" />\r\n\r\n<b>KHÔNG GIAN BÊN TRONG  </b><b>CĂN HỘ CAO CẤP E&amp;O</b>\r\n\r\n<img class=\"alignnone size-full wp-image-260\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_10.jpg\" alt=\"\" width=\"768\" height=\"469\" />\r\n\r\n<img class=\"alignnone size-full wp-image-262\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_11-1.jpg\" alt=\"\" width=\"708\" height=\"477\" />\r\n\r\n<img class=\"alignnone size-full wp-image-263\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_12.jpg\" alt=\"\" width=\"704\" height=\"476\" />\r\n\r\n<img class=\"alignnone size-full wp-image-264\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_13.jpg\" alt=\"\" width=\"721\" height=\"475\" />\r\n\r\n<img class=\"alignnone size-full wp-image-265\" src=\"http://thoidaihoangkim.com/wp-content/uploads/2018/11/EO_14.jpg\" alt=\"\" width=\"704\" height=\"476\" />\r\n\r\n&nbsp;'),
(342, 19, '_content', 'field_5be44a1d35767');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Conic Riverside', 'conic-riverside', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Môi Trường Sống', 'moi-truong-song', 0),
(4, 'Dự Án', 'du-an', 0),
(5, 'Dieu Hanh', 'dieu-hanh', 0),
(6, 'Môi Trường', 'moi-truong', 0),
(9, 'Nhà Đất', 'nha-dat', 0),
(10, 'Căn Hộ', 'can-ho', 0),
(11, 'Mua Bán', 'mua-ban', 0),
(15, 'An Gia Riverside', 'an-gia-riverside', 0),
(16, 'Gym Riverside Quận 2', 'gym-riverside-quan-2', 0),
(17, 'Bán', 'ban', 0),
(18, 'Cho Thuê', 'cho-thue', 0),
(19, 'Đầu tư dự án Malaysia', 'dau-tu-du-an-malaysia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 1, 0),
(27, 2, 0),
(60, 1, 0),
(61, 1, 0),
(64, 1, 0),
(67, 1, 0),
(70, 1, 0),
(73, 1, 0),
(76, 1, 0),
(79, 1, 0),
(83, 3, 0),
(85, 3, 0),
(87, 3, 0),
(89, 3, 0),
(91, 3, 0),
(97, 5, 0),
(101, 5, 0),
(123, 1, 0),
(126, 1, 0),
(142, 1, 0),
(144, 1, 0),
(160, 2, 0),
(161, 2, 0),
(162, 2, 0),
(165, 2, 0),
(166, 2, 0),
(189, 2, 0),
(190, 2, 0),
(200, 15, 0),
(202, 16, 0),
(227, 16, 0),
(240, 1, 0),
(242, 1, 0),
(244, 19, 0),
(248, 2, 0),
(268, 2, 0),
(269, 2, 0),
(270, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'khơi nguồn sống xanh, ươm mầm hạnh phúc', 4, 7),
(2, 2, 'nav_menu', '', 0, 12),
(3, 3, 'category', '', 6, 5),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 0),
(10, 10, 'category', '', 0, 0),
(11, 11, 'category', '', 0, 0),
(15, 15, 'category', '', 10, 1),
(16, 16, 'category', '', 10, 2),
(17, 17, 'category', '', 9, 0),
(18, 18, 'category', '', 9, 0),
(19, 19, 'category', 'Tâm An Thiên Quốc An', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,tp09_edit_drag_drop_sort'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"74cbb70aa1024b9ac3b99b57fe9830d9fae18ff309e7fab69d54292e9eecb78a\";a:4:{s:10:\"expiration\";i:1542775126;s:2:\"ip\";s:13:\"150.95.201.39\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1542602326;}s:64:\"6371ed83d8fa0204b02d9e42ae9192670b4d9d3361e20004463b94bb30827ef6\";a:4:{s:10:\"expiration\";i:1542904748;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1542731948;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '271'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"42.114.195.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=upload&editor=tinymce&imgsize=full&mfold=o&cats=pop'),
(20, 1, 'wp_user-settings-time', '1542731948'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'wp_tablepress_user_options', '{\"user_options_db_version\":37,\"admin_menu_parent_page\":\"middle\",\"message_first_visit\":true}'),
(27, 1, 'managetablepress_listcolumnshidden', 'a:1:{i:0;s:22:\"table_last_modified_by\";}'),
(28, 1, 'supsystic-tables-tutorial_was_showed', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B4uPuvxDv/1/5ABLf32BukujYHjuYE/', 'admin', 'voquocbinh90@gmail.com', '', '2018-10-27 06:27:38', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_masterslider_options`
--
ALTER TABLE `wp_masterslider_options`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_masterslider_sliders`
--
ALTER TABLE `wp_masterslider_sliders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_responsive_menu`
--
ALTER TABLE `wp_responsive_menu`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_site_cache`
--
ALTER TABLE `wp_site_cache`
  ADD KEY `hash` (`hash`),
  ADD KEY `expire_time` (`expire_time`),
  ADD KEY `type` (`type`,`post_type`(191)),
  ADD KEY `updating` (`updating`);

--
-- Indexes for table `wp_supsystic_tbl_columns`
--
ALTER TABLE `wp_supsystic_tbl_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_supsystic_tbl_diagrams`
--
ALTER TABLE `wp_supsystic_tbl_diagrams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_supsystic_tbl_rows`
--
ALTER TABLE `wp_supsystic_tbl_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_supsystic_tbl_tables`
--
ALTER TABLE `wp_supsystic_tbl_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_supsystic_tbl_woo_columns`
--
ALTER TABLE `wp_supsystic_tbl_woo_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_masterslider_options`
--
ALTER TABLE `wp_masterslider_options`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_masterslider_sliders`
--
ALTER TABLE `wp_masterslider_sliders`
  MODIFY `ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1041;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=783;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_columns`
--
ALTER TABLE `wp_supsystic_tbl_columns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_diagrams`
--
ALTER TABLE `wp_supsystic_tbl_diagrams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_rows`
--
ALTER TABLE `wp_supsystic_tbl_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_tables`
--
ALTER TABLE `wp_supsystic_tbl_tables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_woo_columns`
--
ALTER TABLE `wp_supsystic_tbl_woo_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
