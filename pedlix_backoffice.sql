-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 24-Abr-2021 às 01:27
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pedlix_backoffice`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'pt'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Pedlix'),
(19, 'app_short_description', 'O seu aplicativo de pedidos delivery'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.hostinger.com'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'productdelivery@smartersvision.com'),
(24, 'mail_password', 'NnvAwk&&E7'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'productdelivery@smartersvision.com'),
(27, 'mail_from_name', 'Smarter Vision'),
(30, 'timezone', 'America/Caracas'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'danger'),
(34, 'app_logo', '66252739-3052-40b7-8ba2-86aa66433055'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '1'),
(107, 'default_currency', 'R$'),
(108, 'fixed_header', '0'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#25D366'),
(117, 'main_dark_color', '#25D366'),
(118, 'second_color', '#043832'),
(119, 'second_dark_color', '#ccccdd'),
(120, 'accent_color', '#8c98a8'),
(121, 'accent_dark_color', '#9999aa'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyAT07iMlfZ9bJt1gmGj9KhJDLFY8srI6dA'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '2.0.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '5'),
(129, 'default_currency_code', 'BRL'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart_options`
--

CREATE TABLE `cart_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Medicines', 'Repellendus quia et dignissimos illo necessitatibus. Sit rerum voluptate alias quia aut numquam. Saepe magnam hic non nobis magni. Id explicabo ut nesciunt. In quisquam eius fugiat qui repellendus dicta.', '2021-04-23 16:09:27', '2021-04-23 16:09:27'),
(2, 'Drinks', 'Sit reiciendis perspiciatis iure asperiores. Sunt sequi aut consequatur est eos atque. Et maxime quisquam saepe eum magnam. Totam vel aut laboriosam. Reiciendis laborum et officia facilis.', '2021-04-23 16:09:27', '2021-04-23 16:09:27'),
(3, 'Tools', 'Placeat aspernatur harum ex architecto quod rerum doloribus libero. Fugiat ut mollitia nulla dolor vero distinctio. Velit minus asperiores error tenetur. Magnam debitis nesciunt occaecati quo. Culpa voluptatem eius earum molestias aperiam.', '2021-04-23 16:09:27', '2021-04-23 16:09:27'),
(4, 'Tools', 'A et reiciendis minima ut harum. Illo eos facilis veniam. Nisi officia labore et ducimus. Velit et et numquam necessitatibus fugit qui. Quia tempore saepe velit libero.', '2021-04-23 16:09:27', '2021-04-23 16:09:27'),
(5, 'Foods', 'Provident eligendi vel provident magnam. Corrupti distinctio eos amet voluptatem. Fugiat veniam cupiditate blanditiis voluptatem. Optio quidem quis et nam illum eum quod. Est rem soluta voluptas beatae voluptatibus nemo aliquam.', '2021-04-23 16:09:27', '2021-04-23 16:09:27'),
(6, 'Fruit', 'Facere mollitia earum eveniet voluptas soluta dicta. Dolorem architecto assumenda sed iusto molestias inventore. Quod eveniet ut error porro iste sequi. Porro similique esse veritatis et aut odio aliquam. Nesciunt occaecati voluptatem commodi totam.', '2021-04-23 16:09:27', '2021-04-23 16:09:27'),
(7, 'Conveniências', '<p>As melhores conveniências de sua cidade....</p>', '2021-04-23 18:47:35', '2021-04-23 18:47:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2019-10-22 19:54:00', '2019-10-22 19:54:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-07 01:30:00', '2019-09-07 01:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-07 01:43:58', '2019-09-07 01:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-07 01:49:22', '2019-09-07 01:49:22'),
(7, 'verifiedPhone', 'text', NULL, 1, 0, 0, 6, 4, 'App\\Models\\User', '2021-03-20 14:49:22', '2021-03-20 14:49:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 2, '2019-09-07 01:52:30', '2019-09-07 01:52:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 2, '2019-09-07 01:52:30', '2019-10-16 23:32:35'),
(31, '2911 Corpening Drive South Lyon, MI 48178', '2911 Corpening Drive South Lyon, MI 48178', 6, 'App\\Models\\User', 2, '2019-09-07 01:52:30', '2019-10-16 23:32:35'),
(32, '(67) 98446-3583', '(67) 98446-3583', 4, 'App\\Models\\User', 1, '2019-09-07 01:53:58', '2021-04-23 18:13:38'),
(33, 'Sócio fundador', 'Sócio fundador', 5, 'App\\Models\\User', 1, '2019-09-07 01:53:58', '2021-04-23 18:13:38'),
(34, 'Rua Dr. Aníbal de Toledo, 722', 'Rua Dr. Aníbal de Toledo, 722', 6, 'App\\Models\\User', 1, '2019-09-07 01:53:58', '2021-04-23 18:13:38'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 3, '2019-10-15 21:21:32', '2019-10-18 03:21:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 3, '2019-10-15 21:21:32', '2019-10-18 03:21:12'),
(37, '1850 Big Elm Kansas City, MO 64106', '1850 Big Elm Kansas City, MO 64106', 6, 'App\\Models\\User', 3, '2019-10-15 21:21:32', '2019-10-18 03:21:43'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 4, '2019-10-16 23:31:46', '2019-10-16 23:31:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 23:31:46', '2019-10-16 23:31:46'),
(40, '1050 Frosty Lane Sidney, NY 13838', '1050 Frosty Lane Sidney, NY 13838', 6, 'App\\Models\\User', 4, '2019-10-16 23:31:46', '2019-10-16 23:31:46'),
(41, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 5, '2019-12-15 22:49:44', '2019-12-15 22:49:44'),
(42, '<p>Short Bio</p>', 'Short Bio', 5, 'App\\Models\\User', 5, '2019-12-15 22:49:44', '2019-12-15 22:49:44'),
(43, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 5, '2019-12-15 22:49:44', '2019-12-15 22:49:44'),
(44, '+136 955 6525', '+136 955 6525', 4, 'App\\Models\\User', 6, '2020-03-29 21:28:04', '2020-03-29 21:28:04'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 21:28:05', '2020-03-29 21:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 21:28:05', '2020-03-29 21:28:05'),
(47, NULL, NULL, 7, 'App\\Models\\User', 1, '2021-04-23 18:13:38', '2021-04-23 18:13:38'),
(48, '(67) 99236-9859', '(67) 99236-9859', 4, 'App\\Models\\User', 7, '2021-04-23 18:49:15', '2021-04-23 18:49:15'),
(49, NULL, '', 5, 'App\\Models\\User', 7, '2021-04-23 18:49:15', '2021-04-23 18:49:15'),
(50, 'Rua Vitório Zeolla, 701 - B. Carandá Bosque Campo Grande MS', 'Rua Vitório Zeolla, 701 - B. Carandá Bosque Campo Grande MS', 6, 'App\\Models\\User', 7, '2021-04-23 18:49:15', '2021-04-23 18:49:59'),
(51, NULL, NULL, 7, 'App\\Models\\User', 7, '2021-04-23 18:49:15', '2021-04-23 18:49:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 'Est nobis aliquam ut eius earum et.', '1319 Terry Burg\nNaomiburgh, DE 64430', '-5.098511', '-32.120052', 0, 1, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(12, 'Iure quibusdam cumque aut repellendus molestiae non nobis.', '52982 Olen Tunnel Suite 223\nWest Tysonshire, DC 64542-4151', '13.054926', '-135.531863', 1, 1, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(13, 'Soluta quo quidem tenetur error ut aut odit.', '481 Oma Prairie Apt. 295\nTillmanfurt, MI 87467', '-47.364384', '-118.877478', 0, 1, '2021-04-23 16:09:28', '2021-04-23 16:09:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT 0.00,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `earning` double(9,2) NOT NULL DEFAULT 0.00,
  `available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `driver_markets`
