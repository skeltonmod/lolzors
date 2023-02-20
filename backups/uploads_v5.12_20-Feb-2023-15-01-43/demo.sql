#
# TABLE STRUCTURE FOR: addons
#

DROP TABLE IF EXISTS `addons`;

CREATE TABLE `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: applications
#

DROP TABLE IF EXISTS `applications`;

CREATE TABLE `applications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `applications` (`id`, `user_id`, `address`, `phone`, `message`, `document`, `status`) VALUES (1, 3, 'Somewhere', '09953875103', '', 'ZPDT5fynYhQmtJr.png', 1);
INSERT INTO `applications` (`id`, `user_id`, `address`, `phone`, `message`, `document`, `status`) VALUES (2, 4, 'Somewhere', '902190219', 'Lorem Ipsum', 'luqPGwjfLmpByMR.png', 1);
INSERT INTO `applications` (`id`, `user_id`, `address`, `phone`, `message`, `document`, `status`) VALUES (3, 6, 'India', '49018409328', 'Yo', 'abGf5MhmIWjXR1O.png', 1);


#
# TABLE STRUCTURE FOR: blog_category
#

DROP TABLE IF EXISTS `blog_category`;

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `added_date` varchar(100) NOT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `blog_category` (`blog_category_id`, `title`, `subtitle`, `slug`, `added_date`) VALUES (1, 'Admin', 'All admin related posts', 'admin', '1676727655');
INSERT INTO `blog_category` (`blog_category_id`, `title`, `subtitle`, `slug`, `added_date`) VALUES (2, 'Instructor', 'All instructor related posts', 'instructor', '1676730422');


#
# TABLE STRUCTURE FOR: blog_comments
#

DROP TABLE IF EXISTS `blog_comments`;

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL,
  PRIMARY KEY (`blog_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: blogs
#

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `blogs` (`blog_id`, `blog_category_id`, `user_id`, `title`, `keywords`, `description`, `thumbnail`, `banner`, `is_popular`, `likes`, `added_date`, `updated_date`, `status`) VALUES (1, 1, 1, 'Welcome', '', '&lt;p&gt;HELLO OOOOOOOOOOO&lt;/p&gt;', '6c95c5de66745b37b9154e03ee8b7007.png', '934664c30f42dad2fe9c75a3473cd80d.png', 1, '', '1676727685', '', '1');
INSERT INTO `blogs` (`blog_id`, `blog_category_id`, `user_id`, `title`, `keywords`, `description`, `thumbnail`, `banner`, `is_popular`, `likes`, `added_date`, `updated_date`, `status`) VALUES (2, 2, 6, 'Hello', 'WOW', '&lt;p&gt;WPW&lt;/p&gt;', '6bc0be5749732d412220e8fcf66991fe.png', 'f665499fed5877736074f5bf564f9630.png', 0, '', '1676731557', '', 'pending');


#
# TABLE STRUCTURE FOR: category
#

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (1, '1876afcba0', 'Lifestyle', 0, 'lifestyle', 1676678400, NULL, 'fab fa-500px', 'e0410f2927ac0bd77f5979cb4da8dc94.jpg');
INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (2, '5a7c56c542', 'Hair Care', 1, 'hair-care', 1676678400, NULL, 'fab fa-accessible-icon', NULL);
INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (3, 'd23a7a30d3', 'Mental Health', 1, 'mental-health', 1676678400, NULL, 'fas fa-dna', NULL);
INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (4, '3a2c720ae2', 'Technology', 0, 'technology', 1676678400, NULL, 'fas fa-bug', '34d4623334c08e78cb2c36149d4180ef.jpg');
INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (5, '7c8c6fe3e4', 'Web', 4, 'web', 1676678400, NULL, 'fab fa-aws', NULL);
INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (6, '632e56f63d', 'Travel', 0, 'travel', 1676678400, NULL, 'fas fa-fighter-jet', 'b47fb04358c49277df24632174209edc.jpg');
INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES (7, '571a602d81', 'Island Hopping', 6, 'island-hopping', 1676678400, NULL, 'fab fa-accessible-icon', NULL);


#
# TABLE STRUCTURE FOR: ci_sessions
#

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('652e0328212ebcade99c969a53f9681565e66e49', '172.16.238.1', 1676708795, '__ci_last_regenerate|i:1676708795;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('15cb72c0fedd1a0553f9510c1dbafb0957aa533e', '172.16.238.1', 1676708838, '__ci_last_regenerate|i:1676708838;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('44daf7db6682eab64e98e103f3f48efa3a3bfa9d', '172.16.238.1', 1676709262, '__ci_last_regenerate|i:1676709262;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a15699c199c48754a10ea860d8a8501b4a10ff46', '172.16.238.1', 1676726036, '__ci_last_regenerate|i:1676726036;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d1e3b36625199c6ffae5aa22c30862aa92a2e674', '172.16.238.1', 1676726565, '__ci_last_regenerate|i:1676726565;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2921ce1b7d4b086ad0f074a248a00c4a46324d7a', '172.16.238.1', 1676728365, '__ci_last_regenerate|i:1676728258;cart_items|a:0:{}language|s:7:\"english\";custom_session_limit|i:1677592365;user_id|s:1:\"1\";role_id|s:1:\"1\";role|s:5:\"Admin\";name|s:12:\"Elijah Abgao\";is_instructor|s:1:\"1\";admin_login|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7863f912c762b5b2635c7e5690ea22695788703d', '172.16.238.1', 1676731595, '__ci_last_regenerate|i:1676731595;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7bebe359c20936f249253f0e10e95861c8bd1130', '172.16.238.1', 1676731715, '__ci_last_regenerate|i:1676731715;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d4dfa6c29bfe503245ec334a6076c2ae92bf3730', '172.16.238.1', 1676905272, '__ci_last_regenerate|i:1676905272;cart_items|a:0:{}language|s:7:\"english\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e9c31fa56ab0a016634d7a99928cdd5150ec7321', '172.16.238.1', 1676905302, '__ci_last_regenerate|i:1676905272;cart_items|a:0:{}language|s:7:\"english\";custom_session_limit|i:1677769302;user_id|s:1:\"1\";role_id|s:1:\"1\";role|s:5:\"Admin\";name|s:12:\"Elijah Abgao\";is_instructor|s:1:\"1\";admin_login|s:1:\"1\";');


#
# TABLE STRUCTURE FOR: comment
#

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: coupons
#

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `coupons` (`id`, `code`, `discount_percentage`, `created_at`, `expiry_date`) VALUES ('1', 'demo50', '50', 1676678400, 1677542400);


#
# TABLE STRUCTURE FOR: course
#

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `faqs` text NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `course_overview_provider` varchar(255) DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT 0,
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`) VALUES (1, 'Grow a Mustache', 'Grow Up', '<p><span xss=removed>Lorem Ipsum</span><span xss=removed> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '[]', '[]', 'english', 1, 2, '[1]', '[]', '120', NULL, '0', 'advanced', '1,3', NULL, '', 1676678400, 1676709218, 'general', 0, 1, 'active', '', '', '', NULL, 1, 1, 1);
INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`) VALUES (2, 'How to Code like a PRO', 'Code like a pro', '<p>Code like a pro, the yestech way<br></p>', '[\"You can code like a pro\"]', '{\"What will I learn\":\"Nothing!\"}', 'english', 4, 5, '[2]', '[\"Must have a working brain\"]', '1000', 1, '900', 'intermediate', '1,3', NULL, 'https://www.youtube.com/watch?v=BydNliK4Eqo', 1676678400, 1676728855, 'general', 1, 1, 'active', 'youtube', '', '', NULL, 1, 0, 1);
INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`) VALUES (3, 'How to Code', 'How to code?', '<p>What is Code?</p>', '[\"You will learn to code\"]', '{\"Why?\":\"Why not\"}', 'english', 4, 5, '[3]', '[\"Can type\",\"Can use a computer\"]', '130', NULL, '0', 'beginner', '1', NULL, 'https://www.youtube.com/watch?v=ORrELERGIHs', 1676678400, NULL, 'general', 1, 1, 'active', 'youtube', '', '', NULL, 0, 1, 1);
INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `faqs`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `enable_drip_content`, `creator`) VALUES (4, 'How to live like me', 'Enroll now if you want to be like me', '<p>Enroll now if you want to be like me for a price<br></p>', '[\"You will be like \",\"You\'ll be like me\"]', '{\"How do I be like you?\":\"You enroll in this course\"}', 'english', 1, 2, '[4]', '[\"You must be a male\"]', '2000', NULL, '0', 'advanced', '6', NULL, 'https://www.youtube.com/watch?v=eoDg8_SfsCw', 1676678400, NULL, 'general', 1, 0, 'active', 'youtube', '', '', NULL, 0, 0, 6);