--

CREATE TABLE `driver_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `admin_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `market_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `delivery_fee` double(9,2) NOT NULL DEFAULT 0.00,
  `tax` double(9,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Enim tempore aut ut. Quis nobis ut omnis vel perspiciatis.', 'For instance, suppose it doesn\'t matter much,\' thought Alice, \'they\'re sure to do this, so she went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said Two, in a minute, trying.', 4, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(2, 'Ipsam consequatur omnis asperiores sunt sed recusandae. Tempora ipsa ea culpa nulla et cupiditate.', 'Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little pattering of feet in a Little Bill It was the fan and gloves. \'How queer it seems,\' Alice said nothing; she had sat down.', 2, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(3, 'Et velit nisi est. Eius laudantium quae rerum dolor.', 'White Rabbit as he came, \'Oh! the Duchess, it had been. But her sister kissed her, and said, \'So you did, old fellow!\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet.', 3, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(4, 'Sapiente facere quod nostrum. Accusantium aut deserunt velit beatae dolores vitae.', 'Alice, as she could guess, she was looking at everything that Alice could not help bursting out laughing: and when she had found the fan she was playing against herself, for this curious child was.', 2, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(5, 'Omnis eligendi occaecati a minus. Quidem ullam sit impedit.', 'Queen ordering off her knowledge, as there was no use speaking to it,\' she said to the Dormouse, after thinking a minute or two she walked on in a low, weak voice. \'Now, I give it up,\' Alice.', 3, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(6, 'Doloribus repellendus voluptatem blanditiis libero. Provident temporibus eligendi voluptatibus.', 'She did it so yet,\' said the Hatter: \'but you could see her after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a Gryphon, lying fast asleep in the direction in.', 2, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(7, 'Quia saepe est ea. Optio quo vero enim qui. Quia maiores et a enim provident.', 'I wonder?\' And here poor Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the middle, wondering how she would catch a bat, and that\'s all the things between whiles.\'.', 2, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(8, 'Provident et quae sapiente iste ut sed non. Non et molestiae harum ut.', 'Alice alone with the Mouse was speaking, so that her flamingo was gone across to the voice of thunder, and people began running about in the kitchen. \'When I\'M a Duchess,\' she said to herself what.', 2, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(9, 'Tempore voluptas quo error odit. Et qui autem at.', 'Alice replied very solemnly. Alice was soon submitted to by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S.', 4, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(10, 'Omnis impedit maxime adipisci facere. Qui excepturi quam porro sed adipisci.', 'There was no time to be a very curious to see if she had been to the general conclusion, that wherever you go to on the ground as she was surprised to find that she was looking about for a good deal.', 4, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(11, 'Aut cum iste cumque et aliquid provident. Nostrum labore quisquam et quis. Nam aut quis optio.', 'Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, half to herself, (not in a minute or two. \'They couldn\'t have done that?\' she thought. \'But everything\'s curious today. I think you\'d.', 4, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(12, 'Blanditiis minus debitis voluptate laborum. Odio ipsum et ab qui corporis et ducimus.', 'Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, who was beginning to get out at all for any lesson-books!\' And so she sat down again very sadly and.', 2, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(13, 'Eos at sequi nam et omnis. Placeat ratione est molestiae blanditiis.', 'THE KING AND QUEEN OF HEARTS. Alice was beginning to see if there are, nobody attends to them--and you\'ve no idea how confusing it is you hate--C and D,\' she added aloud. \'Do you know what you.', 2, '2021-04-23 16:09:28', '2021-04-23 16:09:28'),
(14, 'Qui nihil adipisci et error. Placeat maiores qui nesciunt nobis. Sit sit blanditiis aut similique.', 'Off with his tea spoon at the window, she suddenly spread out her hand in her pocket) till she too began dreaming after a fashion, and this Alice would not stoop? Soup of the sort. Next came an.', 2, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(15, 'Nobis corrupti nam quasi excepturi. Eius labore vel consequatur.', 'Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon as if his heart would break. She pitied him deeply. \'What is it?\' The Gryphon lifted up both its paws in surprise.', 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(16, 'Et sit laboriosam itaque dolorem nulla quam. Iste exercitationem dolorum impedit.', 'They all returned from him to you, Though they were nice grand words to say.) Presently she began very cautiously: \'But I don\'t keep the same thing a Lobster Quadrille The Mock Turtle in a tone of.', 4, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(17, 'Provident sint numquam perferendis magnam cum magnam. Quaerat ut inventore ab ut.', 'The Duchess took her choice, and was just beginning to see if she had brought herself down to them, and the Dormouse into the air. \'--as far out to sea as you say it.\' \'That\'s nothing to what I.', 4, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(18, 'Itaque at fugiat voluptas. Libero totam at et in.', 'Geography. London is the same thing, you know.\' \'Not the same when I learn music.\' \'Ah! that accounts for it,\' said Alice. \'Exactly so,\' said Alice. \'Exactly so,\' said Alice. \'I\'ve tried the effect.', 4, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(19, 'Sed sit et et praesentium. Dolores hic et dolor ea quasi.', 'NOT, being made entirely of cardboard.) \'All right, so far,\' said the Dodo managed it.) First it marked out a history of the thing at all. However, \'jury-men\' would have appeared to them she heard a.', 2, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(20, 'Rerum ut ab quia est unde. Suscipit voluptate nam est sunt. Ad numquam quis ex ex facere et fuga.', 'I can listen all day about it!\' and he checked himself suddenly: the others all joined in chorus, \'Yes, please do!\' but the cook tulip-roots instead of onions.\' Seven flung down his brush, and had.', 3, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(21, 'Magnam et soluta animi temporibus est. Deleniti tempore unde at unde et. A qui nisi hic.', 'I mean what I used to it in less than a pig, my dear,\' said Alice, in a very respectful tone, but frowning and making quite a new kind of serpent, that\'s all you know I\'m mad?\' said Alice. \'Well, I.', 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(22, 'A voluptatem sit molestiae et nihil. Accusamus et vitae nisi earum ut error ipsum.', 'March Hare. \'It was the Rabbit angrily. \'Here! Come and help me out of court! Suppress him! Pinch him! Off with his tea spoon at the stick, running a very small cake, on which the words \'DRINK ME,\'.', 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(23, 'Iure libero et saepe. Sit in amet et. Autem non sequi quo aut voluptatem magni nesciunt.', 'I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Come on, then,\' said the Hatter. \'Nor I,\' said the March Hare said--\' \'I didn\'t!\' the.', 3, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(24, 'Rerum vitae libero vero corrupti. Dolor assumenda fugiat porro animi quia veritatis quisquam.', 'I don\'t believe it,\' said the Gryphon, \'she wants for to know when the Rabbit coming to look at them--\'I wish they\'d get the trial done,\' she thought, \'it\'s sure to do so. \'Shall we try another.', 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(25, 'Sed ea sit hic qui ut rerum. Sequi ut eum fuga explicabo. Velit perferendis amet quis earum.', 'Alice; \'you needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said Alice in a wondering tone. \'Why, what a dear quiet thing,\' Alice went on, \'that they\'d let.', 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(26, 'Ut est et repellat consequatur iure. Exercitationem quo molestias esse error asperiores.', 'Wonderland, though she felt a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the Mock Turtle said: \'I\'m too stiff. And the Gryphon as if it makes rather a hard word, I will just.', 4, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(27, 'Hic eum est accusantium omnis ab aut unde. Molestiae aut est sint. Vitae ea unde quibusdam quidem.', 'Alice, rather doubtfully, as she could. \'The Dormouse is asleep again,\' said the Mock Turtle. \'No, no! The adventures first,\' said the Caterpillar seemed to be afraid of them!\' \'And who is to give.', 2, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(28, 'Et dignissimos magnam qui vitae molestiae dolorem. Velit possimus non et.', 'I will prosecute YOU.--Come, I\'ll take no denial; We must have a prize herself, you know,\' the Mock Turtle. \'No, no! The adventures first,\' said the Pigeon; \'but if they do, why then they\'re a kind.', 3, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(29, 'Qui quos voluptas voluptatem ratione occaecati. Debitis modi quaerat enim non.', 'Mouse was swimming away from him, and very soon finished it off. \'If everybody minded their own business!\' \'Ah, well! It means much the same thing with you,\' said the Cat. \'Do you know why it\'s.', 3, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(30, 'Numquam et voluptas veniam modi autem. Magni ea consequatur voluptate asperiores ut ut quo.', 'If I or she fell past it. \'Well!\' thought Alice \'without pictures or conversations in it, \'and what is the capital of Paris, and Paris is the same height as herself; and when she had but to open.', 2, '2021-04-23 16:09:29', '2021-04-23 16:09:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Products', '2019-08-31 16:31:52', '2019-08-31 16:31:52'),
(2, 'Services', '2019-08-31 16:32:03', '2019-08-31 16:32:03'),
(3, 'Delivery', '2019-08-31 16:32:11', '2019-08-31 16:32:11'),
(4, 'Misc', '2019-08-31 16:32:17', '2019-08-31 16:32:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fields`
--