#
# TABLE STRUCTURE FOR: currency
#

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT 0,
  `iyzico_supported` int(11) DEFAULT 0,
  `paystack_supported` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0);
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES (164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);


#
# TABLE STRUCTURE FOR: custom_page
#

DROP TABLE IF EXISTS `custom_page`;

CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_content` longtext NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `button_title` varchar(255) NOT NULL,
  `button_position` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`custom_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: enrol
#

DROP TABLE IF EXISTS `enrol`;

CREATE TABLE `enrol` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES (1, 2, 1, 1676678400, NULL);
INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES (2, 4, 2, 1676678400, NULL);
INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES (3, 4, 1, 1676678400, NULL);
INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES (4, 4, 3, 1676678400, NULL);
INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES (5, 6, 3, 1676678400, NULL);
INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES (6, 4, 4, 1676678400, NULL);


#
# TABLE STRUCTURE FOR: frontend_settings
#

DROP TABLE IF EXISTS `frontend_settings`;

CREATE TABLE `frontend_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (1, 'banner_title', 'Start learning from best Platform');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (4, 'about_us', '<p></p><h2><span xss=removed>This is about us</span></h2><p><span xss=\"removed\">Welcome to Academy. It will help you to learn in a new ways</span></p>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (13, 'theme', 'default');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (15, 'cookie_status', 'active');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (17, 'banner_image', 'home-banner.jpg');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (18, 'light_logo', 'logo-light.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (19, 'dark_logo', 'logo-dark.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (20, 'small_logo', 'logo-light-sm.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (21, 'favicon', 'favicon.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (22, 'recaptcha_status', '0');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (23, 'recaptcha_secretkey', 'Valid-secret-key');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (24, 'recaptcha_sitekey', 'Valid-site-key');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (26, 'facebook', 'https://facebook.com');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (27, 'twitter', 'https://twitter.com');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (28, 'linkedin', '');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (31, 'blog_page_title', 'Where possibilities begin');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (33, 'blog_page_banner', 'blog-page.png');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (34, 'instructors_blog_permission', '1');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES (35, 'blog_visibility_on_the_home_page', '1');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext DEFAULT NULL,
  `english` longtext DEFAULT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=840 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (1, 'english', 'English');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (2, '404_page_not_found', '404 page not found');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (3, 'categories', 'Categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (4, 'menu', 'Menu');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (5, 'all_courses', 'All courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (6, 'search_for_courses', 'Search for courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (7, 'total', 'Total');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (8, 'go_to_cart', 'Go to cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (9, 'your_cart_is_empty', 'Your cart is empty');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (10, 'log_in', 'Log in');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (11, 'sign_up', 'Sign up');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (12, 'cookie_policy', 'Cookie policy');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (13, 'accept', 'Accept');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (14, 'oh_snap', 'Oh snap');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (15, 'this_is_not_the_web_page_you_are_looking_for', 'This is not the web page you are looking for');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (16, 'back_to_home', 'Back to home');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (17, 'top_categories', 'Top categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (18, 'useful_links', 'Useful links');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (19, 'blog', 'Blog');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (20, 'help', 'Help');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (21, 'about_us', 'About us');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (22, 'privacy_policy', 'Privacy policy');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (23, 'terms_and_condition', 'Terms and condition');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (24, 'refund_policy', 'Refund policy');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (25, 'all_rights_reserved', 'All rights reserved');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (26, 'step', 'Step');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (27, 'how_would_you_rate_this_course_overall', 'How would you rate this course overall');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (28, 'write_a_public_review', 'Write a public review');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (29, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (30, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', 'What did the instructor do well and what could use some improvement');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (31, 'next', 'Next');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (32, 'previous', 'Previous');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (33, 'publish', 'Publish');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (34, 'are_you_sure', 'Are you sure');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (35, 'yes', 'Yes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (36, 'no', 'No');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (37, 'view_less', 'View less');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (38, 'view_more', 'View more');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (39, 'login', 'Login');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (40, 'provide_your_valid_login_credentials', 'Provide your valid login credentials');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (41, 'email', 'Email');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (42, 'password', 'Password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (43, 'forgot_password', 'Forgot password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (44, 'do_not_have_an_account', 'Do not have an account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (45, 'welcome', 'Welcome');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (46, 'administrator', 'Administrator');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (47, 'dashboard', 'Dashboard');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (48, 'quick_actions', 'Quick actions');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (49, 'create_course', 'Create course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (50, 'add_course', 'Add course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (51, 'add_new_lesson', 'Add new lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (52, 'add_lesson', 'Add lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (53, 'add_student', 'Add student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (54, 'enrol_a_student', 'Enrol a student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (55, 'enrol_student', 'Enrol student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (56, 'help_center', 'Help center');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (57, 'read_documentation', 'Read documentation');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (58, 'watch_video_tutorial', 'Watch video tutorial');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (59, 'get_customer_support', 'Get customer support');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (60, 'order_customization', 'Order customization');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (61, 'request_a_new_feature', 'Request a new feature');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (62, 'browse_addons', 'Browse addons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (63, 'admin', 'Admin');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (64, 'my_account', 'My account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (65, 'settings', 'Settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (66, 'logout', 'Logout');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (67, 'visit_website', 'Visit website');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (68, 'navigation', 'Navigation');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (69, 'courses', 'Courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (70, 'manage_courses', 'Manage courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (71, 'add_new_course', 'Add new course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (72, 'course_category', 'Course category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (73, 'coupons', 'Coupons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (74, 'enrolment', 'Enrolment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (75, 'course_enrollment', 'Course enrollment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (76, 'enrol_history', 'Enrol history');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (77, 'report', 'Report');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (78, 'admin_revenue', 'Admin revenue');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (79, 'instructor_revenue', 'Instructor revenue');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (80, 'purchase_history', 'Purchase history');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (81, 'users', 'Users');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (82, 'admins', 'Admins');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (83, 'manage_admins', 'Manage admins');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (84, 'add_new_admin', 'Add new admin');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (85, 'instructors', 'Instructors');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (86, 'manage_instructors', 'Manage instructors');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (87, 'add_new_instructor', 'Add new instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (88, 'instructor_payout', 'Instructor payout');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (89, 'instructor_settings', 'Instructor settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (90, 'applications', 'Applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (91, 'students', 'Students');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (92, 'manage_students', 'Manage students');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (93, 'add_new_student', 'Add new student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (94, 'message', 'Message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (95, 'all_blogs', 'All blogs');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (96, 'pending_blog', 'Pending blog');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (97, 'blog_category', 'Blog category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (98, 'blog_settings', 'Blog settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (99, 'addons', 'Addons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (100, 'themes', 'Themes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (101, 'system_settings', 'System settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (102, 'website_settings', 'Website settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (103, 'academy_cloud', 'Academy cloud');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (104, 'drip_content_settings', 'Drip content settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (105, 'payment_settings', 'Payment settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (106, 'language_settings', 'Language settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (107, 'smtp_settings', 'Smtp settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (108, 'social_login', 'Social login');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (109, 'custom_page', 'Custom page');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (110, 'data_center', 'Data center');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (111, 'about', 'About');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (112, 'manage_profile', 'Manage profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (113, 'admin_revenue_this_year', 'Admin revenue this year');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (114, 'number_courses', 'Number courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (115, 'number_of_lessons', 'Number of lessons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (116, 'number_of_enrolment', 'Number of enrolment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (117, 'number_of_student', 'Number of student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (118, 'course_overview', 'Course overview');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (119, 'active_courses', 'Active courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (120, 'pending_courses', 'Pending courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (121, 'requested_withdrawal', 'Requested withdrawal');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (122, 'january', 'January');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (123, 'february', 'February');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (124, 'march', 'March');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (125, 'april', 'April');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (126, 'may', 'May');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (127, 'june', 'June');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (128, 'july', 'July');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (129, 'august', 'August');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (130, 'september', 'September');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (131, 'october', 'October');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (132, 'november', 'November');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (133, 'december', 'December');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (134, 'this_year', 'This year');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (135, 'active_course', 'Active course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (136, 'pending_course', 'Pending course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (137, 'heads_up', 'Heads up');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (138, 'congratulations', 'Congratulations');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (139, 'please_fill_all_the_required_fields', 'Please fill all the required fields');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (140, 'close', 'Close');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (141, 'cancel', 'Cancel');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (142, 'continue', 'Continue');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (143, 'ok', 'Ok');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (144, 'success', 'Success');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (145, 'successfully', 'Successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (146, 'div_added_to_bottom_', 'Div added to bottom ');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (147, 'div_has_been_deleted_', 'Div has been deleted ');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (148, 'free_courses', 'Free courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (149, 'paid_courses', 'Paid courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (150, 'course_list', 'Course list');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (151, 'all', 'All');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (152, 'status', 'Status');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (153, 'active', 'Active');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (154, 'pending', 'Pending');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (155, 'private', 'Private');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (156, 'instructor', 'Instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (157, 'price', 'Price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (158, 'free', 'Free');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (159, 'paid', 'Paid');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (160, 'filter', 'Filter');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (161, 'title', 'Title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (162, 'category', 'Category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (163, 'lesson_and_section', 'Lesson and section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (164, 'enrolled_student', 'Enrolled student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (165, 'actions', 'Actions');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (166, 'home', 'Home');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (167, 'start_learning_from_best_platform', 'Start learning from best platform');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (168, 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (169, 'what_do_you_want_to_learn', 'What do you want to learn');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (170, 'search', 'Search');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (171, 'online_courses', 'Online courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (172, 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (173, 'expert_instruction', 'Expert instruction');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (174, 'find_the_right_course_for_you', 'Find the right course for you');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (175, 'lifetime_access', 'Lifetime access');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (176, 'learn_on_your_schedule', 'Learn on your schedule');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (177, 'top_courses', 'Top courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (178, 'top', 'Top');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (179, 'latest_courses', 'Latest courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (180, 'join_now_to_start_learning', 'Join now to start learning');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (181, 'get_started', 'Get started');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (182, 'become_a_new_instructor', 'Become a new instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (183, 'join_now', 'Join now');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (184, 'add_to_cart', 'Add to cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (185, 'added_to_cart', 'Added to cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (186, 'sign_up_and_start_learning', 'Sign up and start learning');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (187, 'first_name', 'First name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (188, 'last_name', 'Last name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (189, 'already_have_an_account', 'Already have an account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (190, 'your_registration_has_been_successfully_done', 'Your registration has been successfully done');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (191, 'my_courses', 'My courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (192, 'go_to_wishlist', 'Go to wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (193, 'your_wishlist_is_empty', 'Your wishlist is empty');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (194, 'explore_courses', 'Explore courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (195, 'hi', 'Hi');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (196, 'welcome_back', 'Welcome back');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (197, 'my_wishlist', 'My wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (198, 'my_messages', 'My messages');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (199, 'user_profile', 'User profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (200, 'log_out', 'Log out');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (201, 'become_an_instructor', 'Become an instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (202, 'student', 'Student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (203, 'instructor_application_form', 'Instructor application form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (204, 'name', 'Name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (205, 'your_name_will_go_here', 'Your name will go here');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (206, 'your_name_is_required', 'Your name is required');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (207, 'email_address', 'Email address');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (208, 'your_email_will_go_here', 'Your email will go here');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (209, 'your_email_is_required', 'Your email is required');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (210, 'address', 'Address');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (211, 'your_address_is_required', 'Your address is required');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (212, 'phone_number', 'Phone number');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (213, 'your_phone_number_will_go_here', 'Your phone number will go here');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (214, 'your_phone_number_is_required', 'Your phone number is required');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (215, 'any_message', 'Any message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (216, 'if_any_message_you_want_to_share', 'If any message you want to share');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (217, 'document', 'Document');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (218, 'if_any_document_you_want_to_share', 'If any document you want to share');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (219, 'are_accepted', 'Are accepted');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (220, 'apply', 'Apply');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (221, 'course_adding_form', 'Course adding form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (222, 'back_to_course_list', 'Back to course list');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (223, 'basic', 'Basic');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (224, 'info', 'Info');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (225, 'pricing', 'Pricing');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (226, 'media', 'Media');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (227, 'seo', 'Seo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (228, 'finish', 'Finish');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (229, 'course_title', 'Course title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (230, 'enter_course_title', 'Enter course title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (231, 'short_description', 'Short description');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (232, 'description', 'Description');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (233, 'select_a_category', 'Select a category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (234, 'select_sub_category', 'Select sub category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (235, 'level', 'Level');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (236, 'beginner', 'Beginner');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (237, 'advanced', 'Advanced');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (238, 'intermediate', 'Intermediate');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (239, 'language_made_in', 'Language made in');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (240, 'enable_drip_content', 'Enable drip content');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (241, 'keep_it_as_a_private_course', 'Keep it as a private course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (242, 'check_if_this_course_is_top_course', 'Check if this course is top course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (243, 'course_faq', 'Course faq');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (244, 'faq_question', 'Faq question');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (245, 'answer', 'Answer');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (246, 'requirements', 'Requirements');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (247, 'provide_requirements', 'Provide requirements');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (248, 'outcomes', 'Outcomes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (249, 'provide_outcomes', 'Provide outcomes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (250, 'check_if_this_is_a_free_course', 'Check if this is a free course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (251, 'course_price', 'Course price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (252, 'enter_course_course_price', 'Enter course course price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (253, 'check_if_this_course_has_discount', 'Check if this course has discount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (254, 'discounted_price', 'Discounted price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (255, 'this_course_has', 'This course has');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (256, 'discount', 'Discount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (257, 'course_overview_provider', 'Course overview provider');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (258, 'youtube', 'Youtube');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (259, 'vimeo', 'Vimeo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (260, 'html5', 'Html5');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (261, 'course_overview_url', 'Course overview url');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (262, 'course_thumbnail', 'Course thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (263, 'meta_keywords', 'Meta keywords');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (264, 'write_a_keyword_and_then_press_enter_button', 'Write a keyword and then press enter button');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (265, 'meta_description', 'Meta description');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (266, 'thank_you', 'Thank you');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (267, 'you_are_just_one_click_away', 'You are just one click away');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (268, 'submit', 'Submit');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (269, 'add_new_category', 'Add new category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (270, 'add_category', 'Add category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (271, 'category_add_form', 'Category add form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (272, 'category_code', 'Category code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (273, 'category_title', 'Category title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (274, 'parent', 'Parent');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (275, 'none', 'None');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (276, 'select_none_to_create_a_parent_category', 'Select none to create a parent category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (277, 'icon_picker', 'Icon picker');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (278, 'category_thumbnail', 'Category thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (279, 'the_image_size_should_be', 'The image size should be');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (280, 'choose_thumbnail', 'Choose thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (281, 'data_added_successfully', 'Data added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (282, 'sub_categories', 'Sub categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (283, 'edit', 'Edit');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (284, 'delete', 'Delete');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (285, 'edit_category', 'Edit category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (286, 'update_category', 'Update category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (287, 'update_category_form', 'Update category form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (288, 'course_has_been_added_successfully', 'Course has been added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (289, 'edit_course', 'Edit course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (290, 'update', 'Update');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (291, 'course_manager', 'Course manager');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (292, 'view_on_frontend', 'View on frontend');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (293, 'curriculum', 'Curriculum');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (294, 'add_new_section', 'Add new section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (295, 'add_section', 'Add section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (296, 'instructor_of_this_course', 'Instructor of this course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (297, 'hours', 'Hours');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (298, 'reviews', 'Reviews');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (299, 'compare', 'Compare');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (300, 'lectures', 'Lectures');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (301, 'last_updated', 'Last updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (302, 'lessons', 'Lessons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (303, 'course_updated_successfully', 'Course updated successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (304, 'course', 'Course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (305, 'ratings', 'Ratings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (306, 'students_enrolled', 'Students enrolled');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (307, 'created_by', 'Created by');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (308, 'curriculum_for_this_course', 'Curriculum for this course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (309, 'other_related_courses', 'Other related courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (310, 'about_instructor', 'About instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (311, 'student_feedback', 'Student feedback');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (312, 'add_to_wishlist', 'Add to wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (313, 'buy_now', 'Buy now');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (314, 'includes', 'Includes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (315, 'on_demand_videos', 'On demand videos');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (316, 'access_on_mobile_and_tv', 'Access on mobile and tv');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (317, 'full_lifetime_access', 'Full lifetime access');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (318, 'compare_this_course_with_other', 'Compare this course with other');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (319, 'please_wait', 'Please wait');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (320, 'added_to_wishlist', 'Added to wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (321, 'all_category', 'All category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (322, 'language', 'Language');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (323, 'showing', 'Showing');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (324, 'of', 'Of');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (325, 'results', 'Results');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (326, 'sort_by', 'Sort by');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (327, 'newest', 'Newest');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (328, 'highest_rating', 'Highest rating');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (329, 'discounted', 'Discounted');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (330, 'lowest_price', 'Lowest price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (331, 'highest_price', 'Highest price');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (332, 'show_more', 'Show more');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (333, 'show_less', 'Show less');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (334, 'shopping_cart', 'Shopping cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (335, 'courses_in_cart', 'Courses in cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (336, 'remove', 'Remove');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (337, 'tax_included', 'Tax included');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (338, 'apply_coupon_code', 'Apply coupon code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (339, 'checkout', 'Checkout');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (340, 'there_are_no_courses_on_your_cart', 'There are no courses on your cart');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (341, 'pay_for_purchasing_course', 'Pay for purchasing course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (342, 'payment', 'Payment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (343, 'make_payment', 'Make payment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (344, 'select_payment_gateway', 'Select payment gateway');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (345, 'by', 'By');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (346, 'pay_with_stripe', 'Pay with stripe');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (347, 'pay_by_razorpay', 'Pay by razorpay');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (348, 'payment_successfully_done', 'Payment successfully done');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (349, 'wishlists', 'Wishlists');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (350, 'messages', 'Messages');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (351, 'profile', 'Profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (352, 'reset', 'Reset');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (353, 'search_my_courses', 'Search my courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (354, 'completed', 'Completed');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (355, 'edit_rating', 'Edit rating');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (356, 'cancel_rating', 'Cancel rating');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (357, 'start_lesson', 'Start lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (358, 'out_of', 'Out of');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (359, 'write_your_review_here', 'Write your review here');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (360, 'publish_rating', 'Publish rating');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (361, 'course_details', 'Course details');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (362, 'course_content', 'Course content');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (363, 'compose', 'Compose');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (364, 'new_message', 'New message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (365, 'send', 'Send');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (366, 'message_sent', 'Message sent');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (367, 'type_your_message', 'Type your message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (368, 'featured_instructor', 'Featured instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (369, 'private_messaging', 'Private messaging');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (370, 'private_message', 'Private message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (371, 'choose_an_option_from_the_left_side', 'Choose an option from the left side');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (372, 'please_enter_your_messsage', 'Please enter your messsage');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (373, 'sent_message', 'Sent message');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (374, 'mark_as_pending', 'Mark as pending');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (375, 'section_and_lesson', 'Section and lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (376, 'edit_this_course', 'Edit this course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (377, 'view_course_on_frontend', 'View course on frontend');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (378, 'go_to_course_playing_page', 'Go to course playing page');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (379, 'total_section', 'Total section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (380, 'total_lesson', 'Total lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (381, 'total_enrolment', 'Total enrolment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (382, 'theme_settings', 'Theme settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (383, 'buy_new_theme', 'Buy new theme');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (384, 'installed_themes', 'Installed themes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (385, 'add_new_themes', 'Add new themes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (386, 'active_theme', 'Active theme');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (387, 'theme_successfully_activated', 'Theme successfully activated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (388, 'you_do_not_have_right_to_access_this_theme', 'You do not have right to access this theme');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (389, 'addon_manager', 'Addon manager');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (390, 'buy_new_addon', 'Buy new addon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (391, 'install_addon', 'Install addon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (392, 'installed_addons', 'Installed addons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (393, 'available_addons', 'Available addons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (394, 'version', 'Version');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (395, 'application_submitted_successfully', 'Application submitted successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (396, 'your_application', 'Your application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (397, 'details', 'Details');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (398, 'applicant_details', 'Applicant details');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (399, 'application_details', 'Application details');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (400, 'download', 'Download');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (401, 'instructor_application', 'Instructor application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (402, 'instructor_applications', 'Instructor applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (403, 'list_of_applications', 'List of applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (404, 'pending_applications', 'Pending applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (405, 'approved_applications', 'Approved applications');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (406, 'action', 'Action');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (407, 'approve', 'Approve');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (408, 'application_approved_successfully', 'Application approved successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (409, 'approved', 'Approved');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (410, 'photo', 'Photo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (411, 'enrolled_courses', 'Enrolled courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (412, 'view_courses', 'View courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (413, 'sales_report', 'Sales report');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (414, 'payout_report', 'Payout report');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (415, 'payout_settings', 'Payout settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (416, 'number_of_courses', 'Number of courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (417, 'pending_balance', 'Pending balance');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (418, 'requested_withdrawal_amount', 'Requested withdrawal amount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (419, 'already_purchased', 'Already purchased');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (420, 'search_my_wishlist', 'Search my wishlist');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (421, 'account', 'Account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (422, 'edit_profile', 'Edit profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (423, 'add_information_about_yourself_to_share_on_your_profile', 'Add information about yourself to share on your profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (424, 'biography', 'Biography');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (425, 'add_your_twitter_link', 'Add your twitter link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (426, 'twitter_link', 'Twitter link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (427, 'add_your_facebook_link', 'Add your facebook link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (428, 'facebook_link', 'Facebook link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (429, 'add_your_linkedin_link', 'Add your linkedin link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (430, 'linkedin_link', 'Linkedin link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (431, 'save', 'Save');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (432, 'course_enrolment', 'Course enrolment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (433, 'enrolment_form', 'Enrolment form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (434, 'course_to_enrol', 'Course to enrol');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (435, 'select_a_course', 'Select a course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (436, 'enrol_histories', 'Enrol histories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (437, 'user_name', 'User name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (438, 'enrolled_course', 'Enrolled course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (439, 'enrolment_date', 'Enrolment date');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (440, 'total_amount', 'Total amount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (441, 'blog_categories', 'Blog categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (442, 'add_a_new_category', 'Add a new category');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (443, 'blog_page_title', 'Blog page title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (444, 'blog_page_subtitle', 'Blog page subtitle');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (445, 'instructors_blog_permission', 'Instructors blog permission');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (446, 'blog_visibility_on_the_home_page', 'Blog visibility on the home page');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (447, 'visible', 'Visible');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (448, 'invisible', 'Invisible');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (449, 'blog_page_banner', 'Blog page banner');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (450, 'save_changes', 'Save changes');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (451, 'instructor_page', 'Instructor page');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (452, 'about_me', 'About me');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (453, 'show_full_biography', 'Show full biography');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (454, 'my_skills', 'My skills');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (455, 'total_students', 'Total students');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (456, 'select_lesson_type', 'Select lesson type');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (457, 'video', 'Video');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (458, 'secured', 'Secured');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (459, 'video_file', 'Video file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (460, 'video_url', 'Video url');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (461, 'google_drive_video', 'Google drive video');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (462, 'document_file', 'Document file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (463, 'text', 'Text');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (464, 'image_file', 'Image file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (465, 'iframe_embed', 'Iframe embed');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (466, 'please_select_a_course', 'Please select a course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (467, 'lesson_type', 'Lesson type');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (468, 'change', 'Change');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (469, 'section', 'Section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (470, 'enter_your_text', 'Enter your text');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (471, 'summary', 'Summary');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (472, 'do_you_want_to_keep_it_free_as_a_preview_lesson', 'Do you want to keep it free as a preview lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (473, 'mark_as_free_lesson', 'Mark as free lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (474, 'uploading', 'Uploading');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (475, 'provide_a_section_name', 'Provide a section name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (476, 'section_has_been_added_successfully', 'Section has been added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (477, 'add_new_quiz', 'Add new quiz');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (478, 'add_quiz', 'Add quiz');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (479, 'sort_sections', 'Sort sections');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (480, 'sort_lessons', 'Sort lessons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (481, 'sort_lesson', 'Sort lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (482, 'update_section', 'Update section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (483, 'edit_section', 'Edit section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (484, 'delete_section', 'Delete section');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (485, 'quiz_title', 'Quiz title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (486, 'quiz_duration', 'Quiz duration');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (487, 'if_you_want_to_disable_the_timer,_set_the_duration_to', 'If you want to disable the timer, set the duration to');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (488, 'total_marks', 'Total marks');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (489, 'instruction', 'Instruction');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (490, 'quiz_has_been_added_successfully', 'Quiz has been added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (491, 'quiz_results', 'Quiz results');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (492, 'manage_quiz_questions', 'Manage quiz questions');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (493, 'quiz_questions', 'Quiz questions');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (494, 'update_quiz_information', 'Update quiz information');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (495, 'quiz', 'Quiz');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (496, 'this_video_will_be_shown_on_web_application', 'This video will be shown on web application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (497, 'analyzing_the_url', 'Analyzing the url');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (498, 'invalid_url', 'Invalid url');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (499, 'your_video_source_has_to_be_either_youtube_or_vimeo', 'Your video source has to be either youtube or vimeo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (500, 'duration', 'Duration');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (501, 'lesson_provider', 'Lesson provider');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (502, 'for_mobile_application', 'For mobile application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (503, 'only', 'Only');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (504, 'type_video_is_acceptable_for_mobile_application', 'Type video is acceptable for mobile application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (505, 'lesson_has_been_added_successfully', 'Lesson has been added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (506, 'update_lesson', 'Update lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (507, 'lesson', 'Lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (508, 'play', 'Play');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (509, 'hr', 'Hr');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (510, 'min', 'Min');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (511, 'total_questions', 'Total questions');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (512, 'quiz_time', 'Quiz time');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (513, 'total_participant_students', 'Total participant students');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (514, 'participant_students', 'Participant students');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (515, 'select_student', 'Select student');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (516, 'select_a_student_to_view_the_answer_sheet', 'Select a student to view the answer sheet');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (517, 'no_instruction_found', 'No instruction found');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (518, 'questions_of', 'Questions of');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (519, 'update_sorting', 'Update sorting');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (520, 'add_new_question', 'Add new question');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (521, 'questions_have_been_sorted', 'Questions have been sorted');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (522, 'write_your_question', 'Write your question');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (523, 'question_type', 'Question type');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (524, 'select_question_type', 'Select question type');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (525, 'multiple_choice', 'Multiple choice');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (526, 'single_choice', 'Single choice');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (527, 'and', 'And');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (528, 'plain_text', 'Plain text');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (529, 'fill_in_the_blank', 'Fill in the blank');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (530, 'submit_quiz_question', 'Submit quiz question');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (531, 'question_has_been_added', 'Question has been added');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (532, 'number_of_options', 'Number of options');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (533, 'option', 'Option');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (534, 'option_', 'Option ');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (535, 'no_options_can_be_blank_and_there_has_to_be_atleast_one_answer', 'No options can be blank and there has to be atleast one answer');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (536, 'update_quiz_question', 'Update quiz question');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (537, 'watch_the_previous_lesson_to_unlock', 'Watch the previous lesson to unlock');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (538, 'start_quiz', 'Start quiz');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (539, 'quiz_submission_successfully', 'Quiz submission successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (540, 'obtained_marks', 'Obtained marks');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (541, 'correct', 'Correct');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (542, 'video_url_is_not_supported', 'Video url is not supported');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (543, 'note', 'Note');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (544, 'what_will_i_learn', 'What will i learn');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (545, 'frequently_asked_question', 'Frequently asked question');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (546, 'preview_this_course', 'Preview this course');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (547, 'course_preview', 'Course preview');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (548, 'lesson_has_been_deleted_successfully', 'Lesson has been deleted successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (549, 'upload_system_video_file', 'Upload system video file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (550, 'select_system_video_file', 'Select system video file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (551, 'has_to_be_bigger_than', 'Has to be bigger than');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (552, 'caption', 'Caption');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (553, '.vtt', '.vtt');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (554, 'choose_your_caption_file', 'Choose your caption file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (555, 'enter_which_word_of_your_question_you_want_to_show_blank', 'Enter which word of your question you want to show blank');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (556, 'press_the_enter_key_after_writing_your_every_word', 'Press the enter key after writing your every word');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (557, 'correct_answer_can_not_be_empty', 'Correct answer can not be empty');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (558, 'blogs', 'Blogs');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (559, 'add_new_blog', 'Add new blog');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (560, 'creator', 'Creator');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (561, 'add_blog', 'Add blog');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (562, 'add_a_new_blog', 'Add a new blog');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (563, 'enter_blog_title', 'Enter blog title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (564, 'keywords', 'Keywords');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (565, 'click_the_enter_button_after_writing_your_keyword', 'Click the enter button after writing your keyword');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (566, 'blog_banner', 'Blog banner');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (567, 'choose_a_banner', 'Choose a banner');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (568, 'blog_thumbnail', 'Blog thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (569, 'choose_a_thumbnail', 'Choose a thumbnail');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (570, 'do_you_want_to_mark_it_as_popular', 'Do you want to mark it as popular');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (571, 'mark_as_popular', 'Mark as popular');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (572, 'subtitle', 'Subtitle');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (573, 'character', 'Character');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (574, 'blog_category_added_successfully', 'Blog category added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (575, 'blog_added_successfully', 'Blog added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (576, 'deactivate', 'Deactivate');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (577, 'latest_blogs', 'Latest blogs');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (578, 'year', 'Year');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (579, 'month', 'Month');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (580, 'day', 'Day');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (581, 'hour', 'Hour');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (582, 'minute', 'Minute');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (583, 'second', 'Second');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (584, 'ago', 'Ago');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (585, 'view_all', 'View all');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (586, 'blog_details', 'Blog details');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (587, 'published', 'Published');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (588, 'view_profile', 'View profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (589, 'comments', 'Comments');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (590, 'add_your_comment', 'Add your comment');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (591, 'enter_your_reply', 'Enter your reply');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (592, 'enter_your_search_string', 'Enter your search string');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (593, 'popular_categories', 'Popular categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (594, 'all_categories', 'All categories');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (595, 'instructors_pending_blog', 'Instructors pending blog');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (596, 'total_pending', 'Total pending');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (597, 'website_name', 'Website name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (598, 'website_title', 'Website title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (599, 'website_keywords', 'Website keywords');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (600, 'website_description', 'Website description');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (601, 'author', 'Author');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (602, 'slogan', 'Slogan');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (603, 'system_email', 'System email');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (604, 'phone', 'Phone');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (605, 'youtube_api_key', 'Youtube api key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (606, 'get_youtube_api_key', 'Get youtube api key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (607, 'vimeo_api_key', 'Vimeo api key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (608, 'get_vimeo_api_key', 'Get vimeo api key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (609, 'purchase_code', 'Purchase code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (610, 'system_language', 'System language');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (611, 'student_email_verification', 'Student email verification');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (612, 'enable', 'Enable');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (613, 'disable', 'Disable');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (614, 'course_accessibility', 'Course accessibility');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (615, 'publicly', 'Publicly');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (616, 'only_logged_in_users', 'Only logged in users');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (617, 'number_of_authorized_devices', 'Number of authorized devices');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (618, 'how_many_devices_do_you_want_to_allow_for_logging_in_using_a_single_account', 'How many devices do you want to allow for logging in using a single account');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (619, 'course_selling_tax', 'Course selling tax');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (620, 'enter_0_if_you_want_to_disable_the_tax_option', 'Enter 0 if you want to disable the tax option');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (621, 'google_analytics_id', 'Google analytics id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (622, 'keep_it_blank_if_you_want_to_disable_it', 'Keep it blank if you want to disable it');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (623, 'meta_pixel_id', 'Meta pixel id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (624, 'footer_text', 'Footer text');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (625, 'footer_link', 'Footer link');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (626, 'update_product', 'Update product');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (627, 'file', 'File');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (628, 'frontend_settings', 'Frontend settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (629, 'banner_title', 'Banner title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (630, 'banner_sub_title', 'Banner sub title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (631, 'cookie_status', 'Cookie status');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (632, 'inactive', 'Inactive');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (633, 'cookie_note', 'Cookie note');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (634, 'facebook', 'Facebook');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (635, 'twitter', 'Twitter');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (636, 'linkedin', 'Linkedin');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (637, 'update_settings', 'Update settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (638, 'recaptcha_settings', 'Recaptcha settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (639, 'recaptcha_status', 'Recaptcha status');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (640, 'recaptcha_sitekey', 'Recaptcha sitekey');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (641, 'recaptcha_secretkey', 'Recaptcha secretkey');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (642, 'update_recaptcha_settings', 'Update recaptcha settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (643, 'update_banner_image', 'Update banner image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (644, 'upload_banner_image', 'Upload banner image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (645, 'update_light_logo', 'Update light logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (646, 'upload_light_logo', 'Upload light logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (647, 'update_dark_logo', 'Update dark logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (648, 'upload_dark_logo', 'Upload dark logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (649, 'update_small_logo', 'Update small logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (650, 'upload_small_logo', 'Upload small logo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (651, 'update_favicon', 'Update favicon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (652, 'upload_favicon', 'Upload favicon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (653, 'manage_your_drip_content_settings', 'Manage your drip content settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (654, 'lesson_completion_role', 'Lesson completion role');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (655, 'video_percentage_wise', 'Video percentage wise');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (656, 'video_duration_wise', 'Video duration wise');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (657, 'minimum_duration_to_watch', 'Minimum duration to watch');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (658, 'minimum_percentage_to_watch', 'Minimum percentage to watch');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (659, 'message_for_locked_lesson', 'Message for locked lesson');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (660, 'attention', 'Attention');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (661, 'the_auto_checkmark_is_only_applicable_for_video_lessons', 'The auto checkmark is only applicable for video lessons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (662, 'learn_more', 'Learn more');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (663, 'setup_payment_informations', 'Setup payment informations');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (664, 'system_currency_settings', 'System currency settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (665, 'system_currency', 'System currency');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (666, 'select_system_currency', 'Select system currency');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (667, 'currency_position', 'Currency position');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (668, 'left', 'Left');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (669, 'right', 'Right');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (670, 'left_with_a_space', 'Left with a space');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (671, 'right_with_a_space', 'Right with a space');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (672, 'update_system_currency', 'Update system currency');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (673, 'want_to_keep_test_mode_enabled', 'Want to keep test mode enabled');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (674, 'select_currency', 'Select currency');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (675, 'sandbox_client_id', 'Sandbox client id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (676, 'sandbox_secret_key', 'Sandbox secret key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (677, 'production_client_id', 'Production client id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (678, 'production_secret_key', 'Production secret key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (679, 'public_key', 'Public key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (680, 'secret_key', 'Secret key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (681, 'public_live_key', 'Public live key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (682, 'secret_live_key', 'Secret live key');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (683, 'key_id', 'Key id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (684, 'theme_color', 'Theme color');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (685, 'ensure_that_the_system_currency_and_all_active_payment_gateway_currencies_are_same', 'Ensure that the system currency and all active payment gateway currencies are same');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (686, 'multi_language_settings', 'Multi language settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (687, 'manage_language', 'Manage language');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (688, 'language_list', 'Language list');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (689, 'add_language', 'Add language');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (690, 'edit_phrase', 'Edit phrase');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (691, 'delete_language', 'Delete language');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (692, 'add_new_phrase', 'Add new phrase');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (693, 'add_new_language', 'Add new language');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (694, 'no_special_character_or_space_is_allowed', 'No special character or space is allowed');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (695, 'valid_examples', 'Valid examples');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (696, 'phrase_updated', 'Phrase updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (697, 'protocol', 'Protocol');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (698, 'smtp_crypto', 'Smtp crypto');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (699, 'smtp_host', 'Smtp host');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (700, 'smtp_port', 'Smtp port');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (701, 'smtp_username', 'Smtp username');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (702, 'smtp_password', 'Smtp password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (703, 'social_login_configuration', 'Social login configuration');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (704, 'facebook_login', 'Facebook login');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (705, 'facebook_app_creation_instruction', 'Facebook app creation instruction');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (706, 'facebook_app_id', 'Facebook app id');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (707, 'facebook_app_secret', 'Facebook app secret');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (708, 'custom_pages', 'Custom pages');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (709, 'add_a_new_page', 'Add a new page');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (710, 'page_title', 'Page title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (711, 'button_title', 'Button title');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (712, 'button_position', 'Button position');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (713, 'import_your_data', 'Import your data');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (714, 'choose_your_demo_file', 'Choose your demo file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (715, 'import', 'Import');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (716, 'import_your_language_file', 'Import your language file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (717, 'choose_your_json_file', 'Choose your json file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (718, 'backup_data', 'Backup data');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (719, 'backup_your_current_data', 'Backup your current data');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (720, 'keep_a_backup', 'Keep a backup');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (721, 'no_backup', 'No backup');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (722, 'not_found', 'Not found');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (723, 'about_this_application', 'About this application');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (724, 'software_version', 'Software version');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (725, 'check_update', 'Check update');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (726, 'php_version', 'Php version');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (727, 'curl_enable', 'Curl enable');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (728, 'enabled', 'Enabled');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (729, 'product_license', 'Product license');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (730, 'invalid', 'Invalid');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (731, 'enter_valid_purchase_code', 'Enter valid purchase code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (732, 'customer_support_status', 'Customer support status');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (733, 'support_expiry_date', 'Support expiry date');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (734, 'customer_name', 'Customer name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (735, 'customer_support', 'Customer support');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (736, 'basic_info', 'Basic info');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (737, 'a_short_title_about_yourself', 'A short title about yourself');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (738, 'skills', 'Skills');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (739, 'write_your_skill_and_click_the_enter_button', 'Write your skill and click the enter button');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (740, 'the_image_size_should_be_any_square_image', 'The image size should be any square image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (741, 'choose_file', 'Choose file');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (742, 'update_profile', 'Update profile');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (743, 'current_password', 'Current password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (744, 'new_password', 'New password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (745, 'confirm_new_password', 'Confirm new password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (746, 'update_password', 'Update password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (747, 'user_update_successfully', 'User update successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (748, 'user', 'User');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (749, 'paid_amount', 'Paid amount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (750, 'payment_method', 'Payment method');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (751, 'purchased_date', 'Purchased date');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (752, 'you_are_already_an_instructor', 'You are already an instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (753, 'draft_courses', 'Draft courses');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (754, 'no_data_found', 'No data found');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (755, 'add_new_coupon', 'Add new coupon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (756, 'coupon_code', 'Coupon code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (757, 'discount_percentage', 'Discount percentage');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (758, 'validity_till', 'Validity till');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (759, 'add_coupons', 'Add coupons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (760, 'back_to_coupons', 'Back to coupons');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (761, 'coupon_add_form', 'Coupon add form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (762, 'generate_a_random_coupon_code', 'Generate a random coupon code');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (763, 'generate_random', 'Generate random');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (764, 'expiry_date', 'Expiry date');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (765, 'coupon_added_successfully', 'Coupon added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (766, 'student_has_been_enrolled', 'Student has been enrolled');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (767, 'add_admin', 'Add admin');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (768, 'root_admin', 'Root admin');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (769, 'admin_add', 'Admin add');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (770, 'back_to_admins', 'Back to admins');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (771, 'admin_add_form', 'Admin add form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (772, 'login_credentials', 'Login credentials');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (773, 'social_information', 'Social information');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (774, 'user_image', 'User image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (775, 'choose_user_image', 'Choose user image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (776, 'user_added_successfully', 'User added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (777, 'assign_permission', 'Assign permission');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (778, 'assign_permission_for', 'Assign permission for');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (779, 'you_can_toggle_the_switch_for_enabling_or_disabling_a_feature_to_access', 'You can toggle the switch for enabling or disabling a feature to access');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (780, 'feature', 'Feature');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (781, 'revenue', 'Revenue');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (782, 'messaging', 'Messaging');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (783, 'addon', 'Addon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (784, 'theme', 'Theme');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (785, 'coupon', 'Coupon');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (786, 'permission_updated', 'Permission updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (787, 'student_add', 'Student add');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (788, 'student_add_form', 'Student add form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (789, 'payment_info', 'Payment info');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (790, 'paypal', 'Paypal');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (791, 'required_for_instructor', 'Required for instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (792, 'stripe', 'Stripe');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (793, 'razorpay', 'Razorpay');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (794, 'instructor_add', 'Instructor add');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (795, 'instructor_add_form', 'Instructor add form');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (796, 'instructor_payouts', 'Instructor payouts');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (797, 'list_of_payouts', 'List of payouts');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (798, 'completed_payouts', 'Completed payouts');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (799, 'pending_payouts', 'Pending payouts');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (800, 'image', 'Image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (801, 'payout_amount', 'Payout amount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (802, 'payment_type', 'Payment type');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (803, 'payout_date', 'Payout date');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (804, 'public_instructor_settings', 'Public instructor settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (805, 'allow_public_instructor', 'Allow public instructor');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (806, 'instructor_application_note', 'Instructor application note');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (807, 'instructor_commission_settings', 'Instructor commission settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (808, 'instructor_revenue_percentage', 'Instructor revenue percentage');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (809, 'admin_revenue_percentage', 'Admin revenue percentage');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (810, 'blog_settings_updated_successfully', 'Blog settings updated successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (811, 'updated', 'Updated');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (812, 'coupon_code_applied', 'Coupon code applied');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (813, 'credentials', 'Credentials');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (814, 'account_information', 'Account information');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (815, 'edit_your_account_settings', 'Edit your account settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (816, 'enter_current_password', 'Enter current password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (817, 'enter_new_password', 'Enter new password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (818, 'confirm_password', 'Confirm password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (819, 're-type_your_password', 'Re-type your password');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (820, 'update_user_photo', 'Update user photo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (821, 'profile_photo', 'Profile photo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (822, 'update_your_photo', 'Update your photo');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (823, 'upload_image', 'Upload image');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (824, 'upload', 'Upload');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (825, 'applicant', 'Applicant');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (826, 'invalid_login_credentials', 'Invalid login credentials');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (827, 'course_added_successfully', 'Course added successfully');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (828, 'please_wait_untill_admin_approves_it', 'Please wait untill admin approves it');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (829, 'setup_your_payment_settings', 'Setup your payment settings');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (830, 'be_careful', 'Be careful');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (831, 'request_a_new_withdrawal', 'Request a new withdrawal');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (832, 'pending_amount', 'Pending amount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (833, 'total_payout_amount', 'Total payout amount');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (834, 'date_processed', 'Date processed');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (835, 'course_name', 'Course name');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (836, 'your_blog_will_be_reviewed_for_publication_on_the_website', 'Your blog will be reviewed for publication on the website');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (837, 'thank_you_for_your_blog_submission', 'Thank you for your blog submission');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (838, 'mark_as_active', 'Mark as active');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES (839, 'attachment', 'Attachment');


#
# TABLE STRUCTURE FOR: lesson
#

DROP TABLE IF EXISTS `lesson`;

CREATE TABLE `lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `video_type_for_mobile_application` varchar(255) DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (1, 'Assessment', '0:30:00', 1, 1, NULL, NULL, NULL, 1676678400, NULL, 'quiz', '{\"total_marks\":\"10\"}', 'json', NULL, '', 0, 0, NULL, NULL, NULL);
INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (2, 'WOW LESSON', '10:00:00', 1, 1, NULL, NULL, 'https://www.youtube.com/watch?v=BydNliK4Eqo', 1676678400, NULL, 'video', NULL, 'url', NULL, '&lt;p&gt;&lt;span style=&quot;color: rgb(15, 15, 15); font-family: Roboto, Arial, sans-serif; white-space: pre-wrap;&quot;&gt;Can y’all imagine how weed came so far from the 60s till now shit used to be Reggie lmao&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 'html5', 'https://www.html5rocks.com/en/tutorials/video/basics/devstories.webm', '00:01:10');
INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (4, 'Setting Up', '00:08:59', 2, 2, 'system', NULL, 'https://academy.dev/uploads/lesson_files/videos/0c4d7530bd6f24a1a48f24c78857ef4a.mp4', 1676678400, NULL, 'video', NULL, 'file', NULL, '&lt;p&gt;How to setup VSCode&lt;/p&gt;', 0, 0, 'html5', 'https://academy.dev/uploads/lesson_files/videos/0c4d7530bd6f24a1a48f24c78857ef4a.mp4', '00:08:59');
INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (5, 'Primer', '0:15:00', 2, 2, NULL, NULL, NULL, 1676678400, NULL, 'quiz', '{\"total_marks\":\"5\"}', 'json', NULL, 'Just answer thoroughly', 0, 0, NULL, NULL, NULL);
INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (6, 'Setting up VSCode', '00:08:59', 3, 3, 'system', NULL, 'https://academy.dev/uploads/lesson_files/videos/65457dbae45a26b4b8d28260ac9faa2d.mp4', 1676678400, NULL, 'video', NULL, 'file', NULL, '&lt;p&gt;How to setup VSCode&lt;/p&gt;', 0, 0, 'html5', 'https://academy.dev/uploads/lesson_files/videos/65457dbae45a26b4b8d28260ac9faa2d.mp4', '00:08:59');
INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (7, 'What you Know?', '0:05:00', 3, 3, NULL, NULL, NULL, 1676678400, NULL, 'quiz', '{\"total_marks\":\"1\"}', 'json', NULL, 'Simple Question for Simple People', 0, 0, NULL, NULL, NULL);
INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (8, 'How to be like me', NULL, 4, 4, NULL, NULL, NULL, 1676678400, NULL, 'text', '&lt;p&gt;Thanks for enrolling&lt;/p&gt;', 'description', NULL, '&lt;p&gt;Thanks!&lt;/p&gt;', 0, 0, NULL, NULL, NULL);
INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `cloud_video_id`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `caption`, `summary`, `is_free`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES (9, 'Do you know me?', '0:00:30', 4, 4, NULL, NULL, NULL, 1676678400, NULL, 'quiz', '{\"total_marks\":\"50\"}', 'json', NULL, '', 0, 0, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: log
#

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` longtext DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES (1, '41f04035e5aab7a', 'Hello', '2', '1676708789', 1);
INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES (2, '41f04035e5aab7a', 'Hello there', '1', '1676708857', 1);
INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES (3, 'ac3841aefbfb5bc', 'Utog', '3', '1676709253', 1);
INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES (4, '41f04035e5aab7a', 'Yawa ka!', '2', '1676709283', 1);
INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES (5, '996837993ea5229', 'Need help', '4', '1676728252', 1);
INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES (6, '996837993ea5229', 'WOW', '1', '1676728291', 1);
INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES (7, '996837993ea5229', 'Chat', '1', '1676730294', 0);


#
# TABLE STRUCTURE FOR: message_thread
#

DROP TABLE IF EXISTS `message_thread`;

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext DEFAULT NULL,
  `sender` varchar(255) DEFAULT '',
  `receiver` varchar(255) DEFAULT '',
  `last_message_timestamp` longtext DEFAULT NULL,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES (1, '41f04035e5aab7a', '2', '1', NULL);
INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES (2, 'ac3841aefbfb5bc', '3', '1', NULL);
INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES (3, '996837993ea5229', '4', '1', NULL);


#
# TABLE STRUCTURE FOR: payment
#

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) DEFAULT NULL,
  `instructor_revenue` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `course_id`, `amount`, `date_added`, `last_modified`, `admin_revenue`, `instructor_revenue`, `tax`, `instructor_payment_status`, `transaction_id`, `session_id`, `coupon`) VALUES (1, 2, 'stripe', 1, '120', 1676678400, NULL, '120', '0', '12', 1, '', '', NULL);
INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `course_id`, `amount`, `date_added`, `last_modified`, `admin_revenue`, `instructor_revenue`, `tax`, `instructor_payment_status`, `transaction_id`, `session_id`, `coupon`) VALUES (2, 4, 'stripe', 2, '0.1', 1676678400, NULL, '0.1', '0', '0.01', 1, '', '', NULL);
INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `course_id`, `amount`, `date_added`, `last_modified`, `admin_revenue`, `instructor_revenue`, `tax`, `instructor_payment_status`, `transaction_id`, `session_id`, `coupon`) VALUES (3, 4, 'stripe', 1, '120', 1676678400, NULL, '120', '0', '12', 1, '', '', NULL);
INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `course_id`, `amount`, `date_added`, `last_modified`, `admin_revenue`, `instructor_revenue`, `tax`, `instructor_payment_status`, `transaction_id`, `session_id`, `coupon`) VALUES (4, 6, 'stripe', 3, '65', 1676678400, NULL, '65', '0', '6.5', 1, '', '', 'demo50');
INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `course_id`, `amount`, `date_added`, `last_modified`, `admin_revenue`, `instructor_revenue`, `tax`, `instructor_payment_status`, `transaction_id`, `session_id`, `coupon`) VALUES (5, 4, 'stripe', 4, '1000', 1676678400, NULL, '300', '700', '100', 0, '', '', 'demo50');


#
# TABLE STRUCTURE FOR: payment_gateways
#

DROP TABLE IF EXISTS `payment_gateways`;

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keys` text NOT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES (1, 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', 1, 1, 0, '', '1673263724');
INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES (2, 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', 1, 1, 0, '', '1673263724');
INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES (3, 'razorpay', 'USD', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}', 'Payment_model', 1, 1, 0, '', '1673264610');


#
# TABLE STRUCTURE FOR: payout
#

DROP TABLE IF EXISTS `payout`;

CREATE TABLE `payout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: permissions
#

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `permissions` (`id`, `admin_id`, `permissions`) VALUES ('1', 5, '[\"instructor\",\"student\",\"enrolment\",\"user\"]');


#
# TABLE STRUCTURE FOR: question
#

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `correct_answers` longtext DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES (1, 1, '&lt;p&gt;DAMN BRO&lt;/p&gt;', 'multiple_choice', 2, '[\"WOW BRO\",\"DAMN BRO\"]', '[\"2\"]', 0);
INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES (2, 5, 'Do you need VSCode', 'single_choice', 2, '[\"True\",\"False\"]', '[\"1\"]', 0);
INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES (3, 5, '&lt;p&gt;Hi&lt;/p&gt;', 'multiple_choice', 3, '[\"Hi\",\"Hello\",\"Olla\"]', '[\"2\"]', 0);
INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES (4, 5, '&lt;p&gt;Why?&lt;/p&gt;', 'fill_in_the_blank', 1, '[]', '[\"What\"]', 0);
INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES (5, 7, '&lt;p&gt;Who Created VSCode&lt;/p&gt;', 'fill_in_the_blank', 1, '[]', '[\"Microsoft\"]', 0);
INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES (6, 9, '&lt;p&gt;What is my name?&lt;/p&gt;', 'fill_in_the_blank', 1, '[]', '[\"Arun Chaubey\"]', 0);
INSERT INTO `question` (`id`, `quiz_id`, `title`, `type`, `number_of_options`, `options`, `correct_answers`, `order`) VALUES (7, 9, '&lt;p&gt;How do you spell my first name&lt;/p&gt;', 'multiple_choice', 3, '[\"Aaron\",\"Aron\",\"Arun\"]', '[\"3\"]', 0);


#
# TABLE STRUCTURE FOR: quiz_results
#

DROP TABLE IF EXISTS `quiz_results`;

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext NOT NULL,
  `correct_answers` longtext NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `date_updated` varchar(100) NOT NULL,
  `is_submitted` int(11) NOT NULL,
  PRIMARY KEY (`quiz_result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `quiz_results` (`quiz_result_id`, `quiz_id`, `user_id`, `user_answers`, `correct_answers`, `total_obtained_marks`, `date_added`, `date_updated`, `is_submitted`) VALUES (1, 1, 2, '{\"1\":[\"2\"]}', '[\"1\"]', '10', '1676726537', '1676726538', 1);
INSERT INTO `quiz_results` (`quiz_result_id`, `quiz_id`, `user_id`, `user_answers`, `correct_answers`, `total_obtained_marks`, `date_added`, `date_updated`, `is_submitted`) VALUES (2, 9, 4, '{\"6\":[\"Arun Chaubey\"],\"7\":[\"3\"]}', '[\"6\",\"7\"]', '50', '1676731795', '1676731801', 1);


#
# TABLE STRUCTURE FOR: rating
#

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `rating` (`id`, `rating`, `user_id`, `ratable_id`, `ratable_type`, `date_added`, `last_modified`, `review`) VALUES (1, '5', 4, 4, 'course', 1676678400, NULL, 'WOW I am now like arun');


#
# TABLE STRUCTURE FOR: role
#

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES (1, 'Admin', 1234567890, 1234567890);
INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES (2, 'User', 1234567890, 1234567890);


#
# TABLE STRUCTURE FOR: section
#

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES (1, 'Section 1', 1, 0);
INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES (2, 'Introduction', 2, 0);
INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES (3, 'Introduction', 3, 0);
INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES (4, 'Intro', 4, 0);


#
# TABLE STRUCTURE FOR: settings
#

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `settings` (`id`, `key`, `value`) VALUES (1, 'language', 'english');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (2, 'system_name', 'Coolaborate');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (3, 'system_title', 'Academy Learning Club');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (4, 'system_email', 'academy@example.com');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (5, 'address', 'Sydney, Australia');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (6, 'phone', '+143-52-9933631');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (7, 'purchase_code', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (10, 'youtube_api_key', 'youtube-api-key');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (11, 'vimeo_api_key', '39258384b69994dba483c10286825b5c');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (12, 'slogan', 'A course based video CMS');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (13, 'text_align', NULL);
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (14, 'allow_instructor', '1');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (15, 'instructor_revenue', '70');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (16, 'system_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (17, 'paypal_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (18, 'stripe_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (19, 'author', 'Creativeitem');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (20, 'currency_position', 'left');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (23, 'footer_text', '');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (24, 'footer_link', 'http://creativeitem.com/');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (25, 'protocol', 'smtp');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (26, 'smtp_host', 'smtp.gmail.com');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (27, 'smtp_port', '587');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (28, 'smtp_user', 'your-email-address');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (29, 'smtp_pass', 'your-email-password');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (30, 'version', '5.12');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (31, 'student_email_verification', 'disable');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (34, 'razorpay_currency', 'USD');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (35, 'fb_app_id', 'facebook-app-id');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (36, 'fb_app_secret', 'facebook-app-secret-key');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (37, 'fb_social_login', '0');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (38, 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":10,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (41, 'course_accessibility', 'publicly');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (42, 'smtp_crypto', 'tls');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (43, 'allowed_device_number_of_loging', '10');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (48, 'course_selling_tax', '10');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (50, 'ccavenue_currency', 'INR');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (52, 'iyzico_currency', 'TRY');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (54, 'paystack_currency', 'NGN');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (57, 'google_analytics_id', '');
INSERT INTO `settings` (`id`, `key`, `value`) VALUES (58, 'meta_pixel_id', '');


#
# TABLE STRUCTURE FOR: tag
#

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `skills` longtext NOT NULL,
  `social_links` longtext DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `payment_keys` longtext NOT NULL,
  `verification_code` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `sessions` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES (1, 'Elijah', 'Abgao', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 1, NULL, 1676727996, NULL, '', '', NULL, 1, 1, '869383a53455e337126105653ad6331f', '');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES (2, 'WOWZERS', 'OOGA', 'abgaoe@gmail.com', '69704ea6b43fa206e96df8ee11f22168422adaa4', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1676708057, NULL, '[]', NULL, '[]', '119102', 1, 0, NULL, '[]');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES (3, 'Teacher', 'Teacher', 'teacher@mail.com', '69704ea6b43fa206e96df8ee11f22168422adaa4', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1676708826, NULL, '[]', NULL, '[]', '186074', 1, 1, NULL, '[]');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES (4, 'Alexie', 'Reyes', 'areyes@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1676728145, NULL, '[]', NULL, '[]', '131500', 1, 1, NULL, '[]');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES (5, 'Mhelvin', 'Christian', 'mhelvin@admin.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', '', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/mhelvin.bamba\",\"twitter\":\"\",\"linkedin\":\"\"}', '<p>OJT</p>', 1, 1676730008, NULL, '[]', NULL, '', NULL, 1, 1, '3350add93aa11a8c4c20d549145de54b', '');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES (6, 'Arun', 'Chaubey', 'arun@mail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1676730713, NULL, '[]', NULL, '[]', '108337', 1, 1, NULL, '[]');


#
# TABLE STRUCTURE FOR: watch_histories
#

DROP TABLE IF EXISTS `watch_histories`;

CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext NOT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `date_updated` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`watch_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `date_added`, `date_updated`) VALUES (1, 1, 1, '[]', 0, 2, '', '1676726403', '1676727836');
INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `date_added`, `date_updated`) VALUES (2, 1, 2, '[\"1\"]', 50, 2, '', '1676726526', '1676726550');
INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `date_added`, `date_updated`) VALUES (3, 2, 1, '[\"4\"]', 50, 5, '', '1676727299', '1676727596');
INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `date_added`, `date_updated`) VALUES (4, 3, 1, '', 0, 6, '', '1676729499', '1676729524');
INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `date_added`, `date_updated`) VALUES (5, 3, 6, '', 0, 6, '', '1676730853', '1676730890');
INSERT INTO `watch_histories` (`watch_history_id`, `course_id`, `student_id`, `completed_lesson`, `course_progress`, `watching_lesson_id`, `quiz_result`, `date_added`, `date_updated`) VALUES (6, 4, 4, '[\"8\",\"9\"]', 100, 9, '', '1676731789', '1676731806');


#
# TABLE STRUCTURE FOR: watched_duration
#

DROP TABLE IF EXISTS `watched_duration`;

CREATE TABLE `watched_duration` (
  `watched_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext DEFAULT NULL,
  PRIMARY KEY (`watched_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `watched_duration` (`watched_id`, `watched_student_id`, `watched_course_id`, `watched_lesson_id`, `current_duration`, `watched_counter`) VALUES (1, 6, 3, 6, 535, '[\"535\"]');