INSERT INTO `fields` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 19:03:21', '2020-04-11 19:03:21'),
(2, 'Pharmacy', 'Eaque et aut natus. Minima blanditiis ut sunt distinctio ad. Quasi doloremque rerum ex rerum. Molestias similique similique aut rerum delectus blanditiis et. Dolorem et quas nostrum est nobis.', '2020-04-11 19:03:21', '2020-04-11 19:03:21'),
(3, 'Restaurant', 'Est nihil omnis natus ducimus ducimus excepturi quos. Et praesentium in quia veniam. Tempore aut nesciunt consequatur pariatur recusandae. Voluptatem commodi eius quaerat est deleniti impedit. Qui quo harum est sequi incidunt labore eligendi cum.', '2020-04-11 19:03:21', '2020-04-11 19:03:21'),
(4, 'Store', 'Ex nostrum suscipit aut et labore. Ut dolor ut eum eum voluptatem ex. Sapiente in tempora soluta voluptatem. Officia accusantium quae sit. Rerum esse ipsa molestias dolorem et est autem consequatur.', '2020-04-11 19:03:21', '2020-04-11 19:03:21'),
(5, 'Electronics', 'Dolorum earum ut blanditiis blanditiis. Facere quis voluptates assumenda saepe. Ab aspernatur voluptatibus rem doloremque cum impedit. Itaque blanditiis commodi repudiandae asperiores. Modi atque placeat consectetur et aut blanditiis.', '2020-04-11 19:03:21', '2020-04-11 19:03:21'),
(6, 'Furniture', 'Est et iste enim. Quam repudiandae commodi rerum non esse. Et in aut sequi est aspernatur. Facere non modi expedita asperiores. Ipsa laborum saepe deserunt qui consequatur voluptas inventore dolorum.', '2020-04-11 19:03:21', '2020-04-11 19:03:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `markets`
--

CREATE TABLE `markets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_commission` double(8,2) DEFAULT 0.00,
  `delivery_fee` double(8,2) DEFAULT 0.00,
  `delivery_range` double(8,2) DEFAULT 0.00,
  `default_tax` double(8,2) DEFAULT 0.00,
  `closed` tinyint(1) DEFAULT 0,
  `active` tinyint(1) DEFAULT 0,
  `available_for_delivery` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `markets`
--

INSERT INTO `markets` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `active`, `available_for_delivery`, `created_at`, `updated_at`) VALUES
(12, 'Zap Festas', '<p><span style=\"color: rgb(36, 37, 38); font-family: &quot;Open Sans&quot;; font-size: 30px; background-color: rgba(255, 255, 255, 0.9);\">Tudo para sua festa em um só lugar é aqui na Zap!</span><br></p>', 'Rua Vitório Zeolla, 701 - B. Carandá Bosque Campo Grande MS', '-20.441815615796482', '-54.572320044562815', '(67) 3042-6767', '(67) 99258-0970', '<p><span style=\"color: rgb(36, 37, 38); font-family: &quot;Open Sans&quot;; font-size: 30px; background-color: rgba(255, 255, 255, 0.9);\">Tudo para sua festa em um só lugar é aqui na Zap!</span><br></p>', 1.00, 10.00, NULL, NULL, 0, 1, 1, '2021-04-23 18:55:28', '2021-04-23 18:55:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `markets_payouts`
--

CREATE TABLE `markets_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `market_fields`
--

CREATE TABLE `market_fields` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `market_reviews`
--

CREATE TABLE `market_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Upload', 1, 'app_logo', 'logo2', 'logo2.png', 'image/png', 'public', 12582, '[]', '{\"uuid\":\"66252739-3052-40b7-8ba2-86aa66433055\",\"user_id\":1}', '[]', 1, '2021-04-23 16:11:31', '2021-04-23 16:11:31'),
(2, 'App\\Models\\Upload', 2, 'image', 'cropped-zap-festas-1', 'cropped-zap-festas-1.png', 'image/png', 'public', 28244, '[]', '{\"uuid\":\"0fafc8c9-d284-44ac-96ea-d6eee520d4db\",\"user_id\":1}', '[]', 2, '2021-04-23 18:53:32', '2021-04-23 18:53:32'),
(4, 'App\\Models\\Market', 12, 'image', 'cropped-zap-festas-1', 'cropped-zap-festas-1.png', 'image/png', 'public', 28244, '[]', '{\"uuid\":\"0fafc8c9-d284-44ac-96ea-d6eee520d4db\",\"user_id\":1}', '[]', 4, '2021-04-23 18:55:28', '2021-04-23 18:55:28'),
(6, 'App\\Models\\Upload', 3, 'image', 'cropped-zap-festas-1', 'cropped-zap-festas-1.png', 'image/png', 'public', 28244, '[]', '{\"uuid\":\"64365d06-0214-4f61-be3e-fcd595a58806\",\"user_id\":1}', '[]', 6, '2021-04-23 18:56:31', '2021-04-23 18:56:31'),
(7, 'App\\Models\\Upload', 4, 'image', 'cropped-zap-festas-1', 'cropped-zap-festas-1.png', 'image/png', 'public', 28244, '[]', '{\"uuid\":\"da2cfb98-2425-4d2e-ba36-447c64ba89e9\",\"user_id\":1}', '[]', 7, '2021-04-23 18:57:54', '2021-04-23 18:57:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_fields_table', 1),
(10, '2019_08_29_213821_create_markets_table', 1),
(11, '2019_08_29_213822_create_categories_table', 1),
(12, '2019_08_29_213826_create_option_groups_table', 1),
(13, '2019_08_29_213829_create_faq_categories_table', 1),
(14, '2019_08_29_213833_create_order_statuses_table', 1),
(15, '2019_08_29_213837_create_products_table', 1),
(16, '2019_08_29_213838_create_options_table', 1),
(17, '2019_08_29_213842_create_galleries_table', 1),
(18, '2019_08_29_213847_create_product_reviews_table', 1),
(19, '2019_08_29_213921_create_payments_table', 1),
(20, '2019_08_29_213922_create_delivery_addresses_table', 1),
(21, '2019_08_29_213926_create_faqs_table', 1),
(22, '2019_08_29_213940_create_market_reviews_table', 1),
(23, '2019_08_30_152927_create_favorites_table', 1),
(24, '2019_08_31_111104_create_orders_table', 1),
(25, '2019_09_04_153857_create_carts_table', 1),
(26, '2019_09_04_153858_create_favorite_options_table', 1),
(27, '2019_09_04_153859_create_cart_options_table', 1),
(28, '2019_09_04_153958_create_product_orders_table', 1),
(29, '2019_09_04_154957_create_product_order_options_table', 1),
(30, '2019_09_04_163857_create_user_markets_table', 1),
(31, '2019_10_22_144652_create_currencies_table', 1),
(32, '2019_12_14_134302_create_driver_markets_table', 1),
(33, '2020_03_25_094752_create_drivers_table', 1),
(34, '2020_03_25_094802_create_earnings_table', 1),
(35, '2020_03_25_094809_create_drivers_payouts_table', 1),
(36, '2020_03_25_094817_create_markets_payouts_table', 1),
(37, '2020_03_27_094855_create_notifications_table', 1),
(38, '2020_04_11_135804_create_market_fields_table', 1),
(39, '2020_08_23_181022_create_coupons_table', 1),
(40, '2020_08_23_181029_create_discountables_table', 1),
(41, '2020_09_01_192732_create_slides_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 14:55:28', '2019-08-31 14:55:28'),
(2, 'Color', '2019-10-09 17:26:28', '2019-10-09 17:26:28'),
(3, 'Parfum', '2019-10-09 17:26:28', '2019-10-09 17:26:28'),
(4, 'Taste', '2019-10-09 17:26:28', '2019-10-09 17:26:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT 0.00,
  `delivery_fee` double(5,2) DEFAULT 0.00,
  `hint` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 20:39:28', '2019-10-15 22:03:14'),
(2, 'Preparing', '2019-10-15 22:03:50', '2019-10-15 22:03:50'),
(3, 'Ready', '2019-10-15 22:04:30', '2019-10-15 22:04:30'),
(4, 'On the Way', '2019-10-15 22:04:13', '2019-10-15 22:04:13'),
(5, 'Delivered', '2019-10-15 22:04:30', '2019-10-15 22:04:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2020-03-29 18:58:02', '2020-03-29 18:58:02', NULL),
(2, 'dashboard', 'web', '2020-03-29 18:58:02', '2020-03-29 18:58:02', NULL),
(3, 'medias.create', 'web', '2020-03-29 18:58:02', '2020-03-29 18:58:02', NULL),
(4, 'medias.delete', 'web', '2020-03-29 18:58:02', '2020-03-29 18:58:02', NULL),
(5, 'medias', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(6, 'permissions.index', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(7, 'permissions.edit', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(8, 'permissions.update', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(9, 'permissions.destroy', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(10, 'roles.index', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(11, 'roles.edit', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(12, 'roles.update', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(13, 'roles.destroy', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(14, 'customFields.index', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(15, 'customFields.create', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(16, 'customFields.store', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(17, 'customFields.show', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(18, 'customFields.edit', 'web', '2020-03-29 18:58:03', '2020-03-29 18:58:03', NULL),
(19, 'customFields.update', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(20, 'customFields.destroy', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(21, 'users.login-as-user', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(22, 'users.index', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(23, 'users.create', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(24, 'users.store', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(25, 'users.show', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(26, 'users.edit', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(27, 'users.update', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(28, 'users.destroy', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(29, 'app-settings', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(30, 'markets.index', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(31, 'markets.create', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(32, 'markets.store', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(33, 'markets.edit', 'web', '2020-03-29 18:58:04', '2020-03-29 18:58:04', NULL),
(34, 'markets.update', 'web', '2020-03-29 18:58:05', '2020-03-29 18:58:05', NULL),
(35, 'markets.destroy', 'web', '2020-03-29 18:58:05', '2020-03-29 18:58:05', NULL),
(36, 'categories.index', 'web', '2020-03-29 18:58:05', '2020-03-29 18:58:05', NULL),
(37, 'categories.create', 'web', '2020-03-29 18:58:05', '2020-03-29 18:58:05', NULL),
(38, 'categories.store', 'web', '2020-03-29 18:58:05', '2020-03-29 18:58:05', NULL),
(39, 'categories.edit', 'web', '2020-03-29 18:58:05', '2020-03-29 18:58:05', NULL),
(40, 'categories.update', 'web', '2020-03-29 18:58:05', '2020-03-29 18:58:05', NULL),
(41, 'categories.destroy', 'web', '2020-03-29 18:58:05', '2020-03-29 18:58:05', NULL),
(42, 'faqCategories.index', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(43, 'faqCategories.create', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(44, 'faqCategories.store', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(45, 'faqCategories.edit', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(46, 'faqCategories.update', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(47, 'faqCategories.destroy', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(48, 'orderStatuses.index', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(49, 'orderStatuses.show', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(50, 'orderStatuses.edit', 'web', '2020-03-29 18:58:06', '2020-03-29 18:58:06', NULL),
(51, 'orderStatuses.update', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(52, 'products.index', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(53, 'products.create', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(54, 'products.store', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(55, 'products.edit', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(56, 'products.update', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(57, 'products.destroy', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(58, 'galleries.index', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(59, 'galleries.create', 'web', '2020-03-29 18:58:07', '2020-03-29 18:58:07', NULL),
(60, 'galleries.store', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(61, 'galleries.edit', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(62, 'galleries.update', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(63, 'galleries.destroy', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(64, 'productReviews.index', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(65, 'productReviews.create', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(66, 'productReviews.store', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(67, 'productReviews.edit', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(68, 'productReviews.update', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(69, 'productReviews.destroy', 'web', '2020-03-29 18:58:08', '2020-03-29 18:58:08', NULL),
(76, 'options.index', 'web', '2020-03-29 18:58:09', '2020-03-29 18:58:09', NULL),
(77, 'options.create', 'web', '2020-03-29 18:58:09', '2020-03-29 18:58:09', NULL),
(78, 'options.store', 'web', '2020-03-29 18:58:09', '2020-03-29 18:58:09', NULL),
(79, 'options.show', 'web', '2020-03-29 18:58:10', '2020-03-29 18:58:10', NULL),
(80, 'options.edit', 'web', '2020-03-29 18:58:10', '2020-03-29 18:58:10', NULL),
(81, 'options.update', 'web', '2020-03-29 18:58:10', '2020-03-29 18:58:10', NULL),
(82, 'options.destroy', 'web', '2020-03-29 18:58:10', '2020-03-29 18:58:10', NULL),
(83, 'payments.index', 'web', '2020-03-29 18:58:10', '2020-03-29 18:58:10', NULL),
(84, 'payments.show', 'web', '2020-03-29 18:58:10', '2020-03-29 18:58:10', NULL),
(85, 'payments.update', 'web', '2020-03-29 18:58:10', '2020-03-29 18:58:10', NULL),
(86, 'faqs.index', 'web', '2020-03-29 18:58:10', '2020-03-29 18:58:10', NULL),
(87, 'faqs.create', 'web', '2020-03-29 18:58:11', '2020-03-29 18:58:11', NULL),
(88, 'faqs.store', 'web', '2020-03-29 18:58:11', '2020-03-29 18:58:11', NULL),
(89, 'faqs.edit', 'web', '2020-03-29 18:58:11', '2020-03-29 18:58:11', NULL),
(90, 'faqs.update', 'web', '2020-03-29 18:58:11', '2020-03-29 18:58:11', NULL),
(91, 'faqs.destroy', 'web', '2020-03-29 18:58:11', '2020-03-29 18:58:11', NULL),
(92, 'marketReviews.index', 'web', '2020-03-29 18:58:11', '2020-03-29 18:58:11', NULL),
(93, 'marketReviews.create', 'web', '2020-03-29 18:58:11', '2020-03-29 18:58:11', NULL),
(94, 'marketReviews.store', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(95, 'marketReviews.edit', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(96, 'marketReviews.update', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(97, 'marketReviews.destroy', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(98, 'favorites.index', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(99, 'favorites.create', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(100, 'favorites.store', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(101, 'favorites.edit', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(102, 'favorites.update', 'web', '2020-03-29 18:58:12', '2020-03-29 18:58:12', NULL),
(103, 'favorites.destroy', 'web', '2020-03-29 18:58:13', '2020-03-29 18:58:13', NULL),
(104, 'orders.index', 'web', '2020-03-29 18:58:13', '2020-03-29 18:58:13', NULL),
(105, 'orders.create', 'web', '2020-03-29 18:58:13', '2020-03-29 18:58:13', NULL),
(106, 'orders.store', 'web', '2020-03-29 18:58:13', '2020-03-29 18:58:13', NULL),
(107, 'orders.show', 'web', '2020-03-29 18:58:13', '2020-03-29 18:58:13', NULL),
(108, 'orders.edit', 'web', '2020-03-29 18:58:13', '2020-03-29 18:58:13', NULL),
(109, 'orders.update', 'web', '2020-03-29 18:58:13', '2020-03-29 18:58:13', NULL),
(110, 'orders.destroy', 'web', '2020-03-29 18:58:13', '2020-03-29 18:58:13', NULL),
(111, 'notifications.index', 'web', '2020-03-29 18:58:14', '2020-03-29 18:58:14', NULL),
(112, 'notifications.show', 'web', '2020-03-29 18:58:14', '2020-03-29 18:58:14', NULL),
(113, 'notifications.destroy', 'web', '2020-03-29 18:58:14', '2020-03-29 18:58:14', NULL),
(114, 'carts.index', 'web', '2020-03-29 18:58:14', '2020-03-29 18:58:14', NULL),
(115, 'carts.edit', 'web', '2020-03-29 18:58:14', '2020-03-29 18:58:14', NULL),
(116, 'carts.update', 'web', '2020-03-29 18:58:14', '2020-03-29 18:58:14', NULL),
(117, 'carts.destroy', 'web', '2020-03-29 18:58:14', '2020-03-29 18:58:14', NULL),
(118, 'currencies.index', 'web', '2020-03-29 18:58:14', '2020-03-29 18:58:14', NULL),
(119, 'currencies.create', 'web', '2020-03-29 18:58:15', '2020-03-29 18:58:15', NULL),
(120, 'currencies.store', 'web', '2020-03-29 18:58:15', '2020-03-29 18:58:15', NULL),
(121, 'currencies.edit', 'web', '2020-03-29 18:58:15', '2020-03-29 18:58:15', NULL),
(122, 'currencies.update', 'web', '2020-03-29 18:58:15', '2020-03-29 18:58:15', NULL),
(123, 'currencies.destroy', 'web', '2020-03-29 18:58:15', '2020-03-29 18:58:15', NULL),
(124, 'deliveryAddresses.index', 'web', '2020-03-29 18:58:15', '2020-03-29 18:58:15', NULL),
(125, 'deliveryAddresses.create', 'web', '2020-03-29 18:58:15', '2020-03-29 18:58:15', NULL),
(126, 'deliveryAddresses.store', 'web', '2020-03-29 18:58:15', '2020-03-29 18:58:15', NULL),
(127, 'deliveryAddresses.edit', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(128, 'deliveryAddresses.update', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(129, 'deliveryAddresses.destroy', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(130, 'drivers.index', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(131, 'drivers.create', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(132, 'drivers.store', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(133, 'drivers.show', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(134, 'drivers.edit', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(135, 'drivers.update', 'web', '2020-03-29 18:58:16', '2020-03-29 18:58:16', NULL),
(136, 'drivers.destroy', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(137, 'earnings.index', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(138, 'earnings.create', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(139, 'earnings.store', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(140, 'earnings.show', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(141, 'earnings.edit', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(142, 'earnings.update', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(143, 'earnings.destroy', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(144, 'driversPayouts.index', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(145, 'driversPayouts.create', 'web', '2020-03-29 18:58:17', '2020-03-29 18:58:17', NULL),
(146, 'driversPayouts.store', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(147, 'driversPayouts.show', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(148, 'driversPayouts.edit', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(149, 'driversPayouts.update', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(150, 'driversPayouts.destroy', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(151, 'marketsPayouts.index', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(152, 'marketsPayouts.create', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(153, 'marketsPayouts.store', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(154, 'marketsPayouts.show', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(155, 'marketsPayouts.edit', 'web', '2020-03-29 18:58:18', '2020-03-29 18:58:18', NULL),
(156, 'marketsPayouts.update', 'web', '2020-03-29 18:58:19', '2020-03-29 18:58:19', NULL),
(157, 'marketsPayouts.destroy', 'web', '2020-03-29 18:58:19', '2020-03-29 18:58:19', NULL),
(158, 'permissions.create', 'web', '2020-03-29 18:59:15', '2020-03-29 18:59:15', NULL),
(159, 'permissions.store', 'web', '2020-03-29 18:59:15', '2020-03-29 18:59:15', NULL),
(160, 'permissions.show', 'web', '2020-03-29 18:59:15', '2020-03-29 18:59:15', NULL),
(161, 'roles.create', 'web', '2020-03-29 18:59:15', '2020-03-29 18:59:15', NULL),
(162, 'roles.store', 'web', '2020-03-29 18:59:15', '2020-03-29 18:59:15', NULL),
(163, 'roles.show', 'web', '2020-03-29 18:59:16', '2020-03-29 18:59:16', NULL),
(164, 'fields.index', 'web', '2020-04-11 19:04:39', '2020-04-11 19:04:39', NULL),
(165, 'fields.create', 'web', '2020-04-11 19:04:39', '2020-04-11 19:04:39', NULL),
(166, 'fields.store', 'web', '2020-04-11 19:04:39', '2020-04-11 19:04:39', NULL),
(167, 'fields.edit', 'web', '2020-04-11 19:04:39', '2020-04-11 19:04:39', NULL),
(168, 'fields.update', 'web', '2020-04-11 19:04:39', '2020-04-11 19:04:39', NULL),
(169, 'fields.destroy', 'web', '2020-04-11 19:04:40', '2020-04-11 19:04:40', NULL),
(170, 'optionGroups.index', 'web', '2020-04-11 19:04:40', '2020-04-11 19:04:40', NULL),
(171, 'optionGroups.create', 'web', '2020-04-11 19:04:40', '2020-04-11 19:04:40', NULL),
(172, 'optionGroups.store', 'web', '2020-04-11 19:04:40', '2020-04-11 19:04:40', NULL),
(173, 'optionGroups.edit', 'web', '2020-04-11 19:04:40', '2020-04-11 19:04:40', NULL),
(174, 'optionGroups.update', 'web', '2020-04-11 19:04:40', '2020-04-11 19:04:40', NULL),
(175, 'optionGroups.destroy', 'web', '2020-04-11 19:04:40', '2020-04-11 19:04:40', NULL),
(176, 'requestedMarkets.index', 'web', '2020-08-13 18:58:02', '2020-08-13 18:58:02', NULL),
(183, 'coupons.index', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(184, 'coupons.create', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(185, 'coupons.store', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(186, 'coupons.edit', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(187, 'coupons.update', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(188, 'coupons.destroy', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(189, 'slides.index', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(190, 'slides.create', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(191, 'slides.store', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(192, 'slides.edit', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(193, 'slides.update', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL),
(194, 'slides.destroy', 'web', '2020-08-23 18:58:02', '2020-08-23 18:58:02', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_price` double(8,2) DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `capacity` double(9,2) DEFAULT 0.00,
  `package_items_count` double(9,2) DEFAULT 0.00,
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `featured` tinyint(1) DEFAULT 0,
  `deliverable` tinyint(1) DEFAULT 1,
  `market_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_order_options`
--

CREATE TABLE `product_order_options` (
  `product_order_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 20:37:56', '2019-09-08 02:42:01', NULL),
(3, 'manager', 'web', 0, '2019-09-08 02:41:38', '2019-09-08 02:41:38', NULL),
(4, 'client', 'web', 1, '2019-09-08 02:41:54', '2019-09-08 02:41:54', NULL),
(5, 'driver', 'web', 0, '2019-12-15 22:50:21', '2019-12-15 22:50:21', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(6, 2),
(9, 2),
(10, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(28, 2),
(29, 2),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(31, 2),
(31, 3),
(31, 4),
(32, 2),
(32, 3),
(32, 4),
(33, 2),
(33, 3),
(34, 2),
(34, 3),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(42, 3),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 3),
(48, 5),
(50, 2),
(51, 2),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(53, 2),
(53, 3),
(54, 2),
(54, 3),
(55, 2),
(55, 3),
(56, 2),
(56, 3),
(57, 2),
(57, 3),
(58, 2),
(58, 3),
(59, 2),
(59, 3),
(60, 2),
(60, 3),
(61, 2),
(61, 3),
(62, 2),
(62, 3),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(68, 2),
(68, 3),
(68, 4),
(68, 5),
(69, 2),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(83, 4),
(83, 5),
(85, 2),
(86, 2),
(86, 3),
(86, 4),
(86, 5),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(92, 3),
(92, 4),
(92, 5),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(97, 2),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(104, 2),
(104, 3),
(104, 4),
(104, 5),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(108, 2),
(108, 3),
(109, 2),
(109, 3),
(110, 2),
(110, 3),
(111, 2),
(111, 3),
(111, 4),
(111, 5),
(112, 2),
(113, 2),
(113, 3),
(113, 4),
(113, 5),
(114, 2),
(114, 3),
(114, 4),
(114, 5),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(130, 3),
(130, 5),
(131, 2),
(134, 2),
(134, 3),
(135, 2),
(135, 3),
(137, 2),
(137, 3),
(138, 2),
(144, 2),
(144, 5),
(145, 2),
(145, 3),
(145, 5),
(146, 2),
(146, 3),
(146, 5),
(148, 2),
(149, 2),
(151, 2),
(151, 3),
(152, 2),
(152, 3),
(153, 2),
(153, 3),
(155, 2),
(156, 2),
(160, 2),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(170, 3),
(171, 2),
(171, 3),
(172, 2),
(172, 3),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(176, 3),
(176, 4),
(176, 5),
(183, 2),
(183, 3),
(183, 4),
(183, 5),
(184, 2),
(185, 2),
(186, 2),
(186, 3),
(187, 2),
(187, 3),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT 0,
  `text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `market_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `product_id`, `market_id`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 4, 'Est illo sunt harum iste quia.', 'Order Now', 'end', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(2, 2, 'Sint dolores aut.', 'Get Discount', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 0, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(3, 1, 'Accusantium exercitationem debitis.', 'Get Discount', 'end', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(4, 3, 'Omnis occaecati porro velit praesentium.', 'Order Now', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29'),
(5, 3, 'Numquam voluptatem natus harum quibusdam.', 'Order Now', 'end', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 1, '2021-04-23 16:09:29', '2021-04-23 16:09:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, '66252739-3052-40b7-8ba2-86aa66433055', '2021-04-23 16:11:31', '2021-04-23 16:11:31'),
(2, '0fafc8c9-d284-44ac-96ea-d6eee520d4db', '2021-04-23 18:53:32', '2021-04-23 18:53:32'),
(3, '64365d06-0214-4f61-be3e-fcd595a58806', '2021-04-23 18:56:31', '2021-04-23 18:56:31'),
(4, 'da2cfb98-2425-4d2e-ba36-447c64ba89e9', '2021-04-23 18:57:54', '2021-04-23 18:57:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Antonio Ricardo', 'antonioricardoarfs@gmail.com', '$2y$10$6xCMiFz8aJB3ocMGwjvYu.NoiNVK8ocIyPcmnNio5wi8KpdIDOguC', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1RvblJVMe75vpSoujiEXkNsrVMEsQtM38ZBB1mt8f5vNsR5bB69BAhs14jPd', '2018-08-07 02:58:41', '2021-04-23 18:13:38'),
(7, 'Vilmar Chaves', 'vilmarchaves@hotmail.com', '$2y$10$2lnx3djDluS3oCciErgA9e4LVFtUtGf7UP4tDlDOG3SrIX3DqxQC6', 'Yj9TU1QQ4n8XKOG5ZcJzk7bxP0Z88gNREe5g1yZ6jjKFy7dazXN4lGqR4Fvk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BFuL1wr2RjJQ6fy55Oyj6S6cin6QqpxVoayvTnYxVgYIk3GB5LgCnrsVBEEo', '2021-04-23 18:49:15', '2021-04-23 18:49:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_markets`
--

CREATE TABLE `user_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user_markets`
--

INSERT INTO `user_markets` (`user_id`, `market_id`) VALUES
(7, 12);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Índices para tabela `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Índices para tabela `cart_options`
--
ALTER TABLE `cart_options`
  ADD PRIMARY KEY (`option_id`,`cart_id`),
  ADD KEY `cart_options_cart_id_foreign` (`cart_id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Índices para tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Índices para tabela `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_user_id_foreign` (`user_id`);

--
-- Índices para tabela `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Índices para tabela `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Índices para tabela `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_payouts_user_id_foreign` (`user_id`);

--
-- Índices para tabela `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`),
  ADD KEY `driver_markets_market_id_foreign` (`market_id`);

--
-- Índices para tabela `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_market_id_foreign` (`market_id`);

--
-- Índices para tabela `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Índices para tabela `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Índices para tabela `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Índices para tabela `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_market_id_foreign` (`market_id`);

--
-- Índices para tabela `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `markets_payouts_market_id_foreign` (`market_id`);

--
-- Índices para tabela `market_fields`
--
ALTER TABLE `market_fields`
  ADD PRIMARY KEY (`field_id`,`market_id`),
  ADD KEY `market_fields_market_id_foreign` (`market_id`);

--
-- Índices para tabela `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_reviews_user_id_foreign` (`user_id`),
  ADD KEY `market_reviews_market_id_foreign` (`market_id`);

--
-- Índices para tabela `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Índices para tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Índices para tabela `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_product_id_foreign` (`product_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Índices para tabela `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Índices para tabela `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_market_id_foreign` (`market_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Índices para tabela `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_product_id_foreign` (`product_id`),
  ADD KEY `product_orders_order_id_foreign` (`order_id`);

--
-- Índices para tabela `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD PRIMARY KEY (`product_order_id`,`option_id`),
  ADD KEY `product_order_options_option_id_foreign` (`option_id`);

--
-- Índices para tabela `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices para tabela `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_product_id_foreign` (`product_id`),
  ADD KEY `slides_market_id_foreign` (`market_id`);

--
-- Índices para tabela `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Índices para tabela `user_markets`
--
ALTER TABLE `user_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`),
  ADD KEY `user_markets_market_id_foreign` (`market_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de tabela `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `markets_payouts`
--
ALTER TABLE `markets_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `market_reviews`
--
ALTER TABLE `market_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de tabela `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `cart_options`
--
ALTER TABLE `cart_options`
  ADD CONSTRAINT `cart_options_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD CONSTRAINT `drivers_payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD CONSTRAINT `driver_markets_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_markets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD CONSTRAINT `markets_payouts_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `market_fields`
--
ALTER TABLE `market_fields`
  ADD CONSTRAINT `market_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `market_fields_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD CONSTRAINT `market_reviews_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `market_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD CONSTRAINT `product_order_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_options_product_order_id_foreign` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `slides_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limitadores para a tabela `user_markets`
--
ALTER TABLE `user_markets`
  ADD CONSTRAINT `user_markets_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_markets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
